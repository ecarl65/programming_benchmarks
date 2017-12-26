julia> clipboard(code_native(mandelbrot, Tuple{Array{UInt8,2}}))
        .text
Filename: mandel.jl
        pushq   %rbp
        movq    %rsp, %rbp
        pushq   %rbx
        pushq   %rax
        movq    (%rdi), %r10
        movq    24(%rdi), %r11
Source line: 30
        movq    32(%rdi), %r8
        movl    $1, %r9d
        xorl    %edx, %edx
        movabsq $140689279117512, %rax  # imm = 0x7FF4C68168C8
        movsd   (%rax), %xmm9           # xmm9 = mem[0],zero
Source line: 22
        xorpd   %xmm8, %xmm8
        movabsq $140689279117528, %rax  # imm = 0x7FF4C68168D8
        movsd   (%rax), %xmm0           # xmm0 = mem[0],zero
        nopl    (%rax,%rax)
Source line: 20
L64:
        leaq    -501(%r9), %rax
        xorps   %xmm1, %xmm1
        cvtsi2sdq       %rax, %xmm1
        mulsd   %xmm9, %xmm1
Source line: 22
        movapd  %xmm1, %xmm2
        mulsd   %xmm8, %xmm2
Source line: 30
        leaq    -1(%r9), %rax
        cmpq    %r8, %rax
        jae     L328
        imulq   %r11, %rax
        decq    %rax
        movl    $1, %ecx
        nopw    %cs:(%rax,%rax)
Source line: 21
L128:
        leaq    1(%rcx), %rsi
Source line: 22
        leaq    -1001(%rcx), %rbx
        xorps   %xmm5, %xmm5
        cvtsi2sdq       %rbx, %xmm5
        mulsd   %xmm9, %xmm5
        addsd   %xmm2, %xmm5
        xorl    %ebx, %ebx
        movapd  %xmm1, %xmm4
        movapd  %xmm5, %xmm7
        nopw    %cs:(%rax,%rax)
Source line: 24
L176:
        cmpq    $256, %rbx              # imm = 0x100
        je      L269
        movzbl  %bl, %edx
        cmpq    %rdx, %rbx
        jne     L480
Source line: 25
        movapd  %xmm4, %xmm6
        mulsd   %xmm7, %xmm4
        mulsd   %xmm7, %xmm7
        mulsd   %xmm6, %xmm6
        subsd   %xmm6, %xmm7
        addsd   %xmm4, %xmm4
        addsd   %xmm5, %xmm7
        addsd   %xmm1, %xmm4
Source line: 26
        movapd  %xmm7, %xmm3
        mulsd   %xmm3, %xmm3
        movapd  %xmm4, %xmm6
        mulsd   %xmm6, %xmm6
        addsd   %xmm3, %xmm6
        ucomisd %xmm0, %xmm6
        movb    %bl, %dl
Source line: 24
        leaq    1(%rbx), %rbx
Source line: 26
        jbe     L176
        addl    $255, %ebx
        movb    %bl, %dl
Source line: 30
L269:
        leaq    -1(%rcx), %rbx
        cmpq    %r11, %rbx
        jae     L445
        addq    %rax, %rcx
        movb    %dl, (%r10,%rcx)
Source line: 21
        cmpq    $1501, %rsi             # imm = 0x5DD
        movq    %rsi, %rcx
        jne     L128
Source line: 19
        incq    %r9
        cmpq    $1001, %r9              # imm = 0x3E9
        jne     L64
Source line: 30
        leaq    -8(%rbp), %rsp
        popq    %rbx
        popq    %rbp
        retq
L328:
        movabsq $140689279117520, %rax  # imm = 0x7FF4C68168D0
Source line: 22
        addsd   (%rax), %xmm2
        xorl    %eax, %eax
        movl    $1, %ecx
        movapd  %xmm1, %xmm3
        movapd  %xmm2, %xmm4
        nopw    %cs:(%rax,%rax)
Source line: 24
L368:
        cmpq    $256, %rax              # imm = 0x100
        je      L445
        movzbl  %al, %edx
        cmpq    %rdx, %rax
        jne     L480
        incq    %rax
Source line: 25
        movapd  %xmm3, %xmm5
        mulsd   %xmm4, %xmm3
        mulsd   %xmm4, %xmm4
        mulsd   %xmm5, %xmm5
        subsd   %xmm5, %xmm4
        addsd   %xmm3, %xmm3
        addsd   %xmm2, %xmm4
        addsd   %xmm1, %xmm3
Source line: 26
        movapd  %xmm4, %xmm5
        mulsd   %xmm5, %xmm5
        movapd  %xmm3, %xmm6
        mulsd   %xmm6, %xmm6
        addsd   %xmm5, %xmm6
        ucomisd %xmm0, %xmm6
        jbe     L368
Source line: 30
L445:
        movq    %rsp, %rax
        leaq    -16(%rax), %rsi
        movq    %rsi, %rsp
        movq    %rcx, -16(%rax)
        movq    %r9, -8(%rax)
        movabsq $jl_bounds_error_ints, %rax
        movl    $2, %edx
        callq   *%rax
Source line: 24
L480:
        movabsq $jl_throw, %rax
        movabsq $140689547381256, %rdi  # imm = 0x7FF4D67ECA08
        callq   *%rax
        nopw    %cs:(%rax,%rax)