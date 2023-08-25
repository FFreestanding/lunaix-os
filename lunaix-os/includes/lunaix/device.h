#ifndef __LUNAIX_DEVICE_H
#define __LUNAIX_DEVICE_H

#define DEVICE_NAME_SIZE 32

#include <lunaix/ds/hstr.h>
#include <lunaix/ds/ldga.h>
#include <lunaix/ds/llist.h>
#include <lunaix/ds/semaphore.h>
#include <lunaix/types.h>

/**
 * @brief Export pseudo device
 *
 */
#define EXPORT_PSEUDODEV(id, init_fn)                                          \
    export_ldga_el(pseudo_dev, id, ptr_t, init_fn)

#define DEV_STRUCT_MAGIC 0x5645444c

#define DEV_MSKIF 0x00000003

#define DEV_IFVOL 0x0 // volumetric (block) device
#define DEV_IFSEQ 0x1 // sequential (character) device
#define DEV_IFCAT 0x2 // a device category (as device groupping)
#define DEV_IFSYS 0x3 // a system device

typedef unsigned int dev_t;

struct device
{
    u32_t magic;
    struct llist_header siblings;
    struct llist_header children;
    struct device* parent;
    // TODO investigate event polling

    struct hstr name;
    dev_t dev_id;
    int dev_type;
    char name_val[DEVICE_NAME_SIZE];
    void* underlay;

    struct
    {
        int (*read)(struct device* dev, void* buf, size_t offset, size_t len);
        int (*write)(struct device* dev, void* buf, size_t offset, size_t len);
        int (*read_page)(struct device* dev, void* buf, size_t offset);
        int (*write_page)(struct device* dev, void* buf, size_t offset);
        int (*exec_cmd)(struct device* dev, u32_t req, va_list args);
    } ops;
};

struct device*
device_add(struct device* parent,
           void* underlay,
           char* name_fmt,
           u32_t type,
           va_list args);

struct device*
device_addsys(struct device* parent, void* underlay, char* name_fmt, ...);

struct device*
device_addseq(struct device* parent, void* underlay, char* name_fmt, ...);

struct device*
device_addvol(struct device* parent, void* underlay, char* name_fmt, ...);

struct device*
device_addcat(struct device* parent, char* name_fmt, ...);

void
device_remove(struct device* dev);

struct device*
device_getbyid(struct llist_header* devlist, dev_t id);

struct device*
device_getbyhname(struct device* root_dev, struct hstr* name);

struct device*
device_getbyname(struct device* root_dev, const char* name, size_t len);

struct device*
device_getbyoffset(struct device* root_dev, int pos);

void
device_install_pseudo();

#endif /* __LUNAIX_DEVICE_H */
