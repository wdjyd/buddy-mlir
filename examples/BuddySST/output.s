	.text
	.file	"LLVMDialectModule"
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$96, %rsp
	movss	%xmm0, -60(%rbp)                # 4-byte Spill
	movl	$512, %edi                      # imm = 0x200
	callq	malloc@PLT
	movq	%rax, %rcx
	movq	%rcx, -56(%rbp)                 # 8-byte Spill
	movl	$1, %ecx
	movq	%rcx, -48(%rbp)                 # 8-byte Spill
	movl	$128, %ecx
	movq	%rcx, -40(%rbp)                 # 8-byte Spill
	xorl	%ecx, %ecx
                                        # kill: def $rcx killed $ecx
	movq	%rcx, -32(%rbp)                 # 8-byte Spill
	movq	%rax, %rcx
	movq	%rcx, -24(%rbp)                 # 8-byte Spill
	movq	%rax, -16(%rbp)                 # 8-byte Spill
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -8(%rbp)                  # 8-byte Spill
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax                  # 8-byte Reload
	movq	%rax, -72(%rbp)                 # 8-byte Spill
	cmpq	$128, %rax
	jge	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	-72(%rbp), %rax                 # 8-byte Reload
	movq	-56(%rbp), %rcx                 # 8-byte Reload
	movss	-60(%rbp), %xmm0                # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, (%rcx,%rax,4)
	addq	$1, %rax
	movq	%rax, -8(%rbp)                  # 8-byte Spill
	jmp	.LBB0_1
.LBB0_3:
	xorl	%eax, %eax
                                        # kill: def $rax killed $eax
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	jmp	.LBB0_4
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movq	-80(%rbp), %rax                 # 8-byte Reload
	movq	%rax, -88(%rbp)                 # 8-byte Spill
	cmpq	$128, %rax
	jge	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	movq	-88(%rbp), %rax                 # 8-byte Reload
	movq	-24(%rbp), %rcx                 # 8-byte Reload
	movups	(%rcx,%rax,4), %xmm0
	movups	16(%rcx,%rax,4), %xmm1
	movups	32(%rcx,%rax,4), %xmm2
	movups	48(%rcx,%rax,4), %xmm3
	addps	%xmm0, %xmm0
	addps	%xmm1, %xmm1
	addps	%xmm2, %xmm2
	addps	%xmm3, %xmm3
	movups	%xmm3, 48(%rcx,%rax,4)
	movups	%xmm2, 32(%rcx,%rax,4)
	movups	%xmm1, 16(%rcx,%rax,4)
	movups	%xmm0, (%rcx,%rax,4)
	addq	$16, %rax
	movq	%rax, -80(%rbp)                 # 8-byte Spill
	jmp	.LBB0_4
.LBB0_6:
	movq	-16(%rbp), %rcx                 # 8-byte Reload
	movq	-24(%rbp), %rdx                 # 8-byte Reload
	movq	-32(%rbp), %rdi                 # 8-byte Reload
	movq	-40(%rbp), %r8                  # 8-byte Reload
	movq	-48(%rbp), %r9                  # 8-byte Reload
	movq	%rsp, %rax
	movq	%rax, %rsi
	addq	$-48, %rsi
	movq	%rsi, %rsp
	movq	%r9, -16(%rax)
	movq	%r8, -24(%rax)
	movq	%rdi, -32(%rax)
	movq	%rdx, -40(%rax)
	movq	%rcx, -48(%rax)
	movl	$1, %edi
	callq	.LprintMemrefF32
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.globl	_mlir_ciface_main               # -- Begin function _mlir_ciface_main
	.p2align	4, 0x90
	.type	_mlir_ciface_main,@function
_mlir_ciface_main:                      # @_mlir_ciface_main
	.cfi_startproc
# %bb.0:
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	main@PLT
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	_mlir_ciface_main, .Lfunc_end1-_mlir_ciface_main
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function printMemrefF32
	.type	.LprintMemrefF32,@function
.LprintMemrefF32:                       # @printMemrefF32
	.cfi_startproc
# %bb.0:
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rsi, 16(%rsp)
	movq	%rdi, 8(%rsp)
	leaq	8(%rsp), %rdi
	callq	_mlir_ciface_printMemrefF32@PLT
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end2:
	.size	.LprintMemrefF32, .Lfunc_end2-.LprintMemrefF32
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym malloc
	.addrsig_sym main
	.addrsig_sym .LprintMemrefF32
	.addrsig_sym _mlir_ciface_printMemrefF32
