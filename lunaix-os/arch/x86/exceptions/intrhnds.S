/* Generated from int_handlerhnds.S.j2. Do NOT modify */

#define __ASM__
#ifdef CONFIG_ARCH_I386
.macro isr_template vector, no_error_code=1
    .global _asm_isr\vector
    .type _asm_isr\vector, @function
    .align 16
    _asm_isr\vector:
        .if \no_error_code
            pushl $0x0
        .endif
        pushl $\vector
        jmp interrupt_wrapper
.endm
#else
.macro isr_template vector, no_error_code=1
    .global _asm_isr\vector
    .type _asm_isr\vector, @function
    .align 16
    _asm_isr\vector:
        .if \no_error_code
            pushq $0x0
        .endif
        pushq $\vector
        jmp interrupt_wrapper
.endm
#endif

.section .text
    isr_template 0, no_error_code=1
    isr_template 1, no_error_code=1
    isr_template 2, no_error_code=1
    isr_template 3, no_error_code=1
    isr_template 4, no_error_code=1
    isr_template 5, no_error_code=1
    isr_template 6, no_error_code=1
    isr_template 7, no_error_code=1
    isr_template 8, no_error_code=0
    isr_template 9, no_error_code=1
    isr_template 10, no_error_code=0
    isr_template 11, no_error_code=0
    isr_template 12, no_error_code=0
    isr_template 13, no_error_code=0
    isr_template 14, no_error_code=0
    isr_template 15, no_error_code=1
    isr_template 16, no_error_code=1
    isr_template 17, no_error_code=0
    isr_template 18, no_error_code=1
    isr_template 19, no_error_code=1
    isr_template 20, no_error_code=1
    isr_template 21, no_error_code=1
    isr_template 22, no_error_code=1
    isr_template 23, no_error_code=1
    isr_template 24, no_error_code=1
    isr_template 25, no_error_code=1
    isr_template 26, no_error_code=1
    isr_template 27, no_error_code=1
    isr_template 28, no_error_code=1
    isr_template 29, no_error_code=1
    isr_template 30, no_error_code=1
    isr_template 31, no_error_code=1
    isr_template 32, no_error_code=1
    isr_template 33, no_error_code=1
    isr_template 34, no_error_code=1
    isr_template 35, no_error_code=1
    isr_template 36, no_error_code=1
    isr_template 37, no_error_code=1
    isr_template 38, no_error_code=1
    isr_template 39, no_error_code=1
    isr_template 40, no_error_code=1
    isr_template 41, no_error_code=1
    isr_template 42, no_error_code=1
    isr_template 43, no_error_code=1
    isr_template 44, no_error_code=1
    isr_template 45, no_error_code=1
    isr_template 46, no_error_code=1
    isr_template 47, no_error_code=1
    isr_template 48, no_error_code=1
    isr_template 49, no_error_code=1
    isr_template 50, no_error_code=1
    isr_template 51, no_error_code=1
    isr_template 52, no_error_code=1
    isr_template 53, no_error_code=1
    isr_template 54, no_error_code=1
    isr_template 55, no_error_code=1
    isr_template 56, no_error_code=1
    isr_template 57, no_error_code=1
    isr_template 58, no_error_code=1
    isr_template 59, no_error_code=1
    isr_template 60, no_error_code=1
    isr_template 61, no_error_code=1
    isr_template 62, no_error_code=1
    isr_template 63, no_error_code=1
    isr_template 64, no_error_code=1
    isr_template 65, no_error_code=1
    isr_template 66, no_error_code=1
    isr_template 67, no_error_code=1
    isr_template 68, no_error_code=1
    isr_template 69, no_error_code=1
    isr_template 70, no_error_code=1
    isr_template 71, no_error_code=1
    isr_template 72, no_error_code=1
    isr_template 73, no_error_code=1
    isr_template 74, no_error_code=1
    isr_template 75, no_error_code=1
    isr_template 76, no_error_code=1
    isr_template 77, no_error_code=1
    isr_template 78, no_error_code=1
    isr_template 79, no_error_code=1
    isr_template 80, no_error_code=1
    isr_template 81, no_error_code=1
    isr_template 82, no_error_code=1
    isr_template 83, no_error_code=1
    isr_template 84, no_error_code=1
    isr_template 85, no_error_code=1
    isr_template 86, no_error_code=1
    isr_template 87, no_error_code=1
    isr_template 88, no_error_code=1
    isr_template 89, no_error_code=1
    isr_template 90, no_error_code=1
    isr_template 91, no_error_code=1
    isr_template 92, no_error_code=1
    isr_template 93, no_error_code=1
    isr_template 94, no_error_code=1
    isr_template 95, no_error_code=1
    isr_template 96, no_error_code=1
    isr_template 97, no_error_code=1
    isr_template 98, no_error_code=1
    isr_template 99, no_error_code=1
    isr_template 100, no_error_code=1
    isr_template 101, no_error_code=1
    isr_template 102, no_error_code=1
    isr_template 103, no_error_code=1
    isr_template 104, no_error_code=1
    isr_template 105, no_error_code=1
    isr_template 106, no_error_code=1
    isr_template 107, no_error_code=1
    isr_template 108, no_error_code=1
    isr_template 109, no_error_code=1
    isr_template 110, no_error_code=1
    isr_template 111, no_error_code=1
    isr_template 112, no_error_code=1
    isr_template 113, no_error_code=1
    isr_template 114, no_error_code=1
    isr_template 115, no_error_code=1
    isr_template 116, no_error_code=1
    isr_template 117, no_error_code=1
    isr_template 118, no_error_code=1
    isr_template 119, no_error_code=1
    isr_template 120, no_error_code=1
    isr_template 121, no_error_code=1
    isr_template 122, no_error_code=1
    isr_template 123, no_error_code=1
    isr_template 124, no_error_code=1
    isr_template 125, no_error_code=1
    isr_template 126, no_error_code=1
    isr_template 127, no_error_code=1
    isr_template 128, no_error_code=1
    isr_template 129, no_error_code=1
    isr_template 130, no_error_code=1
    isr_template 131, no_error_code=1
    isr_template 132, no_error_code=1
    isr_template 133, no_error_code=1
    isr_template 134, no_error_code=1
    isr_template 135, no_error_code=1
    isr_template 136, no_error_code=1
    isr_template 137, no_error_code=1
    isr_template 138, no_error_code=1
    isr_template 139, no_error_code=1
    isr_template 140, no_error_code=1
    isr_template 141, no_error_code=1
    isr_template 142, no_error_code=1
    isr_template 143, no_error_code=1
    isr_template 144, no_error_code=1
    isr_template 145, no_error_code=1
    isr_template 146, no_error_code=1
    isr_template 147, no_error_code=1
    isr_template 148, no_error_code=1
    isr_template 149, no_error_code=1
    isr_template 150, no_error_code=1
    isr_template 151, no_error_code=1
    isr_template 152, no_error_code=1
    isr_template 153, no_error_code=1
    isr_template 154, no_error_code=1
    isr_template 155, no_error_code=1
    isr_template 156, no_error_code=1
    isr_template 157, no_error_code=1
    isr_template 158, no_error_code=1
    isr_template 159, no_error_code=1
    isr_template 160, no_error_code=1
    isr_template 161, no_error_code=1
    isr_template 162, no_error_code=1
    isr_template 163, no_error_code=1
    isr_template 164, no_error_code=1
    isr_template 165, no_error_code=1
    isr_template 166, no_error_code=1
    isr_template 167, no_error_code=1
    isr_template 168, no_error_code=1
    isr_template 169, no_error_code=1
    isr_template 170, no_error_code=1
    isr_template 171, no_error_code=1
    isr_template 172, no_error_code=1
    isr_template 173, no_error_code=1
    isr_template 174, no_error_code=1
    isr_template 175, no_error_code=1
    isr_template 176, no_error_code=1
    isr_template 177, no_error_code=1
    isr_template 178, no_error_code=1
    isr_template 179, no_error_code=1
    isr_template 180, no_error_code=1
    isr_template 181, no_error_code=1
    isr_template 182, no_error_code=1
    isr_template 183, no_error_code=1
    isr_template 184, no_error_code=1
    isr_template 185, no_error_code=1
    isr_template 186, no_error_code=1
    isr_template 187, no_error_code=1
    isr_template 188, no_error_code=1
    isr_template 189, no_error_code=1
    isr_template 190, no_error_code=1
    isr_template 191, no_error_code=1
    isr_template 192, no_error_code=1
    isr_template 193, no_error_code=1
    isr_template 194, no_error_code=1
    isr_template 195, no_error_code=1
    isr_template 196, no_error_code=1
    isr_template 197, no_error_code=1
    isr_template 198, no_error_code=1
    isr_template 199, no_error_code=1
    isr_template 200, no_error_code=1
    isr_template 201, no_error_code=1
    isr_template 202, no_error_code=1
    isr_template 203, no_error_code=1
    isr_template 204, no_error_code=1
    isr_template 205, no_error_code=1
    isr_template 206, no_error_code=1
    isr_template 207, no_error_code=1
    isr_template 208, no_error_code=1
    isr_template 209, no_error_code=1
    isr_template 210, no_error_code=1
    isr_template 211, no_error_code=1
    isr_template 212, no_error_code=1
    isr_template 213, no_error_code=1
    isr_template 214, no_error_code=1
    isr_template 215, no_error_code=1
    isr_template 216, no_error_code=1
    isr_template 217, no_error_code=1
    isr_template 218, no_error_code=1
    isr_template 219, no_error_code=1
    isr_template 220, no_error_code=1
    isr_template 221, no_error_code=1
    isr_template 222, no_error_code=1
    isr_template 223, no_error_code=1
    isr_template 224, no_error_code=1
    isr_template 225, no_error_code=1
    isr_template 226, no_error_code=1
    isr_template 227, no_error_code=1
    isr_template 228, no_error_code=1
    isr_template 229, no_error_code=1
    isr_template 230, no_error_code=1
    isr_template 231, no_error_code=1
    isr_template 232, no_error_code=1
    isr_template 233, no_error_code=1
    isr_template 234, no_error_code=1
    isr_template 235, no_error_code=1
    isr_template 236, no_error_code=1
    isr_template 237, no_error_code=1
    isr_template 238, no_error_code=1
    isr_template 239, no_error_code=1
    isr_template 240, no_error_code=1
    isr_template 241, no_error_code=1
    isr_template 242, no_error_code=1
    isr_template 243, no_error_code=1
    isr_template 244, no_error_code=1
    isr_template 245, no_error_code=1
    isr_template 246, no_error_code=1
    isr_template 247, no_error_code=1
    isr_template 248, no_error_code=1
    isr_template 249, no_error_code=1
    isr_template 250, no_error_code=1
    isr_template 251, no_error_code=1
    isr_template 252, no_error_code=1
    isr_template 253, no_error_code=1
    isr_template 254, no_error_code=1
    isr_template 255, no_error_code=1
