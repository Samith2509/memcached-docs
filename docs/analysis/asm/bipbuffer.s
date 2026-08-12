	.file	"bipbuffer.c"
# GNU C23 (Ubuntu 15.2.0-16ubuntu1) version 15.2.0 (x86_64-linux-gnu)
#	compiled by GNU C version 15.2.0, GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.3.1, isl version isl-0.27-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -D_FORTIFY_SOURCE=3 -march=znver3 -mmmx -mpopcnt -msse -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mavx -mavx2 -msse4a -mno-fma4 -mno-xop -mfma -mno-avx512f -mbmi -mbmi2 -maes -mpclmul -mno-avx512vl -mno-avx512bw -mno-avx512dq -mno-avx512cd -mno-avx512vbmi -mno-avx512ifma -mno-avx512vpopcntdq -mno-avx512vbmi2 -mno-gfni -mvpclmulqdq -mno-avx512vnni -mno-avx512bitalg -mno-avx512bf16 -mno-avx512vp2intersect -mno-3dnow -madx -mabm -mno-cldemote -mclflushopt -mclwb -mclzero -mcx16 -mno-enqcmd -mf16c -mfsgsbase -mfxsr -mno-hle -msahf -mno-lwp -mlzcnt -mmovbe -mno-movdir64b -mno-movdiri -mno-mwaitx -mno-pconfig -mno-pku -mprfchw -mno-ptwrite -mrdpid -mrdrnd -mrdseed -mno-rtm -mno-serialize -mno-sgx -msha -mshstk -mno-tbm -mno-tsxldtrk -mvaes -mno-waitpkg -mno-wbnoinvd -mxsave -mxsavec -mxsaveopt -mxsaves -mno-amx-tile -mno-amx-int8 -mno-amx-bf16 -mno-uintr -mno-hreset -mno-kl -mno-widekl -mno-avxvnni -mno-avx512fp16 -mno-avxifma -mno-avxvnniint8 -mno-avxneconvert -mno-cmpccxadd -mno-amx-fp16 -mno-prefetchi -mno-raoint -mno-amx-complex -mno-avxvnniint16 -mno-sm3 -mno-sha512 -mno-sm4 -mno-apxf -mno-usermsr -mno-avx10.2 -mno-amx-avx512 -mno-amx-tf32 -mno-amx-transpose -mno-amx-fp8 -mno-movrs -mno-amx-movrs --param=l1-cache-size=32 --param=l1-cache-line-size=64 --param=l2-cache-size=512 -mtune=znver3 -O3 -ftree-vectorize -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection -fzero-init-padding-bits=all
	.text
	.p2align 4
	.globl	bipbuf_unused
	.type	bipbuf_unused, @function
bipbuf_unused:
.LFB55:
	.cfi_startproc
	endbr64	
# bipbuffer.c:25:     if (1 == me->b_inuse)
	cmpl	$1, 20(%rdi)	#, me_11(D)->b_inuse
	je	.L5	#,
# bipbuffer.c:29:         return me->size - me->a_end;
	movq	(%rdi), %rax	# me_11(D)->size, me_11(D)->size
	subl	12(%rdi), %eax	# me_11(D)->a_end, _8
# bipbuffer.c:30: }
	ret	
	.p2align 4
	.p2align 3
.L5:
# bipbuffer.c:27:         return me->a_start - me->b_end;
	movl	8(%rdi), %eax	# me_11(D)->a_start, me_11(D)->a_start
	subl	16(%rdi), %eax	# me_11(D)->b_end, _8
	ret	
	.cfi_endproc
.LFE55:
	.size	bipbuf_unused, .-bipbuf_unused
	.p2align 4
	.globl	bipbuf_size
	.type	bipbuf_size, @function
bipbuf_size:
.LFB56:
	.cfi_startproc
	endbr64	
# bipbuffer.c:34:     return me->size;
	movl	(%rdi), %eax	# me_3(D)->size, _4
# bipbuffer.c:35: }
	ret	
	.cfi_endproc
.LFE56:
	.size	bipbuf_size, .-bipbuf_size
	.p2align 4
	.globl	bipbuf_used
	.type	bipbuf_used, @function
bipbuf_used:
.LFB57:
	.cfi_startproc
	endbr64	
# bipbuffer.c:39:     return (me->a_end - me->a_start) + me->b_end;
	movl	16(%rdi), %eax	# me_7(D)->b_end, me_7(D)->b_end
	addl	12(%rdi), %eax	# me_7(D)->a_end, _10
	subl	8(%rdi), %eax	# me_7(D)->a_start, _5
# bipbuffer.c:40: }
	ret	
	.cfi_endproc
.LFE57:
	.size	bipbuf_used, .-bipbuf_used
	.p2align 4
	.globl	bipbuf_init
	.type	bipbuf_init, @function
bipbuf_init:
.LFB58:
	.cfi_startproc
	endbr64	
# bipbuffer.c:45:     me->size = size;
	movl	%esi, %eax	# size, tmp105
# bipbuffer.c:44:     me->a_start = me->a_end = me->b_end = 0;
	movq	$0, 8(%rdi)	#, MEM <vector(2) unsigned int> [(unsigned int *)me_3(D) + 8B]
# bipbuffer.c:44:     me->a_start = me->a_end = me->b_end = 0;
	movq	$0, 16(%rdi)	#, MEM <unsigned long> [(void *)me_3(D) + 16B]
# bipbuffer.c:45:     me->size = size;
	movq	%rax, (%rdi)	# tmp105, me_3(D)->size
# bipbuffer.c:47: }
	ret	
	.cfi_endproc
.LFE58:
	.size	bipbuf_init, .-bipbuf_init
	.p2align 4
	.globl	bipbuf_new
	.type	bipbuf_new, @function
bipbuf_new:
.LFB59:
	.cfi_startproc
	endbr64	
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
# bipbuffer.c:20:     return sizeof(bipbuf_t) + size;
	movl	%edi, %ebx	# size, _4
	leaq	24(%rbx), %rdi	#, _7
# bipbuffer.c:51:     bipbuf_t *me = malloc(bipbuf_sizeof(size));
	call	malloc@PLT	#
# bipbuffer.c:52:     if (!me)
	testq	%rax, %rax	# <retval>
	je	.L9	#,
# bipbuffer.c:45:     me->size = size;
	movq	%rbx, (%rax)	# _4, me_6->size
# bipbuffer.c:44:     me->a_start = me->a_end = me->b_end = 0;
	movq	$0, 8(%rax)	#, MEM <vector(2) unsigned int> [(unsigned int *)me_6 + 8B]
# bipbuffer.c:44:     me->a_start = me->a_end = me->b_end = 0;
	movq	$0, 16(%rax)	#, MEM <unsigned long> [(void *)me_6 + 16B]
.L9:
# bipbuffer.c:56: }
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret	
	.cfi_endproc
.LFE59:
	.size	bipbuf_new, .-bipbuf_new
	.p2align 4
	.globl	bipbuf_free
	.type	bipbuf_free, @function
bipbuf_free:
.LFB60:
	.cfi_startproc
	endbr64	
# bipbuffer.c:60:     free(me);
	jmp	free@PLT	#
	.cfi_endproc
.LFE60:
	.size	bipbuf_free, .-bipbuf_free
	.p2align 4
	.globl	bipbuf_is_empty
	.type	bipbuf_is_empty, @function
bipbuf_is_empty:
.LFB61:
	.cfi_startproc
	endbr64	
# bipbuffer.c:65:     return me->a_start == me->a_end;
	movl	12(%rdi), %eax	# me_5(D)->a_end, tmp109
	cmpl	%eax, 8(%rdi)	# tmp109, me_5(D)->a_start
	sete	%al	#, _3
	movzbl	%al, %eax	# _3, _3
# bipbuffer.c:66: }
	ret	
	.cfi_endproc
.LFE61:
	.size	bipbuf_is_empty, .-bipbuf_is_empty
	.p2align 4
	.globl	bipbuf_request
	.type	bipbuf_request, @function
bipbuf_request:
.LFB63:
	.cfi_startproc
	endbr64	
# bipbuffer.c:25:     if (1 == me->b_inuse)
	cmpl	$1, 20(%rdi)	#, MEM[(const struct bipbuf_t *)me_9(D)].b_inuse
	je	.L25	#,
# bipbuffer.c:29:         return me->size - me->a_end;
	movl	12(%rdi), %eax	# MEM[(const struct bipbuf_t *)me_9(D)].a_end,
# bipbuffer.c:29:         return me->size - me->a_end;
	movl	(%rdi), %edx	# MEM[(const struct bipbuf_t *)me_9(D)].size, _20
.L24:
	subl	%eax, %edx	# _19, _20
# bipbuffer.c:87:         return (unsigned char *)me->data + me->a_end;
	leaq	24(%rdi,%rax), %rax	#, tmp127
	cmpl	%edx, %esi	# _20, size
	movl	$0, %edx	#, tmp126
	cmovg	%rdx, %rax	# tmp127,, tmp126, <retval>
# bipbuffer.c:89: }
	ret	
	.p2align 4
	.p2align 3
.L25:
# bipbuffer.c:27:         return me->a_start - me->b_end;
	movl	16(%rdi), %eax	# MEM[(const struct bipbuf_t *)me_9(D)].b_end,
# bipbuffer.c:27:         return me->a_start - me->b_end;
	movl	8(%rdi), %edx	# MEM[(const struct bipbuf_t *)me_9(D)].a_start, _16
	jmp	.L24	#
	.cfi_endproc
.LFE63:
	.size	bipbuf_request, .-bipbuf_request
	.p2align 4
	.globl	bipbuf_push
	.type	bipbuf_push, @function
bipbuf_push:
.LFB64:
	.cfi_startproc
	endbr64	
# bipbuffer.c:25:     if (1 == me->b_inuse)
	cmpl	$1, 20(%rdi)	#, MEM[(const struct bipbuf_t *)me_11(D)].b_inuse
	je	.L38	#,
# bipbuffer.c:29:         return me->size - me->a_end;
	movq	(%rdi), %rdx	# MEM[(const struct bipbuf_t *)me_11(D)].size, _19
# bipbuffer.c:29:         return me->size - me->a_end;
	movl	12(%rdi), %eax	# MEM[(const struct bipbuf_t *)me_11(D)].a_end, _21
# bipbuffer.c:94:         return 0;
	xorl	%r9d, %r9d	# <retval>
# bipbuffer.c:29:         return me->size - me->a_end;
	movl	%edx, %ecx	# _19, _22
	subl	%eax, %ecx	# _21, _22
# bipbuffer.c:93:     if (bipbuf_unused(me) < size)
	cmpl	%ecx, %esi	# _22, size
	jg	.L26	#,
# bipbuffer.c:27:         return me->a_start - me->b_end;
	movl	8(%rdi), %ecx	# MEM[(const struct bipbuf_t *)me_11(D)].a_start, pretmp_40
# bipbuffer.c:27:         return me->a_start - me->b_end;
	movl	16(%rdi), %r8d	# MEM[(const struct bipbuf_t *)me_11(D)].b_end, pretmp_46
# bipbuffer.c:102:         me->a_end += size;
	addl	%esi, %eax	# size,
	movl	%eax, 12(%rdi)	# _6, me_11(D)->a_end
.L31:
# bipbuffer.c:72:     if (me->size - me->a_end < me->a_start - me->b_end)
	subq	%rax, %rdx	# _27, _28
# bipbuffer.c:72:     if (me->size - me->a_end < me->a_start - me->b_end)
	subl	%r8d, %ecx	# pretmp_46, _32
# bipbuffer.c:72:     if (me->size - me->a_end < me->a_start - me->b_end)
	cmpq	%rcx, %rdx	# _32, _28
	jnb	.L33	#,
# bipbuffer.c:73:         me->b_inuse = 1;
	movl	$1, 20(%rdi)	#, me_11(D)->b_inuse
.L33:
# bipbuffer.c:106:     return size;
	movl	%esi, %r9d	# size, <retval>
.L26:
# bipbuffer.c:107: }
	movl	%r9d, %eax	# <retval>,
	ret	
	.p2align 4
	.p2align 3
.L38:
# bipbuffer.c:27:         return me->a_start - me->b_end;
	movl	8(%rdi), %ecx	# MEM[(const struct bipbuf_t *)me_11(D)].a_start, pretmp_40
# bipbuffer.c:27:         return me->a_start - me->b_end;
	movl	16(%rdi), %r8d	# MEM[(const struct bipbuf_t *)me_11(D)].b_end, _17
# bipbuffer.c:94:         return 0;
	xorl	%r9d, %r9d	# <retval>
# bipbuffer.c:27:         return me->a_start - me->b_end;
	movl	%ecx, %eax	# pretmp_40, _18
	subl	%r8d, %eax	# _17, _18
# bipbuffer.c:93:     if (bipbuf_unused(me) < size)
	cmpl	%eax, %esi	# _18, size
	jg	.L26	#,
# bipbuffer.c:98:         me->b_end += size;
	addl	%esi, %r8d	# size, pretmp_46
# bipbuffer.c:29:         return me->size - me->a_end;
	movq	(%rdi), %rdx	# MEM[(const struct bipbuf_t *)me_11(D)].size, _19
# bipbuffer.c:29:         return me->size - me->a_end;
	movl	12(%rdi), %eax	# MEM[(const struct bipbuf_t *)me_11(D)].a_end,
# bipbuffer.c:98:         me->b_end += size;
	movl	%r8d, 16(%rdi)	# pretmp_46, me_11(D)->b_end
	jmp	.L31	#
	.cfi_endproc
.LFE64:
	.size	bipbuf_push, .-bipbuf_push
	.p2align 4
	.globl	bipbuf_offer
	.type	bipbuf_offer, @function
bipbuf_offer:
.LFB65:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movl	%edx, %ebp	# size, size
	movq	%rdi, %rbx	# me, me
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 32
# bipbuffer.c:25:     if (1 == me->b_inuse)
	cmpl	$1, 20(%rdi)	#, MEM[(const struct bipbuf_t *)me_21(D)].b_inuse
	je	.L52	#,
# bipbuffer.c:29:         return me->size - me->a_end;
	movl	12(%rdi), %edx	# MEM[(const struct bipbuf_t *)me_21(D)].a_end,
# bipbuffer.c:29:         return me->size - me->a_end;
	movl	(%rdi), %eax	# MEM[(const struct bipbuf_t *)me_21(D)].size, _35
# bipbuffer.c:113:         return 0;
	xorl	%ecx, %ecx	# <retval>
# bipbuffer.c:29:         return me->size - me->a_end;
	subl	%edx, %eax	# _34, _35
# bipbuffer.c:112:     if (bipbuf_unused(me) < size)
	cmpl	%eax, %ebp	# _35, size
	jg	.L39	#,
# bipbuffer.c:122:         memcpy(me->data + me->a_end, data, size);
	leaq	24(%rdi,%rdx), %rdi	#, _13
	movslq	%ebp, %rdx	# size, _9
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	call	memcpy@PLT	#
# bipbuffer.c:123:         me->a_end += size;
	movl	%ebp, %eax	# size, _16
	addl	12(%rbx), %eax	# me_21(D)->a_end,
# bipbuffer.c:72:     if (me->size - me->a_end < me->a_start - me->b_end)
	movl	16(%rbx), %ecx	# me_21(D)->b_end, pretmp_57
# bipbuffer.c:123:         me->a_end += size;
	movl	%eax, 12(%rbx)	# _16, me_21(D)->a_end
.L44:
# bipbuffer.c:72:     if (me->size - me->a_end < me->a_start - me->b_end)
	movq	(%rbx), %rdx	# me_21(D)->size, _41
	subq	%rax, %rdx	# _40, _41
# bipbuffer.c:72:     if (me->size - me->a_end < me->a_start - me->b_end)
	movl	8(%rbx), %eax	# me_21(D)->a_start, me_21(D)->a_start
	subl	%ecx, %eax	# pretmp_57, _45
# bipbuffer.c:72:     if (me->size - me->a_end < me->a_start - me->b_end)
	cmpq	%rax, %rdx	# _45, _41
	jnb	.L46	#,
# bipbuffer.c:73:         me->b_inuse = 1;
	movl	$1, 20(%rbx)	#, me_21(D)->b_inuse
.L46:
# bipbuffer.c:127:     return size;
	movl	%ebp, %ecx	# size, <retval>
.L39:
# bipbuffer.c:128: }
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movl	%ecx, %eax	# <retval>,
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4
	.p2align 3
.L52:
	.cfi_restore_state
# bipbuffer.c:27:         return me->a_start - me->b_end;
	movl	16(%rdi), %edx	# MEM[(const struct bipbuf_t *)me_21(D)].b_end,
# bipbuffer.c:27:         return me->a_start - me->b_end;
	movl	8(%rdi), %eax	# MEM[(const struct bipbuf_t *)me_21(D)].a_start, _31
# bipbuffer.c:113:         return 0;
	xorl	%ecx, %ecx	# <retval>
# bipbuffer.c:27:         return me->a_start - me->b_end;
	subl	%edx, %eax	# _30, _31
# bipbuffer.c:112:     if (bipbuf_unused(me) < size)
	cmpl	%eax, %ebp	# _31, size
	jg	.L39	#,
# bipbuffer.c:117:         memcpy(me->data + me->b_end, data, size);
	leaq	24(%rdi,%rdx), %rdi	#, _5
	movslq	%ebp, %rdx	# size, _1
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	call	memcpy@PLT	#
# bipbuffer.c:118:         me->b_end += size;
	movl	16(%rbx), %ecx	# me_21(D)->b_end, pretmp_57
# bipbuffer.c:72:     if (me->size - me->a_end < me->a_start - me->b_end)
	movl	12(%rbx), %eax	# me_21(D)->a_end,
# bipbuffer.c:118:         me->b_end += size;
	addl	%ebp, %ecx	# size, pretmp_57
	movl	%ecx, 16(%rbx)	# pretmp_57, me_21(D)->b_end
	jmp	.L44	#
	.cfi_endproc
.LFE65:
	.size	bipbuf_offer, .-bipbuf_offer
	.p2align 4
	.globl	bipbuf_peek
	.type	bipbuf_peek, @function
bipbuf_peek:
.LFB66:
	.cfi_startproc
	endbr64	
# bipbuffer.c:133:     if (me->size < me->a_start + size)
	movl	8(%rdi), %edx	# me_9(D)->a_start, _2
# bipbuffer.c:133:     if (me->size < me->a_start + size)
	leal	(%rdx,%rsi), %eax	#, _4
# bipbuffer.c:133:     if (me->size < me->a_start + size)
	cmpq	%rax, (%rdi)	# _4, me_9(D)->size
	jb	.L55	#,
# bipbuffer.c:136:     if (bipbuf_is_empty(me))
	cmpl	12(%rdi), %edx	# me_9(D)->a_end, _2
# bipbuffer.c:139:     return (unsigned char *)me->data + me->a_start;
	movl	%edx, %eax	# _2, _6
	movl	$0, %edx	#, tmp117
	leaq	24(%rdi,%rax), %rax	#, tmp118
	cmove	%rdx, %rax	# tmp118,, tmp117, <retval>
	ret	
	.p2align 4
	.p2align 3
.L55:
# bipbuffer.c:134:         return NULL;
	xorl	%eax, %eax	# <retval>
# bipbuffer.c:140: }
	ret	
	.cfi_endproc
.LFE66:
	.size	bipbuf_peek, .-bipbuf_peek
	.p2align 4
	.globl	bipbuf_peek_all
	.type	bipbuf_peek_all, @function
bipbuf_peek_all:
.LFB67:
	.cfi_startproc
	endbr64	
# bipbuffer.c:65:     return me->a_start == me->a_end;
	movl	8(%rdi), %edx	# me_8(D)->a_start, _9
# bipbuffer.c:65:     return me->a_start == me->a_end;
	movl	12(%rdi), %eax	# me_8(D)->a_end, _13
# bipbuffer.c:144:     if (bipbuf_is_empty(me))
	cmpl	%eax, %edx	# _13, _9
	je	.L59	#,
# bipbuffer.c:147:     *size = me->a_end - me->a_start;
	subl	%edx, %eax	# _9, tmp107
	movl	%eax, (%rsi)	# tmp107, *size_10(D)
# bipbuffer.c:148:     return (unsigned char*)me->data + me->a_start;
	movl	8(%rdi), %eax	# me_8(D)->a_start, _4
# bipbuffer.c:148:     return (unsigned char*)me->data + me->a_start;
	leaq	24(%rdi,%rax), %rax	#, <retval>
	ret	
	.p2align 4
	.p2align 3
.L59:
# bipbuffer.c:145:         return NULL;
	xorl	%eax, %eax	# <retval>
# bipbuffer.c:149: }
	ret	
	.cfi_endproc
.LFE67:
	.size	bipbuf_peek_all, .-bipbuf_peek_all
	.p2align 4
	.globl	bipbuf_poll
	.type	bipbuf_poll, @function
bipbuf_poll:
.LFB68:
	.cfi_startproc
	endbr64	
# bipbuffer.c:65:     return me->a_start == me->a_end;
	movl	8(%rdi), %eax	# MEM[(const struct bipbuf_t *)me_13(D)].a_start,
# bipbuffer.c:65:     return me->a_start == me->a_end;
	movl	12(%rdi), %edx	# MEM[(const struct bipbuf_t *)me_13(D)].a_end,
# bipbuffer.c:153:     if (bipbuf_is_empty(me))
	cmpl	%edx, %eax	# _24, _14
	je	.L67	#,
# bipbuffer.c:157:     if (me->size < me->a_start + size)
	movq	(%rdi), %rcx	# me_13(D)->size, _2
# bipbuffer.c:157:     if (me->size < me->a_start + size)
	leal	(%rsi,%rax), %r8d	#,
	movq	%r8, %rsi	#,
# bipbuffer.c:157:     if (me->size < me->a_start + size)
	cmpq	%r8, %rcx	# _4, _2
	jb	.L67	#,
# bipbuffer.c:161:     me->a_start += size;
	movl	%r8d, 8(%rdi)	# _3, me_13(D)->a_start
# bipbuffer.c:160:     void *end = me->data + me->a_start;
	leaq	24(%rdi,%rax), %rax	#, <retval>
# bipbuffer.c:170:             me->a_end = me->b_end;
	movl	16(%rdi), %r8d	# me_13(D)->b_end, pretmp_43
# bipbuffer.c:164:     if (me->a_start == me->a_end)
	cmpl	%edx, %esi	# _24, _3
	je	.L62	#,
# bipbuffer.c:72:     if (me->size - me->a_end < me->a_start - me->b_end)
	subq	%rdx, %rcx	# _38, _2
# bipbuffer.c:72:     if (me->size - me->a_end < me->a_start - me->b_end)
	subl	%r8d, %esi	# pretmp_43, _31
# bipbuffer.c:72:     if (me->size - me->a_end < me->a_start - me->b_end)
	cmpq	%rsi, %rcx	# _31, _2
	jnb	.L60	#,
.L69:
# bipbuffer.c:73:         me->b_inuse = 1;
	movl	$1, 20(%rdi)	#, me_13(D)->b_inuse
	ret	
	.p2align 4
	.p2align 3
.L62:
# bipbuffer.c:167:         if (1 == me->b_inuse)
	cmpl	$1, 20(%rdi)	#, me_13(D)->b_inuse
	je	.L68	#,
# bipbuffer.c:175:             me->a_start = me->a_end = 0;
	xorl	%esi, %esi	# _3
	movq	$0, 8(%rdi)	#, MEM <vector(2) unsigned int> [(unsigned int *)me_13(D) + 8B]
# bipbuffer.c:72:     if (me->size - me->a_end < me->a_start - me->b_end)
	subl	%r8d, %esi	# pretmp_43, _31
# bipbuffer.c:72:     if (me->size - me->a_end < me->a_start - me->b_end)
	cmpq	%rsi, %rcx	# _31, _2
	jb	.L69	#,
.L60:
# bipbuffer.c:180: }
	ret	
	.p2align 4
	.p2align 3
.L67:
# bipbuffer.c:154:         return NULL;
	xorl	%eax, %eax	# <retval>
# bipbuffer.c:180: }
	ret	
	.p2align 4
	.p2align 3
.L68:
# bipbuffer.c:169:             me->a_start = 0;
	movl	$0, 8(%rdi)	#, me_13(D)->a_start
# bipbuffer.c:170:             me->a_end = me->b_end;
	movl	%r8d, 12(%rdi)	# pretmp_43, me_13(D)->a_end
# bipbuffer.c:171:             me->b_end = me->b_inuse = 0;
	movq	$0, 16(%rdi)	#, MEM <unsigned long> [(void *)me_13(D) + 16B]
	ret	
	.cfi_endproc
.LFE68:
	.size	bipbuf_poll, .-bipbuf_poll
	.ident	"GCC: (Ubuntu 15.2.0-16ubuntu1) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
