	.text
	.file	"main.7rcbfp3g-cgu.0"
	.section	.text._ZN3std2rt10lang_start17h1670118359635b0aE,"ax",@progbits
	.hidden	_ZN3std2rt10lang_start17h1670118359635b0aE
	.globl	_ZN3std2rt10lang_start17h1670118359635b0aE
	.p2align	4, 0x90
	.type	_ZN3std2rt10lang_start17h1670118359635b0aE,@function
_ZN3std2rt10lang_start17h1670118359635b0aE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	%rdi, (%rsp)
	leaq	.L__unnamed_1(%rip), %rsi
	movq	%rsp, %rdi
	callq	*_ZN3std2rt19lang_start_internal17h5a74da15a365d5aaE@GOTPCREL(%rip)
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	_ZN3std2rt10lang_start17h1670118359635b0aE, .Lfunc_end0-_ZN3std2rt10lang_start17h1670118359635b0aE
	.cfi_endproc

	.section	".text._ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hd263530f4282aabcE","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hd263530f4282aabcE,@function
_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hd263530f4282aabcE:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	*(%rdi)
	xorl	%eax, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hd263530f4282aabcE, .Lfunc_end1-_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hd263530f4282aabcE
	.cfi_endproc

	.section	".text._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h822f44d7f5b3b686E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h822f44d7f5b3b686E,@function
_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h822f44d7f5b3b686E:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	pushq	%rax
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -24
	.cfi_offset %r14, -16
	movq	%rsi, %rbx
	movq	(%rdi), %r14
	movq	%rsi, %rdi
	callq	*_ZN4core3fmt9Formatter15debug_lower_hex17h05e296ab3f8b1bb7E@GOTPCREL(%rip)
	testb	%al, %al
	je	.LBB2_1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmpq	*_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i32$GT$3fmt17h6f537157f3b23627E@GOTPCREL(%rip)
.LBB2_1:
	.cfi_def_cfa_offset 32
	movq	%rbx, %rdi
	callq	*_ZN4core3fmt9Formatter15debug_upper_hex17h08505d53bb04104fE@GOTPCREL(%rip)
	movq	%r14, %rdi
	movq	%rbx, %rsi
	addq	$8, %rsp
	testb	%al, %al
	je	.LBB2_2
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmpq	*_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i32$GT$3fmt17h3d43c13c5273271cE@GOTPCREL(%rip)
.LBB2_2:
	.cfi_def_cfa_offset 32
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmpq	*_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h8749d93d3eca4838E@GOTPCREL(%rip)
.Lfunc_end2:
	.size	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h822f44d7f5b3b686E, .Lfunc_end2-_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h822f44d7f5b3b686E
	.cfi_endproc

	.section	".text._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfa29674af14121b9E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfa29674af14121b9E,@function
_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfa29674af14121b9E:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	(%rdi), %rax
	movq	(%rax), %rbx
	movq	16(%rax), %r13
	leaq	8(%rsp), %rdi
	callq	*_ZN4core3fmt9Formatter10debug_list17h6e689b8f988c8586E@GOTPCREL(%rip)
	testq	%r13, %r13
	je	.LBB3_3
	shlq	$2, %r13
	leaq	.L__unnamed_2(%rip), %r14
	leaq	8(%rsp), %r15
	movq	%rsp, %r12
	movq	_ZN4core3fmt8builders9DebugList5entry17hde2b759480e1ac44E@GOTPCREL(%rip), %rbp
	.p2align	4, 0x90
.LBB3_2:
	movq	%rbx, (%rsp)
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	*%rbp
	addq	$4, %rbx
	addq	$-4, %r13
	jne	.LBB3_2
.LBB3_3:
	leaq	8(%rsp), %rdi
	callq	*_ZN4core3fmt8builders9DebugList6finish17h7a5389597d338426E@GOTPCREL(%rip)
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfa29674af14121b9E, .Lfunc_end3-_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfa29674af14121b9E
	.cfi_endproc

	.section	".text._ZN4core3ops8function6FnOnce9call_once32_$u7b$$u7b$vtable.shim$u7d$$u7d$17he76775ee1050dd45E","ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ops8function6FnOnce9call_once32_$u7b$$u7b$vtable.shim$u7d$$u7d$17he76775ee1050dd45E,@function
_ZN4core3ops8function6FnOnce9call_once32_$u7b$$u7b$vtable.shim$u7d$$u7d$17he76775ee1050dd45E:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	callq	*(%rdi)
	xorl	%eax, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end4:
	.size	_ZN4core3ops8function6FnOnce9call_once32_$u7b$$u7b$vtable.shim$u7d$$u7d$17he76775ee1050dd45E, .Lfunc_end4-_ZN4core3ops8function6FnOnce9call_once32_$u7b$$u7b$vtable.shim$u7d$$u7d$17he76775ee1050dd45E
	.cfi_endproc

	.section	.text._ZN4core3ptr18real_drop_in_place17h37fd1e797b2028d0E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr18real_drop_in_place17h37fd1e797b2028d0E,@function
_ZN4core3ptr18real_drop_in_place17h37fd1e797b2028d0E:
	.cfi_startproc
	retq
.Lfunc_end5:
	.size	_ZN4core3ptr18real_drop_in_place17h37fd1e797b2028d0E, .Lfunc_end5-_ZN4core3ptr18real_drop_in_place17h37fd1e797b2028d0E
	.cfi_endproc

	.section	.text._ZN4core3ptr18real_drop_in_place17hc16bdf5a72a61725E,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4core3ptr18real_drop_in_place17hc16bdf5a72a61725E,@function
_ZN4core3ptr18real_drop_in_place17hc16bdf5a72a61725E:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%r13
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r13, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	movq	%rdi, %r14
	movq	16(%rdi), %rax
	testq	%rax, %rax
	je	.LBB6_5
	movq	(%r14), %r12
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %r15
	xorl	%ebx, %ebx
	movq	__rust_dealloc@GOTPCREL(%rip), %r13
	.p2align	4, 0x90
.LBB6_2:
	movq	8(%r12,%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB6_4
	shlq	$2, %rsi
	movq	(%r12,%rbx), %rdi
	movl	$4, %edx
	callq	*%r13
.LBB6_4:
	addq	$24, %rbx
	cmpq	%rbx, %r15
	jne	.LBB6_2
.LBB6_5:
	movq	8(%r14), %rax
	testq	%rax, %rax
	je	.LBB6_6
	shlq	$3, %rax
	leaq	(%rax,%rax,2), %rsi
	movq	(%r14), %rdi
	movl	$8, %edx
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmpq	*__rust_dealloc@GOTPCREL(%rip)
.LBB6_6:
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end6:
	.size	_ZN4core3ptr18real_drop_in_place17hc16bdf5a72a61725E, .Lfunc_end6-_ZN4core3ptr18real_drop_in_place17hc16bdf5a72a61725E
	.cfi_endproc

	.section	.text._ZN4main4main17hfe98083a4c87500fE,"ax",@progbits
	.p2align	4, 0x90
	.type	_ZN4main4main17hfe98083a4c87500fE,@function
_ZN4main4main17hfe98083a4c87500fE:
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.rust_eh_personality
	.cfi_lsda 27, .Lexception0
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$120, %rsp
	.cfi_def_cfa_offset 176
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	leaq	.L__unnamed_3(%rip), %rax
	movq	%rax, 16(%rsp)
	movq	$1, 24(%rsp)
	movq	$0, 32(%rsp)
	leaq	.L__unnamed_4(%rip), %rax
	movq	%rax, 48(%rsp)
	movq	$0, 56(%rsp)
	leaq	16(%rsp), %rdi
	callq	*_ZN3std2io5stdio6_print17ha193417448a2e6eaE@GOTPCREL(%rip)
	movl	$80, %edi
	movl	$4, %esi
	callq	*__rust_alloc@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB7_41
	movq	%rax, %rbx
	movups	.L__unnamed_5+64(%rip), %xmm0
	movups	%xmm0, 64(%rax)
	movups	.L__unnamed_5+48(%rip), %xmm0
	movups	%xmm0, 48(%rax)
	movups	.L__unnamed_5+32(%rip), %xmm0
	movups	%xmm0, 32(%rax)
	movups	.L__unnamed_5+16(%rip), %xmm0
	movups	%xmm0, 16(%rax)
	movups	.L__unnamed_5(%rip), %xmm0
	movups	%xmm0, (%rax)
	movl	$24, %edi
	movl	$8, %esi
	callq	*__rust_alloc@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB7_2
	movq	%rax, %r14
	movq	%rbx, (%rax)
	movq	$20, 8(%rax)
	movq	$20, 16(%rax)
	movl	$80, %edi
	movl	$4, %esi
	callq	*__rust_alloc@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB7_41
	movq	%rax, %rbx
	movups	.L__unnamed_6+64(%rip), %xmm0
	movups	%xmm0, 64(%rax)
	movups	.L__unnamed_6+48(%rip), %xmm0
	movups	%xmm0, 48(%rax)
	movups	.L__unnamed_6+32(%rip), %xmm0
	movups	%xmm0, 32(%rax)
	movups	.L__unnamed_6+16(%rip), %xmm0
	movups	%xmm0, 16(%rax)
	movups	.L__unnamed_6(%rip), %xmm0
	movups	%xmm0, (%rax)
	movl	$24, %esi
	movl	$8, %edx
	movl	$48, %ecx
	movq	%r14, %rdi
	callq	*__rust_realloc@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB7_6
	movq	%rax, %r14
	movq	%rbx, 24(%rax)
	movq	$20, 32(%rax)
	movq	$20, 40(%rax)
	movl	$80, %edi
	movl	$4, %esi
	callq	*__rust_alloc@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB7_41
	movq	%rax, %rbx
	movups	.L__unnamed_7+64(%rip), %xmm0
	movups	%xmm0, 64(%rax)
	movups	.L__unnamed_7+48(%rip), %xmm0
	movups	%xmm0, 48(%rax)
	movups	.L__unnamed_7+32(%rip), %xmm0
	movups	%xmm0, 32(%rax)
	movups	.L__unnamed_7+16(%rip), %xmm0
	movups	%xmm0, 16(%rax)
	movups	.L__unnamed_7(%rip), %xmm0
	movups	%xmm0, (%rax)
	movl	$48, %esi
	movl	$8, %edx
	movl	$96, %ecx
	movq	%r14, %rdi
	callq	*__rust_realloc@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB7_9
	movq	%rax, %r14
	movq	%rbx, 48(%rax)
	movq	$20, 56(%rax)
	movq	$20, 64(%rax)
	movl	$80, %edi
	movl	$4, %esi
	callq	*__rust_alloc@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB7_41
	movups	.L__unnamed_8+64(%rip), %xmm0
	movups	%xmm0, 64(%rax)
	movups	.L__unnamed_8+48(%rip), %xmm0
	movups	%xmm0, 48(%rax)
	movups	.L__unnamed_8+32(%rip), %xmm0
	movups	%xmm0, 32(%rax)
	movups	.L__unnamed_8+16(%rip), %xmm0
	movups	%xmm0, 16(%rax)
	movups	.L__unnamed_8(%rip), %xmm0
	movups	%xmm0, (%rax)
	movq	%rax, 72(%r14)
	movq	$20, 80(%r14)
	movq	$20, 88(%r14)
	movl	$80, %edi
	movl	$4, %esi
	callq	*__rust_alloc@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB7_41
	movq	%rax, %rbx
	movups	.L__unnamed_9+64(%rip), %xmm0
	movups	%xmm0, 64(%rax)
	movups	.L__unnamed_9+48(%rip), %xmm0
	movups	%xmm0, 48(%rax)
	movups	.L__unnamed_9+32(%rip), %xmm0
	movups	%xmm0, 32(%rax)
	movups	.L__unnamed_9+16(%rip), %xmm0
	movups	%xmm0, 16(%rax)
	movups	.L__unnamed_9(%rip), %xmm0
	movups	%xmm0, (%rax)
	movl	$96, %esi
	movl	$8, %edx
	movl	$192, %ecx
	movq	%r14, %rdi
	callq	*__rust_realloc@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB7_13
	movq	%rax, %r14
	movq	%rbx, 96(%rax)
	movq	$20, 104(%rax)
	movq	$20, 112(%rax)
	movl	$80, %edi
	movl	$4, %esi
	callq	*__rust_alloc@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB7_41
	movups	.L__unnamed_10+64(%rip), %xmm0
	movups	%xmm0, 64(%rax)
	movups	.L__unnamed_10+48(%rip), %xmm0
	movups	%xmm0, 48(%rax)
	movups	.L__unnamed_10+32(%rip), %xmm0
	movups	%xmm0, 32(%rax)
	movups	.L__unnamed_10+16(%rip), %xmm0
	movups	%xmm0, 16(%rax)
	movups	.L__unnamed_10(%rip), %xmm0
	movups	%xmm0, (%rax)
	movq	%rax, 120(%r14)
	movq	$20, 128(%r14)
	movq	$20, 136(%r14)
	movl	$80, %edi
	movl	$4, %esi
	callq	*__rust_alloc@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB7_41
	movups	.L__unnamed_11+64(%rip), %xmm0
	movups	%xmm0, 64(%rax)
	movups	.L__unnamed_11+48(%rip), %xmm0
	movups	%xmm0, 48(%rax)
	movups	.L__unnamed_11+32(%rip), %xmm0
	movups	%xmm0, 32(%rax)
	movups	.L__unnamed_11+16(%rip), %xmm0
	movups	%xmm0, 16(%rax)
	movups	.L__unnamed_11(%rip), %xmm0
	movups	%xmm0, (%rax)
	movq	%rax, 144(%r14)
	movq	$20, 152(%r14)
	movq	$20, 160(%r14)
	movl	$80, %edi
	movl	$4, %esi
	callq	*__rust_alloc@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB7_41
	movups	.L__unnamed_12+64(%rip), %xmm0
	movups	%xmm0, 64(%rax)
	movups	.L__unnamed_12+48(%rip), %xmm0
	movups	%xmm0, 48(%rax)
	movups	.L__unnamed_12+32(%rip), %xmm0
	movups	%xmm0, 32(%rax)
	movups	.L__unnamed_12+16(%rip), %xmm0
	movups	%xmm0, 16(%rax)
	movups	.L__unnamed_12(%rip), %xmm0
	movups	%xmm0, (%rax)
	movq	%rax, 168(%r14)
	movq	$20, 176(%r14)
	movq	$20, 184(%r14)
	movl	$80, %edi
	movl	$4, %esi
	callq	*__rust_alloc@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB7_41
	movq	%rax, %rbx
	movups	.L__unnamed_13+64(%rip), %xmm0
	movups	%xmm0, 64(%rax)
	movups	.L__unnamed_13+48(%rip), %xmm0
	movups	%xmm0, 48(%rax)
	movups	.L__unnamed_13+32(%rip), %xmm0
	movups	%xmm0, 32(%rax)
	movups	.L__unnamed_13+16(%rip), %xmm0
	movups	%xmm0, 16(%rax)
	movups	.L__unnamed_13(%rip), %xmm0
	movups	%xmm0, (%rax)
	movl	$192, %esi
	movl	$8, %edx
	movl	$384, %ecx
	movq	%r14, %rdi
	callq	*__rust_realloc@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB7_19
	movq	%rax, %r14
	movq	%rbx, 192(%rax)
	movq	$20, 200(%rax)
	movq	$20, 208(%rax)
	movl	$80, %edi
	movl	$4, %esi
	callq	*__rust_alloc@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB7_41
	movups	.L__unnamed_14+64(%rip), %xmm0
	movups	%xmm0, 64(%rax)
	movups	.L__unnamed_14+48(%rip), %xmm0
	movups	%xmm0, 48(%rax)
	movups	.L__unnamed_14+32(%rip), %xmm0
	movups	%xmm0, 32(%rax)
	movups	.L__unnamed_14+16(%rip), %xmm0
	movups	%xmm0, 16(%rax)
	movups	.L__unnamed_14(%rip), %xmm0
	movups	%xmm0, (%rax)
	movq	%rax, 216(%r14)
	movq	$20, 224(%r14)
	movq	$20, 232(%r14)
	movl	$80, %edi
	movl	$4, %esi
	callq	*__rust_alloc@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB7_41
	movups	.L__unnamed_15+64(%rip), %xmm0
	movups	%xmm0, 64(%rax)
	movups	.L__unnamed_15+48(%rip), %xmm0
	movups	%xmm0, 48(%rax)
	movups	.L__unnamed_15+32(%rip), %xmm0
	movups	%xmm0, 32(%rax)
	movups	.L__unnamed_15+16(%rip), %xmm0
	movups	%xmm0, 16(%rax)
	movups	.L__unnamed_15(%rip), %xmm0
	movups	%xmm0, (%rax)
	movq	%rax, 240(%r14)
	movq	$20, 248(%r14)
	movq	$20, 256(%r14)
	movl	$80, %edi
	movl	$4, %esi
	callq	*__rust_alloc@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB7_41
	movups	.L__unnamed_16+64(%rip), %xmm0
	movups	%xmm0, 64(%rax)
	movups	.L__unnamed_16+48(%rip), %xmm0
	movups	%xmm0, 48(%rax)
	movups	.L__unnamed_16+32(%rip), %xmm0
	movups	%xmm0, 32(%rax)
	movups	.L__unnamed_16+16(%rip), %xmm0
	movups	%xmm0, 16(%rax)
	movups	.L__unnamed_16(%rip), %xmm0
	movups	%xmm0, (%rax)
	movq	%rax, 264(%r14)
	movq	$20, 272(%r14)
	movq	$20, 280(%r14)
	movl	$80, %edi
	movl	$4, %esi
	callq	*__rust_alloc@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB7_41
	movups	.L__unnamed_17+64(%rip), %xmm0
	movups	%xmm0, 64(%rax)
	movups	.L__unnamed_17+48(%rip), %xmm0
	movups	%xmm0, 48(%rax)
	movups	.L__unnamed_17+32(%rip), %xmm0
	movups	%xmm0, 32(%rax)
	movups	.L__unnamed_17+16(%rip), %xmm0
	movups	%xmm0, 16(%rax)
	movups	.L__unnamed_17(%rip), %xmm0
	movups	%xmm0, (%rax)
	movq	%rax, 288(%r14)
	movq	$20, 296(%r14)
	movq	$20, 304(%r14)
	movl	$80, %edi
	movl	$4, %esi
	callq	*__rust_alloc@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB7_41
	movups	.L__unnamed_18+64(%rip), %xmm0
	movups	%xmm0, 64(%rax)
	movups	.L__unnamed_18+48(%rip), %xmm0
	movups	%xmm0, 48(%rax)
	movups	.L__unnamed_18+32(%rip), %xmm0
	movups	%xmm0, 32(%rax)
	movups	.L__unnamed_18+16(%rip), %xmm0
	movups	%xmm0, 16(%rax)
	movups	.L__unnamed_18(%rip), %xmm0
	movups	%xmm0, (%rax)
	movq	%rax, 312(%r14)
	movq	$20, 320(%r14)
	movq	$20, 328(%r14)
	movl	$80, %edi
	movl	$4, %esi
	callq	*__rust_alloc@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB7_41
	movups	.L__unnamed_19+64(%rip), %xmm0
	movups	%xmm0, 64(%rax)
	movups	.L__unnamed_19+48(%rip), %xmm0
	movups	%xmm0, 48(%rax)
	movups	.L__unnamed_19+32(%rip), %xmm0
	movups	%xmm0, 32(%rax)
	movups	.L__unnamed_19+16(%rip), %xmm0
	movups	%xmm0, 16(%rax)
	movups	.L__unnamed_19(%rip), %xmm0
	movups	%xmm0, (%rax)
	movq	%rax, 336(%r14)
	movq	$20, 344(%r14)
	movq	$20, 352(%r14)
	movl	$80, %edi
	movl	$4, %esi
	callq	*__rust_alloc@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB7_41
	movups	.L__unnamed_20+64(%rip), %xmm0
	movups	%xmm0, 64(%rax)
	movups	.L__unnamed_20+48(%rip), %xmm0
	movups	%xmm0, 48(%rax)
	movups	.L__unnamed_20+32(%rip), %xmm0
	movups	%xmm0, 32(%rax)
	movups	.L__unnamed_20+16(%rip), %xmm0
	movups	%xmm0, 16(%rax)
	movups	.L__unnamed_20(%rip), %xmm0
	movups	%xmm0, (%rax)
	movq	%rax, 360(%r14)
	movq	$20, 368(%r14)
	movq	$20, 376(%r14)
	movl	$80, %edi
	movl	$4, %esi
	callq	*__rust_alloc@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB7_41
	movq	%rax, %r15
	movups	.L__unnamed_21+64(%rip), %xmm0
	movups	%xmm0, 64(%rax)
	movups	.L__unnamed_21+48(%rip), %xmm0
	movups	%xmm0, 48(%rax)
	movups	.L__unnamed_21+32(%rip), %xmm0
	movups	%xmm0, 32(%rax)
	movups	.L__unnamed_21+16(%rip), %xmm0
	movups	%xmm0, 16(%rax)
	movups	.L__unnamed_21(%rip), %xmm0
	movups	%xmm0, (%rax)
	movl	$384, %esi
	movl	$8, %edx
	movl	$768, %ecx
	movq	%r14, %rdi
	callq	*__rust_realloc@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB7_29
	movq	%rax, %r12
	movq	%r15, 384(%rax)
	movq	$20, 392(%rax)
	movq	$20, 400(%rax)
	movl	$80, %edi
	movl	$4, %esi
	callq	*__rust_alloc@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB7_41
	movups	.L__unnamed_22+64(%rip), %xmm0
	movups	%xmm0, 64(%rax)
	movups	.L__unnamed_22+48(%rip), %xmm0
	movups	%xmm0, 48(%rax)
	movups	.L__unnamed_22+32(%rip), %xmm0
	movups	%xmm0, 32(%rax)
	movups	.L__unnamed_22+16(%rip), %xmm0
	movups	%xmm0, 16(%rax)
	movups	.L__unnamed_22(%rip), %xmm0
	movups	%xmm0, (%rax)
	movq	%rax, 408(%r12)
	movq	$20, 416(%r12)
	movq	$20, 424(%r12)
	movl	$80, %edi
	movl	$4, %esi
	callq	*__rust_alloc@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB7_41
	movups	.L__unnamed_23+64(%rip), %xmm0
	movups	%xmm0, 64(%rax)
	movups	.L__unnamed_23+48(%rip), %xmm0
	movups	%xmm0, 48(%rax)
	movups	.L__unnamed_23+32(%rip), %xmm0
	movups	%xmm0, 32(%rax)
	movups	.L__unnamed_23+16(%rip), %xmm0
	movups	%xmm0, 16(%rax)
	movups	.L__unnamed_23(%rip), %xmm0
	movups	%xmm0, (%rax)
	movq	%rax, 432(%r12)
	movq	$20, 440(%r12)
	movq	$20, 448(%r12)
	movl	$80, %edi
	movl	$4, %esi
	callq	*__rust_alloc@GOTPCREL(%rip)
	testq	%rax, %rax
	je	.LBB7_41
	movups	.L__unnamed_24+64(%rip), %xmm0
	movups	%xmm0, 64(%rax)
	movups	.L__unnamed_24+48(%rip), %xmm0
	movups	%xmm0, 48(%rax)
	movups	.L__unnamed_24+32(%rip), %xmm0
	movups	%xmm0, 32(%rax)
	movups	.L__unnamed_24+16(%rip), %xmm0
	movups	%xmm0, 16(%rax)
	movups	.L__unnamed_24(%rip), %xmm0
	movups	%xmm0, (%rax)
	movq	%rax, 456(%r12)
	movq	$20, 464(%r12)
	movq	$20, 472(%r12)
	movq	%r12, 64(%rsp)
	movq	$32, 72(%rsp)
	movq	$20, 80(%rsp)
	xorl	%ebx, %ebx
	leaq	88(%rsp), %rbp
	leaq	16(%rsp), %r14
	movq	_ZN3std2io5stdio6_print17ha193417448a2e6eaE@GOTPCREL(%rip), %r15
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB7_34:
	leaq	(%r12,%rbx), %rax
	movq	%r13, (%rsp)
	movq	%rax, 8(%rsp)
	movq	%rsp, %rax
	movq	%rax, 88(%rsp)
	movq	_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h5dc9b448b8de0db8E@GOTPCREL(%rip), %rax
	movq	%rax, 96(%rsp)
	leaq	8(%rsp), %rax
	movq	%rax, 104(%rsp)
	leaq	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hfa29674af14121b9E(%rip), %rax
	movq	%rax, 112(%rsp)
	leaq	.L__unnamed_25(%rip), %rax
	movq	%rax, 16(%rsp)
	movq	$3, 24(%rsp)
	movq	$0, 32(%rsp)
	movq	%rbp, 48(%rsp)
	movq	$2, 56(%rsp)
.Ltmp0:
	movq	%r14, %rdi
	callq	*%r15
.Ltmp1:
	addq	$1, %r13
	addq	$24, %rbx
	cmpq	$480, %rbx
	jne	.LBB7_34
	movl	$8, %ebx
	movq	__rust_dealloc@GOTPCREL(%rip), %rbp
	.p2align	4, 0x90
.LBB7_37:
	movq	(%r12,%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB7_39
	shlq	$2, %rsi
	movq	-8(%r12,%rbx), %rdi
	movl	$4, %edx
	callq	*%rbp
.LBB7_39:
	addq	$24, %rbx
	cmpq	$488, %rbx
	jne	.LBB7_37
	movl	$768, %esi
	movl	$8, %edx
	movq	%r12, %rdi
	callq	*__rust_dealloc@GOTPCREL(%rip)
	addq	$120, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB7_41:
	.cfi_def_cfa_offset 176
	movl	$80, %edi
	movl	$4, %esi
	callq	*_ZN5alloc5alloc18handle_alloc_error17h2bf444f047049b0eE@GOTPCREL(%rip)
	ud2
.LBB7_2:
	movl	$24, %edi
	jmp	.LBB7_3
.LBB7_6:
	movl	$48, %edi
	jmp	.LBB7_3
.LBB7_9:
	movl	$96, %edi
	jmp	.LBB7_3
.LBB7_13:
	movl	$192, %edi
	jmp	.LBB7_3
.LBB7_19:
	movl	$384, %edi
	jmp	.LBB7_3
.LBB7_29:
	movl	$768, %edi
.LBB7_3:
	movl	$8, %esi
	callq	*_ZN5alloc5alloc18handle_alloc_error17h2bf444f047049b0eE@GOTPCREL(%rip)
	ud2
.LBB7_42:
.Ltmp2:
	movq	%rax, %rbx
	leaq	64(%rsp), %rdi
	callq	_ZN4core3ptr18real_drop_in_place17hc16bdf5a72a61725E
	movq	%rbx, %rdi
	callq	_Unwind_Resume@PLT
	ud2
.Lfunc_end7:
	.size	_ZN4main4main17hfe98083a4c87500fE, .Lfunc_end7-_ZN4main4main17hfe98083a4c87500fE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table7:
.Lexception0:
	.byte	255
	.byte	255
	.byte	1
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0
	.uleb128 .Ltmp0-.Lfunc_begin0
	.byte	0
	.byte	0
	.uleb128 .Ltmp0-.Lfunc_begin0
	.uleb128 .Ltmp1-.Ltmp0
	.uleb128 .Ltmp2-.Lfunc_begin0
	.byte	0
	.uleb128 .Ltmp1-.Lfunc_begin0
	.uleb128 .Lfunc_end7-.Ltmp1
	.byte	0
	.byte	0
.Lcst_end0:
	.p2align	2

	.section	.text.main,"ax",@progbits
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:
	.cfi_startproc
	pushq	%rax
	.cfi_def_cfa_offset 16
	movq	%rsi, %rcx
	movslq	%edi, %rdx
	leaq	_ZN4main4main17hfe98083a4c87500fE(%rip), %rax
	movq	%rax, (%rsp)
	leaq	.L__unnamed_1(%rip), %rsi
	movq	%rsp, %rdi
	callq	*_ZN3std2rt19lang_start_internal17h5a74da15a365d5aaE@GOTPCREL(%rip)
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end8:
	.size	main, .Lfunc_end8-main
	.cfi_endproc

	.type	.L__unnamed_1,@object
	.section	.data.rel.ro..L__unnamed_1,"aw",@progbits
	.p2align	3
.L__unnamed_1:
	.quad	_ZN4core3ptr18real_drop_in_place17h37fd1e797b2028d0E
	.quad	8
	.quad	8
	.quad	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hd263530f4282aabcE
	.quad	_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17hd263530f4282aabcE
	.quad	_ZN4core3ops8function6FnOnce9call_once32_$u7b$$u7b$vtable.shim$u7d$$u7d$17he76775ee1050dd45E
	.size	.L__unnamed_1, 48

	.type	.L__unnamed_2,@object
	.section	.data.rel.ro..L__unnamed_2,"aw",@progbits
	.p2align	3
.L__unnamed_2:
	.quad	_ZN4core3ptr18real_drop_in_place17h37fd1e797b2028d0E
	.quad	8
	.quad	8
	.quad	_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h822f44d7f5b3b686E
	.size	.L__unnamed_2, 32

	.type	.L__unnamed_4,@object
	.section	.rodata..L__unnamed_4,"a",@progbits
	.p2align	3
.L__unnamed_4:
	.size	.L__unnamed_4, 0

	.type	.L__unnamed_26,@object
	.section	.rodata..L__unnamed_26,"a",@progbits
.L__unnamed_26:
	.ascii	"Running problem 11.\n"
	.size	.L__unnamed_26, 20

	.type	.L__unnamed_3,@object
	.section	.data.rel.ro..L__unnamed_3,"aw",@progbits
	.p2align	3
.L__unnamed_3:
	.quad	.L__unnamed_26
	.asciz	"\024\000\000\000\000\000\000"
	.size	.L__unnamed_3, 16

	.type	.L__unnamed_27,@object
	.section	.rodata..L__unnamed_27,"a",@progbits
.L__unnamed_27:
	.ascii	"Row: "
	.size	.L__unnamed_27, 5

	.type	.L__unnamed_28,@object
	.section	.rodata..L__unnamed_28,"a",@progbits
.L__unnamed_28:
	.ascii	" = "
	.size	.L__unnamed_28, 3

	.type	.L__unnamed_29,@object
	.section	.rodata..L__unnamed_29,"a",@progbits
.L__unnamed_29:
	.byte	10
	.size	.L__unnamed_29, 1

	.type	.L__unnamed_25,@object
	.section	.data.rel.ro..L__unnamed_25,"aw",@progbits
	.p2align	3
.L__unnamed_25:
	.quad	.L__unnamed_27
	.asciz	"\005\000\000\000\000\000\000"
	.quad	.L__unnamed_28
	.asciz	"\003\000\000\000\000\000\000"
	.quad	.L__unnamed_29
	.asciz	"\001\000\000\000\000\000\000"
	.size	.L__unnamed_25, 48

	.type	.L__unnamed_5,@object
	.section	.rodata..L__unnamed_5,"a",@progbits
	.p2align	2
.L__unnamed_5:
	.asciz	"\b\000\000\000\002\000\000\000\026\000\000\000a\000\000\000&\000\000\000\017\000\000\000\000\000\000\000(\000\000\000\000\000\000\000K\000\000\000\004\000\000\000\005\000\000\000\007\000\000\000N\000\000\0004\000\000\000\f\000\000\0002\000\000\000M\000\000\000[\000\000\000\b\000\000"
	.size	.L__unnamed_5, 80

	.type	.L__unnamed_6,@object
	.section	.rodata..L__unnamed_6,"a",@progbits
	.p2align	2
.L__unnamed_6:
	.asciz	"1\000\000\0001\000\000\000c\000\000\000(\000\000\000\021\000\000\000Q\000\000\000\022\000\000\0009\000\000\000<\000\000\000W\000\000\000\021\000\000\000(\000\000\000b\000\000\000+\000\000\000E\000\000\0000\000\000\000\004\000\000\0008\000\000\000>\000\000\000\000\000\000"
	.size	.L__unnamed_6, 80

	.type	.L__unnamed_7,@object
	.section	.rodata..L__unnamed_7,"a",@progbits
	.p2align	2
.L__unnamed_7:
	.asciz	"Q\000\000\0001\000\000\000\037\000\000\000I\000\000\0007\000\000\000O\000\000\000\016\000\000\000\035\000\000\000]\000\000\000G\000\000\000(\000\000\000C\000\000\0005\000\000\000X\000\000\000\036\000\000\000\003\000\000\0001\000\000\000\r\000\000\000$\000\000\000A\000\000"
	.size	.L__unnamed_7, 80

	.type	.L__unnamed_8,@object
	.section	.rodata..L__unnamed_8,"a",@progbits
	.p2align	2
.L__unnamed_8:
	.asciz	"4\000\000\000F\000\000\000_\000\000\000\027\000\000\000\004\000\000\000<\000\000\000\013\000\000\000*\000\000\000E\000\000\000\030\000\000\000D\000\000\0008\000\000\000\001\000\000\000 \000\000\0008\000\000\000G\000\000\000%\000\000\000\002\000\000\000$\000\000\000[\000\000"
	.size	.L__unnamed_8, 80

	.type	.L__unnamed_9,@object
	.section	.rodata..L__unnamed_9,"a",@progbits
	.p2align	2
.L__unnamed_9:
	.asciz	"\026\000\000\000\037\000\000\000\020\000\000\000G\000\000\0003\000\000\000C\000\000\000?\000\000\000Y\000\000\000)\000\000\000\\\000\000\000$\000\000\0006\000\000\000\026\000\000\000(\000\000\000(\000\000\000\034\000\000\000B\000\000\000!\000\000\000\r\000\000\000P\000\000"
	.size	.L__unnamed_9, 80

	.type	.L__unnamed_10,@object
	.section	.rodata..L__unnamed_10,"a",@progbits
	.p2align	2
.L__unnamed_10:
	.asciz	"\030\000\000\000/\000\000\000 \000\000\000<\000\000\000c\000\000\000\003\000\000\000-\000\000\000\002\000\000\000,\000\000\000K\000\000\000!\000\000\0005\000\000\000N\000\000\000$\000\000\000T\000\000\000\024\000\000\000#\000\000\000\021\000\000\000\f\000\000\0002\000\000"
	.size	.L__unnamed_10, 80

	.type	.L__unnamed_11,@object
	.section	.rodata..L__unnamed_11,"a",@progbits
	.p2align	2
.L__unnamed_11:
	.asciz	" \000\000\000b\000\000\000Q\000\000\000\034\000\000\000@\000\000\000\027\000\000\000C\000\000\000\n\000\000\000\032\000\000\000&\000\000\000(\000\000\000C\000\000\000;\000\000\0006\000\000\000F\000\000\000B\000\000\000\022\000\000\000&\000\000\000@\000\000\000F\000\000"
	.size	.L__unnamed_11, 80

	.type	.L__unnamed_12,@object
	.section	.rodata..L__unnamed_12,"a",@progbits
	.p2align	2
.L__unnamed_12:
	.asciz	"C\000\000\000\032\000\000\000\024\000\000\000D\000\000\000\002\000\000\000>\000\000\000\f\000\000\000\024\000\000\000_\000\000\000?\000\000\000^\000\000\000'\000\000\000?\000\000\000\b\000\000\000(\000\000\000[\000\000\000B\000\000\0001\000\000\000^\000\000\000\025\000\000"
	.size	.L__unnamed_12, 80

	.type	.L__unnamed_13,@object
	.section	.rodata..L__unnamed_13,"a",@progbits
	.p2align	2
.L__unnamed_13:
	.asciz	"\030\000\000\0007\000\000\000:\000\000\000\005\000\000\000B\000\000\000I\000\000\000c\000\000\000\032\000\000\000a\000\000\000\021\000\000\000N\000\000\000N\000\000\000`\000\000\000S\000\000\000\016\000\000\000X\000\000\000\"\000\000\000Y\000\000\000?\000\000\000H\000\000"
	.size	.L__unnamed_13, 80

	.type	.L__unnamed_14,@object
	.section	.rodata..L__unnamed_14,"a",@progbits
	.p2align	2
.L__unnamed_14:
	.asciz	"\025\000\000\000$\000\000\000\027\000\000\000\t\000\000\000K\000\000\000\000\000\000\000L\000\000\000,\000\000\000\024\000\000\000-\000\000\000#\000\000\000\016\000\000\000\000\000\000\000=\000\000\000!\000\000\000a\000\000\000\"\000\000\000\037\000\000\000!\000\000\000_\000\000"
	.size	.L__unnamed_14, 80

	.type	.L__unnamed_15,@object
	.section	.rodata..L__unnamed_15,"a",@progbits
	.p2align	2
.L__unnamed_15:
	.asciz	"N\000\000\000\021\000\000\0005\000\000\000\034\000\000\000\026\000\000\000K\000\000\000\037\000\000\000C\000\000\000\017\000\000\000^\000\000\000\003\000\000\000P\000\000\000\004\000\000\000>\000\000\000\020\000\000\000\016\000\000\000\t\000\000\0005\000\000\0008\000\000\000\\\000\000"
	.size	.L__unnamed_15, 80

	.type	.L__unnamed_16,@object
	.section	.rodata..L__unnamed_16,"a",@progbits
	.p2align	2
.L__unnamed_16:
	.asciz	"\020\000\000\000'\000\000\000\005\000\000\000*\000\000\000`\000\000\000#\000\000\000\037\000\000\000/\000\000\0007\000\000\000:\000\000\000X\000\000\000\030\000\000\000\000\000\000\000\021\000\000\0006\000\000\000\030\000\000\000$\000\000\000\035\000\000\000U\000\000\0009\000\000"
	.size	.L__unnamed_16, 80

	.type	.L__unnamed_17,@object
	.section	.rodata..L__unnamed_17,"a",@progbits
	.p2align	2
.L__unnamed_17:
	.asciz	"V\000\000\0008\000\000\000\000\000\000\0000\000\000\000#\000\000\000G\000\000\000Y\000\000\000\007\000\000\000\005\000\000\000,\000\000\000,\000\000\000%\000\000\000,\000\000\000<\000\000\000\025\000\000\000:\000\000\0003\000\000\0006\000\000\000\021\000\000\000:\000\000"
	.size	.L__unnamed_17, 80

	.type	.L__unnamed_18,@object
	.section	.rodata..L__unnamed_18,"a",@progbits
	.p2align	2
.L__unnamed_18:
	.asciz	"\023\000\000\000P\000\000\000Q\000\000\000D\000\000\000\005\000\000\000^\000\000\000/\000\000\000E\000\000\000\034\000\000\000I\000\000\000\\\000\000\000\r\000\000\000V\000\000\0004\000\000\000\021\000\000\000M\000\000\000\004\000\000\000Y\000\000\0007\000\000\000(\000\000"
	.size	.L__unnamed_18, 80

	.type	.L__unnamed_19,@object
	.section	.rodata..L__unnamed_19,"a",@progbits
	.p2align	2
.L__unnamed_19:
	.asciz	"\004\000\000\0004\000\000\000\b\000\000\000S\000\000\000a\000\000\000#\000\000\000c\000\000\000\020\000\000\000\007\000\000\000a\000\000\0009\000\000\000 \000\000\000\020\000\000\000\032\000\000\000\032\000\000\000O\000\000\000!\000\000\000\033\000\000\000b\000\000\000B\000\000"
	.size	.L__unnamed_19, 80

	.type	.L__unnamed_20,@object
	.section	.rodata..L__unnamed_20,"a",@progbits
	.p2align	2
.L__unnamed_20:
	.asciz	"X\000\000\000$\000\000\000D\000\000\000W\000\000\0009\000\000\000>\000\000\000\024\000\000\000H\000\000\000\003\000\000\000.\000\000\000!\000\000\000C\000\000\000.\000\000\0007\000\000\000\f\000\000\000 \000\000\000?\000\000\000]\000\000\0005\000\000\000E\000\000"
	.size	.L__unnamed_20, 80

	.type	.L__unnamed_21,@object
	.section	.rodata..L__unnamed_21,"a",@progbits
	.p2align	2
.L__unnamed_21:
	.asciz	"\004\000\000\000*\000\000\000\020\000\000\000I\000\000\000&\000\000\000\031\000\000\000'\000\000\000\013\000\000\000\030\000\000\000^\000\000\000H\000\000\000\022\000\000\000\b\000\000\000.\000\000\000\035\000\000\000 \000\000\000(\000\000\000>\000\000\000L\000\000\000$\000\000"
	.size	.L__unnamed_21, 80

	.type	.L__unnamed_22,@object
	.section	.rodata..L__unnamed_22,"a",@progbits
	.p2align	2
.L__unnamed_22:
	.asciz	"\024\000\000\000E\000\000\000$\000\000\000)\000\000\000H\000\000\000\036\000\000\000\027\000\000\000X\000\000\000\"\000\000\000>\000\000\000c\000\000\000E\000\000\000R\000\000\000C\000\000\000;\000\000\000U\000\000\000J\000\000\000\004\000\000\000$\000\000\000\020\000\000"
	.size	.L__unnamed_22, 80

	.type	.L__unnamed_23,@object
	.section	.rodata..L__unnamed_23,"a",@progbits
	.p2align	2
.L__unnamed_23:
	.asciz	"\024\000\000\000I\000\000\000#\000\000\000\035\000\000\000N\000\000\000\037\000\000\000Z\000\000\000\001\000\000\000J\000\000\000\037\000\000\0001\000\000\000G\000\000\0000\000\000\000V\000\000\000Q\000\000\000\020\000\000\000\027\000\000\0009\000\000\000\005\000\000\0006\000\000"
	.size	.L__unnamed_23, 80

	.type	.L__unnamed_24,@object
	.section	.rodata..L__unnamed_24,"a",@progbits
	.p2align	2
.L__unnamed_24:
	.asciz	"\001\000\000\000F\000\000\0006\000\000\000G\000\000\000S\000\000\0003\000\000\0006\000\000\000E\000\000\000\020\000\000\000\\\000\000\000!\000\000\0000\000\000\000=\000\000\000+\000\000\0004\000\000\000\001\000\000\000Y\000\000\000\023\000\000\000C\000\000\0000\000\000"
	.size	.L__unnamed_24, 80

	.hidden	DW.ref.rust_eh_personality
	.weak	DW.ref.rust_eh_personality
	.section	.data.DW.ref.rust_eh_personality,"aGw",@progbits,DW.ref.rust_eh_personality,comdat
	.p2align	3
	.type	DW.ref.rust_eh_personality,@object
	.size	DW.ref.rust_eh_personality, 8
DW.ref.rust_eh_personality:
	.quad	rust_eh_personality

	.section	".note.GNU-stack","",@progbits
