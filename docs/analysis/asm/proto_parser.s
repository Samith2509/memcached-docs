	.file	"proto_parser.c"
# GNU C23 (Ubuntu 15.2.0-16ubuntu1) version 15.2.0 (x86_64-linux-gnu)
#	compiled by GNU C version 15.2.0, GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.3.1, isl version isl-0.27-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -D_FORTIFY_SOURCE=3 -march=znver3 -mmmx -mpopcnt -msse -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mavx -mavx2 -msse4a -mno-fma4 -mno-xop -mfma -mno-avx512f -mbmi -mbmi2 -maes -mpclmul -mno-avx512vl -mno-avx512bw -mno-avx512dq -mno-avx512cd -mno-avx512vbmi -mno-avx512ifma -mno-avx512vpopcntdq -mno-avx512vbmi2 -mno-gfni -mvpclmulqdq -mno-avx512vnni -mno-avx512bitalg -mno-avx512bf16 -mno-avx512vp2intersect -mno-3dnow -madx -mabm -mno-cldemote -mclflushopt -mclwb -mclzero -mcx16 -mno-enqcmd -mf16c -mfsgsbase -mfxsr -mno-hle -msahf -mno-lwp -mlzcnt -mmovbe -mno-movdir64b -mno-movdiri -mno-mwaitx -mno-pconfig -mno-pku -mprfchw -mno-ptwrite -mrdpid -mrdrnd -mrdseed -mno-rtm -mno-serialize -mno-sgx -msha -mshstk -mno-tbm -mno-tsxldtrk -mvaes -mno-waitpkg -mno-wbnoinvd -mxsave -mxsavec -mxsaveopt -mxsaves -mno-amx-tile -mno-amx-int8 -mno-amx-bf16 -mno-uintr -mno-hreset -mno-kl -mno-widekl -mno-avxvnni -mno-avx512fp16 -mno-avxifma -mno-avxvnniint8 -mno-avxneconvert -mno-cmpccxadd -mno-amx-fp16 -mno-prefetchi -mno-raoint -mno-amx-complex -mno-avxvnniint16 -mno-sm3 -mno-sha512 -mno-sm4 -mno-apxf -mno-usermsr -mno-avx10.2 -mno-amx-avx512 -mno-amx-tf32 -mno-amx-transpose -mno-amx-fp8 -mno-movrs -mno-amx-movrs --param=l1-cache-size=32 --param=l1-cache-line-size=64 --param=l2-cache-size=512 -mtune=znver3 -O3 -ftree-vectorize -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection -fzero-init-padding-bits=all
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"proto_parser.c"
.LC1:
	.string	"dch->used <= dch->size"
.LC2:
	.string	"len == done"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB3:
	.text
.LHOTB3:
	.p2align 4
	.type	_store_item_copy_from_buf, @function
_store_item_copy_from_buf:
.LFB86:
	.cfi_startproc
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movl	%edx, %r12d	# len, len
	pushq	%rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
# proto_parser.c:434: static int _store_item_copy_from_buf(item *d_it, char *buf, const int len) {
	movq	%rsi, %r13	# buf, buf
# proto_parser.c:435:     if (d_it->it_flags & ITEM_CHUNKED) {
	movzwl	38(%rdi), %edx	# d_it_53(D)->it_flags, _1
# proto_parser.c:436:         item_chunk *dch = (item_chunk *) ITEM_schunk(d_it);
	movl	%edx, %eax	# _1, _89
	leaq	0(,%rdx,4), %rcx	#, _93
	shrl	$6, %eax	#, _89
	andl	$8, %ecx	#, _94
	andl	$4, %eax	#, _91
	addq	%rcx, %rax	# _94, _82
	movzbl	41(%rdi), %ecx	# d_it_53(D)->nkey, _87
# proto_parser.c:435:     if (d_it->it_flags & ITEM_CHUNKED) {
	andl	$32, %edx	#, _1
# proto_parser.c:436:         item_chunk *dch = (item_chunk *) ITEM_schunk(d_it);
	leaq	1(%rax,%rcx), %rax	#, _97
# proto_parser.c:435:     if (d_it->it_flags & ITEM_CHUNKED) {
	je	.L2	#,
# proto_parser.c:439:         while (len > done && dch) {
	testl	%r12d, %r12d	# len
	jle	.L10	#,
# proto_parser.c:436:         item_chunk *dch = (item_chunk *) ITEM_schunk(d_it);
	leaq	48(%rdi,%rax), %rbp	#, tch
# proto_parser.c:437:         int done = 0;
	xorl	%r14d, %r14d	# done
	jmp	.L7	#
	.p2align 4
	.p2align 3
.L5:
# proto_parser.c:439:         while (len > done && dch) {
	cmpl	%r14d, %r12d	# done, len
	jle	.L3	#,
.L7:
# proto_parser.c:440:             int todo = (dch->size - dch->used < len - done)
	movslq	28(%rbp), %rax	# dch_74->used,
# proto_parser.c:440:             int todo = (dch->size - dch->used < len - done)
	movl	24(%rbp), %ebx	# dch_74->size, _17
# proto_parser.c:440:             int todo = (dch->size - dch->used < len - done)
	movl	%r12d, %edx	# len, _14
# proto_parser.c:442:             memcpy(dch->data + dch->used, buf + done, todo);
	movslq	%r14d, %rsi	# done, _19
# proto_parser.c:440:             int todo = (dch->size - dch->used < len - done)
	subl	%r14d, %edx	# done, _14
# proto_parser.c:440:             int todo = (dch->size - dch->used < len - done)
	subl	%eax, %ebx	# _16, _17
# proto_parser.c:442:             memcpy(dch->data + dch->used, buf + done, todo);
	leaq	42(%rbp,%rax), %rdi	#, _23
# proto_parser.c:440:             int todo = (dch->size - dch->used < len - done)
	cmpl	%edx, %ebx	# _14, _17
	cmovg	%edx, %ebx	# _17,, _14, todo
# proto_parser.c:442:             memcpy(dch->data + dch->used, buf + done, todo);
	addq	%r13, %rsi	# buf, _20
# proto_parser.c:442:             memcpy(dch->data + dch->used, buf + done, todo);
	movslq	%ebx, %rdx	# todo, _18
# proto_parser.c:443:             done += todo;
	addl	%ebx, %r14d	# todo, done
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	call	memcpy@PLT	#
# proto_parser.c:444:             dch->used += todo;
	addl	28(%rbp), %ebx	# dch_74->used, _25
	movl	%ebx, 28(%rbp)	# _25, dch_74->used
# proto_parser.c:445:             assert(dch->used <= dch->size);
	cmpl	24(%rbp), %ebx	# dch_74->size, _25
	jg	.L13	#,
# proto_parser.c:447:             if (dch->size == dch->used) {
	jne	.L5	#,
# proto_parser.c:448:                 item_chunk *tch = do_item_alloc_chunk(dch, len - done);
	movl	%r12d, %esi	# len, _27
# proto_parser.c:448:                 item_chunk *tch = do_item_alloc_chunk(dch, len - done);
	movq	%rbp, %rdi	# tch,
# proto_parser.c:448:                 item_chunk *tch = do_item_alloc_chunk(dch, len - done);
	subl	%r14d, %esi	# done, _27
# proto_parser.c:448:                 item_chunk *tch = do_item_alloc_chunk(dch, len - done);
	movslq	%esi, %rsi	# _27, _28
	call	do_item_alloc_chunk@PLT	#
	movq	%rax, %rbp	# tch, tch
# proto_parser.c:449:                 if (tch) {
	testq	%rax, %rax	# tch
	jne	.L5	#,
# proto_parser.c:462: }
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 40
# proto_parser.c:452:                     return -1;
	movl	$-1, %eax	#, <retval>
# proto_parser.c:462: }
	popq	%rbp	#
	.cfi_def_cfa_offset 32
	popq	%r12	#
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
	ret	
.L10:
	.cfi_restore_state
# proto_parser.c:437:         int done = 0;
	xorl	%r14d, %r14d	# done
	.p2align 4
	.p2align 3
.L3:
# proto_parser.c:456:         assert(len == done);
	cmpl	%r14d, %r12d	# done, len
	jne	.L8	#,
.L9:
# proto_parser.c:462: }
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 40
# proto_parser.c:461:     return 0;
	xorl	%eax, %eax	# <retval>
# proto_parser.c:462: }
	popq	%rbp	#
	.cfi_def_cfa_offset 32
	popq	%r12	#
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4
	.p2align 3
.L2:
	.cfi_restore_state
# proto_parser.c:458:         memcpy(ITEM_data(d_it), buf, len);
	leaq	48(%rdi,%rax), %rdi	#, _45
	movslq	%r12d, %rdx	# len, _30
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	call	memcpy@PLT	#
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	jmp	.L9	#
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.type	_store_item_copy_from_buf.cold, @function
_store_item_copy_from_buf.cold:
.LFSB86:
.L8:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	.cfi_offset 6, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
# proto_parser.c:456:         assert(len == done);
	leaq	__PRETTY_FUNCTION__.7(%rip), %rcx	#,
	movl	$456, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC2(%rip), %rdi	#,
	call	__assert_fail@PLT	#
.L13:
# proto_parser.c:445:             assert(dch->used <= dch->size);
	leaq	__PRETTY_FUNCTION__.7(%rip), %rcx	#,
	movl	$445, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC1(%rip), %rdi	#,
	call	__assert_fail@PLT	#
	.cfi_endproc
.LFE86:
	.text
	.size	_store_item_copy_from_buf, .-_store_item_copy_from_buf
	.section	.text.unlikely
	.size	_store_item_copy_from_buf.cold, .-_store_item_copy_from_buf.cold
.LCOLDE3:
	.text
.LHOTE3:
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC4:
	.string	"SERVER_ERROR output line too long"
	.text
	.p2align 4
	.type	pout_string, @function
pout_string:
.LFB82:
	.cfi_startproc
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rsi, %rbp	# str, str
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %rbx	# resp, resp
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 48
# proto_parser.c:376:     bool skip = resp->skip;
	movzbl	118(%rdi), %r12d	# resp_3(D)->skip, skip
# proto_parser.c:381:     resp_reset(resp);
	call	resp_reset@PLT	#
# proto_parser.c:385:     if (skip || resp->noreply) {
	testb	%r12b, %r12b	# skip
	jne	.L17	#,
# proto_parser.c:385:     if (skip || resp->noreply) {
	cmpb	$0, 121(%rbx)	#, resp_3(D)->noreply
	jne	.L17	#,
# proto_parser.c:392:     len = strlen(str);
	movq	%rbp, %rdi	# str,
	call	strlen@PLT	#
	movq	%rax, %r12	# len, len
# proto_parser.c:393:     if ((len + 2) > WRITE_BUFFER_SIZE) {
	leaq	2(%rax), %rax	#, _11
# proto_parser.c:401:     resp_add_iov(resp, resp->wbuf, len + 2);
	leal	2(%r12), %r14d	#, _27
# proto_parser.c:393:     if ((len + 2) > WRITE_BUFFER_SIZE) {
	cmpq	$1024, %rax	#, _11
	jbe	.L20	#,
	movl	$35, %r14d	#, _27
# proto_parser.c:396:         len = strlen(str);
	movl	$33, %r12d	#, len
# proto_parser.c:395:         str = "SERVER_ERROR output line too long";
	leaq	.LC4(%rip), %rbp	#, str
.L20:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movq	%r12, %rdx	# len,
	movq	%rbp, %rsi	# str,
	leaq	164(%rbx), %rdi	#,
	call	memcpy@PLT	#
# proto_parser.c:401:     resp_add_iov(resp, resp->wbuf, len + 2);
	movl	%r14d, %edx	# _27,
	movq	%rbx, %rdi	# resp,
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movw	$2573, (%rax,%r12)	#, MEM <char[1:2]> [(void *)_16]
# proto_parser.c:404: }
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 40
# proto_parser.c:401:     resp_add_iov(resp, resp->wbuf, len + 2);
	movq	%rax, %rsi	#,
# proto_parser.c:404: }
	popq	%rbx	#
	.cfi_def_cfa_offset 32
	popq	%rbp	#
	.cfi_def_cfa_offset 24
	popq	%r12	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
# proto_parser.c:401:     resp_add_iov(resp, resp->wbuf, len + 2);
	jmp	resp_add_iov@PLT	#
	.p2align 4
	.p2align 3
.L17:
	.cfi_restore_state
# proto_parser.c:386:         resp->skip = true;
	movb	$1, 118(%rbx)	#, resp_3(D)->skip
# proto_parser.c:404: }
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 40
	popq	%rbx	#
	.cfi_def_cfa_offset 32
	popq	%rbp	#
	.cfi_def_cfa_offset 24
	popq	%r12	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
	ret	
	.cfi_endproc
.LFE82:
	.size	pout_string, .-pout_string
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"CLIENT_ERROR options flags are too long"
	.align 8
.LC6:
	.string	"CLIENT_ERROR bad command line format"
	.section	.rodata.str1.1
.LC7:
	.string	"CLIENT_ERROR duplicate flag"
.LC8:
	.string	"CLIENT_ERROR invalid flag"
	.section	.rodata.str1.8
	.align 8
.LC9:
	.string	"CLIENT_ERROR error decoding key"
	.align 8
.LC10:
	.string	"CLIENT_ERROR bad token in command line format"
	.align 8
.LC11:
	.string	"CLIENT_ERROR invalid numeric initial value"
	.align 8
.LC12:
	.string	"CLIENT_ERROR invalid numeric delta value"
	.text
	.p2align 4
	.type	_meta_flag_preparse.constprop.0, @function
_meta_flag_preparse.constprop.0:
.LFB101:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
# proto_parser.c:470:     uint8_t seen[127] = {0};
	vpxor	%xmm0, %xmm0, %xmm0	# tmp185
# proto_parser.c:465: static int _meta_flag_preparse(mcp_parser_t *pr, const size_t start,
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	pushq	%r14	#
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	movq	%rdi, %r14	# pr, pr
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	subq	$184, %rsp	#,
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
# proto_parser.c:471:     of->key = MCP_PARSER_KEY(pr);
	movzbl	82(%r14), %eax	# pr_1(D)->keytoken, _4
	movq	(%rdi), %rdi	# pr_1(D)->request, pretmp_275
# proto_parser.c:465: static int _meta_flag_preparse(mcp_parser_t *pr, const size_t start,
	movq	%rcx, 8(%rsp)	# binkey, %sfp
	movq	%fs:40, %rbx	# MEM[(<address-space-1> long unsigned int *)40B], errstr
	movq	%rbx, 168(%rsp)	# errstr, D.12504
	movq	%r8, %rbx	# errstr, errstr
# proto_parser.c:471:     of->key = MCP_PARSER_KEY(pr);
	movzwl	18(%r14,%rax,2), %eax	# pr_1(D)->tok.tokens[_4], _6
# proto_parser.c:470:     uint8_t seen[127] = {0};
	vmovdqu	%ymm0, 96(%rsp)	# tmp185, seen
	vmovdqu	%ymm0, 32(%rsp)	# tmp185, seen
	vmovdqu	%ymm0, 64(%rsp)	# tmp185, seen
	vmovdqu	%ymm0, 127(%rsp)	# tmp185, seen
# proto_parser.c:471:     of->key = MCP_PARSER_KEY(pr);
	addq	%rdi, %rax	# pretmp_275, tmp192
	movq	%rax, 24(%rdx)	# tmp192, of_8(D)->key
# proto_parser.c:472:     of->key_len = pr->klen;
	movl	92(%r14), %eax	# pr_1(D)->klen, _9
# proto_parser.c:472:     of->key_len = pr->klen;
	movb	%al, 3(%rdx)	# _9, of_8(D)->key_len
# proto_parser.c:474:     if (pr->klen > KEY_MAX_LENGTH) {
	cmpl	$250, %eax	#, _9
	ja	.L64	#,
	movq	%rsi, %r9	# start, start
# proto_parser.c:479:     if (pr->tok.ntokens > MFLAG_MAX_OPT_LENGTH) {
	movzbl	16(%r14), %esi	# pr_1(D)->tok.ntokens,
# proto_parser.c:479:     if (pr->tok.ntokens > MFLAG_MAX_OPT_LENGTH) {
	cmpb	$20, %sil	#, prephitmp_285
	ja	.L73	#,
	movq	%rdx, %r15	# of, of
# proto_parser.c:486:     for (i = start; i < pr->tok.ntokens; i++) {
	movl	%r9d, %r13d	# start, i
# proto_parser.c:486:     for (i = start; i < pr->tok.ntokens; i++) {
	cmpl	%esi, %r9d	# _80, start
	jnb	.L68	#,
# proto_parser.c:494:         switch (o) {
	leaq	.L31(%rip), %r12	#, tmp335
	vzeroupper
	.p2align 4
	.p2align 3
.L62:
# proto_parser.c:487:         uint8_t o = (uint8_t)pr->request[pr->tok.tokens[i]];
	movl	%r13d, %eax	# i, i
	movzwl	18(%r14,%rax,2), %ecx	# pr_1(D)->tok.tokens[i_156], _18
# proto_parser.c:487:         uint8_t o = (uint8_t)pr->request[pr->tok.tokens[i]];
	movzbl	(%rdi,%rcx), %eax	# *_19, _20
# proto_parser.c:489:         if (o >= 127 || seen[o] != 0) {
	cmpb	$126, %al	#, _20
	ja	.L66	#,
# proto_parser.c:489:         if (o >= 127 || seen[o] != 0) {
	movsbq	%al, %rdx	# _20, _22
# proto_parser.c:489:         if (o >= 127 || seen[o] != 0) {
	cmpb	$0, 32(%rsp,%rdx)	#, seen[_22]
	jne	.L66	#,
# proto_parser.c:494:         switch (o) {
	subl	$67, %eax	#, tmp197
# proto_parser.c:493:         seen[o] = 1;
	movb	$1, 32(%rsp,%rdx)	#, seen[_22]
# proto_parser.c:494:         switch (o) {
	cmpb	$53, %al	#, tmp197
	ja	.L67	#,
	movzbl	%al, %eax	# tmp197, tmp198
	movslq	(%r12,%rax,4), %rax	#, tmp201
	addq	%r12, %rax	# tmp335, tmp202
	notrack jmp	*%rax	# tmp202
	.section	.rodata
	.align 4
	.align 4
.L31:
	.long	.L48-.L31
	.long	.L47-.L31
	.long	.L46-.L31
	.long	.L45-.L31
	.long	.L67-.L31
	.long	.L67-.L31
	.long	.L44-.L31
	.long	.L43-.L31
	.long	.L67-.L31
	.long	.L49-.L31
	.long	.L42-.L31
	.long	.L41-.L31
	.long	.L49-.L31
	.long	.L49-.L31
	.long	.L67-.L31
	.long	.L40-.L31
	.long	.L67-.L31
	.long	.L39-.L31
	.long	.L67-.L31
	.long	.L67-.L31
	.long	.L67-.L31
	.long	.L67-.L31
	.long	.L67-.L31
	.long	.L67-.L31
	.long	.L67-.L31
	.long	.L67-.L31
	.long	.L67-.L31
	.long	.L67-.L31
	.long	.L67-.L31
	.long	.L67-.L31
	.long	.L67-.L31
	.long	.L38-.L31
	.long	.L49-.L31
	.long	.L67-.L31
	.long	.L67-.L31
	.long	.L49-.L31
	.long	.L67-.L31
	.long	.L37-.L31
	.long	.L67-.L31
	.long	.L67-.L31
	.long	.L49-.L31
	.long	.L36-.L31
	.long	.L67-.L31
	.long	.L67-.L31
	.long	.L67-.L31
	.long	.L67-.L31
	.long	.L35-.L31
	.long	.L67-.L31
	.long	.L49-.L31
	.long	.L49-.L31
	.long	.L33-.L31
	.long	.L32-.L31
	.long	.L67-.L31
	.long	.L30-.L31
	.text
	.p2align 4
	.p2align 3
.L67:
	leaq	.LC8(%rip), %rax	#, _286
.L26:
# proto_parser.c:481:         *errstr = "CLIENT_ERROR options flags are too long";
	movq	%rax, (%rbx)	# _286, *errstr_11(D)
# proto_parser.c:476:         return -1;
	movl	$-1, %eax	#, <retval>
.L25:
# proto_parser.c:623: }
	movq	168(%rsp), %rdx	# D.12504, tmp353
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp353
	jne	.L74	#,
	addq	$184, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret	
	.p2align 4
	.p2align 3
.L46:
	.cfi_restore_state
# proto_parser.c:589:                 if (mcmc_token_get_flag_arg_u64(pr->request, &pr->tok, i, &of->cas_id_in) == MCMC_OK) {
	leaq	40(%r15), %rcx	#, _63
	leaq	16(%r14), %rsi	#, _65
	movl	%r13d, %edx	# i,
	call	mcmc_token_get_flag_arg_u64@PLT	#
# proto_parser.c:589:                 if (mcmc_token_get_flag_arg_u64(pr->request, &pr->tok, i, &of->cas_id_in) == MCMC_OK) {
	testl	%eax, %eax	# _66
	je	.L75	#,
.L59:
# proto_parser.c:592:                     *errstr = "CLIENT_ERROR bad token in command line format";
	leaq	.LC10(%rip), %rax	#, tmp361
	movq	%rax, (%rbx)	# tmp361, *errstr_11(D)
.L72:
# proto_parser.c:593:                     of->has_error = 1;
	orb	$1, (%r15)	#, of_8(D)->has_error
.L71:
	movzbl	16(%r14), %esi	# pr_1(D)->tok.ntokens, _80
.L49:
# proto_parser.c:486:     for (i = start; i < pr->tok.ntokens; i++) {
	incl	%r13d	# i
# proto_parser.c:486:     for (i = start; i < pr->tok.ntokens; i++) {
	cmpl	%esi, %r13d	# _80, i
	jnb	.L29	#,
.L76:
# proto_parser.c:487:         uint8_t o = (uint8_t)pr->request[pr->tok.tokens[i]];
	movq	(%r14), %rdi	# pr_1(D)->request, pretmp_275
	jmp	.L62	#
	.p2align 4
	.p2align 3
.L30:
# proto_parser.c:486:     for (i = start; i < pr->tok.ntokens; i++) {
	incl	%r13d	# i
# proto_parser.c:568:                 of->remove_val = 1;
	orb	$32, 1(%r15)	#, of_8(D)->remove_val
# proto_parser.c:486:     for (i = start; i < pr->tok.ntokens; i++) {
	cmpl	%esi, %r13d	# _80, i
	jb	.L76	#,
	.p2align 4
	.p2align 3
.L29:
# proto_parser.c:622:     return of->has_error ? -1 : 0;
	movzbl	(%r15), %eax	# *of_8(D), *of_8(D)
# proto_parser.c:622:     return of->has_error ? -1 : 0;
	andl	$1, %eax	#, _84
	negl	%eax	# <retval>
	jmp	.L25	#
	.p2align 4
	.p2align 3
.L32:
# proto_parser.c:556:                 of->value = 1;
	orb	$64, (%r15)	#, of_8(D)->value
# proto_parser.c:557:                 break;
	jmp	.L49	#
	.p2align 4
	.p2align 3
.L33:
# proto_parser.c:562:                 of->no_update = 1;
	orb	$2, (%r15)	#, of_8(D)->no_update
# proto_parser.c:563:                 break;
	jmp	.L49	#
	.p2align 4
	.p2align 3
.L35:
# proto_parser.c:565:                 of->no_reply = 1;
	orb	$1, 1(%r15)	#, of_8(D)->no_reply
# proto_parser.c:566:                 break;
	jmp	.L49	#
	.p2align 4
	.p2align 3
.L36:
# proto_parser.c:543:                 of->locked = 1; // need locked to delay LRU bump
	orb	$20, (%r15)	#, MEM <unsigned char> [(struct _meta_flags *)of_8(D)]
# proto_parser.c:544:                 break;
	jmp	.L49	#
	.p2align 4
	.p2align 3
.L37:
# proto_parser.c:559:                 of->locked = 1; // need locked to delay LRU bump
	orb	$4, (%r15)	#, of_8(D)->locked
# proto_parser.c:560:                 break;
	jmp	.L49	#
	.p2align 4
	.p2align 3
.L38:
# proto_parser.c:498:                 ret = base64_decode((unsigned char *)MCP_PARSER_KEY(pr), pr->klen,
	movzbl	82(%r14), %eax	# pr_1(D)->keytoken, _27
# proto_parser.c:498:                 ret = base64_decode((unsigned char *)MCP_PARSER_KEY(pr), pr->klen,
	movl	92(%r14), %esi	# pr_1(D)->klen, _25
	movq	8(%rsp), %rdx	# %sfp,
# proto_parser.c:498:                 ret = base64_decode((unsigned char *)MCP_PARSER_KEY(pr), pr->klen,
	movzwl	18(%r14,%rax,2), %eax	# pr_1(D)->tok.tokens[_27], _29
# proto_parser.c:498:                 ret = base64_decode((unsigned char *)MCP_PARSER_KEY(pr), pr->klen,
	movq	%rsi, %rcx	# _25,
# proto_parser.c:498:                 ret = base64_decode((unsigned char *)MCP_PARSER_KEY(pr), pr->klen,
	addq	%rax, %rdi	# _29, _30
# proto_parser.c:498:                 ret = base64_decode((unsigned char *)MCP_PARSER_KEY(pr), pr->klen,
	call	base64_decode@PLT	#
# proto_parser.c:500:                 if (ret == 0) {
	testq	%rax, %rax	# ret
	jne	.L50	#,
# proto_parser.c:502:                     *errstr = "CLIENT_ERROR error decoding key";
	leaq	.LC9(%rip), %rcx	#, tmp355
	movq	%rcx, (%rbx)	# tmp355, *errstr_11(D)
# proto_parser.c:503:                     of->has_error = 1;
	orb	$1, (%r15)	#, of_8(D)->has_error
.L50:
# proto_parser.c:505:                 of->key = binkey;
	movq	8(%rsp), %rcx	# %sfp, binkey
# proto_parser.c:506:                 of->key_len = ret;
	movb	%al, 3(%r15)	# ret, of_8(D)->key_len
# proto_parser.c:507:                 of->key_binary = 1;
	orb	$16, 1(%r15)	#, of_8(D)->key_binary
# proto_parser.c:505:                 of->key = binkey;
	movq	%rcx, 24(%r15)	# binkey, of_8(D)->key
	movzbl	16(%r14), %esi	# pr_1(D)->tok.ntokens, _80
# proto_parser.c:508:                 break;
	jmp	.L49	#
	.p2align 4
	.p2align 3
.L39:
# proto_parser.c:523:                 of->locked = 1;
	orb	$4, (%r15)	#, of_8(D)->locked
# proto_parser.c:524:                 if (mcmc_token_get_flag_arg_32(pr->request, &pr->tok, i, &tmp_int) == MCMC_OK) {
	leaq	28(%rsp), %rcx	#, tmp232
	leaq	16(%r14), %rsi	#, _42
	movl	%r13d, %edx	# i,
	call	mcmc_token_get_flag_arg_32@PLT	#
# proto_parser.c:524:                 if (mcmc_token_get_flag_arg_32(pr->request, &pr->tok, i, &tmp_int) == MCMC_OK) {
	testl	%eax, %eax	# _43
	jne	.L59	#,
# proto_parser.c:525:                     of->exptime = realtime(EXPTIME_TO_POSITIVE_TIME(tmp_int));
	movslq	28(%rsp), %rdi	# tmp_int,
# proto_parser.c:525:                     of->exptime = realtime(EXPTIME_TO_POSITIVE_TIME(tmp_int));
	movl	$2592001, %eax	#,
	testl	%edi, %edi	# tmp_int.57_44
	cmovs	%rax, %rdi	#,,,
# proto_parser.c:525:                     of->exptime = realtime(EXPTIME_TO_POSITIVE_TIME(tmp_int));
	call	realtime@PLT	#
# proto_parser.c:526:                     of->new_ttl = true;
	orb	$8, 1(%r15)	#, of_8(D)->new_ttl
# proto_parser.c:525:                     of->exptime = realtime(EXPTIME_TO_POSITIVE_TIME(tmp_int));
	movl	%eax, 4(%r15)	# _47, of_8(D)->exptime
	movzbl	16(%r14), %esi	# pr_1(D)->tok.ntokens, _80
	jmp	.L49	#
	.p2align 4
	.p2align 3
.L40:
# proto_parser.c:533:                 of->locked = 1;
	orb	$4, (%r15)	#, of_8(D)->locked
# proto_parser.c:534:                 if (mcmc_token_get_flag_arg_32(pr->request, &pr->tok, i, &tmp_int) == MCMC_OK) {
	leaq	28(%rsp), %rcx	#, tmp248
	leaq	16(%r14), %rsi	#, _49
	movl	%r13d, %edx	# i,
	call	mcmc_token_get_flag_arg_32@PLT	#
# proto_parser.c:534:                 if (mcmc_token_get_flag_arg_32(pr->request, &pr->tok, i, &tmp_int) == MCMC_OK) {
	testl	%eax, %eax	# _50
	jne	.L59	#,
# proto_parser.c:535:                     of->recache_time = realtime(EXPTIME_TO_POSITIVE_TIME(tmp_int));
	movslq	28(%rsp), %rdi	# tmp_int,
# proto_parser.c:535:                     of->recache_time = realtime(EXPTIME_TO_POSITIVE_TIME(tmp_int));
	movl	$2592001, %eax	#,
	testl	%edi, %edi	# tmp_int.61_51
	cmovs	%rax, %rdi	#,,,
# proto_parser.c:535:                     of->recache_time = realtime(EXPTIME_TO_POSITIVE_TIME(tmp_int));
	call	realtime@PLT	#
# proto_parser.c:535:                     of->recache_time = realtime(EXPTIME_TO_POSITIVE_TIME(tmp_int));
	movl	%eax, 12(%r15)	# _54, of_8(D)->recache_time
	movzbl	16(%r14), %esi	# pr_1(D)->tok.ntokens, _80
	jmp	.L49	#
	.p2align 4
	.p2align 3
.L41:
# proto_parser.c:513:                 of->locked = 1;
	orb	$12, (%r15)	#, MEM <unsigned char> [(struct _meta_flags *)of_8(D)]
# proto_parser.c:515:                 if (mcmc_token_get_flag_arg_32(pr->request, &pr->tok, i, &tmp_int) == MCMC_OK) {
	leaq	28(%rsp), %rcx	#, tmp220
	leaq	16(%r14), %rsi	#, _35
	movl	%r13d, %edx	# i,
	call	mcmc_token_get_flag_arg_32@PLT	#
# proto_parser.c:515:                 if (mcmc_token_get_flag_arg_32(pr->request, &pr->tok, i, &tmp_int) == MCMC_OK) {
	testl	%eax, %eax	# _36
	jne	.L59	#,
# proto_parser.c:516:                     of->autoviv_exptime = realtime(EXPTIME_TO_POSITIVE_TIME(tmp_int));
	movslq	28(%rsp), %rdi	# tmp_int,
# proto_parser.c:516:                     of->autoviv_exptime = realtime(EXPTIME_TO_POSITIVE_TIME(tmp_int));
	movl	$2592001, %eax	#,
	testl	%edi, %edi	# tmp_int.53_37
	cmovs	%rax, %rdi	#,,,
# proto_parser.c:516:                     of->autoviv_exptime = realtime(EXPTIME_TO_POSITIVE_TIME(tmp_int));
	call	realtime@PLT	#
# proto_parser.c:516:                     of->autoviv_exptime = realtime(EXPTIME_TO_POSITIVE_TIME(tmp_int));
	movl	%eax, 8(%r15)	# _40, of_8(D)->autoviv_exptime
	movzbl	16(%r14), %esi	# pr_1(D)->tok.ntokens, _80
	jmp	.L49	#
	.p2align 4
	.p2align 3
.L42:
# proto_parser.c:599:                 of->mode = pr->request[pr->tok.tokens[i]+1];
	movzbl	1(%rdi,%rcx), %eax	# *_68, _69
# proto_parser.c:599:                 of->mode = pr->request[pr->tok.tokens[i]+1];
	movb	%al, 2(%r15)	# _69, of_8(D)->mode
# proto_parser.c:600:                 break;
	jmp	.L49	#
	.p2align 4
	.p2align 3
.L43:
# proto_parser.c:602:                 if (mcmc_token_get_flag_arg_u64(pr->request, &pr->tok, i, &of->initial) != MCMC_OK) {
	leaq	56(%r15), %rcx	#, _70
	leaq	16(%r14), %rsi	#, _72
	movl	%r13d, %edx	# i,
	call	mcmc_token_get_flag_arg_u64@PLT	#
# proto_parser.c:602:                 if (mcmc_token_get_flag_arg_u64(pr->request, &pr->tok, i, &of->initial) != MCMC_OK) {
	testl	%eax, %eax	# _73
	je	.L71	#,
# proto_parser.c:603:                     *errstr = "CLIENT_ERROR invalid numeric initial value";
	leaq	.LC11(%rip), %rax	#, tmp362
	movq	%rax, (%rbx)	# tmp362, *errstr_11(D)
# proto_parser.c:604:                     of->has_error = 1;
	orb	$1, (%r15)	#, of_8(D)->has_error
	movzbl	16(%r14), %esi	# pr_1(D)->tok.ntokens, _80
	jmp	.L49	#
	.p2align 4
	.p2align 3
.L44:
# proto_parser.c:614:                 of->set_stale = 1;
	orb	$-128, (%r15)	#, of_8(D)->set_stale
# proto_parser.c:615:                 break;
	jmp	.L49	#
	.p2align 4
	.p2align 3
.L45:
# proto_parser.c:575:                 if (mcmc_token_get_flag_arg_u32(pr->request, &pr->tok, i, &of->client_flags) != MCMC_OK) {
	leaq	16(%r15), %rcx	#, _55
# proto_parser.c:575:                 if (mcmc_token_get_flag_arg_u32(pr->request, &pr->tok, i, &of->client_flags) != MCMC_OK) {
	leaq	16(%r14), %rsi	#, _57
	movl	%r13d, %edx	# i,
	call	mcmc_token_get_flag_arg_u32@PLT	#
# proto_parser.c:575:                 if (mcmc_token_get_flag_arg_u32(pr->request, &pr->tok, i, &of->client_flags) != MCMC_OK) {
	testl	%eax, %eax	# _58
	jne	.L72	#,
	jmp	.L71	#
	.p2align 4
	.p2align 3
.L47:
# proto_parser.c:608:                 if (mcmc_token_get_flag_arg_u64(pr->request, &pr->tok, i, &of->delta) != MCMC_OK) {
	leaq	48(%r15), %rcx	#, _74
	leaq	16(%r14), %rsi	#, _76
	movl	%r13d, %edx	# i,
	call	mcmc_token_get_flag_arg_u64@PLT	#
# proto_parser.c:608:                 if (mcmc_token_get_flag_arg_u64(pr->request, &pr->tok, i, &of->delta) != MCMC_OK) {
	testl	%eax, %eax	# _77
	je	.L71	#,
# proto_parser.c:609:                     *errstr = "CLIENT_ERROR invalid numeric delta value";
	leaq	.LC12(%rip), %rax	#, tmp363
	movq	%rax, (%rbx)	# tmp363, *errstr_11(D)
# proto_parser.c:610:                     of->has_error = 1;
	orb	$1, (%r15)	#, of_8(D)->has_error
	jmp	.L71	#
	.p2align 4
	.p2align 3
.L48:
# proto_parser.c:581:                 if (mcmc_token_get_flag_arg_u64(pr->request, &pr->tok, i, &of->req_cas_id) == MCMC_OK) {
	leaq	32(%r15), %rcx	#, _59
	leaq	16(%r14), %rsi	#, _61
	movl	%r13d, %edx	# i,
	call	mcmc_token_get_flag_arg_u64@PLT	#
# proto_parser.c:581:                 if (mcmc_token_get_flag_arg_u64(pr->request, &pr->tok, i, &of->req_cas_id) == MCMC_OK) {
	testl	%eax, %eax	# _62
	jne	.L59	#,
# proto_parser.c:582:                     of->has_cas = true;
	orb	$2, 1(%r15)	#, of_8(D)->has_cas
	movzbl	16(%r14), %esi	# pr_1(D)->tok.ntokens, _80
	jmp	.L49	#
	.p2align 4
	.p2align 3
.L66:
	leaq	.LC7(%rip), %rax	#, _286
	jmp	.L26	#
	.p2align 4
	.p2align 3
.L75:
# proto_parser.c:590:                     of->has_cas_in = true;
	orb	$4, 1(%r15)	#, of_8(D)->has_cas_in
	movzbl	16(%r14), %esi	# pr_1(D)->tok.ntokens, _80
	jmp	.L49	#
.L68:
	vzeroupper
	jmp	.L29	#
.L64:
	leaq	.LC6(%rip), %rax	#, _286
	vzeroupper
	jmp	.L26	#
.L73:
	leaq	.LC5(%rip), %rax	#, _286
	vzeroupper
	jmp	.L26	#
.L74:
# proto_parser.c:623: }
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE101:
	.size	_meta_flag_preparse.constprop.0, .-_meta_flag_preparse.constprop.0
	.section	.rodata.str1.1
.LC13:
	.string	"noreply"
	.text
	.p2align 4
	.type	_process_request_simple.constprop.0, @function
_process_request_simple.constprop.0:
.LFB102:
	.cfi_startproc
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
# proto_parser.c:147:     mcmc_tokenize(pr->request, pr->reqlen, &pr->tok, 255);
	leaq	16(%rdi), %rbp	#, _2
# proto_parser.c:146: static int _process_request_simple(mcp_parser_t *pr, const int min) {
	subq	$16, %rsp	#,
	.cfi_def_cfa_offset 48
# proto_parser.c:146: static int _process_request_simple(mcp_parser_t *pr, const int min) {
	movq	%rdi, %rbx	# pr, pr
# proto_parser.c:147:     mcmc_tokenize(pr->request, pr->reqlen, &pr->tok, 255);
	movl	$255, %ecx	#,
	movq	%rbp, %rdx	# _2,
# proto_parser.c:146: static int _process_request_simple(mcp_parser_t *pr, const int min) {
	movq	%fs:40, %r12	# MEM[(<address-space-1> long unsigned int *)40B], min
	movq	%r12, 8(%rsp)	# min, D.12534
	movl	%esi, %r12d	# min, min
# proto_parser.c:147:     mcmc_tokenize(pr->request, pr->reqlen, &pr->tok, 255);
	movl	84(%rdi), %esi	# pr_1(D)->reqlen, _4
	movq	(%rdi), %rdi	# pr_1(D)->request, pr_1(D)->request
	call	mcmc_tokenize@PLT	#
# proto_parser.c:148:     if (pr->tok.ntokens < min) {
	movzbl	16(%rbx), %eax	# pr_1(D)->tok.ntokens, _7
# proto_parser.c:148:     if (pr->tok.ntokens < min) {
	cmpl	%r12d, %eax	# min, _7
	jl	.L81	#,
# proto_parser.c:51:     mcmc_token_get(pr->request, &pr->tok, pr->keytoken, &len);
	movq	(%rbx), %rdi	# pr_1(D)->request, pr_1(D)->request
	leaq	4(%rsp), %rcx	#,
	movl	$1, %edx	#,
	movq	%rbp, %rsi	# _2,
# proto_parser.c:151:     pr->keytoken = 1; // second token is usually the key... stupid GAT.
	movb	$1, 82(%rbx)	#, pr_1(D)->keytoken
# proto_parser.c:50:     int len = 0;
	movl	$0, 4(%rsp)	#, MEM[(int *)_21]
# proto_parser.c:51:     mcmc_token_get(pr->request, &pr->tok, pr->keytoken, &len);
	call	mcmc_token_get@PLT	#
# proto_parser.c:52:     pr->klen = len;
	movl	4(%rsp), %eax	# MEM[(int *)_21], MEM[(int *)_21]
# proto_parser.c:112:     const char *tok = mcmc_token_get(pr->request, &pr->tok, pr->tok.ntokens-1, &len);
	leaq	4(%rsp), %rcx	#,
	movq	%rbp, %rsi	# _2,
# proto_parser.c:112:     const char *tok = mcmc_token_get(pr->request, &pr->tok, pr->tok.ntokens-1, &len);
	movzbl	16(%rbx), %edx	# pr_1(D)->tok.ntokens, _23
# proto_parser.c:112:     const char *tok = mcmc_token_get(pr->request, &pr->tok, pr->tok.ntokens-1, &len);
	movq	(%rbx), %rdi	# pr_1(D)->request, pr_1(D)->request
# proto_parser.c:111:     int len = 0;
	movl	$0, 4(%rsp)	#, MEM[(int *)_21]
# proto_parser.c:52:     pr->klen = len;
	movl	%eax, 92(%rbx)	# MEM[(int *)_21], pr_1(D)->klen
# proto_parser.c:112:     const char *tok = mcmc_token_get(pr->request, &pr->tok, pr->tok.ntokens-1, &len);
	decl	%edx	# _24
	call	mcmc_token_get@PLT	#
# proto_parser.c:113:     if (len == NOREPLYLEN && strncmp(NOREPLYSTR, tok, NOREPLYLEN) == 0) {
	cmpl	$7, 4(%rsp)	#, MEM[(int *)_21]
	je	.L83	#,
.L79:
# proto_parser.c:154:     return _process_request_noreply(pr);
	xorl	%eax, %eax	# <retval>
.L77:
# proto_parser.c:155: }
	movq	8(%rsp), %rdx	# D.12534, tmp139
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp139
	jne	.L84	#,
	addq	$16, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4
	.p2align 3
.L83:
	.cfi_restore_state
# proto_parser.c:113:     if (len == NOREPLYLEN && strncmp(NOREPLYSTR, tok, NOREPLYLEN) == 0) {
	movl	$7, %edx	#,
	movq	%rax, %rsi	# tok,
	leaq	.LC13(%rip), %rdi	#,
	call	strncmp@PLT	#
# proto_parser.c:113:     if (len == NOREPLYLEN && strncmp(NOREPLYSTR, tok, NOREPLYLEN) == 0) {
	testl	%eax, %eax	# _29
	jne	.L79	#,
# proto_parser.c:114:         pr->noreply = true;
	movb	$1, 96(%rbx)	#, pr_1(D)->noreply
	jmp	.L79	#
	.p2align 4
	.p2align 3
.L81:
# proto_parser.c:149:         return -1;
	movl	$-1, %eax	#, <retval>
	jmp	.L77	#
.L84:
# proto_parser.c:155: }
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE102:
	.size	_process_request_simple.constprop.0, .-_process_request_simple.constprop.0
	.p2align 4
	.type	_process_request_storage.constprop.0, @function
_process_request_storage.constprop.0:
.LFB104:
	.cfi_startproc
	pushq	%r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
# proto_parser.c:123:     mcmc_tokenize(pr->request, pr->reqlen, &pr->tok, 255);
	movl	$255, %ecx	#,
# proto_parser.c:122: static int _process_request_storage(mcp_parser_t *pr) {
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 64
# proto_parser.c:123:     mcmc_tokenize(pr->request, pr->reqlen, &pr->tok, 255);
	movl	84(%rdi), %esi	# pr_1(D)->reqlen, _4
# proto_parser.c:122: static int _process_request_storage(mcp_parser_t *pr) {
	movq	%fs:40, %rbx	# MEM[(<address-space-1> long unsigned int *)40B], pr
	movq	%rbx, 8(%rsp)	# pr, D.12549
	movq	%rdi, %rbx	# pr, pr
# proto_parser.c:123:     mcmc_tokenize(pr->request, pr->reqlen, &pr->tok, 255);
	movq	(%rdi), %rdi	# pr_1(D)->request, pr_1(D)->request
	leaq	16(%rbx), %rdx	#,
	call	mcmc_tokenize@PLT	#
# proto_parser.c:124:     if (pr->tok.ntokens < 5) {
	cmpb	$4, 16(%rbx)	#, pr_1(D)->tok.ntokens
	jbe	.L88	#,
# proto_parser.c:51:     mcmc_token_get(pr->request, &pr->tok, pr->keytoken, &len);
	movq	(%rbx), %rdi	# pr_1(D)->request, pr_1(D)->request
	leaq	4(%rsp), %rcx	#,
	movl	$1, %edx	#,
	leaq	16(%rbx), %rsi	#,
# proto_parser.c:127:     pr->keytoken = 1;
	movb	$1, 82(%rbx)	#, pr_1(D)->keytoken
# proto_parser.c:50:     int len = 0;
	movl	$0, 4(%rsp)	#, MEM[(int *)_29]
# proto_parser.c:51:     mcmc_token_get(pr->request, &pr->tok, pr->keytoken, &len);
	call	mcmc_token_get@PLT	#
# proto_parser.c:52:     pr->klen = len;
	movl	4(%rsp), %eax	# MEM[(int *)_29], MEM[(int *)_29]
# proto_parser.c:131:     if (mcmc_token_get_32(pr->request, &pr->tok, 4, &vlen) != MCMC_OK) {
	movq	%rsp, %rcx	#, tmp126
	movl	$4, %edx	#,
	movq	(%rbx), %rdi	# pr_1(D)->request, pr_1(D)->request
	leaq	16(%rbx), %rsi	#,
# proto_parser.c:130:     int vlen = 0;
	movl	$0, (%rsp)	#, vlen
# proto_parser.c:52:     pr->klen = len;
	movl	%eax, 92(%rbx)	# MEM[(int *)_29], pr_1(D)->klen
# proto_parser.c:131:     if (mcmc_token_get_32(pr->request, &pr->tok, 4, &vlen) != MCMC_OK) {
	call	mcmc_token_get_32@PLT	#
	movl	%eax, %ebp	# <retval>, <retval>
# proto_parser.c:131:     if (mcmc_token_get_32(pr->request, &pr->tok, 4, &vlen) != MCMC_OK) {
	testl	%eax, %eax	# <retval>
	jne	.L88	#,
# proto_parser.c:135:     if (vlen < 0 || vlen > (INT_MAX - 2)) {
	movl	(%rsp), %eax	# vlen, vlen.7_12
# proto_parser.c:135:     if (vlen < 0 || vlen > (INT_MAX - 2)) {
	cmpl	$2147483645, %eax	#, vlen.7_12
	ja	.L88	#,
# proto_parser.c:112:     const char *tok = mcmc_token_get(pr->request, &pr->tok, pr->tok.ntokens-1, &len);
	movzbl	16(%rbx), %edx	# pr_1(D)->tok.ntokens, _32
# proto_parser.c:112:     const char *tok = mcmc_token_get(pr->request, &pr->tok, pr->tok.ntokens-1, &len);
	movq	(%rbx), %rdi	# pr_1(D)->request, pr_1(D)->request
# proto_parser.c:138:     vlen += 2;
	addl	$2, %eax	#, _14
# proto_parser.c:112:     const char *tok = mcmc_token_get(pr->request, &pr->tok, pr->tok.ntokens-1, &len);
	leaq	4(%rsp), %rcx	#,
# proto_parser.c:140:     pr->vlen = vlen;
	movl	%eax, 88(%rbx)	# _14, pr_1(D)->vlen
# proto_parser.c:112:     const char *tok = mcmc_token_get(pr->request, &pr->tok, pr->tok.ntokens-1, &len);
	leaq	16(%rbx), %rsi	#,
# proto_parser.c:138:     vlen += 2;
	movl	%eax, (%rsp)	# _14, vlen
# proto_parser.c:111:     int len = 0;
	movl	$0, 4(%rsp)	#, MEM[(int *)_29]
# proto_parser.c:112:     const char *tok = mcmc_token_get(pr->request, &pr->tok, pr->tok.ntokens-1, &len);
	decl	%edx	# _33
	call	mcmc_token_get@PLT	#
# proto_parser.c:113:     if (len == NOREPLYLEN && strncmp(NOREPLYSTR, tok, NOREPLYLEN) == 0) {
	cmpl	$7, 4(%rsp)	#, MEM[(int *)_29]
	je	.L92	#,
.L85:
# proto_parser.c:143: }
	movq	8(%rsp), %rax	# D.12549, tmp142
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp142
	jne	.L93	#,
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movl	%ebp, %eax	# <retval>,
	popq	%rbx	#
	.cfi_def_cfa_offset 32
	popq	%rbp	#
	.cfi_def_cfa_offset 24
	popq	%r12	#
	.cfi_def_cfa_offset 16
	popq	%r13	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4
	.p2align 3
.L92:
	.cfi_restore_state
# proto_parser.c:113:     if (len == NOREPLYLEN && strncmp(NOREPLYSTR, tok, NOREPLYLEN) == 0) {
	movl	$7, %edx	#,
	movq	%rax, %rsi	# tok,
	leaq	.LC13(%rip), %rdi	#,
	call	strncmp@PLT	#
# proto_parser.c:113:     if (len == NOREPLYLEN && strncmp(NOREPLYSTR, tok, NOREPLYLEN) == 0) {
	testl	%eax, %eax	# _38
	jne	.L85	#,
# proto_parser.c:114:         pr->noreply = true;
	movb	$1, 96(%rbx)	#, pr_1(D)->noreply
# proto_parser.c:116:     return 0;
	jmp	.L85	#
	.p2align 4
	.p2align 3
.L88:
# proto_parser.c:125:         return -1;
	movl	$-1, %ebp	#, <retval>
	jmp	.L85	#
.L93:
# proto_parser.c:143: }
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE104:
	.size	_process_request_storage.constprop.0, .-_process_request_storage.constprop.0
	.section	.rodata.str1.1
.LC14:
	.string	"cm[cmdlen-1] == '\\n'"
.LC15:
	.string	"gets"
.LC16:
	.string	"incr"
.LC17:
	.string	"decr"
.LC18:
	.string	"gats"
.LC19:
	.string	"quit"
.LC20:
	.string	"touch"
.LC21:
	.string	"stats"
.LC22:
	.string	"watch"
.LC23:
	.string	"delete"
.LC24:
	.string	"append"
.LC25:
	.string	"replace"
.LC26:
	.string	"prepend"
.LC27:
	.string	"version"
	.section	.text.unlikely
.LCOLDB28:
	.text
.LHOTB28:
	.p2align 4
	.globl	process_request
	.type	process_request, @function
process_request:
.LFB77:
	.cfi_startproc
	endbr64	
	pushq	%r13	#
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	pushq	%r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$40, %rsp	#,
	.cfi_def_cfa_offset 80
# proto_parser.c:163: int process_request(mcp_parser_t *pr, const char *command, size_t cmdlen) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp196
	movq	%rax, 24(%rsp)	# tmp196, D.12620
	xorl	%eax, %eax	# tmp196
# proto_parser.c:170:     if (cmdlen < 4) {
	cmpq	$3, %rdx	#, cmdlen
	jbe	.L133	#,
# proto_parser.c:179:     assert(cm[cmdlen-1] == '\n');
	cmpb	$10, -1(%rsi,%rdx)	#, *_2
	movq	%rsi, %rbx	# command, command
	movq	%rdx, %rbp	# cmdlen, cmdlen
	leaq	-1(%rdx), %r12	#, endlen
	jne	.L163	#,
# proto_parser.c:181:         endlen = cmdlen - 2;
	cmpb	$13, -2(%rsi,%rdx)	#, *_5
# proto_parser.c:180:     if (cm[cmdlen-2] == '\r') {
	leaq	-2(%rdx), %rax	#, _4
	movq	%rdi, %r13	# pr, pr
# proto_parser.c:186:     const char *s = memchr(command, ' ', endlen);
	movl	$32, %esi	#,
	movq	%rbx, %rdi	# command,
# proto_parser.c:181:         endlen = cmdlen - 2;
	cmove	%rax, %r12	# endlen,, _4, endlen
# proto_parser.c:186:     const char *s = memchr(command, ' ', endlen);
	movq	%r12, %rdx	# endlen,
	call	memchr@PLT	#
# proto_parser.c:192:     pr->keytoken = 0;
	movb	$0, 82(%r13)	#, pr_56(D)->keytoken
# proto_parser.c:193:     pr->request = command;
	movq	%rbx, 0(%r13)	# command, pr_56(D)->request
# proto_parser.c:194:     pr->reqlen = cmdlen;
	movl	%ebp, %ecx	# cmdlen, _8
# proto_parser.c:188:         cl = s - command;
	movq	%rax, %rdx	# s, tmp285
# proto_parser.c:194:     pr->reqlen = cmdlen;
	movl	%ebp, 84(%r13)	# cmdlen, pr_56(D)->reqlen
# proto_parser.c:188:         cl = s - command;
	subq	%rbx, %rdx	# command, tmp285
	testq	%rax, %rax	# s
	cmovne	%rdx, %r12	# tmp285,, endlen
# proto_parser.c:200:     switch (cl) {
	cmpq	$7, %r12	#, endlen
	ja	.L174	#,
	leaq	.L101(%rip), %rdx	#, tmp200
	movslq	(%rdx,%r12,4), %rax	#, tmp202
	addq	%rdx, %rax	# tmp200, tmp203
	notrack jmp	*%rax	# tmp203
	.section	.rodata
	.align 4
	.align 4
.L101:
	.long	.L174-.L101
	.long	.L174-.L101
	.long	.L106-.L101
	.long	.L105-.L101
	.long	.L104-.L101
	.long	.L103-.L101
	.long	.L102-.L101
	.long	.L100-.L101
	.text
	.p2align 4
	.p2align 3
.L100:
# proto_parser.c:303:             if (strncmp(cm, "replace", 7) == 0) {
	movl	$7, %edx	#,
	leaq	.LC25(%rip), %rsi	#,
	movq	%rbx, %rdi	# command,
	call	strncmp@PLT	#
# proto_parser.c:303:             if (strncmp(cm, "replace", 7) == 0) {
	testl	%eax, %eax	# _36
	je	.L175	#,
# proto_parser.c:306:             } else if (strncmp(cm, "prepend", 7) == 0) {
	movl	$7, %edx	#,
	leaq	.LC26(%rip), %rsi	#,
	movq	%rbx, %rdi	# command,
	call	strncmp@PLT	#
# proto_parser.c:306:             } else if (strncmp(cm, "prepend", 7) == 0) {
	testl	%eax, %eax	# _37
	je	.L176	#,
# proto_parser.c:309:             } else if (strncmp(cm, "version", 7) == 0) {
	movl	$7, %edx	#,
	leaq	.LC27(%rip), %rsi	#,
	movq	%rbx, %rdi	# command,
	call	strncmp@PLT	#
	movl	%eax, %r12d	# <retval>, <retval>
# proto_parser.c:309:             } else if (strncmp(cm, "version", 7) == 0) {
	testl	%eax, %eax	# <retval>
	jne	.L174	#,
# proto_parser.c:311:                 mcmc_tokenize(pr->request, pr->reqlen, &pr->tok, 255);
	leaq	16(%r13), %rdx	#, _39
	movl	%ebp, %esi	# cmdlen, _112
	movl	$255, %ecx	#,
	movq	%rbx, %rdi	# command,
	call	mcmc_tokenize@PLT	#
	xorl	%eax, %eax	# prephitmp_121
	movl	$27, %edx	#, prephitmp_171
	.p2align 4
	.p2align 3
.L109:
# proto_parser.c:322:     pr->command = cmd;
	movb	%dl, 80(%r13)	# prephitmp_171, pr_56(D)->command
# proto_parser.c:323:     pr->cmd_type = type;
	movb	%al, 81(%r13)	# prephitmp_121, pr_56(D)->cmd_type
.L94:
# proto_parser.c:326: }
	movq	24(%rsp), %rax	# D.12620, tmp322
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp322
	jne	.L177	#,
	addq	$40, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movl	%r12d, %eax	# <retval>,
	popq	%rbx	#
	.cfi_def_cfa_offset 32
	popq	%rbp	#
	.cfi_def_cfa_offset 24
	popq	%r12	#
	.cfi_def_cfa_offset 16
	popq	%r13	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4
	.p2align 3
.L106:
	.cfi_restore_state
# proto_parser.c:206:             if (cm[0] == 'm') {
	cmpb	$109, (%rbx)	#, *command_50(D)
	jne	.L174	#,
# proto_parser.c:208:                 switch (cm[1]) {
	movzbl	1(%rbx), %eax	# MEM[(const char *)command_50(D) + 1B], tmp326
	subl	$97, %eax	#, tmp205
	cmpb	$18, %al	#, tmp205
	ja	.L174	#,
	leaq	.L108(%rip), %rdx	#, tmp208
	movzbl	%al, %eax	# tmp205, tmp207
	movslq	(%rdx,%rax,4), %rax	#, tmp210
	addq	%rdx, %rax	# tmp208, tmp211
	notrack jmp	*%rax	# tmp211
	.section	.rodata
	.align 4
	.align 4
.L108:
	.long	.L113-.L108
	.long	.L174-.L108
	.long	.L174-.L108
	.long	.L112-.L108
	.long	.L111-.L108
	.long	.L174-.L108
	.long	.L110-.L108
	.long	.L174-.L108
	.long	.L174-.L108
	.long	.L174-.L108
	.long	.L174-.L108
	.long	.L174-.L108
	.long	.L174-.L108
	.long	.L134-.L108
	.long	.L174-.L108
	.long	.L174-.L108
	.long	.L174-.L108
	.long	.L174-.L108
	.long	.L107-.L108
	.text
	.p2align 4
	.p2align 3
.L105:
# proto_parser.c:239:             if (cm[0] == 'g') {
	movzbl	(%rbx), %eax	# *command_50(D), _11
# proto_parser.c:239:             if (cm[0] == 'g') {
	cmpb	$103, %al	#, _11
	je	.L178	#,
# proto_parser.c:250:             } else if (cm[0] == 's' && cm[1] == 'e' && cm[2] == 't') {
	cmpb	$115, %al	#, _11
	je	.L179	#,
# proto_parser.c:253:             } else if (cm[0] == 'a' && cm[1] == 'd' && cm[2] == 'd') {
	cmpb	$97, %al	#, _11
	je	.L180	#,
# proto_parser.c:256:             } else if (cm[0] == 'c' && cm[1] == 'a' && cm[2] == 's') {
	cmpb	$99, %al	#, _11
	jne	.L174	#,
# proto_parser.c:256:             } else if (cm[0] == 'c' && cm[1] == 'a' && cm[2] == 's') {
	cmpb	$97, 1(%rbx)	#, MEM[(const char *)command_50(D) + 1B]
	jne	.L174	#,
# proto_parser.c:256:             } else if (cm[0] == 'c' && cm[1] == 'a' && cm[2] == 's') {
	cmpb	$115, 2(%rbx)	#, MEM[(const char *)command_50(D) + 2B]
	jne	.L174	#,
# proto_parser.c:258:                 ret = _process_request_storage(pr);
	movq	%r13, %rdi	# pr,
	call	_process_request_storage.constprop.0	#
	movl	$11, %edx	#, prephitmp_171
	movl	%eax, %r12d	# <retval>, <retval>
	xorl	%eax, %eax	# prephitmp_121
	jmp	.L109	#
	.p2align 4
	.p2align 3
.L104:
# proto_parser.c:262:             if (strncmp(cm, "gets", 4) == 0) {
	movl	$4, %edx	#,
	leaq	.LC15(%rip), %rsi	#,
	movq	%rbx, %rdi	# command,
	call	strncmp@PLT	#
# proto_parser.c:262:             if (strncmp(cm, "gets", 4) == 0) {
	testl	%eax, %eax	# _24
	je	.L181	#,
# proto_parser.c:266:             } else if (strncmp(cm, "incr", 4) == 0) {
	movl	$4, %edx	#,
	leaq	.LC16(%rip), %rsi	#,
	movq	%rbx, %rdi	# command,
	call	strncmp@PLT	#
# proto_parser.c:266:             } else if (strncmp(cm, "incr", 4) == 0) {
	testl	%eax, %eax	# _25
	je	.L182	#,
# proto_parser.c:269:             } else if (strncmp(cm, "decr", 4) == 0) {
	movl	$4, %edx	#,
	leaq	.LC17(%rip), %rsi	#,
	movq	%rbx, %rdi	# command,
	call	strncmp@PLT	#
# proto_parser.c:269:             } else if (strncmp(cm, "decr", 4) == 0) {
	testl	%eax, %eax	# _26
	je	.L183	#,
# proto_parser.c:272:             } else if (strncmp(cm, "gats", 4) == 0) {
	movl	$4, %edx	#,
	leaq	.LC18(%rip), %rsi	#,
	movq	%rbx, %rdi	# command,
	call	strncmp@PLT	#
	movl	%eax, %r12d	# <retval>, <retval>
# proto_parser.c:272:             } else if (strncmp(cm, "gats", 4) == 0) {
	testl	%eax, %eax	# <retval>
	je	.L184	#,
# proto_parser.c:276:             } else if (strncmp(cm, "quit", 4) == 0) {
	movl	$4, %edx	#,
	leaq	.LC19(%rip), %rsi	#,
	movq	%rbx, %rdi	# command,
	call	strncmp@PLT	#
	movl	%eax, %r12d	# <retval>, <retval>
# proto_parser.c:276:             } else if (strncmp(cm, "quit", 4) == 0) {
	testl	%eax, %eax	# <retval>
	jne	.L174	#,
	xorl	%eax, %eax	# prephitmp_121
	movl	$22, %edx	#, prephitmp_171
	jmp	.L109	#
	.p2align 4
	.p2align 3
.L103:
# proto_parser.c:281:             if (strncmp(cm, "touch", 5) == 0) {
	movl	$5, %edx	#,
	leaq	.LC20(%rip), %rsi	#,
	movq	%rbx, %rdi	# command,
	call	strncmp@PLT	#
# proto_parser.c:281:             if (strncmp(cm, "touch", 5) == 0) {
	testl	%eax, %eax	# _29
	je	.L185	#,
# proto_parser.c:284:             } else if (strncmp(cm, "stats", 5) == 0) {
	movl	$5, %edx	#,
	leaq	.LC21(%rip), %rsi	#,
	movq	%rbx, %rdi	# command,
	movl	%ebp, %ebp	# cmdlen, _181
	call	strncmp@PLT	#
	movl	%eax, %r12d	# <retval>, <retval>
# proto_parser.c:284:             } else if (strncmp(cm, "stats", 5) == 0) {
	testl	%eax, %eax	# <retval>
	je	.L186	#,
# proto_parser.c:288:             } else if (strncmp(cm, "watch", 5) == 0) {
	movl	$5, %edx	#,
	leaq	.LC22(%rip), %rsi	#,
	movq	%rbx, %rdi	# command,
	call	strncmp@PLT	#
	movl	%eax, %r12d	# <retval>, <retval>
# proto_parser.c:288:             } else if (strncmp(cm, "watch", 5) == 0) {
	testl	%eax, %eax	# <retval>
	jne	.L99	#,
# proto_parser.c:290:                 mcmc_tokenize(pr->request, pr->reqlen, &pr->tok, 255);
	leaq	16(%r13), %rdx	#, _33
	movl	$255, %ecx	#,
	movq	%rbp, %rsi	# _181,
	movq	%rbx, %rdi	# command,
	call	mcmc_tokenize@PLT	#
	xorl	%eax, %eax	# prephitmp_121
	movl	$25, %edx	#, prephitmp_171
	jmp	.L109	#
	.p2align 4
	.p2align 3
.L102:
# proto_parser.c:294:             if (strncmp(cm, "delete", 6) == 0) {
	movl	$6, %edx	#,
	leaq	.LC23(%rip), %rsi	#,
	movq	%rbx, %rdi	# command,
	call	strncmp@PLT	#
# proto_parser.c:294:             if (strncmp(cm, "delete", 6) == 0) {
	testl	%eax, %eax	# _34
	je	.L187	#,
# proto_parser.c:297:             } else if (strncmp(cm, "append", 6) == 0) {
	movl	$6, %edx	#,
	leaq	.LC24(%rip), %rsi	#,
	movq	%rbx, %rdi	# command,
	call	strncmp@PLT	#
# proto_parser.c:297:             } else if (strncmp(cm, "append", 6) == 0) {
	testl	%eax, %eax	# _35
	jne	.L174	#,
# proto_parser.c:299:                 ret = _process_request_storage(pr);
	movq	%r13, %rdi	# pr,
	call	_process_request_storage.constprop.0	#
	movl	$17, %edx	#, prephitmp_171
	movl	%eax, %r12d	# <retval>, <retval>
	xorl	%eax, %eax	# prephitmp_121
	jmp	.L109	#
	.p2align 4
	.p2align 3
.L174:
	movl	%ebp, %ebp	# cmdlen, _181
.L99:
# proto_parser.c:158:     mcmc_tokenize(pr->request, pr->reqlen, &pr->tok, 255);
	movl	$255, %ecx	#,
	leaq	16(%r13), %rdx	#,
	movq	%rbp, %rsi	# _181,
	movq	%rbx, %rdi	# command,
	call	mcmc_tokenize@PLT	#
# proto_parser.c:112:     const char *tok = mcmc_token_get(pr->request, &pr->tok, pr->tok.ntokens-1, &len);
	movzbl	16(%r13), %edx	# pr_56(D)->tok.ntokens, _183
# proto_parser.c:112:     const char *tok = mcmc_token_get(pr->request, &pr->tok, pr->tok.ntokens-1, &len);
	leaq	20(%rsp), %rcx	#, tmp275
	leaq	16(%r13), %rsi	#,
	movq	0(%r13), %rdi	# pr_56(D)->request, pr_56(D)->request
# proto_parser.c:111:     int len = 0;
	movl	$0, 20(%rsp)	#, MEM[(int *)_159]
# proto_parser.c:112:     const char *tok = mcmc_token_get(pr->request, &pr->tok, pr->tok.ntokens-1, &len);
	decl	%edx	# _184
	call	mcmc_token_get@PLT	#
# proto_parser.c:113:     if (len == NOREPLYLEN && strncmp(NOREPLYSTR, tok, NOREPLYLEN) == 0) {
	cmpl	$7, 20(%rsp)	#, MEM[(int *)_159]
	je	.L188	#,
.L131:
# proto_parser.c:319:         return PROCESS_REQUEST_CMD_NOT_FOUND;
	movl	$-2, %r12d	#, <retval>
# proto_parser.c:116:     return 0;
	jmp	.L94	#
	.p2align 4
	.p2align 3
.L188:
# proto_parser.c:113:     if (len == NOREPLYLEN && strncmp(NOREPLYSTR, tok, NOREPLYLEN) == 0) {
	movl	$7, %edx	#,
	movq	%rax, %rsi	# tok,
	leaq	.LC13(%rip), %rdi	#,
	call	strncmp@PLT	#
# proto_parser.c:113:     if (len == NOREPLYLEN && strncmp(NOREPLYSTR, tok, NOREPLYLEN) == 0) {
	testl	%eax, %eax	# _189
	jne	.L131	#,
# proto_parser.c:114:         pr->noreply = true;
	movb	$1, 96(%r13)	#, pr_56(D)->noreply
	jmp	.L131	#
	.p2align 4
	.p2align 3
.L180:
# proto_parser.c:253:             } else if (cm[0] == 'a' && cm[1] == 'd' && cm[2] == 'd') {
	cmpb	$100, 1(%rbx)	#, MEM[(const char *)command_50(D) + 1B]
	movl	%ebp, %ebp	# cmdlen, _181
	jne	.L99	#,
# proto_parser.c:253:             } else if (cm[0] == 'a' && cm[1] == 'd' && cm[2] == 'd') {
	cmpb	$100, 2(%rbx)	#, MEM[(const char *)command_50(D) + 2B]
	jne	.L99	#,
# proto_parser.c:255:                 ret = _process_request_storage(pr);
	movq	%r13, %rdi	# pr,
	call	_process_request_storage.constprop.0	#
	movl	$10, %edx	#, prephitmp_171
	movl	%eax, %r12d	# <retval>, <retval>
	xorl	%eax, %eax	# prephitmp_121
	jmp	.L109	#
	.p2align 4
	.p2align 3
.L183:
# proto_parser.c:271:                 ret = _process_request_simple(pr, 3);
	movl	$3, %esi	#,
	movq	%r13, %rdi	# pr,
	call	_process_request_simple.constprop.0	#
	movl	$15, %edx	#, prephitmp_171
	movl	%eax, %r12d	# <retval>, <retval>
	xorl	%eax, %eax	# prephitmp_121
	jmp	.L109	#
.L107:
# proto_parser.c:72:     mcmc_tokenize(pr->request, pr->reqlen, &pr->tok, 3);
	movl	%ebp, %esi	# cmdlen, _244
	movl	$3, %ecx	#,
	leaq	16(%r13), %rdx	#,
	movq	%rbx, %rdi	# command,
	call	mcmc_tokenize@PLT	#
# proto_parser.c:73:     if (pr->tok.ntokens < 3) {
	cmpb	$2, 16(%r13)	#, pr_56(D)->tok.ntokens
	jbe	.L116	#,
# proto_parser.c:51:     mcmc_token_get(pr->request, &pr->tok, pr->keytoken, &len);
	movq	0(%r13), %rdi	# pr_56(D)->request, pr_56(D)->request
	leaq	20(%rsp), %rcx	#,
	movl	$1, %edx	#,
	leaq	16(%r13), %rsi	#,
# proto_parser.c:76:     pr->keytoken = 1;
	movb	$1, 82(%r13)	#, pr_56(D)->keytoken
# proto_parser.c:50:     int len = 0;
	movl	$0, 20(%rsp)	#, MEM[(int *)_159]
# proto_parser.c:51:     mcmc_token_get(pr->request, &pr->tok, pr->keytoken, &len);
	call	mcmc_token_get@PLT	#
# proto_parser.c:52:     pr->klen = len;
	movl	20(%rsp), %eax	# MEM[(int *)_159], MEM[(int *)_159]
# proto_parser.c:80:     if (mcmc_token_get_32(pr->request, &pr->tok, 2, &vlen) != MCMC_OK) {
	leaq	20(%rsp), %rcx	#,
	movl	$2, %edx	#,
	movq	0(%r13), %rdi	# pr_56(D)->request, pr_56(D)->request
	leaq	16(%r13), %rsi	#,
# proto_parser.c:79:     int vlen = 0;
	movl	$0, 20(%rsp)	#, MEM[(int *)_159]
# proto_parser.c:52:     pr->klen = len;
	movl	%eax, 92(%r13)	# MEM[(int *)_159], pr_56(D)->klen
# proto_parser.c:80:     if (mcmc_token_get_32(pr->request, &pr->tok, 2, &vlen) != MCMC_OK) {
	call	mcmc_token_get_32@PLT	#
	movl	%eax, %r12d	# <retval>, <retval>
# proto_parser.c:80:     if (mcmc_token_get_32(pr->request, &pr->tok, 2, &vlen) != MCMC_OK) {
	testl	%eax, %eax	# <retval>
	jne	.L116	#,
# proto_parser.c:84:     if (vlen < 0 || vlen > (INT_MAX - 2)) {
	movl	20(%rsp), %eax	# MEM[(int *)_159], vlen.0_129
# proto_parser.c:84:     if (vlen < 0 || vlen > (INT_MAX - 2)) {
	cmpl	$2147483645, %eax	#, vlen.0_129
	ja	.L116	#,
# proto_parser.c:87:     vlen += 2;
	addl	$2, %eax	#, tmp223
	movl	%eax, 88(%r13)	# tmp223, pr_56(D)->vlen
.L115:
	movl	$2, %eax	#, prephitmp_121
	movl	$2, %edx	#, prephitmp_171
	jmp	.L109	#
.L110:
# proto_parser.c:60:     mcmc_tokenize(pr->request, pr->reqlen, &pr->tok, 2);
	movl	%ebp, %esi	# cmdlen, _237
	movl	$2, %ecx	#,
	leaq	16(%r13), %rdx	#,
	movq	%rbx, %rdi	# command,
	call	mcmc_tokenize@PLT	#
# proto_parser.c:61:     if (pr->tok.ntokens < 2) {
	cmpb	$1, 16(%r13)	#, pr_56(D)->tok.ntokens
	jbe	.L135	#,
# proto_parser.c:51:     mcmc_token_get(pr->request, &pr->tok, pr->keytoken, &len);
	movq	0(%r13), %rdi	# pr_56(D)->request, pr_56(D)->request
	movl	$1, %edx	#,
# proto_parser.c:64:     pr->keytoken = 1;
	movb	$1, 82(%r13)	#, pr_56(D)->keytoken
# proto_parser.c:51:     mcmc_token_get(pr->request, &pr->tok, pr->keytoken, &len);
	leaq	20(%rsp), %rcx	#, tmp214
	leaq	16(%r13), %rsi	#,
# proto_parser.c:50:     int len = 0;
	movl	$0, 20(%rsp)	#, MEM[(int *)_159]
# proto_parser.c:67:     return 0;
	xorl	%r12d, %r12d	# <retval>
# proto_parser.c:51:     mcmc_token_get(pr->request, &pr->tok, pr->keytoken, &len);
	call	mcmc_token_get@PLT	#
# proto_parser.c:52:     pr->klen = len;
	movl	20(%rsp), %eax	# MEM[(int *)_159], MEM[(int *)_159]
# proto_parser.c:67:     return 0;
	movl	$1, %edx	#, prephitmp_171
# proto_parser.c:52:     pr->klen = len;
	movl	%eax, 92(%r13)	# MEM[(int *)_159], pr_56(D)->klen
# proto_parser.c:67:     return 0;
	movl	$2, %eax	#, prephitmp_121
	jmp	.L109	#
.L111:
# proto_parser.c:60:     mcmc_tokenize(pr->request, pr->reqlen, &pr->tok, 2);
	movl	%ebp, %esi	# cmdlen, _230
	movl	$2, %ecx	#,
	leaq	16(%r13), %rdx	#,
	movq	%rbx, %rdi	# command,
	call	mcmc_tokenize@PLT	#
# proto_parser.c:61:     if (pr->tok.ntokens < 2) {
	cmpb	$1, 16(%r13)	#, pr_56(D)->tok.ntokens
	jbe	.L138	#,
# proto_parser.c:51:     mcmc_token_get(pr->request, &pr->tok, pr->keytoken, &len);
	movq	0(%r13), %rdi	# pr_56(D)->request, pr_56(D)->request
	movl	$1, %edx	#,
# proto_parser.c:64:     pr->keytoken = 1;
	movb	$1, 82(%r13)	#, pr_56(D)->keytoken
# proto_parser.c:51:     mcmc_token_get(pr->request, &pr->tok, pr->keytoken, &len);
	leaq	20(%rsp), %rcx	#, tmp233
	leaq	16(%r13), %rsi	#,
# proto_parser.c:50:     int len = 0;
	movl	$0, 20(%rsp)	#, MEM[(int *)_159]
# proto_parser.c:67:     return 0;
	xorl	%r12d, %r12d	# <retval>
# proto_parser.c:51:     mcmc_token_get(pr->request, &pr->tok, pr->keytoken, &len);
	call	mcmc_token_get@PLT	#
# proto_parser.c:52:     pr->klen = len;
	movl	20(%rsp), %eax	# MEM[(int *)_159], MEM[(int *)_159]
# proto_parser.c:67:     return 0;
	movl	$6, %edx	#, prephitmp_171
# proto_parser.c:52:     pr->klen = len;
	movl	%eax, 92(%r13)	# MEM[(int *)_159], pr_56(D)->klen
# proto_parser.c:67:     return 0;
	movl	$2, %eax	#, prephitmp_121
	jmp	.L109	#
.L113:
# proto_parser.c:60:     mcmc_tokenize(pr->request, pr->reqlen, &pr->tok, 2);
	movl	%ebp, %esi	# cmdlen, _216
	movl	$2, %ecx	#,
	leaq	16(%r13), %rdx	#,
	movq	%rbx, %rdi	# command,
	call	mcmc_tokenize@PLT	#
# proto_parser.c:61:     if (pr->tok.ntokens < 2) {
	cmpb	$1, 16(%r13)	#, pr_56(D)->tok.ntokens
	jbe	.L137	#,
# proto_parser.c:51:     mcmc_token_get(pr->request, &pr->tok, pr->keytoken, &len);
	movq	0(%r13), %rdi	# pr_56(D)->request, pr_56(D)->request
	movl	$1, %edx	#,
# proto_parser.c:64:     pr->keytoken = 1;
	movb	$1, 82(%r13)	#, pr_56(D)->keytoken
# proto_parser.c:51:     mcmc_token_get(pr->request, &pr->tok, pr->keytoken, &len);
	leaq	20(%rsp), %rcx	#, tmp229
	leaq	16(%r13), %rsi	#,
# proto_parser.c:50:     int len = 0;
	movl	$0, 20(%rsp)	#, MEM[(int *)_159]
# proto_parser.c:67:     return 0;
	xorl	%r12d, %r12d	# <retval>
# proto_parser.c:51:     mcmc_token_get(pr->request, &pr->tok, pr->keytoken, &len);
	call	mcmc_token_get@PLT	#
# proto_parser.c:52:     pr->klen = len;
	movl	20(%rsp), %eax	# MEM[(int *)_159], MEM[(int *)_159]
# proto_parser.c:67:     return 0;
	movl	$5, %edx	#, prephitmp_171
# proto_parser.c:52:     pr->klen = len;
	movl	%eax, 92(%r13)	# MEM[(int *)_159], pr_56(D)->klen
# proto_parser.c:67:     return 0;
	movl	$2, %eax	#, prephitmp_121
	jmp	.L109	#
.L112:
# proto_parser.c:60:     mcmc_tokenize(pr->request, pr->reqlen, &pr->tok, 2);
	movl	%ebp, %esi	# cmdlen, _223
	movl	$2, %ecx	#,
	leaq	16(%r13), %rdx	#,
	movq	%rbx, %rdi	# command,
	call	mcmc_tokenize@PLT	#
# proto_parser.c:61:     if (pr->tok.ntokens < 2) {
	cmpb	$1, 16(%r13)	#, pr_56(D)->tok.ntokens
	jbe	.L136	#,
# proto_parser.c:51:     mcmc_token_get(pr->request, &pr->tok, pr->keytoken, &len);
	movq	0(%r13), %rdi	# pr_56(D)->request, pr_56(D)->request
	movl	$1, %edx	#,
# proto_parser.c:64:     pr->keytoken = 1;
	movb	$1, 82(%r13)	#, pr_56(D)->keytoken
# proto_parser.c:51:     mcmc_token_get(pr->request, &pr->tok, pr->keytoken, &len);
	leaq	20(%rsp), %rcx	#, tmp225
	leaq	16(%r13), %rsi	#,
# proto_parser.c:50:     int len = 0;
	movl	$0, 20(%rsp)	#, MEM[(int *)_159]
# proto_parser.c:67:     return 0;
	xorl	%r12d, %r12d	# <retval>
# proto_parser.c:51:     mcmc_token_get(pr->request, &pr->tok, pr->keytoken, &len);
	call	mcmc_token_get@PLT	#
# proto_parser.c:52:     pr->klen = len;
	movl	20(%rsp), %eax	# MEM[(int *)_159], MEM[(int *)_159]
# proto_parser.c:67:     return 0;
	movl	$3, %edx	#, prephitmp_171
# proto_parser.c:52:     pr->klen = len;
	movl	%eax, 92(%r13)	# MEM[(int *)_159], pr_56(D)->klen
# proto_parser.c:67:     return 0;
	movl	$2, %eax	#, prephitmp_121
	jmp	.L109	#
.L134:
# proto_parser.c:208:                 switch (cm[1]) {
	movl	$2, %eax	#, prephitmp_121
	movl	$4, %edx	#, prephitmp_171
	xorl	%r12d, %r12d	# <retval>
	jmp	.L109	#
	.p2align 4
	.p2align 3
.L178:
# proto_parser.c:240:                 if (cm[1] == 'e' && cm[2] == 't') {
	movzbl	1(%rbx), %eax	# MEM[(const char *)command_50(D) + 1B], _12
	movl	%ebp, %ebp	# cmdlen, _181
# proto_parser.c:240:                 if (cm[1] == 'e' && cm[2] == 't') {
	cmpb	$101, %al	#, _12
	je	.L189	#,
# proto_parser.c:245:                 if (cm[1] == 'a' && cm[2] == 't') {
	cmpb	$97, %al	#, _12
	jne	.L99	#,
# proto_parser.c:245:                 if (cm[1] == 'a' && cm[2] == 't') {
	cmpb	$116, 2(%rbx)	#, MEM[(const char *)command_50(D) + 2B]
	jne	.L99	#,
.L119:
# proto_parser.c:96:     mcmc_tokenize(pr->request, pr->reqlen, &pr->tok, 255);
	leaq	16(%r13), %rbp	#, _160
	movl	%ecx, %esi	# _8, _162
	movq	%rbx, %rdi	# command,
	movl	$255, %ecx	#,
	movq	%rbp, %rdx	# _160,
	call	mcmc_tokenize@PLT	#
# proto_parser.c:97:     if (pr->tok.ntokens < 3) {
	cmpb	$2, 16(%r13)	#, pr_56(D)->tok.ntokens
	jbe	.L141	#,
# proto_parser.c:51:     mcmc_token_get(pr->request, &pr->tok, pr->keytoken, &len);
	movq	0(%r13), %rdi	# pr_56(D)->request, pr_56(D)->request
	movl	$2, %edx	#,
# proto_parser.c:101:     pr->keytoken = 2;
	movb	$2, 82(%r13)	#, pr_56(D)->keytoken
# proto_parser.c:51:     mcmc_token_get(pr->request, &pr->tok, pr->keytoken, &len);
	leaq	20(%rsp), %rcx	#, tmp237
	movq	%rbp, %rsi	# _160,
# proto_parser.c:50:     int len = 0;
	movl	$0, 20(%rsp)	#, MEM[(int *)_159]
# proto_parser.c:103:     return 0;
	xorl	%r12d, %r12d	# <retval>
# proto_parser.c:51:     mcmc_token_get(pr->request, &pr->tok, pr->keytoken, &len);
	call	mcmc_token_get@PLT	#
# proto_parser.c:52:     pr->klen = len;
	movl	20(%rsp), %eax	# MEM[(int *)_159], MEM[(int *)_159]
# proto_parser.c:103:     return 0;
	movl	$8, %edx	#, prephitmp_171
# proto_parser.c:52:     pr->klen = len;
	movl	%eax, 92(%r13)	# MEM[(int *)_159], pr_56(D)->klen
# proto_parser.c:103:     return 0;
	movl	$1, %eax	#, prephitmp_121
	jmp	.L109	#
	.p2align 4
	.p2align 3
.L185:
# proto_parser.c:283:                 ret = _process_request_simple(pr, 3);
	movl	$3, %esi	#,
	movq	%r13, %rdi	# pr,
	call	_process_request_simple.constprop.0	#
	movl	$16, %edx	#, prephitmp_171
	movl	%eax, %r12d	# <retval>, <retval>
	xorl	%eax, %eax	# prephitmp_121
	jmp	.L109	#
	.p2align 4
	.p2align 3
.L187:
# proto_parser.c:296:                 ret = _process_request_simple(pr, 2);
	movl	$2, %esi	#,
	movq	%r13, %rdi	# pr,
	call	_process_request_simple.constprop.0	#
	movl	$18, %edx	#, prephitmp_171
	movl	%eax, %r12d	# <retval>, <retval>
	xorl	%eax, %eax	# prephitmp_121
	jmp	.L109	#
	.p2align 4
	.p2align 3
.L181:
# proto_parser.c:265:                 ret = _process_request_simple(pr, 2);
	movl	$2, %esi	#,
	movq	%r13, %rdi	# pr,
	call	_process_request_simple.constprop.0	#
	movl	$12, %edx	#, prephitmp_171
	movl	%eax, %r12d	# <retval>, <retval>
	movl	$1, %eax	#, prephitmp_121
	jmp	.L109	#
	.p2align 4
	.p2align 3
.L175:
# proto_parser.c:305:                 ret = _process_request_storage(pr);
	movq	%r13, %rdi	# pr,
	call	_process_request_storage.constprop.0	#
	movl	$19, %edx	#, prephitmp_171
	movl	%eax, %r12d	# <retval>, <retval>
	xorl	%eax, %eax	# prephitmp_121
	jmp	.L109	#
	.p2align 4
	.p2align 3
.L179:
# proto_parser.c:250:             } else if (cm[0] == 's' && cm[1] == 'e' && cm[2] == 't') {
	cmpb	$101, 1(%rbx)	#, MEM[(const char *)command_50(D) + 1B]
	movl	%ebp, %ebp	# cmdlen, _181
	jne	.L99	#,
# proto_parser.c:250:             } else if (cm[0] == 's' && cm[1] == 'e' && cm[2] == 't') {
	cmpb	$116, 2(%rbx)	#, MEM[(const char *)command_50(D) + 2B]
	jne	.L99	#,
# proto_parser.c:252:                 ret = _process_request_storage(pr);
	movq	%r13, %rdi	# pr,
	call	_process_request_storage.constprop.0	#
	movl	$9, %edx	#, prephitmp_171
	movl	%eax, %r12d	# <retval>, <retval>
	xorl	%eax, %eax	# prephitmp_121
	jmp	.L109	#
	.p2align 4
	.p2align 3
.L176:
# proto_parser.c:308:                 ret = _process_request_storage(pr);
	movq	%r13, %rdi	# pr,
	call	_process_request_storage.constprop.0	#
	movl	$20, %edx	#, prephitmp_171
	movl	%eax, %r12d	# <retval>, <retval>
	xorl	%eax, %eax	# prephitmp_121
	jmp	.L109	#
	.p2align 4
	.p2align 3
.L182:
# proto_parser.c:268:                 ret = _process_request_simple(pr, 3);
	movl	$3, %esi	#,
	movq	%r13, %rdi	# pr,
	call	_process_request_simple.constprop.0	#
	movl	$14, %edx	#, prephitmp_171
	movl	%eax, %r12d	# <retval>, <retval>
	xorl	%eax, %eax	# prephitmp_121
	jmp	.L109	#
	.p2align 4
	.p2align 3
.L186:
# proto_parser.c:287:                 mcmc_tokenize(pr->request, pr->reqlen, &pr->tok, 255);
	leaq	16(%r13), %rdx	#, _31
	movl	$255, %ecx	#,
	movq	%rbp, %rsi	# _181,
	movq	%rbx, %rdi	# command,
	call	mcmc_tokenize@PLT	#
	xorl	%eax, %eax	# prephitmp_121
	movl	$23, %edx	#, prephitmp_171
	jmp	.L109	#
	.p2align 4
	.p2align 3
.L189:
# proto_parser.c:240:                 if (cm[1] == 'e' && cm[2] == 't') {
	cmpb	$116, 2(%rbx)	#, MEM[(const char *)command_50(D) + 2B]
	jne	.L99	#,
# proto_parser.c:243:                     ret = _process_request_simple(pr, 2);
	movl	$2, %esi	#,
	movq	%r13, %rdi	# pr,
	call	_process_request_simple.constprop.0	#
# proto_parser.c:245:                 if (cm[1] == 'a' && cm[2] == 't') {
	cmpb	$97, 1(%rbx)	#, MEM[(const char *)command_50(D) + 1B]
	movl	$7, %edx	#, prephitmp_171
# proto_parser.c:243:                     ret = _process_request_simple(pr, 2);
	movl	%eax, %r12d	# <retval>, <retval>
# proto_parser.c:245:                 if (cm[1] == 'a' && cm[2] == 't') {
	movl	$1, %eax	#, prephitmp_121
	jne	.L109	#,
# proto_parser.c:245:                 if (cm[1] == 'a' && cm[2] == 't') {
	cmpb	$116, 2(%rbx)	#, MEM[(const char *)command_50(D) + 2B]
	jne	.L109	#,
# proto_parser.c:96:     mcmc_tokenize(pr->request, pr->reqlen, &pr->tok, 255);
	movl	84(%r13), %ecx	# pr_56(D)->reqlen, _8
# proto_parser.c:96:     mcmc_tokenize(pr->request, pr->reqlen, &pr->tok, 255);
	movq	0(%r13), %rbx	# pr_56(D)->request, command
	jmp	.L119	#
	.p2align 4
	.p2align 3
.L184:
	leaq	16(%r13), %r8	#, _169
	movl	%ebp, %esi	# cmdlen, _251
	movl	$255, %ecx	#,
	movq	%rbx, %rdi	# command,
	movq	%r8, %rdx	# _169,
	movq	%r8, 8(%rsp)	# _169, %sfp
	call	mcmc_tokenize@PLT	#
# proto_parser.c:97:     if (pr->tok.ntokens < 3) {
	cmpb	$2, 16(%r13)	#, pr_56(D)->tok.ntokens
	jbe	.L142	#,
# proto_parser.c:51:     mcmc_token_get(pr->request, &pr->tok, pr->keytoken, &len);
	movq	0(%r13), %rdi	# pr_56(D)->request, pr_56(D)->request
	movq	8(%rsp), %rsi	# %sfp,
	movl	$2, %edx	#,
# proto_parser.c:101:     pr->keytoken = 2;
	movb	$2, 82(%r13)	#, pr_56(D)->keytoken
# proto_parser.c:51:     mcmc_token_get(pr->request, &pr->tok, pr->keytoken, &len);
	leaq	20(%rsp), %rcx	#, tmp249
# proto_parser.c:50:     int len = 0;
	movl	$0, 20(%rsp)	#, MEM[(int *)_159]
# proto_parser.c:51:     mcmc_token_get(pr->request, &pr->tok, pr->keytoken, &len);
	call	mcmc_token_get@PLT	#
# proto_parser.c:52:     pr->klen = len;
	movl	20(%rsp), %eax	# MEM[(int *)_159], MEM[(int *)_159]
# proto_parser.c:103:     return 0;
	movl	$13, %edx	#, prephitmp_171
# proto_parser.c:52:     pr->klen = len;
	movl	%eax, 92(%r13)	# MEM[(int *)_159], pr_56(D)->klen
# proto_parser.c:103:     return 0;
	movl	$1, %eax	#, prephitmp_121
	jmp	.L109	#
	.p2align 4
	.p2align 3
.L133:
# proto_parser.c:171:         return -1;
	movl	$-1, %r12d	#, <retval>
	jmp	.L94	#
.L116:
# proto_parser.c:74:         return -1;
	movl	$-1, %r12d	#, <retval>
	jmp	.L115	#
.L177:
# proto_parser.c:326: }
	call	__stack_chk_fail@PLT	#
.L138:
	movl	$2, %eax	#, prephitmp_121
	movl	$6, %edx	#, prephitmp_171
# proto_parser.c:62:         return -1;
	movl	$-1, %r12d	#, <retval>
	jmp	.L109	#
.L135:
	movl	$2, %eax	#, prephitmp_121
	movl	$1, %edx	#, prephitmp_171
	movl	$-1, %r12d	#, <retval>
	jmp	.L109	#
.L137:
	movl	$2, %eax	#, prephitmp_121
	movl	$5, %edx	#, prephitmp_171
	movl	$-1, %r12d	#, <retval>
	jmp	.L109	#
.L136:
	movl	$2, %eax	#, prephitmp_121
	movl	$3, %edx	#, prephitmp_171
	movl	$-1, %r12d	#, <retval>
	jmp	.L109	#
.L142:
	movl	$1, %eax	#, prephitmp_121
	movl	$13, %edx	#, prephitmp_171
# proto_parser.c:98:         return -1;
	movl	$-1, %r12d	#, <retval>
	jmp	.L109	#
.L141:
	movl	$1, %eax	#, prephitmp_121
	movl	$8, %edx	#, prephitmp_171
	movl	$-1, %r12d	#, <retval>
	jmp	.L109	#
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.type	process_request.cold, @function
process_request.cold:
.LFSB77:
.L163:
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -40
	.cfi_offset 6, -32
	.cfi_offset 12, -24
	.cfi_offset 13, -16
# proto_parser.c:179:     assert(cm[cmdlen-1] == '\n');
	leaq	__PRETTY_FUNCTION__.10(%rip), %rcx	#,
	movl	$179, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC14(%rip), %rdi	#,
	call	__assert_fail@PLT	#
	.cfi_endproc
.LFE77:
	.text
	.size	process_request, .-process_request
	.section	.text.unlikely
	.size	process_request.cold, .-process_request.cold
.LCOLDE28:
	.text
.LHOTE28:
	.p2align 4
	.globl	mc_prcmp
	.type	mc_prcmp, @function
mc_prcmp:
.LFB78:
	.cfi_startproc
	endbr64	
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$16, %rsp	#,
	.cfi_def_cfa_offset 32
# proto_parser.c:336: int mc_prcmp(mcp_parser_t *pr, int token, const char *s) {
	movq	%fs:40, %rbx	# MEM[(<address-space-1> long unsigned int *)40B], s
	movq	%rbx, 8(%rsp)	# s, D.12638
	movq	%rdx, %rbx	# s, s
# proto_parser.c:338:     const char *t = mcmc_token_get(pr->request, &pr->tok, token, &len);
	movl	%esi, %edx	# token,
	leaq	16(%rdi), %rsi	#, _1
	movq	(%rdi), %rdi	# pr_7(D)->request, pr_7(D)->request
	leaq	4(%rsp), %rcx	#, tmp109
# proto_parser.c:337:     int len = 0;
	movl	$0, 4(%rsp)	#, len
# proto_parser.c:338:     const char *t = mcmc_token_get(pr->request, &pr->tok, token, &len);
	call	mcmc_token_get@PLT	#
# proto_parser.c:339:     return strncmp(t, s, len);
	movslq	4(%rsp), %rdx	# len, _4
	movq	%rbx, %rsi	# s,
	movq	%rax, %rdi	# t,
	call	strncmp@PLT	#
# proto_parser.c:340: }
	movq	8(%rsp), %rdx	# D.12638, tmp123
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp123
	jne	.L193	#,
	addq	$16, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret	
.L193:
	.cfi_restore_state
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE78:
	.size	mc_prcmp, .-mc_prcmp
	.p2align 4
	.globl	mc_toktou32
	.type	mc_toktou32, @function
mc_toktou32:
.LFB79:
	.cfi_startproc
	endbr64	
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
# proto_parser.c:342: bool mc_toktou32(mcp_parser_t *pr, int token, uint32_t *val) {
	movl	%esi, %eax	# token, token
# proto_parser.c:343:     if (mcmc_token_get_u32(pr->request, &pr->tok, token, val) != MCMC_OK) {
	leaq	16(%rdi), %rsi	#, _1
	movq	(%rdi), %rdi	# pr_5(D)->request, pr_5(D)->request
	movq	%rdx, %rcx	# val,
	movl	%eax, %edx	# token,
	call	mcmc_token_get_u32@PLT	#
# proto_parser.c:343:     if (mcmc_token_get_u32(pr->request, &pr->tok, token, val) != MCMC_OK) {
	testl	%eax, %eax	# _3
	sete	%al	#, _11
# proto_parser.c:347: }
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 8
	ret	
	.cfi_endproc
.LFE79:
	.size	mc_toktou32, .-mc_toktou32
	.p2align 4
	.globl	mc_tokto32
	.type	mc_tokto32, @function
mc_tokto32:
.LFB80:
	.cfi_startproc
	endbr64	
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
# proto_parser.c:349: bool mc_tokto32(mcp_parser_t *pr, int token, int32_t *val) {
	movl	%esi, %eax	# token, token
# proto_parser.c:350:     if (mcmc_token_get_32(pr->request, &pr->tok, token, val) != MCMC_OK) {
	leaq	16(%rdi), %rsi	#, _1
	movq	(%rdi), %rdi	# pr_5(D)->request, pr_5(D)->request
	movq	%rdx, %rcx	# val,
	movl	%eax, %edx	# token,
	call	mcmc_token_get_32@PLT	#
# proto_parser.c:350:     if (mcmc_token_get_32(pr->request, &pr->tok, token, val) != MCMC_OK) {
	testl	%eax, %eax	# _3
	sete	%al	#, _11
# proto_parser.c:354: }
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 8
	ret	
	.cfi_endproc
.LFE80:
	.size	mc_tokto32, .-mc_tokto32
	.p2align 4
	.globl	mc_toktod
	.type	mc_toktod, @function
mc_toktod:
.LFB81:
	.cfi_startproc
	endbr64	
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$64, %rsp	#,
	.cfi_def_cfa_offset 80
# proto_parser.c:356: bool mc_toktod(mcp_parser_t *pr, int token, double *val) {
	movq	%fs:40, %rbx	# MEM[(<address-space-1> long unsigned int *)40B], val
	movq	%rbx, 56(%rsp)	# val, D.12648
	movq	%rdx, %rbx	# val, val
# proto_parser.c:359:     const char *t = mcmc_token_get(pr->request, &pr->tok, token, &len);
	movl	%esi, %edx	# token,
	leaq	16(%rdi), %rsi	#, _1
	movq	(%rdi), %rdi	# pr_10(D)->request, pr_10(D)->request
	leaq	12(%rsp), %rcx	#, tmp110
# proto_parser.c:358:     int len = 0;
	movl	$0, 12(%rsp)	#, len
# proto_parser.c:359:     const char *t = mcmc_token_get(pr->request, &pr->tok, token, &len);
	call	mcmc_token_get@PLT	#
# proto_parser.c:360:     if (len > sizeof(buffer)-1) {
	movslq	12(%rsp), %rdx	# len,
# proto_parser.c:360:     if (len > sizeof(buffer)-1) {
	cmpl	$31, %edx	#, len.12_3
	jbe	.L220	#,
	xorl	%eax, %eax	# <retval>
.L198:
# proto_parser.c:367: }
	movq	56(%rsp), %rdx	# D.12648, tmp142
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp142
	jne	.L221	#,
	addq	$64, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4
	.p2align 3
.L220:
	.cfi_restore_state
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	leaq	16(%rsp), %rdi	#, tmp136
	movq	%rax, %rcx	#, t
	movq	%rdi, %rsi	# tmp136, tmp116
	cmpl	$8, %edx	#, len.12_3
	jnb	.L222	#,
.L200:
	xorl	%ecx, %ecx	# tmp123
	testb	$4, %dl	#, len.12_3
	jne	.L223	#,
	testb	$2, %dl	#, len.12_3
	jne	.L224	#,
.L204:
	testb	$1, %dl	#, len.12_3
	jne	.L225	#,
.L205:
# proto_parser.c:366:     return safe_strtod(buffer, val);
	movq	%rbx, %rsi	# val,
# proto_parser.c:364:     buffer[len] = '\0';
	movb	$0, 16(%rsp,%rdx)	#, buffer[len.12_3]
# proto_parser.c:366:     return safe_strtod(buffer, val);
	call	safe_strtod@PLT	#
	jmp	.L198	#
	.p2align 4
	.p2align 3
.L225:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movzbl	(%rax,%rcx), %eax	#, tmp131
	movb	%al, (%rsi,%rcx)	# tmp131,
# proto_parser.c:366:     return safe_strtod(buffer, val);
	movq	%rbx, %rsi	# val,
# proto_parser.c:364:     buffer[len] = '\0';
	movb	$0, 16(%rsp,%rdx)	#, buffer[len.12_3]
# proto_parser.c:366:     return safe_strtod(buffer, val);
	call	safe_strtod@PLT	#
	jmp	.L198	#
	.p2align 4
	.p2align 3
.L224:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movzwl	(%rax,%rcx), %r8d	#, tmp128
	movw	%r8w, (%rsi,%rcx)	# tmp128,
	addq	$2, %rcx	#, tmp123
	testb	$1, %dl	#, len.12_3
	je	.L205	#,
	jmp	.L225	#
	.p2align 4
	.p2align 3
.L223:
	movl	(%rax), %ecx	#* t, tmp125
	movl	%ecx, (%rsi)	# tmp125,
	movl	$4, %ecx	#, tmp123
	testb	$2, %dl	#, len.12_3
	je	.L204	#,
	jmp	.L224	#
	.p2align 4
	.p2align 3
.L222:
	movl	%edx, %r8d	# len.12_3, tmp119
	xorl	%eax, %eax	# tmp118
	andl	$-8, %r8d	#, tmp119
.L201:
	movl	%eax, %esi	# tmp118, tmp120
	addl	$8, %eax	#,
	movq	(%rcx,%rsi), %r9	# MEM <char[1:(sizetype) _5]> [(void *)t_13], tmp121
	movq	%r9, (%rdi,%rsi)	# tmp121, MEM <char[1:(sizetype) _5]> [(void *)&buffer]
	cmpl	%r8d, %eax	# tmp119, tmp118
	jb	.L201	#,
	leaq	(%rdi,%rax), %rsi	#, tmp116
	addq	%rcx, %rax	# t, t
	jmp	.L200	#
.L221:
# proto_parser.c:367: }
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE81:
	.size	mc_toktod, .-mc_toktod
	.section	.rodata.str1.8
	.align 8
.LC29:
	.string	"CLIENT_ERROR invalid exptime argument"
	.text
	.p2align 4
	.globl	mc_parse_exptime
	.type	mc_parse_exptime, @function
mc_parse_exptime:
.LFB84:
	.cfi_startproc
	endbr64	
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %r14	# resp, resp
# proto_parser.c:415:     if (mcmc_token_get_32(pr->request, &pr->tok, token, &exptime_int) != MCMC_OK) {
	addq	$16, %rsi	#,
# proto_parser.c:413: bool mc_parse_exptime(mc_resp *resp, mcp_parser_t *pr, int token, rel_time_t *exptime) {
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 48
# proto_parser.c:415:     if (mcmc_token_get_32(pr->request, &pr->tok, token, &exptime_int) != MCMC_OK) {
	movq	-16(%rsi), %rdi	# pr_12(D)->request, pr_12(D)->request
# proto_parser.c:413: bool mc_parse_exptime(mc_resp *resp, mcp_parser_t *pr, int token, rel_time_t *exptime) {
	movq	%fs:40, %rbx	# MEM[(<address-space-1> long unsigned int *)40B], exptime
	movq	%rbx, 8(%rsp)	# exptime, D.12652
	movq	%rcx, %rbx	# exptime, exptime
# proto_parser.c:415:     if (mcmc_token_get_32(pr->request, &pr->tok, token, &exptime_int) != MCMC_OK) {
	leaq	4(%rsp), %rcx	#, tmp111
# proto_parser.c:414:     int32_t exptime_int = 0;
	movl	$0, 4(%rsp)	#, exptime_int
# proto_parser.c:415:     if (mcmc_token_get_32(pr->request, &pr->tok, token, &exptime_int) != MCMC_OK) {
	call	mcmc_token_get_32@PLT	#
# proto_parser.c:415:     if (mcmc_token_get_32(pr->request, &pr->tok, token, &exptime_int) != MCMC_OK) {
	testl	%eax, %eax	# _3
	jne	.L232	#,
# proto_parser.c:419:     *exptime = realtime(EXPTIME_TO_POSITIVE_TIME(exptime_int));
	movslq	4(%rsp), %rdi	# exptime_int,
# proto_parser.c:419:     *exptime = realtime(EXPTIME_TO_POSITIVE_TIME(exptime_int));
	movl	$2592001, %eax	#,
	testl	%edi, %edi	# exptime_int.17_4
	cmovs	%rax, %rdi	#,,,
# proto_parser.c:419:     *exptime = realtime(EXPTIME_TO_POSITIVE_TIME(exptime_int));
	call	realtime@PLT	#
# proto_parser.c:419:     *exptime = realtime(EXPTIME_TO_POSITIVE_TIME(exptime_int));
	movl	%eax, (%rbx)	# _6, *exptime_16(D)
# proto_parser.c:420:     return true;
	movl	$1, %eax	#, <retval>
.L226:
# proto_parser.c:421: }
	movq	8(%rsp), %rdx	# D.12652, tmp125
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp125
	jne	.L233	#,
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4
	.p2align 3
.L232:
	.cfi_restore_state
# proto_parser.c:416:         pout_string(resp, "CLIENT_ERROR invalid exptime argument");
	leaq	.LC29(%rip), %rsi	#,
	movq	%r14, %rdi	# resp,
	call	pout_string	#
# proto_parser.c:417:         return false;
	xorl	%eax, %eax	# <retval>
	jmp	.L226	#
.L233:
# proto_parser.c:421: }
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE84:
	.size	mc_parse_exptime, .-mc_parse_exptime
	.section	.rodata.str1.8
	.align 8
.LC31:
	.string	"SERVER_ERROR out of memory writing get response"
	.section	.rodata.str1.1
.LC32:
	.string	">%d sending key "
	.text
	.p2align 4
	.globl	process_get_cmd
	.type	process_get_cmd, @function
process_get_cmd:
.LFB89:
	.cfi_startproc
	endbr64	
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rcx, %r12	# resp, resp
	subq	$56, %rsp	#,
	.cfi_def_cfa_offset 112
# proto_parser.c:652: int process_get_cmd(LIBEVENT_THREAD *t, const char *key, const int nkey, mc_resp *resp, parser_storage_get_cb storage_cb, rel_time_t exptime, bool return_cas, bool should_touch) {
	movl	112(%rsp), %eax	# return_cas, return_cas
	movq	%r8, 16(%rsp)	# storage_cb, %sfp
	movl	%eax, 8(%rsp)	# return_cas, %sfp
	movq	%fs:40, %r14	# MEM[(<address-space-1> long unsigned int *)40B], should_touch
	movq	%r14, 40(%rsp)	# should_touch, D.12684
	movl	120(%rsp), %r14d	# should_touch, should_touch
# proto_parser.c:653:     bool overflow = false; // unused.
	movb	$0, 39(%rsp)	#, overflow
# proto_parser.c:655:     if (nkey > KEY_MAX_LENGTH) {
	cmpl	$250, %edx	#, nkey
	jg	.L265	#,
# proto_parser.c:660:     item *it = limited_get(key, nkey, t, exptime, should_touch, DO_UPDATE, &overflow);
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 120
	movq	%rsi, %r13	# key, key
	movslq	%edx, %r15	# nkey, _2
	movl	%r9d, %ecx	# exptime, exptime
	leaq	47(%rsp), %rax	#, tmp220
	movq	%rdi, %rdx	# t,
	movq	%rdi, %rbp	# t, t
	movl	$1, %r9d	#,
	pushq	%rax	# tmp220
	.cfi_def_cfa_offset 128
	movzbl	%r14b, %r8d	# should_touch,
	movq	%r15, %rsi	# _2,
	movq	%r13, %rdi	# key,
	call	limited_get@PLT	#
# proto_parser.c:661:     if (settings.detail_enabled) {
	movl	96+settings(%rip), %ecx	# settings.detail_enabled,
# proto_parser.c:660:     item *it = limited_get(key, nkey, t, exptime, should_touch, DO_UPDATE, &overflow);
	movq	%rax, %rbx	#, it
# proto_parser.c:661:     if (settings.detail_enabled) {
	popq	%rax	#
	.cfi_def_cfa_offset 120
	popq	%rdx	#
	.cfi_def_cfa_offset 112
	testl	%ecx, %ecx	#
	jne	.L266	#,
# proto_parser.c:664:     if (it) {
	testq	%rbx, %rbx	# it
	je	.L238	#,
.L271:
# proto_parser.c:666:       nbytes = it->nbytes;
	movl	32(%rbx), %eax	# it_92->nbytes, nbytes
# proto_parser.c:667:       char *p = resp->wbuf;
	leaq	164(%r12), %r15	#, p
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movl	$1431060822, 164(%r12)	#, MEM <char[1:6]> [(void *)p_103]
	leaq	170(%r12), %rdi	#,
	movw	$8261, 4(%r15)	#, MEM <char[1:6]> [(void *)p_103]
# proto_parser.c:670:       memcpy(p, ITEM_key(it), it->nkey);
	movzbl	41(%rbx), %edx	# it_92->nkey, _7
# proto_parser.c:666:       nbytes = it->nbytes;
	movl	%eax, 12(%rsp)	# nbytes, %sfp
# proto_parser.c:670:       memcpy(p, ITEM_key(it), it->nkey);
	leaq	48(%rbx), %rax	#, _8
	movq	%rax, 24(%rsp)	# _8, %sfp
	movzwl	38(%rbx), %eax	# it_92->it_flags, _10
	salq	$2, %rax	#, _11
	andl	$8, %eax	#, _12
# proto_parser.c:670:       memcpy(p, ITEM_key(it), it->nkey);
	leaq	48(%rbx,%rax), %rsi	#, _13
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	call	memcpy@PLT	#
	movq	%rax, %rcx	#, p
# proto_parser.c:671:       p += it->nkey;
	movzbl	41(%rbx), %eax	# it_92->nkey, _15
# proto_parser.c:671:       p += it->nkey;
	leaq	(%rcx,%rax), %rsi	#, p
# proto_parser.c:628:     *p = ' ';
	movb	$32, (%rsi)	#, *p_105
# proto_parser.c:630:     if (FLAGS_SIZE(it) == 0) {
	movzwl	38(%rbx), %eax	# it_92->it_flags, _144
# proto_parser.c:630:     if (FLAGS_SIZE(it) == 0) {
	testb	$1, %ah	#, _144
	jne	.L239	#,
# proto_parser.c:631:         *p = '0';
	movb	$48, 1(%rsi)	#, MEM[(char *)p_105 + 1B]
# proto_parser.c:632:         p++;
	addq	$2, %rsi	#, p
.L240:
# proto_parser.c:639:     p = itoa_u32(nbytes-2, p+1);
	movl	12(%rsp), %edi	# %sfp, nbytes
# proto_parser.c:638:     *p = ' ';
	movb	$32, (%rsi)	#, *p_160
# proto_parser.c:639:     p = itoa_u32(nbytes-2, p+1);
	incq	%rsi	# _161
# proto_parser.c:639:     p = itoa_u32(nbytes-2, p+1);
	subl	$2, %edi	#, nbytes
# proto_parser.c:639:     p = itoa_u32(nbytes-2, p+1);
	call	itoa_u32@PLT	#
# proto_parser.c:641:     if (return_cas) {
	cmpb	$0, 8(%rsp)	#, %sfp
	je	.L241	#,
# proto_parser.c:642:         *p = ' ';
	movb	$32, (%rax)	#, *p_164
# proto_parser.c:643:         p = itoa_u64(ITEM_get_cas(it), p+1);
	leaq	1(%rax), %rsi	#, _165
# proto_parser.c:643:         p = itoa_u64(ITEM_get_cas(it), p+1);
	xorl	%edi, %edi	# iftmp.22_168
# proto_parser.c:643:         p = itoa_u64(ITEM_get_cas(it), p+1);
	testb	$2, 38(%rbx)	#, it_92->it_flags
	jne	.L267	#,
.L242:
# proto_parser.c:643:         p = itoa_u64(ITEM_get_cas(it), p+1);
	call	itoa_u64@PLT	#
.L241:
# proto_parser.c:672:       p += make_ascii_get_suffix(p, it, return_cas, nbytes);
	leal	2(%rax), %edx	#, p_109
# proto_parser.c:646:     *p = '\r';
	movw	$2573, (%rax)	#, MEM <vector(2) char> [(char *)p_171]
# proto_parser.c:648:     *(p+2) = '\0';
	movb	$0, 2(%rax)	#, MEM[(char *)p_171 + 2B]
# proto_parser.c:673:       resp_add_iov(resp, resp->wbuf, p - resp->wbuf);
	subl	%r15d, %edx	# p, _18
	movq	%r15, %rsi	# p,
	movq	%r12, %rdi	# resp,
	call	resp_add_iov@PLT	#
# proto_parser.c:676:       if (it->it_flags & ITEM_HDR) {
	movzwl	38(%rbx), %eax	# it_92->it_flags, _20
# proto_parser.c:676:       if (it->it_flags & ITEM_HDR) {
	testb	$-128, %al	#, _20
	je	.L243	#,
# proto_parser.c:677:           if (storage_cb(t, it, resp) != 0) {
	movq	%r12, %rdx	# resp,
	movq	%rbx, %rsi	# it,
	movq	%rbp, %rdi	# t,
	call	*16(%rsp)	# %sfp
# proto_parser.c:677:           if (storage_cb(t, it, resp) != 0) {
	testl	%eax, %eax	# _21
	jne	.L268	#,
.L244:
# proto_parser.c:700:         pthread_mutex_lock(&t->stats.mutex);
	leaq	360(%rbp), %r15	#, _39
	movq	%r15, %rdi	# _39,
	call	pthread_mutex_lock@PLT	#
# proto_parser.c:701:         if (should_touch) {
	testb	%r14b, %r14b	# should_touch
	je	.L246	#,
# proto_parser.c:702:             t->stats.touch_cmds++;
	incq	432(%rbp)	# t_89(D)->stats.touch_cmds
# proto_parser.c:703:             t->stats.slab_stats[ITEM_clsid(it)].touch_hits++;
	movzbl	40(%rbx), %eax	# it_92->slabs_clsid, _43
	andl	$63, %eax	#, _74
	salq	$6, %rax	#, _100
# proto_parser.c:703:             t->stats.slab_stats[ITEM_clsid(it)].touch_hits++;
	incq	688(%rbp,%rax)	# MEM <uint64_t> [(struct LIBEVENT_THREAD *)_57 + 688B]
.L247:
# proto_parser.c:708:         pthread_mutex_unlock(&t->stats.mutex);
	movq	%r15, %rdi	# _39,
	call	pthread_mutex_unlock@PLT	#
# proto_parser.c:711:         if ((it->it_flags & ITEM_HDR) == 0) {
	testb	$-128, 38(%rbx)	#, it_92->it_flags
	jne	.L248	#,
# proto_parser.c:712:             resp->item = it;
	movq	%rbx, 40(%r12)	# it, resp_102(D)->item
.L248:
# proto_parser.c:718:         if (settings.verbose > 1) {
	cmpl	$1, 32+settings(%rip)	#, settings.verbose
	jg	.L269	#,
.L249:
# proto_parser.c:738:     return 0;
	xorl	%eax, %eax	# <retval>
.L234:
# proto_parser.c:739: }
	movq	40(%rsp), %rdx	# D.12684, tmp316
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp316
	jne	.L270	#,
	addq	$56, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4
	.p2align 3
.L239:
	.cfi_restore_state
# proto_parser.c:635:         FLAGS_CONV(it, flags);
	movzbl	41(%rbx), %edx	# it_92->nkey, _150
	leaq	0(,%rax,4), %rcx	#, _152
# proto_parser.c:629:     p++;
	incq	%rsi	# p
# proto_parser.c:635:         FLAGS_CONV(it, flags);
	andl	$8, %ecx	#, _153
	leaq	48(%rbx,%rdx), %rax	#, tmp240
# proto_parser.c:636:         p = itoa_u64(flags, p);
	movl	1(%rcx,%rax), %edi	# *_156, _158
	call	itoa_u64@PLT	#
	movq	%rax, %rsi	# p, p
	jmp	.L240	#
	.p2align 4
	.p2align 3
.L269:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:111:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movl	344(%rbp), %ecx	# t_89(D)->cur_sfd, t_89(D)->cur_sfd
	movq	stderr(%rip), %rdi	# stderr,
	xorl	%eax, %eax	#
	leaq	.LC32(%rip), %rdx	#,
	movl	$2, %esi	#,
# proto_parser.c:721:             for (ii = 0; ii < it->nkey; ++ii) {
	xorl	%ebp, %ebp	# ivtmp.211
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:111:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	call	__fprintf_chk@PLT	#
# proto_parser.c:721:             for (ii = 0; ii < it->nkey; ++ii) {
	cmpb	$0, 41(%rbx)	#, it_92->nkey
	je	.L252	#,
	.p2align 4
	.p2align 3
.L250:
# proto_parser.c:722:                 fprintf(stderr, "%c", key[ii]);
	movsbl	0(%r13,%rbp), %edi	# MEM[(const char *)key_88(D) + ivtmp.211_134 * 1], _60
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:111:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	stderr(%rip), %rsi	# stderr,
# proto_parser.c:721:             for (ii = 0; ii < it->nkey; ++ii) {
	incq	%rbp	# ivtmp.211
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:111:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	call	fputc@PLT	#
# proto_parser.c:721:             for (ii = 0; ii < it->nkey; ++ii) {
	movzbl	41(%rbx), %eax	# it_92->nkey, _63
# proto_parser.c:721:             for (ii = 0; ii < it->nkey; ++ii) {
	cmpl	%ebp, %eax	# ivtmp.211, _63
	jg	.L250	#,
.L252:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:111:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	stderr(%rip), %rsi	# stderr,
	movl	$10, %edi	#,
	call	fputc@PLT	#
	jmp	.L249	#
	.p2align 4
	.p2align 3
.L243:
# proto_parser.c:687:           resp_add_iov(resp, ITEM_data(it), it->nbytes);
	movl	32(%rbx), %ecx	# it_92->nbytes, pretmp_206
# proto_parser.c:686:       } else if ((it->it_flags & ITEM_CHUNKED) == 0) {
	testb	$32, %al	#, _20
	jne	.L245	#,
# proto_parser.c:687:           resp_add_iov(resp, ITEM_data(it), it->nbytes);
	movl	%eax, %edx	# _20, _29
	leaq	0(,%rax,4), %rax	#, _33
# proto_parser.c:687:           resp_add_iov(resp, ITEM_data(it), it->nbytes);
	movq	%r12, %rdi	# resp,
# proto_parser.c:687:           resp_add_iov(resp, ITEM_data(it), it->nbytes);
	shrl	$6, %edx	#, _29
	andl	$8, %eax	#, _34
	andl	$4, %edx	#, _30
	addq	%rdx, %rax	# _30, _133
	movzbl	41(%rbx), %edx	# it_92->nkey, _27
	leaq	1(%rax,%rdx), %rax	#, _36
# proto_parser.c:687:           resp_add_iov(resp, ITEM_data(it), it->nbytes);
	movl	%ecx, %edx	# pretmp_206,
	leaq	48(%rbx,%rax), %rsi	#, _8
	call	resp_add_iov@PLT	#
	jmp	.L244	#
	.p2align 4
	.p2align 3
.L246:
# proto_parser.c:705:             t->stats.lru_hits[it->slabs_clsid]++;
	movzbl	40(%rbx), %eax	# it_92->slabs_clsid, _48
	incq	4768(%rbp,%rax,8)	# t_89(D)->stats.lru_hits[_48]
# proto_parser.c:706:             t->stats.get_cmds++;
	incq	400(%rbp)	# t_89(D)->stats.get_cmds
	jmp	.L247	#
	.p2align 4
	.p2align 3
.L266:
# proto_parser.c:662:         stats_prefix_record_get(key, nkey, NULL != it);
	xorl	%edx, %edx	# _4
	testq	%rbx, %rbx	# it
	movq	%r15, %rsi	# _2,
	movq	%r13, %rdi	# key,
	setne	%dl	#, _4
	call	stats_prefix_record_get@PLT	#
# proto_parser.c:664:     if (it) {
	testq	%rbx, %rbx	# it
	jne	.L271	#,
.L238:
# proto_parser.c:727:         pthread_mutex_lock(&t->stats.mutex);
	leaq	360(%rbp), %rbx	#, _65
	movq	%rbx, %rdi	# _65,
	call	pthread_mutex_lock@PLT	#
# proto_parser.c:729:             t->stats.touch_cmds++;
	movl	$1, %eax	#, tmp294
	vmovq	%rax, %xmm0	# tmp294, tmp294
	vpunpcklqdq	%xmm0, %xmm0, %xmm0	# tmp294, tmp293
# proto_parser.c:728:         if (should_touch) {
	testb	%r14b, %r14b	# should_touch
	jne	.L272	#,
# proto_parser.c:733:             t->stats.get_cmds++;
	vpaddq	400(%rbp), %xmm0, %xmm0	# MEM <vector(2) long unsigned int> [(long unsigned int *)t_89(D) + 400B], tmp298, vect__73.199_35
	vmovdqu	%xmm0, 400(%rbp)	# vect__73.199_35, MEM <vector(2) long unsigned int> [(long unsigned int *)t_89(D) + 400B]
.L254:
# proto_parser.c:735:         pthread_mutex_unlock(&t->stats.mutex);
	movq	%rbx, %rdi	# _65,
	call	pthread_mutex_unlock@PLT	#
	jmp	.L249	#
	.p2align 4
	.p2align 3
.L245:
# proto_parser.c:689:           resp_add_chunked_iov(resp, it, it->nbytes);
	movl	%ecx, %edx	# pretmp_206,
	movq	%rbx, %rsi	# it,
	movq	%r12, %rdi	# resp,
	call	resp_add_chunked_iov@PLT	#
	jmp	.L244	#
	.p2align 4
	.p2align 3
.L267:
# proto_parser.c:643:         p = itoa_u64(ITEM_get_cas(it), p+1);
	movq	48(%rbx), %rdi	# it_92->data[0].cas, iftmp.22_168
	jmp	.L242	#
	.p2align 4
	.p2align 3
.L272:
# proto_parser.c:729:             t->stats.touch_cmds++;
	vpaddq	432(%rbp), %xmm0, %xmm0	# MEM <vector(2) long unsigned int> [(long unsigned int *)t_89(D) + 432B], tmp293, vect__67.205_208
	vmovdqu	%xmm0, 432(%rbp)	# vect__67.205_208, MEM <vector(2) long unsigned int> [(long unsigned int *)t_89(D) + 432B]
	jmp	.L254	#
.L265:
# proto_parser.c:656:         pout_string(resp, "CLIENT_ERROR bad command line format");
	leaq	.LC6(%rip), %rsi	#,
	movq	%rcx, %rdi	# resp,
	call	pout_string	#
.L236:
# proto_parser.c:657:         return -1;
	movl	$-1, %eax	#, <retval>
	jmp	.L234	#
.L268:
# proto_parser.c:678:               pthread_mutex_lock(&t->stats.mutex);
	leaq	360(%rbp), %rdi	#,
	call	pthread_mutex_lock@PLT	#
# proto_parser.c:679:               t->stats.get_oom_extstore++;
	incq	608(%rbp)	# t_89(D)->stats.get_oom_extstore
# proto_parser.c:680:               pthread_mutex_unlock(&t->stats.mutex);
	leaq	360(%rbp), %rdi	#,
	call	pthread_mutex_unlock@PLT	#
# proto_parser.c:682:               item_remove(it);
	movq	%rbx, %rdi	# it,
	call	item_remove@PLT	#
# proto_parser.c:409:     resp->skip = false;
	movb	$0, 118(%r12)	#, resp_102(D)->skip
# proto_parser.c:410:     pout_string(resp, str);
	leaq	.LC31(%rip), %rsi	#,
	movq	%r12, %rdi	# resp,
	call	pout_string	#
# proto_parser.c:684:               return -1;
	jmp	.L236	#
.L270:
# proto_parser.c:739: }
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE89:
	.size	process_get_cmd, .-process_get_cmd
	.section	.rodata.str1.1
.LC34:
	.string	"resp != NULL"
	.section	.rodata.str1.8
	.align 8
.LC35:
	.string	"SERVER_ERROR object too large for cache"
	.align 8
.LC36:
	.string	"SERVER_ERROR out of memory storing object"
	.section	.text.unlikely
.LCOLDB37:
	.text
.LHOTB37:
	.p2align 4
	.globl	process_update_cmd_start
	.type	process_update_cmd_start, @function
process_update_cmd_start:
.LFB90:
	.cfi_startproc
	endbr64	
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$56, %rsp	#,
	.cfi_def_cfa_offset 112
# proto_parser.c:742:     const char *key = MCP_PARSER_KEY(pr);
	movzbl	82(%rsi), %eax	# pr_60(D)->keytoken, _3
# proto_parser.c:743:     size_t nkey = pr->klen;
	movl	92(%rsi), %ebp	# pr_60(D)->klen, nkey
# proto_parser.c:741: item *process_update_cmd_start(LIBEVENT_THREAD *t, mcp_parser_t *pr, mc_resp *resp, int comm, bool handle_cas) {
	movl	%ecx, 12(%rsp)	# comm, %sfp
	movl	%r8d, 8(%rsp)	# handle_cas, %sfp
# proto_parser.c:742:     const char *key = MCP_PARSER_KEY(pr);
	movq	%fs:40, %r14	# MEM[(<address-space-1> long unsigned int *)40B], _1
	movq	%r14, 40(%rsp)	# _1, D.12695
	movq	(%rsi), %r14	# pr_60(D)->request, _1
	movzwl	18(%rsi,%rax,2), %ebx	# pr_60(D)->tok.tokens[_3],
# proto_parser.c:745:     int32_t exptime_int = 0;
	movl	$0, 28(%rsp)	#, exptime_int
# proto_parser.c:747:     uint64_t req_cas_id = 0;
	movq	$0, 32(%rsp)	#, req_cas_id
# proto_parser.c:750:     assert(resp != NULL);
	testq	%rdx, %rdx	# resp
	je	.L305	#,
	movq	%rdx, %r13	# resp, resp
# proto_parser.c:752:     if (nkey > KEY_MAX_LENGTH) {
	cmpq	$250, %rbp	#, nkey
	ja	.L278	#,
	movq	%rsi, %r15	# pr, pr
	movq	%rdi, %r12	# t, t
# proto_parser.c:757:     if (! (safe_strtoflags(&pr->request[pr->tok.tokens[2]], &flags)
	leaq	24(%rsp), %rsi	#, tmp168
# proto_parser.c:757:     if (! (safe_strtoflags(&pr->request[pr->tok.tokens[2]], &flags)
	movzwl	22(%r15), %edi	# pr_60(D)->tok.tokens[2], _9
# proto_parser.c:757:     if (! (safe_strtoflags(&pr->request[pr->tok.tokens[2]], &flags)
	addq	%r14, %rdi	# _1, _10
	call	safe_strtoul@PLT	#
# proto_parser.c:757:     if (! (safe_strtoflags(&pr->request[pr->tok.tokens[2]], &flags)
	testb	%al, %al	# _11
	je	.L278	#,
# proto_parser.c:758:            && safe_strtol(&pr->request[pr->tok.tokens[3]], &exptime_int))) {
	movzwl	24(%r15), %edi	# pr_60(D)->tok.tokens[3], _14
# proto_parser.c:758:            && safe_strtol(&pr->request[pr->tok.tokens[3]], &exptime_int))) {
	addq	(%r15), %rdi	# pr_60(D)->request, _15
	leaq	28(%rsp), %rsi	#, tmp171
	call	safe_strtol@PLT	#
# proto_parser.c:757:     if (! (safe_strtoflags(&pr->request[pr->tok.tokens[2]], &flags)
	testb	%al, %al	# _16
	je	.L278	#,
# proto_parser.c:763:     exptime = realtime(EXPTIME_TO_POSITIVE_TIME(exptime_int));
	movslq	28(%rsp), %rdi	# exptime_int,
# proto_parser.c:763:     exptime = realtime(EXPTIME_TO_POSITIVE_TIME(exptime_int));
	movl	$2592001, %eax	#,
	testl	%edi, %edi	# exptime_int.24_17
	cmovs	%rax, %rdi	#,,,
# proto_parser.c:763:     exptime = realtime(EXPTIME_TO_POSITIVE_TIME(exptime_int));
	call	realtime@PLT	#
# proto_parser.c:766:     if (handle_cas) {
	cmpb	$0, 8(%rsp)	#, %sfp
# proto_parser.c:763:     exptime = realtime(EXPTIME_TO_POSITIVE_TIME(exptime_int));
	movl	%eax, %r10d	#, exptime
# proto_parser.c:766:     if (handle_cas) {
	jne	.L307	#,
.L281:
# proto_parser.c:775:     if (settings.detail_enabled) {
	movl	96+settings(%rip), %eax	# settings.detail_enabled,
# proto_parser.c:742:     const char *key = MCP_PARSER_KEY(pr);
	addq	%r14, %rbx	# _1, key
# proto_parser.c:775:     if (settings.detail_enabled) {
	testl	%eax, %eax	#
	jne	.L308	#,
.L282:
# proto_parser.c:779:     it = item_alloc(key, nkey, flags, exptime, pr->vlen);
	movl	88(%r15), %r8d	# pr_60(D)->vlen,
	movl	24(%rsp), %edx	# flags,
	movl	%r10d, %ecx	# exptime,
	movq	%rbp, %rsi	# nkey,
	movq	%rbx, %rdi	# key,
	call	item_alloc@PLT	#
	movq	%rax, %r14	# <retval>, <retval>
# proto_parser.c:781:     if (it == 0) {
	testq	%rax, %rax	# <retval>
	je	.L309	#,
# proto_parser.c:812:     ITEM_set_cas(it, req_cas_id);
	testb	$2, 38(%rax)	#, it_76->it_flags
	jne	.L310	#,
.L291:
# proto_parser.c:814:     pthread_mutex_lock(&t->stats.mutex);
	leaq	360(%r12), %rdi	#,
	call	pthread_mutex_lock@PLT	#
# proto_parser.c:815:     t->stats.slab_stats[ITEM_clsid(it)].set_cmds++;
	movzbl	40(%r14), %eax	# it_76->slabs_clsid, _42
# proto_parser.c:816:     pthread_mutex_unlock(&t->stats.mutex);
	leaq	360(%r12), %rdi	#,
	andl	$63, %eax	#, _18
	salq	$6, %rax	#, _51
# proto_parser.c:815:     t->stats.slab_stats[ITEM_clsid(it)].set_cmds++;
	incq	672(%r12,%rax)	# MEM <uint64_t> [(struct LIBEVENT_THREAD *)_111 + 672B]
# proto_parser.c:816:     pthread_mutex_unlock(&t->stats.mutex);
	call	pthread_mutex_unlock@PLT	#
.L273:
# proto_parser.c:819: }
	movq	40(%rsp), %rax	# D.12695, tmp215
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp215
	jne	.L311	#,
	addq	$56, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%r14, %rax	# <retval>,
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4
	.p2align 3
.L310:
	.cfi_restore_state
# proto_parser.c:812:     ITEM_set_cas(it, req_cas_id);
	movq	32(%rsp), %rax	# req_cas_id, req_cas_id
	movq	%rax, 48(%r14)	# req_cas_id, it_76->data[0].cas
	jmp	.L291	#
	.p2align 4
	.p2align 3
.L307:
# proto_parser.c:767:         if (mcmc_token_get_u64(pr->request, &pr->tok, 5, &req_cas_id) != MCMC_OK) {
	movq	(%r15), %rdi	# pr_60(D)->request, pr_60(D)->request
	leaq	32(%rsp), %rcx	#, tmp176
	leaq	16(%r15), %rsi	#, _19
	movl	$5, %edx	#,
	movl	%eax, 8(%rsp)	# exptime, %sfp
	call	mcmc_token_get_u64@PLT	#
# proto_parser.c:767:         if (mcmc_token_get_u64(pr->request, &pr->tok, 5, &req_cas_id) != MCMC_OK) {
	movl	8(%rsp), %r10d	# %sfp, exptime
	testl	%eax, %eax	# _21
	je	.L281	#,
	.p2align 4
	.p2align 3
.L278:
# proto_parser.c:753:         pout_string(resp, "CLIENT_ERROR bad command line format");
	leaq	.LC6(%rip), %rsi	#,
	movq	%r13, %rdi	# resp,
	call	pout_string	#
.L276:
# proto_parser.c:754:         return NULL;
	xorl	%r14d, %r14d	# <retval>
	jmp	.L273	#
	.p2align 4
	.p2align 3
.L308:
# proto_parser.c:776:         stats_prefix_record_set(key, nkey);
	movq	%rbp, %rsi	# nkey,
	movq	%rbx, %rdi	# key,
	movl	%r10d, 8(%rsp)	# exptime, %sfp
	call	stats_prefix_record_set@PLT	#
	movl	8(%rsp), %r10d	# %sfp, exptime
	jmp	.L282	#
	.p2align 4
	.p2align 3
.L309:
# proto_parser.c:783:         if (! item_size_ok(nkey, flags, pr->vlen)) {
	movl	88(%r15), %edx	# pr_60(D)->vlen, pr_60(D)->vlen
	movl	24(%rsp), %esi	# flags,
	movq	%rbp, %rdi	# nkey,
	call	item_size_ok@PLT	#
# proto_parser.c:783:         if (! item_size_ok(nkey, flags, pr->vlen)) {
	testb	%al, %al	# _27
	jne	.L284	#,
# proto_parser.c:784:             pout_string(resp, "SERVER_ERROR object too large for cache");
	leaq	.LC35(%rip), %rsi	#,
	movq	%r13, %rdi	# resp,
# proto_parser.c:785:             status = TOO_LARGE;
	movl	$4, %r13d	#, status
# proto_parser.c:784:             pout_string(resp, "SERVER_ERROR object too large for cache");
	call	pout_string	#
# proto_parser.c:786:             pthread_mutex_lock(&t->stats.mutex);
	leaq	360(%r12), %rdi	#,
	call	pthread_mutex_lock@PLT	#
# proto_parser.c:787:             t->stats.store_too_large++;
	incq	576(%r12)	# t_78(D)->stats.store_too_large
# proto_parser.c:788:             pthread_mutex_unlock(&t->stats.mutex);
	leaq	360(%r12), %rdi	#,
	call	pthread_mutex_unlock@PLT	#
.L285:
# proto_parser.c:796:         LOGGER_LOG(t->l, LOG_MUTATIONS, LOGGER_ITEM_STORE,
	movq	7000(%r12), %rdi	# t_78(D)->l, myl
	testq	%rdi, %rdi	# myl
	je	.L312	#,
.L286:
# proto_parser.c:796:         LOGGER_LOG(t->l, LOG_MUTATIONS, LOGGER_ITEM_STORE,
	testb	$8, 84(%rdi)	#, myl_47->eflags
	jne	.L313	#,
.L287:
# proto_parser.c:801:         if (comm == NREAD_SET) {
	cmpl	$2, 12(%rsp)	#, %sfp
	jne	.L276	#,
# proto_parser.c:802:             it = item_get(key, nkey, t, DONT_UPDATE);
	movq	%rbx, %rdi	# key,
	xorl	%ecx, %ecx	#
	movq	%r12, %rdx	# t,
	movq	%rbp, %rsi	# nkey,
	call	item_get@PLT	#
	movq	%rax, %rbx	#, it
# proto_parser.c:803:             if (it) {
	testq	%rax, %rax	# it
	je	.L276	#,
# proto_parser.c:804:                 item_unlink(it);
	movq	%rax, %rdi	# it,
	call	item_unlink@PLT	#
# proto_parser.c:805:                 STORAGE_delete(t->storage, it);
	movq	6992(%r12), %rdi	# t_78(D)->storage, t_78(D)->storage
	movq	%rbx, %rsi	# it,
	call	storage_delete@PLT	#
# proto_parser.c:806:                 item_remove(it);
	movq	%rbx, %rdi	# it,
	call	item_remove@PLT	#
	jmp	.L276	#
	.p2align 4
	.p2align 3
.L284:
# proto_parser.c:790:             pout_string(resp, "SERVER_ERROR out of memory storing object");
	leaq	.LC36(%rip), %rsi	#,
	movq	%r13, %rdi	# resp,
# proto_parser.c:791:             status = NO_MEMORY;
	movl	$5, %r13d	#, status
# proto_parser.c:790:             pout_string(resp, "SERVER_ERROR out of memory storing object");
	call	pout_string	#
# proto_parser.c:792:             pthread_mutex_lock(&t->stats.mutex);
	leaq	360(%r12), %rdi	#,
	call	pthread_mutex_lock@PLT	#
# proto_parser.c:793:             t->stats.store_no_memory++;
	incq	584(%r12)	# t_78(D)->stats.store_no_memory
# proto_parser.c:794:             pthread_mutex_unlock(&t->stats.mutex);
	leaq	360(%r12), %rdi	#,
	call	pthread_mutex_unlock@PLT	#
	jmp	.L285	#
.L313:
# proto_parser.c:796:         LOGGER_LOG(t->l, LOG_MUTATIONS, LOGGER_ITEM_STORE,
	movl	344(%r12), %eax	# t_78(D)->cur_sfd, t_78(D)->cur_sfd
	movq	%rbx, %r9	# key,
	movl	%r13d, %ecx	# status,
	xorl	%edx, %edx	#
	movl	$3, %esi	#,
	pushq	%rax	# t_78(D)->cur_sfd
	.cfi_def_cfa_offset 120
	pushq	$0	#
	.cfi_def_cfa_offset 128
	pushq	$0	#
	.cfi_def_cfa_offset 136
	xorl	%eax, %eax	#
	pushq	%rbp	# nkey
	.cfi_def_cfa_offset 144
	movl	44(%rsp), %r8d	# %sfp,
	call	logger_log@PLT	#
	addq	$32, %rsp	#,
	.cfi_def_cfa_offset 112
	jmp	.L287	#
.L312:
# proto_parser.c:796:         LOGGER_LOG(t->l, LOG_MUTATIONS, LOGGER_ITEM_STORE,
	movl	logger_key(%rip), %edi	# logger_key,
	call	pthread_getspecific@PLT	#
	movq	%rax, %rdi	# myl, myl
	jmp	.L286	#
.L311:
# proto_parser.c:819: }
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.type	process_update_cmd_start.cold, @function
process_update_cmd_start.cold:
.LFSB90:
.L305:
	.cfi_def_cfa_offset 112
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
# proto_parser.c:750:     assert(resp != NULL);
	leaq	__PRETTY_FUNCTION__.8(%rip), %rcx	#,
	movl	$750, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC34(%rip), %rdi	#,
	call	__assert_fail@PLT	#
	.cfi_endproc
.LFE90:
	.text
	.size	process_update_cmd_start, .-process_update_cmd_start
	.section	.text.unlikely
	.size	process_update_cmd_start.cold, .-process_update_cmd_start.cold
.LCOLDE37:
	.text
.LHOTE37:
	.section	.rodata.str1.1
.LC38:
	.string	"STORED"
.LC39:
	.string	"EXISTS"
.LC40:
	.string	"NOT_FOUND"
.LC41:
	.string	"NOT_STORED"
	.section	.rodata.str1.8
	.align 8
.LC42:
	.string	"SERVER_ERROR Unhandled storage type."
	.text
	.p2align 4
	.globl	process_update_cmd
	.type	process_update_cmd, @function
process_update_cmd:
.LFB91:
	.cfi_startproc
	endbr64	
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
# proto_parser.c:822:     item *it = process_update_cmd_start(t, pr, resp, comm, handle_cas);
	movzbl	%r8b, %r8d	# handle_cas,
# proto_parser.c:821: void process_update_cmd(LIBEVENT_THREAD *t, mcp_parser_t *pr, mc_resp *resp, int comm, bool handle_cas) {
	pushq	%r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
# proto_parser.c:821: void process_update_cmd(LIBEVENT_THREAD *t, mcp_parser_t *pr, mc_resp *resp, int comm, bool handle_cas) {
	movq	%rdi, %r14	# t, t
	movq	%rsi, %rbp	# pr, pr
	movq	%rdx, %r12	# resp, resp
	movl	%ecx, %r13d	# comm, comm
# proto_parser.c:822:     item *it = process_update_cmd_start(t, pr, resp, comm, handle_cas);
	call	process_update_cmd_start	#
# proto_parser.c:823:     if (it == NULL) {
	testq	%rax, %rax	# it
	je	.L328	#,
# proto_parser.c:828:     if (_store_item_copy_from_buf(it, pr->vbuf, it->nbytes) != 0) {
	movq	8(%rbp), %rsi	# pr_14(D)->vbuf, pr_14(D)->vbuf
	movl	32(%rax), %edx	# it_18->nbytes, it_18->nbytes
	movq	%rax, %rdi	# it,
	movq	%rax, %rbx	#, it
	call	_store_item_copy_from_buf	#
# proto_parser.c:829:         pout_string(resp, "SERVER_ERROR out of memory storing object");
	leaq	.LC36(%rip), %rsi	#,
# proto_parser.c:828:     if (_store_item_copy_from_buf(it, pr->vbuf, it->nbytes) != 0) {
	testl	%eax, %eax	# _4
	jne	.L330	#,
# proto_parser.c:834:     int ret = store_item(it, comm, t, NULL, NULL, (settings.use_cas) ? get_cas_id() : 0, CAS_NO_STALE);
	xorl	%r9d, %r9d	# iftmp.30_7
# proto_parser.c:834:     int ret = store_item(it, comm, t, NULL, NULL, (settings.use_cas) ? get_cas_id() : 0, CAS_NO_STALE);
	cmpb	$0, 104+settings(%rip)	#, settings.use_cas
	jne	.L331	#,
.L317:
# proto_parser.c:834:     int ret = store_item(it, comm, t, NULL, NULL, (settings.use_cas) ? get_cas_id() : 0, CAS_NO_STALE);
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 56
	xorl	%ecx, %ecx	#
	movq	%r14, %rdx	# t,
	xorl	%r8d, %r8d	#
	pushq	$0	#
	.cfi_def_cfa_offset 64
	movl	%r13d, %esi	# comm,
	movq	%rbx, %rdi	# it,
	call	store_item@PLT	#
# proto_parser.c:835:     switch (ret) {
	popq	%rdx	#
	.cfi_def_cfa_offset 56
	popq	%rcx	#
	.cfi_def_cfa_offset 48
	cmpl	$2, %eax	#, _6
	je	.L318	#,
	ja	.L319	#,
	testl	%eax, %eax	# _6
	je	.L332	#,
# proto_parser.c:837:       pout_string(resp, "STORED");
	movq	%r12, %rdi	# resp,
	leaq	.LC38(%rip), %rsi	#,
	call	pout_string	#
# proto_parser.c:853:     item_remove(it);
	movq	%rbx, %rdi	# it,
# proto_parser.c:854: }
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp	#
	.cfi_def_cfa_offset 32
	popq	%r12	#
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
# proto_parser.c:853:     item_remove(it);
	jmp	item_remove@PLT	#
	.p2align 4
	.p2align 3
.L328:
	.cfi_restore_state
# proto_parser.c:854: }
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp	#
	.cfi_def_cfa_offset 32
	popq	%r12	#
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4
	.p2align 3
.L333:
	.cfi_restore_state
# proto_parser.c:849:       pout_string(resp, "SERVER_ERROR Unhandled storage type.");
	leaq	.LC42(%rip), %rsi	#,
.L330:
	movq	%r12, %rdi	# resp,
	call	pout_string	#
# proto_parser.c:853:     item_remove(it);
	movq	%rbx, %rdi	# it,
# proto_parser.c:854: }
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp	#
	.cfi_def_cfa_offset 32
	popq	%r12	#
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
# proto_parser.c:853:     item_remove(it);
	jmp	item_remove@PLT	#
	.p2align 4
	.p2align 3
.L331:
	.cfi_restore_state
# proto_parser.c:834:     int ret = store_item(it, comm, t, NULL, NULL, (settings.use_cas) ? get_cas_id() : 0, CAS_NO_STALE);
	call	get_cas_id@PLT	#
	movq	%rax, %r9	# iftmp.30_7, iftmp.30_7
	jmp	.L317	#
	.p2align 4
	.p2align 3
.L332:
# proto_parser.c:846:       pout_string(resp, "NOT_STORED");
	movq	%r12, %rdi	# resp,
	leaq	.LC41(%rip), %rsi	#,
	call	pout_string	#
# proto_parser.c:853:     item_remove(it);
	movq	%rbx, %rdi	# it,
# proto_parser.c:854: }
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp	#
	.cfi_def_cfa_offset 32
	popq	%r12	#
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
# proto_parser.c:853:     item_remove(it);
	jmp	item_remove@PLT	#
	.p2align 4
	.p2align 3
.L318:
	.cfi_restore_state
# proto_parser.c:840:       pout_string(resp, "EXISTS");
	movq	%r12, %rdi	# resp,
	leaq	.LC39(%rip), %rsi	#,
	call	pout_string	#
# proto_parser.c:853:     item_remove(it);
	movq	%rbx, %rdi	# it,
# proto_parser.c:854: }
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbp	#
	.cfi_def_cfa_offset 32
	popq	%r12	#
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
# proto_parser.c:853:     item_remove(it);
	jmp	item_remove@PLT	#
	.p2align 4
	.p2align 3
.L319:
	.cfi_restore_state
# proto_parser.c:835:     switch (ret) {
	cmpl	$3, %eax	#, _6
	jne	.L333	#,
# proto_parser.c:843:       pout_string(resp, "NOT_FOUND");
	movq	%r12, %rdi	# resp,
	leaq	.LC40(%rip), %rsi	#,
	call	pout_string	#
# proto_parser.c:853:     item_remove(it);
	movq	%rbx, %rdi	# it,
# proto_parser.c:854: }
	popq	%rbx	#
	.cfi_def_cfa_offset 40
	popq	%rbp	#
	.cfi_def_cfa_offset 32
	popq	%r12	#
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
# proto_parser.c:853:     item_remove(it);
	jmp	item_remove@PLT	#
	.cfi_endproc
.LFE91:
	.size	process_update_cmd, .-process_update_cmd
	.section	.rodata.str1.1
.LC43:
	.string	"t != NULL"
	.section	.rodata.str1.8
	.align 8
.LC44:
	.string	"CLIENT_ERROR invalid numeric delta argument"
	.align 8
.LC45:
	.string	"CLIENT_ERROR cannot increment or decrement non-numeric value"
	.section	.rodata.str1.1
.LC46:
	.string	"SERVER_ERROR out of memory"
	.section	.text.unlikely
.LCOLDB47:
	.text
.LHOTB47:
	.p2align 4
	.globl	process_arithmetic_cmd
	.type	process_arithmetic_cmd, @function
process_arithmetic_cmd:
.LFB92:
	.cfi_startproc
	endbr64	
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$72, %rsp	#,
	.cfi_def_cfa_offset 128
# proto_parser.c:860:     size_t nkey = pr->klen;
	movq	%fs:40, %r13	# MEM[(<address-space-1> long unsigned int *)40B], nkey
	movq	%r13, 56(%rsp)	# nkey, D.12713
	movl	92(%rsi), %r13d	# pr_23(D)->klen, nkey
# proto_parser.c:862:     assert(t != NULL);
	testq	%rdi, %rdi	# t
	je	.L350	#,
	movq	%rdx, %rbp	# resp, resp
# proto_parser.c:864:     if (nkey > KEY_MAX_LENGTH) {
	cmpq	$250, %r13	#, nkey
	ja	.L355	#,
# proto_parser.c:859:     const char *key = MCP_PARSER_KEY(pr);
	movq	(%rsi), %r12	# pr_23(D)->request, _1
	movzbl	82(%rsi), %eax	# pr_23(D)->keytoken, _3
	movq	%rdi, %rbx	# t, t
	movl	%ecx, %r14d	# incr, incr
# proto_parser.c:869:     if (mcmc_token_get_u64(pr->request, &pr->tok, 2, &delta) != MCMC_OK) {
	movl	$2, %edx	#,
	leaq	24(%rsp), %rcx	#, tmp131
# proto_parser.c:859:     const char *key = MCP_PARSER_KEY(pr);
	movzwl	18(%rsi,%rax,2), %r15d	# pr_23(D)->tok.tokens[_3], _4
# proto_parser.c:869:     if (mcmc_token_get_u64(pr->request, &pr->tok, 2, &delta) != MCMC_OK) {
	movq	%r12, %rdi	# _1,
	addq	$16, %rsi	#, _7
	call	mcmc_token_get_u64@PLT	#
# proto_parser.c:869:     if (mcmc_token_get_u64(pr->request, &pr->tok, 2, &delta) != MCMC_OK) {
	testl	%eax, %eax	# _8
	jne	.L356	#,
# proto_parser.c:874:     switch(add_delta(t, key, nkey, incr, delta, temp, NULL)) {
	leaq	32(%rsp), %r9	#, tmp134
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 136
# proto_parser.c:859:     const char *key = MCP_PARSER_KEY(pr);
	movzwl	%r15w, %eax	# _4, _5
# proto_parser.c:874:     switch(add_delta(t, key, nkey, incr, delta, temp, NULL)) {
	movzbl	%r14b, %ecx	# incr, _11
	pushq	$0	#
	.cfi_def_cfa_offset 144
	movq	40(%rsp), %r8	# delta,
	movq	%r13, %rdx	# nkey,
# proto_parser.c:859:     const char *key = MCP_PARSER_KEY(pr);
	leaq	(%r12,%rax), %rsi	#, key_24
# proto_parser.c:874:     switch(add_delta(t, key, nkey, incr, delta, temp, NULL)) {
	movq	%rbx, %rdi	# t,
	movq	%r9, 24(%rsp)	# tmp134, %sfp
	call	add_delta@PLT	#
# proto_parser.c:874:     switch(add_delta(t, key, nkey, incr, delta, temp, NULL)) {
	popq	%rdx	#
	.cfi_def_cfa_offset 136
	popq	%rcx	#
	.cfi_def_cfa_offset 128
	cmpl	$2, %eax	#, _12
	je	.L340	#,
	ja	.L341	#,
	testl	%eax, %eax	# _12
	je	.L357	#,
# proto_parser.c:879:         pout_string(resp, "CLIENT_ERROR cannot increment or decrement non-numeric value");
	leaq	.LC45(%rip), %rsi	#,
	movq	%rbp, %rdi	# resp,
	call	pout_string	#
# proto_parser.c:880:         break;
	jmp	.L334	#
	.p2align 4
	.p2align 3
.L356:
# proto_parser.c:870:         pout_string(resp, "CLIENT_ERROR invalid numeric delta argument");
	leaq	.LC44(%rip), %rsi	#,
	movq	%rbp, %rdi	# resp,
	call	pout_string	#
.L334:
# proto_parser.c:898: }
	movq	56(%rsp), %rax	# D.12713, tmp151
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp151
	jne	.L354	#,
	addq	$72, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4
	.p2align 3
.L355:
	.cfi_restore_state
# proto_parser.c:865:         pout_string(resp, "CLIENT_ERROR bad command line format");
	movq	56(%rsp), %rax	# D.12713, tmp150
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp150
	jne	.L354	#,
# proto_parser.c:898: }
	addq	$72, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
# proto_parser.c:865:         pout_string(resp, "CLIENT_ERROR bad command line format");
	leaq	.LC6(%rip), %rsi	#,
	movq	%rdx, %rdi	# resp,
# proto_parser.c:898: }
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
# proto_parser.c:865:         pout_string(resp, "CLIENT_ERROR bad command line format");
	jmp	pout_string	#
	.p2align 4
	.p2align 3
.L357:
	.cfi_restore_state
# proto_parser.c:876:         pout_string(resp, temp);
	movq	8(%rsp), %rsi	# %sfp,
	movq	%rbp, %rdi	# resp,
	call	pout_string	#
# proto_parser.c:877:         break;
	jmp	.L334	#
	.p2align 4
	.p2align 3
.L341:
# proto_parser.c:874:     switch(add_delta(t, key, nkey, incr, delta, temp, NULL)) {
	cmpl	$3, %eax	#, _12
	jne	.L334	#,
# proto_parser.c:885:         pthread_mutex_lock(&t->stats.mutex);
	leaq	360(%rbx), %rdi	#,
	call	pthread_mutex_lock@PLT	#
# proto_parser.c:886:         if (incr) {
	testb	%r14b, %r14b	# incr
	jne	.L358	#,
# proto_parser.c:889:             t->stats.decr_misses++;
	incq	464(%rbx)	# t_26(D)->stats.decr_misses
.L347:
# proto_parser.c:891:         pthread_mutex_unlock(&t->stats.mutex);
	leaq	360(%rbx), %rdi	#,
	call	pthread_mutex_unlock@PLT	#
# proto_parser.c:893:         pout_string(resp, "NOT_FOUND");
	leaq	.LC40(%rip), %rsi	#,
	movq	%rbp, %rdi	# resp,
	call	pout_string	#
# proto_parser.c:894:         break;
	jmp	.L334	#
	.p2align 4
	.p2align 3
.L340:
# proto_parser.c:882:         pout_string(resp, "SERVER_ERROR out of memory");
	leaq	.LC46(%rip), %rsi	#,
	movq	%rbp, %rdi	# resp,
	call	pout_string	#
# proto_parser.c:883:         break;
	jmp	.L334	#
	.p2align 4
	.p2align 3
.L358:
# proto_parser.c:887:             t->stats.incr_misses++;
	incq	456(%rbx)	# t_26(D)->stats.incr_misses
	jmp	.L347	#
.L354:
# proto_parser.c:898: }
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.type	process_arithmetic_cmd.cold, @function
process_arithmetic_cmd.cold:
.LFSB92:
.L350:
	.cfi_def_cfa_offset 128
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
# proto_parser.c:862:     assert(t != NULL);
	leaq	__PRETTY_FUNCTION__.6(%rip), %rcx	#,
	movl	$862, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC43(%rip), %rdi	#,
	call	__assert_fail@PLT	#
	.cfi_endproc
.LFE92:
	.text
	.size	process_arithmetic_cmd, .-process_arithmetic_cmd
	.section	.text.unlikely
	.size	process_arithmetic_cmd.cold, .-process_arithmetic_cmd.cold
.LCOLDE47:
	.text
.LHOTE47:
	.section	.rodata.str1.1
.LC48:
	.string	"DELETED"
	.section	.text.unlikely
.LCOLDB49:
	.text
.LHOTB49:
	.p2align 4
	.globl	process_delete_cmd
	.type	process_delete_cmd, @function
process_delete_cmd:
.LFB93:
	.cfi_startproc
	endbr64	
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$32, %rsp	#,
	.cfi_def_cfa_offset 64
# proto_parser.c:902:     size_t nkey = pr->klen;
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], nkey
	movq	%rax, 24(%rsp)	# nkey, D.12722
	movl	92(%rsi), %eax	# pr_29(D)->klen, nkey
# proto_parser.c:906:     assert(t != NULL);
	testq	%rdi, %rdi	# t
	je	.L372	#,
	movq	%rdx, %r12	# resp, resp
# proto_parser.c:914:     if (nkey > KEY_MAX_LENGTH) {
	cmpq	$250, %rax	#, nkey
	ja	.L376	#,
# proto_parser.c:901:     const char *key = MCP_PARSER_KEY(pr);
	movzbl	82(%rsi), %edx	# pr_29(D)->keytoken, _3
	movq	%rdi, %rbx	# t, t
	movzwl	18(%rsi,%rdx,2), %ebp	# pr_29(D)->tok.tokens[_3], _5
# proto_parser.c:919:     if (settings.detail_enabled) {
	movl	96+settings(%rip), %edx	# settings.detail_enabled,
# proto_parser.c:901:     const char *key = MCP_PARSER_KEY(pr);
	addq	(%rsi), %rbp	# pr_29(D)->request, key
# proto_parser.c:919:     if (settings.detail_enabled) {
	testl	%edx, %edx	#
	jne	.L377	#,
.L363:
# proto_parser.c:923:     it = item_get_locked(key, nkey, t, DONT_UPDATE, &hv);
	movq	%rbp, %rdi	# key,
	leaq	20(%rsp), %r8	#,
	xorl	%ecx, %ecx	#
	movq	%rbx, %rdx	# t,
	movq	%rax, %rsi	# nkey,
	call	item_get_locked@PLT	#
	movq	%rax, %rbp	#, it
# proto_parser.c:924:     if (it) {
	testq	%rax, %rax	# it
	je	.L364	#,
# proto_parser.c:927:         pthread_mutex_lock(&t->stats.mutex);
	leaq	360(%rbx), %rdi	#, _8
	movq	%rdi, 8(%rsp)	# _8, %sfp
	call	pthread_mutex_lock@PLT	#
# proto_parser.c:928:         t->stats.slab_stats[ITEM_clsid(it)].delete_hits++;
	movzbl	40(%rbp), %eax	# it_36->slabs_clsid, _10
# proto_parser.c:929:         pthread_mutex_unlock(&t->stats.mutex);
	movq	8(%rsp), %rdi	# %sfp, _8
	andl	$63, %eax	#, _56
	salq	$6, %rax	#, _54
# proto_parser.c:928:         t->stats.slab_stats[ITEM_clsid(it)].delete_hits++;
	incq	696(%rbx,%rax)	# MEM <uint64_t> [(struct LIBEVENT_THREAD *)_58 + 696B]
# proto_parser.c:929:         pthread_mutex_unlock(&t->stats.mutex);
	call	pthread_mutex_unlock@PLT	#
# proto_parser.c:930:         LOGGER_LOG(t->l, LOG_DELETIONS, LOGGER_DELETIONS, it, LOG_TYPE_DELETE);
	movq	7000(%rbx), %rdi	# t_32(D)->l, myl
	testq	%rdi, %rdi	# myl
	je	.L378	#,
.L365:
# proto_parser.c:930:         LOGGER_LOG(t->l, LOG_DELETIONS, LOGGER_DELETIONS, it, LOG_TYPE_DELETE);
	testb	$32, 85(%rdi)	#, myl_22->eflags
	jne	.L379	#,
.L366:
# proto_parser.c:931:         do_item_unlink(it, hv);
	movl	20(%rsp), %esi	# hv,
	movq	%rbp, %rdi	# it,
	call	do_item_unlink@PLT	#
# proto_parser.c:932:         STORAGE_delete(t->storage, it);
	movq	6992(%rbx), %rdi	# t_32(D)->storage, t_32(D)->storage
	movq	%rbp, %rsi	# it,
	call	storage_delete@PLT	#
# proto_parser.c:933:         do_item_remove(it);      /* release our reference */
	movq	%rbp, %rdi	# it,
	call	do_item_remove@PLT	#
# proto_parser.c:934:         pout_string(resp, "DELETED");
	leaq	.LC48(%rip), %rsi	#,
	movq	%r12, %rdi	# resp,
	call	pout_string	#
.L367:
# proto_parser.c:942:     item_unlock(hv);
	movl	20(%rsp), %edi	# hv,
	call	item_unlock@PLT	#
# proto_parser.c:943: }
	movq	24(%rsp), %rax	# D.12722, tmp162
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp162
	jne	.L375	#,
	addq	$32, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4
	.p2align 3
.L377:
	.cfi_restore_state
# proto_parser.c:920:         stats_prefix_record_delete(key, nkey);
	movq	%rax, %rsi	# nkey,
	movq	%rbp, %rdi	# key,
	movq	%rax, 8(%rsp)	# nkey, %sfp
	call	stats_prefix_record_delete@PLT	#
	movq	8(%rsp), %rax	# %sfp, nkey
	jmp	.L363	#
	.p2align 4
	.p2align 3
.L364:
# proto_parser.c:936:         pthread_mutex_lock(&t->stats.mutex);
	leaq	360(%rbx), %rbp	#, _18
	movq	%rbp, %rdi	# _18,
	call	pthread_mutex_lock@PLT	#
# proto_parser.c:937:         t->stats.delete_misses++;
	incq	448(%rbx)	# t_32(D)->stats.delete_misses
# proto_parser.c:938:         pthread_mutex_unlock(&t->stats.mutex);
	movq	%rbp, %rdi	# _18,
	call	pthread_mutex_unlock@PLT	#
# proto_parser.c:940:         pout_string(resp, "NOT_FOUND");
	leaq	.LC40(%rip), %rsi	#,
	movq	%r12, %rdi	# resp,
	call	pout_string	#
	jmp	.L367	#
	.p2align 4
	.p2align 3
.L376:
# proto_parser.c:915:         pout_string(resp, "CLIENT_ERROR bad command line format");
	movq	24(%rsp), %rax	# D.12722, tmp161
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp161
	jne	.L375	#,
# proto_parser.c:943: }
	addq	$32, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 32
# proto_parser.c:915:         pout_string(resp, "CLIENT_ERROR bad command line format");
	leaq	.LC6(%rip), %rsi	#,
	movq	%rdx, %rdi	# resp,
# proto_parser.c:943: }
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
# proto_parser.c:915:         pout_string(resp, "CLIENT_ERROR bad command line format");
	jmp	pout_string	#
	.p2align 4
	.p2align 3
.L379:
	.cfi_restore_state
# proto_parser.c:930:         LOGGER_LOG(t->l, LOG_DELETIONS, LOGGER_DELETIONS, it, LOG_TYPE_DELETE);
	movl	$1, %ecx	#,
	movq	%rbp, %rdx	# it,
	movl	$10, %esi	#,
	xorl	%eax, %eax	#
	call	logger_log@PLT	#
	jmp	.L366	#
	.p2align 4
	.p2align 3
.L378:
# proto_parser.c:930:         LOGGER_LOG(t->l, LOG_DELETIONS, LOGGER_DELETIONS, it, LOG_TYPE_DELETE);
	movl	logger_key(%rip), %edi	# logger_key,
	call	pthread_getspecific@PLT	#
	movq	%rax, %rdi	# myl, myl
	jmp	.L365	#
.L375:
# proto_parser.c:943: }
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.type	process_delete_cmd.cold, @function
process_delete_cmd.cold:
.LFSB93:
.L372:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
# proto_parser.c:906:     assert(t != NULL);
	leaq	__PRETTY_FUNCTION__.5(%rip), %rcx	#,
	movl	$906, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC43(%rip), %rdi	#,
	call	__assert_fail@PLT	#
	.cfi_endproc
.LFE93:
	.text
	.size	process_delete_cmd, .-process_delete_cmd
	.section	.text.unlikely
	.size	process_delete_cmd.cold, .-process_delete_cmd.cold
.LCOLDE49:
	.text
.LHOTE49:
	.section	.rodata.str1.1
.LC50:
	.string	"TOUCHED"
	.section	.text.unlikely
.LCOLDB51:
	.text
.LHOTB51:
	.p2align 4
	.globl	process_touch_cmd
	.type	process_touch_cmd, @function
process_touch_cmd:
.LFB94:
	.cfi_startproc
	endbr64	
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13	#
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12	#
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$16, %rsp	#,
	.cfi_def_cfa_offset 64
# proto_parser.c:946:     const char *key = MCP_PARSER_KEY(pr);
	movzbl	82(%rsi), %eax	# pr_29(D)->keytoken, _3
# proto_parser.c:947:     size_t nkey = pr->klen;
	movl	92(%rsi), %ebp	# pr_29(D)->klen, nkey
# proto_parser.c:946:     const char *key = MCP_PARSER_KEY(pr);
	movq	%fs:40, %r14	# MEM[(<address-space-1> long unsigned int *)40B], _1
	movq	%r14, 8(%rsp)	# _1, D.12733
	movq	(%rsi), %r14	# pr_29(D)->request, _1
# proto_parser.c:948:     int32_t exptime_int = 0;
	movl	$0, 4(%rsp)	#, exptime_int
# proto_parser.c:946:     const char *key = MCP_PARSER_KEY(pr);
	movzwl	18(%rsi,%rax,2), %r13d	# pr_29(D)->tok.tokens[_3],
# proto_parser.c:952:     assert(t != NULL);
	testq	%rdi, %rdi	# t
	je	.L388	#,
	movq	%rdx, %r12	# resp, resp
# proto_parser.c:954:     if (nkey > KEY_MAX_LENGTH) {
	cmpq	$250, %rbp	#, nkey
	ja	.L391	#,
	movq	%rdi, %rbx	# t, t
# proto_parser.c:959:     if (mcmc_token_get_32(pr->request, &pr->tok, 2, &exptime_int) != MCMC_OK) {
	addq	$16, %rsi	#, _7
	leaq	4(%rsp), %rcx	#, tmp137
	movl	$2, %edx	#,
	movq	%r14, %rdi	# _1,
	call	mcmc_token_get_32@PLT	#
# proto_parser.c:959:     if (mcmc_token_get_32(pr->request, &pr->tok, 2, &exptime_int) != MCMC_OK) {
	testl	%eax, %eax	# _9
	jne	.L392	#,
# proto_parser.c:964:     exptime = realtime(EXPTIME_TO_POSITIVE_TIME(exptime_int));
	movslq	4(%rsp), %rdi	# exptime_int,
# proto_parser.c:964:     exptime = realtime(EXPTIME_TO_POSITIVE_TIME(exptime_int));
	movl	$2592001, %eax	#,
	testl	%edi, %edi	# exptime_int.37_10
	cmovs	%rax, %rdi	#,,,
# proto_parser.c:964:     exptime = realtime(EXPTIME_TO_POSITIVE_TIME(exptime_int));
	call	realtime@PLT	#
# proto_parser.c:965:     it = item_touch(key, nkey, exptime, t);
	movq	%rbp, %rsi	# nkey,
	movq	%rbx, %rcx	# t,
	leaq	(%r14,%r13), %rdi	#,
	movl	%eax, %edx	# exptime,
	call	item_touch@PLT	#
	movq	%rax, %rbp	#, it
# proto_parser.c:966:     if (it) {
	testq	%rax, %rax	# it
	je	.L386	#,
# proto_parser.c:967:         pthread_mutex_lock(&t->stats.mutex);
	leaq	360(%rbx), %rdi	#,
	call	pthread_mutex_lock@PLT	#
# proto_parser.c:968:         t->stats.touch_cmds++;
	incq	432(%rbx)	# t_33(D)->stats.touch_cmds
# proto_parser.c:970:         pthread_mutex_unlock(&t->stats.mutex);
	leaq	360(%rbx), %rdi	#,
# proto_parser.c:969:         t->stats.slab_stats[ITEM_clsid(it)].touch_hits++;
	movzbl	40(%rbp), %eax	# it_39->slabs_clsid, _15
	andl	$63, %eax	#, _27
	salq	$6, %rax	#, _8
# proto_parser.c:969:         t->stats.slab_stats[ITEM_clsid(it)].touch_hits++;
	incq	688(%rbx,%rax)	# MEM <uint64_t> [(struct LIBEVENT_THREAD *)_42 + 688B]
# proto_parser.c:970:         pthread_mutex_unlock(&t->stats.mutex);
	call	pthread_mutex_unlock@PLT	#
# proto_parser.c:972:         pout_string(resp, "TOUCHED");
	movq	%r12, %rdi	# resp,
	leaq	.LC50(%rip), %rsi	#,
	call	pout_string	#
# proto_parser.c:973:         item_remove(it);
	movq	%rbp, %rdi	# it,
	call	item_remove@PLT	#
.L380:
# proto_parser.c:982: }
	movq	8(%rsp), %rax	# D.12733, tmp161
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp161
	jne	.L393	#,
	addq	$16, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx	#
	.cfi_def_cfa_offset 40
	popq	%rbp	#
	.cfi_def_cfa_offset 32
	popq	%r12	#
	.cfi_def_cfa_offset 24
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4
	.p2align 3
.L391:
	.cfi_restore_state
# proto_parser.c:955:         pout_string(resp, "CLIENT_ERROR bad command line format");
	leaq	.LC6(%rip), %rsi	#,
	movq	%rdx, %rdi	# resp,
	call	pout_string	#
# proto_parser.c:956:         return;
	jmp	.L380	#
	.p2align 4
	.p2align 3
.L386:
# proto_parser.c:975:         pthread_mutex_lock(&t->stats.mutex);
	leaq	360(%rbx), %rbp	#, _19
	movq	%rbp, %rdi	# _19,
	call	pthread_mutex_lock@PLT	#
# proto_parser.c:976:         t->stats.touch_cmds++;
	movl	$1, %eax	#, tmp151
# proto_parser.c:978:         pthread_mutex_unlock(&t->stats.mutex);
	movq	%rbp, %rdi	# _19,
# proto_parser.c:976:         t->stats.touch_cmds++;
	vmovq	%rax, %xmm0	# tmp151, tmp151
	vpunpcklqdq	%xmm0, %xmm0, %xmm0	# tmp151, tmp150
	vpaddq	432(%rbx), %xmm0, %xmm0	# MEM <vector(2) long unsigned int> [(long unsigned int *)t_33(D) + 432B], tmp150, vect__21.233_24
	vmovdqu	%xmm0, 432(%rbx)	# vect__21.233_24, MEM <vector(2) long unsigned int> [(long unsigned int *)t_33(D) + 432B]
# proto_parser.c:978:         pthread_mutex_unlock(&t->stats.mutex);
	call	pthread_mutex_unlock@PLT	#
# proto_parser.c:980:         pout_string(resp, "NOT_FOUND");
	leaq	.LC40(%rip), %rsi	#,
	movq	%r12, %rdi	# resp,
	call	pout_string	#
	jmp	.L380	#
	.p2align 4
	.p2align 3
.L392:
# proto_parser.c:960:         pout_string(resp, "CLIENT_ERROR invalid exptime argument");
	leaq	.LC29(%rip), %rsi	#,
	movq	%r12, %rdi	# resp,
	call	pout_string	#
# proto_parser.c:961:         return;
	jmp	.L380	#
.L393:
# proto_parser.c:982: }
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.type	process_touch_cmd.cold, @function
process_touch_cmd.cold:
.LFSB94:
.L388:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -48
	.cfi_offset 6, -40
	.cfi_offset 12, -32
	.cfi_offset 13, -24
	.cfi_offset 14, -16
# proto_parser.c:952:     assert(t != NULL);
	leaq	__PRETTY_FUNCTION__.4(%rip), %rcx	#,
	movl	$952, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC43(%rip), %rdi	#,
	call	__assert_fail@PLT	#
	.cfi_endproc
.LFE94:
	.text
	.size	process_touch_cmd, .-process_touch_cmd
	.section	.text.unlikely
	.size	process_touch_cmd.cold, .-process_touch_cmd.cold
.LCOLDE51:
	.text
.LHOTE51:
	.section	.rodata.str1.8
	.align 8
.LC52:
	.string	"CLIENT_ERROR opaque token too long"
	.section	.rodata.str1.1
.LC53:
	.string	"it == NULL"
	.section	.rodata.str1.8
	.align 8
.LC54:
	.string	"SERVER_ERROR refcount overflow during fetch"
	.section	.text.unlikely
.LCOLDB68:
	.text
.LHOTB68:
	.p2align 4
	.globl	process_mget_cmd
	.type	process_mget_cmd, @function
process_mget_cmd:
.LFB95:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
# proto_parser.c:989:     struct _meta_flags of = {0}; // option bitflags.
	vpxor	%xmm0, %xmm0, %xmm0	# tmp392
# proto_parser.c:985:         parser_storage_get_cb storage_cb) {
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%r10	#
	pushq	%rbx	#
	subq	$432, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 10, -56
	.cfi_offset 3, -64
# proto_parser.c:985:         parser_storage_get_cb storage_cb) {
	movq	%rdx, -408(%rbp)	# resp, %sfp
	movq	%rcx, -456(%rbp)	# storage_cb, %sfp
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp391
	movq	%rax, -56(%rbp)	# tmp391, D.12826
	xorl	%eax, %eax	# tmp391
# proto_parser.c:995:     char *errstr = "CLIENT_ERROR bad command line format";
	leaq	.LC6(%rip), %rax	#, tmp752
# proto_parser.c:989:     struct _meta_flags of = {0}; // option bitflags.
	vmovdqu	%ymm0, -384(%rbp)	# tmp392, of
	vmovdqu	%ymm0, -352(%rbp)	# tmp392, of
# proto_parser.c:995:     char *errstr = "CLIENT_ERROR bad command line format";
	movq	%rax, -392(%rbp)	# tmp752, errstr
# proto_parser.c:996:     assert(t != NULL);
	testq	%rdi, %rdi	# t
	je	.L570	#,
	movq	%rsi, %r14	# pr, pr
	movq	%rdi, %r12	# t, t
# proto_parser.c:1002:     if (_meta_flag_preparse(pr, 2, &of, binkey, &errstr) != 0) {
	leaq	-320(%rbp), %rcx	#, tmp398
	leaq	-384(%rbp), %rdx	#, tmp399
	leaq	-392(%rbp), %r8	#,
	movl	$2, %esi	#,
	movq	%r14, %rdi	# pr,
	vzeroupper
	call	_meta_flag_preparse.constprop.0	#
# proto_parser.c:1002:     if (_meta_flag_preparse(pr, 2, &of, binkey, &errstr) != 0) {
	testl	%eax, %eax	# _1
	jne	.L581	#,
# proto_parser.c:1008:     const char *key = of.key;
	movq	-360(%rbp), %rdi	# of.key, key
# proto_parser.c:1009:     size_t nkey = of.key_len;
	movzbl	-381(%rbp), %esi	# of.key_len, nkey
# proto_parser.c:1011:     bool overflow = false;
	movb	$0, -397(%rbp)	#, overflow
# proto_parser.c:1012:     if (!of.locked) {
	movzbl	-384(%rbp), %r9d	# of, _4
# proto_parser.c:1008:     const char *key = of.key;
	movq	%rdi, -424(%rbp)	# key, %sfp
# proto_parser.c:1009:     size_t nkey = of.key_len;
	movq	%rsi, -416(%rbp)	# nkey, %sfp
# proto_parser.c:1012:     if (!of.locked) {
	testb	$4, %r9b	#, _4
	je	.L582	#,
# proto_parser.c:1016:         it = limited_get_locked(key, nkey, t, DONT_UPDATE, &hv, &overflow);
	leaq	-397(%rbp), %r9	#,
	leaq	-396(%rbp), %r8	#,
	xorl	%ecx, %ecx	#
	movq	%r12, %rdx	# t,
	call	limited_get_locked@PLT	#
# proto_parser.c:1022:     if (overflow) {
	movzbl	-397(%rbp), %r11d	# overflow, won_token
# proto_parser.c:1016:         it = limited_get_locked(key, nkey, t, DONT_UPDATE, &hv, &overflow);
	movq	%rax, %r15	# it, it
# proto_parser.c:1022:     if (overflow) {
	testb	%r11b, %r11b	# won_token
	jne	.L583	#,
.L400:
# proto_parser.c:997:     char *p = resp->wbuf;
	movq	-408(%rbp), %rax	# %sfp, resp
# proto_parser.c:992:     bool item_created = false;
	movb	$0, -432(%rbp)	#, %sfp
# proto_parser.c:997:     char *p = resp->wbuf;
	addq	$164, %rax	#, p
	movq	%rax, -440(%rbp)	# p, %sfp
# proto_parser.c:1028:     if (it == NULL && of.vivify) {
	testq	%r15, %r15	# it
	je	.L584	#,
.L402:
# proto_parser.c:1048:         if (of.has_cas && ITEM_get_cas(it) == of.req_cas_id) {
	testb	$2, -383(%rbp)	#, of
	je	.L409	#,
# proto_parser.c:1048:         if (of.has_cas && ITEM_get_cas(it) == of.req_cas_id) {
	xorl	%eax, %eax	# iftmp.43_225
# proto_parser.c:1048:         if (of.has_cas && ITEM_get_cas(it) == of.req_cas_id) {
	testb	$2, 38(%r15)	#, it_69->it_flags
	je	.L410	#,
# proto_parser.c:1048:         if (of.has_cas && ITEM_get_cas(it) == of.req_cas_id) {
	movq	48(%r15), %rax	# it_69->data[0].cas, iftmp.43_225
.L410:
# proto_parser.c:1048:         if (of.has_cas && ITEM_get_cas(it) == of.req_cas_id) {
	cmpq	%rax, -352(%rbp)	# iftmp.43_225, of.req_cas_id
	je	.L585	#,
.L409:
# proto_parser.c:1052:         if (of.value) {
	testb	$64, -384(%rbp)	#, of
	je	.L411	#,
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movq	-408(%rbp), %rax	# %sfp, resp
	movq	-440(%rbp), %rbx	# %sfp, p
	movb	%r11b, -441(%rbp)	# won_token, %sfp
	movw	$16726, 164(%rax)	#, MEM <char[1:3]> [(void *)p_256]
# proto_parser.c:1054:             p = itoa_u32(it->nbytes-2, p+3);
	leaq	167(%rax), %rsi	#, _36
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movb	$32, 2(%rbx)	#, MEM <char[1:3]> [(void *)p_256]
# proto_parser.c:1054:             p = itoa_u32(it->nbytes-2, p+3);
	movl	32(%r15), %eax	# it_69->nbytes, tmp765
	leal	-2(%rax), %edi	#, _38
# proto_parser.c:1054:             p = itoa_u32(it->nbytes-2, p+3);
	call	itoa_u32@PLT	#
	movzbl	-441(%rbp), %r11d	# %sfp, won_token
	movq	%rax, %rcx	# p, p
.L412:
# proto_parser.c:1060:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	movzbl	82(%r14), %r8d	# pr_258(D)->keytoken, _41
# proto_parser.c:1060:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	movzbl	16(%r14), %r10d	# pr_258(D)->tok.ntokens, _108
# proto_parser.c:1060:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	leal	1(%r8), %ebx	#, i
# proto_parser.c:1060:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	cmpl	%r10d, %ebx	# _108, i
	jnb	.L413	#,
	movslq	%ebx, %rax	# i, _413
# proto_parser.c:1103:                     META_CHAR(p, 'f');
	movq	%r12, -464(%rbp)	# t, %sfp
# proto_parser.c:994:     bool ttl_set = false;
	movb	$0, -441(%rbp)	#, %sfp
# proto_parser.c:1103:                     META_CHAR(p, 'f');
	movl	%r11d, %r13d	# won_token, won_token
	leaq	18(%r14,%rax,2), %r12	#, ivtmp.315
	movq	%r14, %rax	# pr, pr
	movl	%ebx, %r14d	# i, i
	movq	%r15, %rbx	# it, it
	movq	%rax, %r15	# pr, pr
	.p2align 4
	.p2align 3
.L442:
# proto_parser.c:1061:             switch (pr->request[pr->tok.tokens[i]]) {
	movl	%r14d, %esi	# i, i
# proto_parser.c:1061:             switch (pr->request[pr->tok.tokens[i]]) {
	movq	(%r15), %rdx	# pr_258(D)->request, _43
# proto_parser.c:1061:             switch (pr->request[pr->tok.tokens[i]]) {
	movzwl	18(%r15,%rsi,2), %eax	# pr_258(D)->tok.tokens[i_477], _45
# proto_parser.c:1061:             switch (pr->request[pr->tok.tokens[i]]) {
	movzbl	(%rdx,%rax), %eax	# *_46, *_46
	subl	$78, %eax	#, tmp452
	cmpb	$38, %al	#, tmp452
	ja	.L414	#,
	leaq	.L416(%rip), %rdi	#, tmp455
	movzbl	%al, %eax	# tmp452, tmp454
	movslq	(%rdi,%rax,4), %rax	#, tmp457
	addq	%rdi, %rax	# tmp455, tmp458
	notrack jmp	*%rax	# tmp458
	.section	.rodata
	.align 4
	.align 4
.L416:
	.long	.L426-.L416
	.long	.L425-.L416
	.long	.L414-.L416
	.long	.L414-.L416
	.long	.L424-.L416
	.long	.L414-.L416
	.long	.L423-.L416
	.long	.L414-.L416
	.long	.L414-.L416
	.long	.L414-.L416
	.long	.L414-.L416
	.long	.L414-.L416
	.long	.L414-.L416
	.long	.L414-.L416
	.long	.L414-.L416
	.long	.L414-.L416
	.long	.L414-.L416
	.long	.L414-.L416
	.long	.L414-.L416
	.long	.L414-.L416
	.long	.L414-.L416
	.long	.L422-.L416
	.long	.L414-.L416
	.long	.L414-.L416
	.long	.L421-.L416
	.long	.L414-.L416
	.long	.L420-.L416
	.long	.L414-.L416
	.long	.L414-.L416
	.long	.L419-.L416
	.long	.L418-.L416
	.long	.L414-.L416
	.long	.L414-.L416
	.long	.L414-.L416
	.long	.L414-.L416
	.long	.L414-.L416
	.long	.L414-.L416
	.long	.L417-.L416
	.long	.L415-.L416
	.text
	.p2align 4
	.p2align 3
.L582:
# proto_parser.c:1013:         it = limited_get(key, nkey, t, 0, false, !of.no_update, &overflow);
	shrb	%r9b	# tmp402
	subq	$8, %rsp	#,
	leaq	-397(%rbp), %rax	#, tmp406
	movq	%r12, %rdx	# t,
	andl	$1, %r9d	#, tmp404
	pushq	%rax	# tmp406
	xorl	%r8d, %r8d	#
	xorl	%ecx, %ecx	#
	xorl	$1, %r9d	#,
	call	limited_get@PLT	#
# proto_parser.c:1022:     if (overflow) {
	movzbl	-397(%rbp), %r11d	# overflow, won_token
# proto_parser.c:1013:         it = limited_get(key, nkey, t, 0, false, !of.no_update, &overflow);
	movq	%rax, %r15	# it, it
	popq	%rax	#
	popq	%rdx	#
# proto_parser.c:1022:     if (overflow) {
	testb	%r11b, %r11b	# won_token
	je	.L400	#,
.L583:
# proto_parser.c:1023:         assert(it == NULL);
	testq	%r15, %r15	# it
	jne	.L571	#,
# proto_parser.c:409:     resp->skip = false;
	movq	-408(%rbp), %rax	# %sfp, resp
# proto_parser.c:410:     pout_string(resp, str);
	leaq	.LC54(%rip), %rsi	#,
# proto_parser.c:409:     resp->skip = false;
	movb	$0, 118(%rax)	#, resp_255(D)->skip
# proto_parser.c:410:     pout_string(resp, str);
	movq	%rax, %rdi	# resp,
	call	pout_string	#
.L394:
# proto_parser.c:1288: }
	movq	-56(%rbp), %rax	# D.12826, tmp699
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp699
	jne	.L586	#,
	leaq	-48(%rbp), %rsp	#,
	popq	%rbx	#
	popq	%r10	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret	
	.p2align 4
	.p2align 3
.L422:
	.cfi_restore_state
# proto_parser.c:1099:                     META_CHAR(p, 'c');
	movw	$25376, (%rcx)	#, MEM <vector(2) char> [(char *)p_482]
	leaq	2(%rcx), %rsi	#, p
# proto_parser.c:1100:                     p = itoa_u64(ITEM_get_cas(it), p);
	xorl	%edi, %edi	# iftmp.45_226
# proto_parser.c:1100:                     p = itoa_u64(ITEM_get_cas(it), p);
	testb	$2, 38(%rbx)	#, it_69->it_flags
	je	.L577	#,
# proto_parser.c:1100:                     p = itoa_u64(ITEM_get_cas(it), p);
	movq	48(%rbx), %rdi	# it_69->data[0].cas, iftmp.45_226
.L577:
# proto_parser.c:1110:                         p = itoa_u64(flags, p);
	call	itoa_u64@PLT	#
	movzbl	16(%r15), %r10d	# pr_258(D)->tok.ntokens, _108
	movq	%rax, %rcx	# p, p
	.p2align 4
	.p2align 3
.L414:
# proto_parser.c:1060:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	incl	%r14d	# i
# proto_parser.c:1060:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	addq	$2, %r12	#, ivtmp.315
	cmpl	%r10d, %r14d	# _108, i
	jb	.L442	#,
.L588:
# proto_parser.c:1145:         if (it->it_flags & ITEM_TOKEN_SENT) {
	movzwl	38(%rbx), %eax	# it_69->it_flags, _109
	movq	%r15, %r14	# pr, pr
	movq	-464(%rbp), %r12	# %sfp, t
	movl	%r13d, %r11d	# won_token, won_token
	movq	%rbx, %r15	# it, it
# proto_parser.c:1145:         if (it->it_flags & ITEM_TOKEN_SENT) {
	testb	$2, %ah	#, _109
	je	.L448	#,
# proto_parser.c:1146:             META_CHAR(p, 'Z');
	movw	$23072, (%rcx)	#, MEM <vector(2) char> [(char *)p_216]
# proto_parser.c:1148:         if (it->it_flags & ITEM_STALE) {
	movzwl	38(%rbx), %eax	# it_69->it_flags, _109
# proto_parser.c:1146:             META_CHAR(p, 'Z');
	addq	$2, %rcx	#, p
.L448:
# proto_parser.c:1148:         if (it->it_flags & ITEM_STALE) {
	testb	$8, %ah	#, _109
	je	.L449	#,
.L445:
# proto_parser.c:1149:             META_CHAR(p, 'X');
	movw	$22560, (%rcx)	#, MEM <vector(2) char> [(char *)p_684]
	addq	$2, %rcx	#, p
# proto_parser.c:1151:             if ((it->it_flags & ITEM_TOKEN_SENT) == 0) {
	testb	$2, 39(%r15)	#, it_69->it_flags
	jne	.L449	#,
.L450:
# proto_parser.c:1159:             META_CHAR(p, 'W');
	movw	$22304, (%rcx)	#, MEM <vector(2) char> [(char *)p_64]
# proto_parser.c:1160:             it->it_flags |= ITEM_TOKEN_SENT;
	orw	$512, 38(%r15)	#, it_69->it_flags
# proto_parser.c:1159:             META_CHAR(p, 'W');
	addq	$2, %rcx	#, p
.L446:
# proto_parser.c:1168:         resp_add_iov(resp, resp->wbuf, p - resp->wbuf);
	movq	-440(%rbp), %rsi	# %sfp, p
	leal	2(%rcx), %edx	#, _116
# proto_parser.c:1163:         *p = '\r';
	movw	$2573, (%rcx)	#, MEM <vector(2) char> [(char *)p_220]
# proto_parser.c:1165:         *(p+2) = '\0';
	movb	$0, 2(%rcx)	#, MEM[(char *)p_220 + 2B]
# proto_parser.c:1166:         p += 2;
	leaq	2(%rcx), %r13	#, p
# proto_parser.c:1168:         resp_add_iov(resp, resp->wbuf, p - resp->wbuf);
	movq	-408(%rbp), %rbx	# %sfp, resp
	subl	%esi, %edx	# p, _116
	movq	%rbx, %rdi	# resp,
	call	resp_add_iov@PLT	#
# proto_parser.c:1170:         if (of.value) {
	movzbl	-384(%rbp), %eax	# of, _118
# proto_parser.c:1170:         if (of.value) {
	testb	$64, %al	#, _118
	je	.L451	#,
# proto_parser.c:1172:             if (it->it_flags & ITEM_HDR) {
	movzwl	38(%r15), %eax	# it_69->it_flags, pretmp_750
# proto_parser.c:1172:             if (it->it_flags & ITEM_HDR) {
	testb	$-128, %al	#, pretmp_750
	je	.L452	#,
# proto_parser.c:1173:                 if (storage_cb(t, it, resp) != 0) {
	movq	%rbx, %rdx	# resp,
	movq	%r15, %rsi	# it,
	movq	%r12, %rdi	# t,
	call	*-456(%rbp)	# %sfp
# proto_parser.c:1173:                 if (storage_cb(t, it, resp) != 0) {
	testl	%eax, %eax	# _121
	jne	.L587	#,
.L453:
# proto_parser.c:1197:             if ((it->it_flags & ITEM_HDR) != 0 && of.value) {
	movzbl	-384(%rbp), %eax	# of, _118
# proto_parser.c:1197:             if ((it->it_flags & ITEM_HDR) != 0 && of.value) {
	testb	$-128, 38(%r15)	#, it_69->it_flags
	je	.L451	#,
# proto_parser.c:1197:             if ((it->it_flags & ITEM_HDR) != 0 && of.value) {
	testb	$64, %al	#, _118
	je	.L451	#,
# proto_parser.c:1199:                 resp->item = NULL;
	movq	-408(%rbp), %rbx	# %sfp, resp
	movq	$0, 40(%rbx)	#, resp_255(D)->item
# proto_parser.c:1218:     if (of.locked) {
	testb	$4, %al	#, _118
	je	.L460	#,
.L457:
# proto_parser.c:1220:         if (!of.no_update && it != NULL) {
	testb	$2, %al	#, _118
	jne	.L578	#,
# proto_parser.c:1221:             do_item_bump(t, it, hv);
	movl	-396(%rbp), %edx	# hv,
	movq	%r15, %rsi	# it,
	movq	%r12, %rdi	# t,
	call	do_item_bump@PLT	#
.L578:
# proto_parser.c:1223:         item_unlock(hv);
	movl	-396(%rbp), %edi	# hv,
	call	item_unlock@PLT	#
.L460:
# proto_parser.c:1229:         pthread_mutex_lock(&t->stats.mutex);
	leaq	360(%r12), %rbx	#, _150
	movq	%rbx, %rdi	# _150,
	call	pthread_mutex_lock@PLT	#
# proto_parser.c:1230:         if (ttl_set) {
	cmpb	$0, -441(%rbp)	#, %sfp
	je	.L466	#,
# proto_parser.c:1231:             t->stats.touch_cmds++;
	incq	432(%r12)	# t_253(D)->stats.touch_cmds
# proto_parser.c:1232:             t->stats.slab_stats[ITEM_clsid(it)].touch_hits++;
	movzbl	40(%r15), %eax	# it_69->slabs_clsid, _154
	andl	$63, %eax	#, _568
	salq	$6, %rax	#, _565
# proto_parser.c:1232:             t->stats.slab_stats[ITEM_clsid(it)].touch_hits++;
	incq	688(%r12,%rax)	# MEM <uint64_t> [(struct LIBEVENT_THREAD *)_722 + 688B]
.L467:
# proto_parser.c:1237:         pthread_mutex_unlock(&t->stats.mutex);
	movq	%rbx, %rdi	# _150,
	call	pthread_mutex_unlock@PLT	#
	jmp	.L394	#
	.p2align 4
	.p2align 3
.L415:
# proto_parser.c:1089:                     META_CHAR(p, 't');
	movw	$29728, (%rcx)	#, MEM <vector(2) char> [(char *)p_482]
# proto_parser.c:1090:                     if (it->exptime == 0) {
	movl	28(%rbx), %edi	# it_69->exptime, _59
# proto_parser.c:1090:                     if (it->exptime == 0) {
	testl	%edi, %edi	# _59
	jne	.L427	#,
# proto_parser.c:1091:                         *p = '-';
	movw	$12589, 2(%rcx)	#, MEM <vector(2) char> [(char *)p_482 + 2B]
	movzbl	16(%r15), %r10d	# pr_258(D)->tok.ntokens, _108
# proto_parser.c:1060:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	incl	%r14d	# i
# proto_parser.c:1093:                         p += 2;
	addq	$4, %rcx	#, p
# proto_parser.c:1060:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	addq	$2, %r12	#, ivtmp.315
	cmpl	%r10d, %r14d	# _108, i
	jb	.L442	#,
	jmp	.L588	#
	.p2align 4
	.p2align 3
.L417:
# proto_parser.c:1083:                     META_CHAR(p, 's');
	movw	$29472, (%rcx)	#, MEM <vector(2) char> [(char *)p_482]
# proto_parser.c:1084:                     p = itoa_u32(it->nbytes-2, p);
	movl	32(%rbx), %eax	# it_69->nbytes, tmp770
# proto_parser.c:1083:                     META_CHAR(p, 's');
	leaq	2(%rcx), %rsi	#, p
# proto_parser.c:1060:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	incl	%r14d	# i
# proto_parser.c:1060:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	addq	$2, %r12	#, ivtmp.315
# proto_parser.c:1084:                     p = itoa_u32(it->nbytes-2, p);
	leal	-2(%rax), %edi	#, _57
# proto_parser.c:1084:                     p = itoa_u32(it->nbytes-2, p);
	call	itoa_u32@PLT	#
	movzbl	16(%r15), %r10d	# pr_258(D)->tok.ntokens, _108
	movq	%rax, %rcx	# p, p
# proto_parser.c:1060:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	cmpl	%r10d, %r14d	# _108, i
	jb	.L442	#,
	jmp	.L588	#
	.p2align 4
	.p2align 3
.L419:
# proto_parser.c:1137:                     META_KEY(p, ITEM_key(it), it->nkey, (it->it_flags & ITEM_KEY_BINARY));
	movzwl	.LC62(%rip), %eax	#, tmp776
	leaq	2(%rcx), %r10	#, p
	movw	%ax, (%rcx)	# tmp776, MEM <vector(2) char> [(char *)p_482]
	movzwl	38(%rbx), %edx	# it_69->it_flags, _90
# proto_parser.c:1137:                     META_KEY(p, ITEM_key(it), it->nkey, (it->it_flags & ITEM_KEY_BINARY));
	movzbl	41(%rbx), %esi	# it_69->nkey, _755
	leaq	0(,%rdx,4), %rax	#, _757
	andl	$8, %eax	#, _758
# proto_parser.c:1137:                     META_KEY(p, ITEM_key(it), it->nkey, (it->it_flags & ITEM_KEY_BINARY));
	andb	$16, %dh	#, _90
	jne	.L441	#,
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movq	%rsi, %rdx	# _755,
	movq	%r10, %rdi	# p,
	leaq	48(%rbx,%rax), %rsi	#,
# proto_parser.c:1060:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	incl	%r14d	# i
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	call	memcpy@PLT	#
# proto_parser.c:1060:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	addq	$2, %r12	#, ivtmp.315
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movq	%rax, %r10	#, p
# proto_parser.c:1137:                     META_KEY(p, ITEM_key(it), it->nkey, (it->it_flags & ITEM_KEY_BINARY));
	movzbl	41(%rbx), %eax	# it_69->nkey, _99
	leaq	(%r10,%rax), %rcx	#, p
	movzbl	16(%r15), %r10d	# pr_258(D)->tok.ntokens, _108
# proto_parser.c:1060:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	cmpl	%r10d, %r14d	# _108, i
	jb	.L442	#,
	jmp	.L588	#
	.p2align 4
	.p2align 3
.L420:
# proto_parser.c:1118:                     META_CHAR(p, 'h');
	movzwl	.LC61(%rip), %eax	#, tmp773
	movw	%ax, (%rcx)	# tmp773, MEM <vector(2) char> [(char *)p_482]
# proto_parser.c:1120:                         *p = '1';
	testb	$8, 38(%rbx)	#, it_69->it_flags
	setne	%al	#, tmp669
# proto_parser.c:1060:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	incl	%r14d	# i
# proto_parser.c:1124:                     p++;
	addq	$3, %rcx	#, p
# proto_parser.c:1060:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	addq	$2, %r12	#, ivtmp.315
# proto_parser.c:1120:                         *p = '1';
	addl	$48, %eax	#, cstore_518
	movb	%al, -1(%rcx)	# cstore_518, MEM[(char *)p_482 + 2B]
	movzbl	16(%r15), %r10d	# pr_258(D)->tok.ntokens, _108
# proto_parser.c:1060:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	cmpl	%r10d, %r14d	# _108, i
	jb	.L442	#,
	jmp	.L588	#
	.p2align 4
	.p2align 3
.L421:
# proto_parser.c:1103:                     META_CHAR(p, 'f');
	movzwl	.LC59(%rip), %eax	#, tmp771
	movw	%ax, (%rcx)	# tmp771, MEM <vector(2) char> [(char *)p_482]
# proto_parser.c:1104:                     if (FLAGS_SIZE(it) == 0) {
	movzwl	38(%rbx), %eax	# it_69->it_flags, _66
# proto_parser.c:1104:                     if (FLAGS_SIZE(it) == 0) {
	testb	$1, %ah	#, _66
	jne	.L429	#,
# proto_parser.c:1105:                         *p = '0';
	movb	$48, 2(%rcx)	#, MEM[(char *)p_482 + 2B]
	movzbl	16(%r15), %r10d	# pr_258(D)->tok.ntokens, _108
# proto_parser.c:1060:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	incl	%r14d	# i
# proto_parser.c:1106:                         p++;
	addq	$3, %rcx	#, p
# proto_parser.c:1060:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	addq	$2, %r12	#, ivtmp.315
	cmpl	%r10d, %r14d	# _108, i
	jb	.L442	#,
	jmp	.L588	#
	.p2align 4
	.p2align 3
.L423:
# proto_parser.c:1064:                     it->exptime = of.exptime;
	movl	-380(%rbp), %eax	# of.exptime, of.exptime
# proto_parser.c:1060:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	incl	%r14d	# i
# proto_parser.c:1063:                     ttl_set = true;
	movb	$1, -441(%rbp)	#, %sfp
# proto_parser.c:1060:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	addq	$2, %r12	#, ivtmp.315
# proto_parser.c:1064:                     it->exptime = of.exptime;
	movl	%eax, 28(%rbx)	# of.exptime, it_69->exptime
# proto_parser.c:1060:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	cmpl	%r10d, %r14d	# _108, i
	jb	.L442	#,
	jmp	.L588	#
	.p2align 4
	.p2align 3
.L424:
# proto_parser.c:1076:                             && !item_created
	testb	$2, 39(%rbx)	#, it_69->it_flags
	jne	.L414	#,
	cmpb	$0, -432(%rbp)	#, %sfp
	jne	.L414	#,
# proto_parser.c:1077:                             && it->exptime != 0
	movl	28(%rbx), %eax	# it_69->exptime, _54
# proto_parser.c:1077:                             && it->exptime != 0
	testl	%eax, %eax	# _54
	je	.L414	#,
# proto_parser.c:1078:                             && it->exptime < of.recache_time) {
	cmpl	-372(%rbp), %eax	# of.recache_time, _54
	setb	%al	#, _526
	orl	%eax, %r13d	# _526, won_token
	jmp	.L414	#
	.p2align 4
	.p2align 3
.L425:
# proto_parser.c:426:   const char *e = pr->request + pr->tok.tokens[token+1];
	movzwl	2(%r12), %eax	# MEM[(short unsigned int *)_411 + 2B], _433
# proto_parser.c:425:   const char *s = pr->request + pr->tok.tokens[token];
	movzwl	(%r12), %edi	# MEM[(short unsigned int *)_411], _429
# proto_parser.c:426:   const char *e = pr->request + pr->tok.tokens[token+1];
	addq	%rdx, %rax	# _43, e
# proto_parser.c:425:   const char *s = pr->request + pr->tok.tokens[token];
	addq	%rdx, %rdi	# _43, s
# proto_parser.c:428:   while (*(e-1) == ' ') {
	cmpb	$32, -1(%rax)	#,
	jne	.L431	#,
	.p2align 4
	.p2align 4
	.p2align 3
.L432:
# proto_parser.c:429:       e--;
	decq	%rax	# e
# proto_parser.c:428:   while (*(e-1) == ' ') {
	cmpb	$32, -1(%rax)	#,
	je	.L432	#,
.L431:
# proto_parser.c:431:   return e - s;
	subq	%rdi, %rax	# s, _438
# proto_parser.c:1128:                     if (tlen > MFLAG_MAX_OPAQUE_LENGTH) {
	cmpl	$32, %eax	#, _438
	jg	.L589	#,
# proto_parser.c:1133:                     memcpy(p, &pr->request[pr->tok.tokens[i]], tlen);
	cltq
# proto_parser.c:1132:                     META_SPACE(p);
	movb	$32, (%rcx)	#, *p_482
	leaq	1(%rcx), %rdi	#, p
# proto_parser.c:1133:                     memcpy(p, &pr->request[pr->tok.tokens[i]], tlen);
	movzwl	18(%r15,%rsi,2), %edx	# pr_258(D)->tok.tokens[i_477], _88
# proto_parser.c:1133:                     memcpy(p, &pr->request[pr->tok.tokens[i]], tlen);
	addq	(%r15), %rdx	# pr_258(D)->request, _89
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	cmpq	$8, %rax	#, _85
	jnb	.L435	#,
	testb	$4, %al	#, _85
	jne	.L590	#,
	testq	%rax, %rax	# _85
	jne	.L591	#,
.L436:
	movzbl	16(%r15), %r10d	# pr_258(D)->tok.ntokens, _108
# proto_parser.c:1060:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	incl	%r14d	# i
# proto_parser.c:1134:                     p += tlen;
	leaq	(%rdi,%rax), %rcx	#, p
# proto_parser.c:1060:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	addq	$2, %r12	#, ivtmp.315
	cmpl	%r10d, %r14d	# _108, i
	jb	.L442	#,
	jmp	.L588	#
	.p2align 4
	.p2align 3
.L426:
# proto_parser.c:1067:                     if (item_created) {
	movzbl	-432(%rbp), %edx	# %sfp, item_created
	testb	%dl, %dl	# item_created
	je	.L414	#,
# proto_parser.c:1068:                         it->exptime = of.autoviv_exptime;
	movl	-376(%rbp), %eax	# of.autoviv_exptime, of.autoviv_exptime
# proto_parser.c:1060:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	incl	%r14d	# i
# proto_parser.c:1069:                         won_token = true;
	movl	%edx, %r13d	# item_created, won_token
# proto_parser.c:1060:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	addq	$2, %r12	#, ivtmp.315
# proto_parser.c:1068:                         it->exptime = of.autoviv_exptime;
	movl	%eax, 28(%rbx)	# of.autoviv_exptime, it_69->exptime
# proto_parser.c:1060:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	cmpl	%r10d, %r14d	# _108, i
	jb	.L442	#,
	jmp	.L588	#
	.p2align 4
	.p2align 3
.L418:
# proto_parser.c:1114:                     META_CHAR(p, 'l');
	movzwl	.LC60(%rip), %eax	#, tmp772
	leaq	2(%rcx), %rsi	#, p
# proto_parser.c:1060:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	incl	%r14d	# i
# proto_parser.c:1060:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	addq	$2, %r12	#, ivtmp.315
# proto_parser.c:1114:                     META_CHAR(p, 'l');
	movw	%ax, (%rcx)	# tmp772, MEM <vector(2) char> [(char *)p_482]
# proto_parser.c:1115:                     p = itoa_u32(current_time - it->time, p);
	movl	current_time(%rip), %edi	# current_time, current_time.46_80
# proto_parser.c:1115:                     p = itoa_u32(current_time - it->time, p);
	subl	24(%rbx), %edi	# it_69->time, _82
# proto_parser.c:1115:                     p = itoa_u32(current_time - it->time, p);
	call	itoa_u32@PLT	#
	movzbl	16(%r15), %r10d	# pr_258(D)->tok.ntokens, _108
	movq	%rax, %rcx	# p, p
# proto_parser.c:1060:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	cmpl	%r10d, %r14d	# _108, i
	jb	.L442	#,
	jmp	.L588	#
	.p2align 4
	.p2align 3
.L449:
# proto_parser.c:1157:         if (won_token) {
	testb	%r11b, %r11b	# won_token
	jne	.L450	#,
	jmp	.L446	#
	.p2align 4
	.p2align 3
.L441:
# proto_parser.c:1137:                     META_KEY(p, ITEM_key(it), it->nkey, (it->it_flags & ITEM_KEY_BINARY));
	movl	$512, %ecx	#,
	movq	%r10, %rdx	# p,
	leaq	48(%rbx,%rax), %rdi	#, _106
	movq	%r10, -472(%rbp)	# p, %sfp
	call	base64_encode@PLT	#
# proto_parser.c:1060:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	incl	%r14d	# i
# proto_parser.c:1060:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	addq	$2, %r12	#, ivtmp.315
# proto_parser.c:1137:                     META_KEY(p, ITEM_key(it), it->nkey, (it->it_flags & ITEM_KEY_BINARY));
	movq	-472(%rbp), %r10	# %sfp, p
	movw	$25120, (%r10,%rax)	#, MEM <vector(2) char> [(char *)p_332]
	leaq	2(%r10,%rax), %rcx	#, p
	movzbl	16(%r15), %r10d	# pr_258(D)->tok.ntokens, _108
# proto_parser.c:1060:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	cmpl	%r10d, %r14d	# _108, i
	jb	.L442	#,
	jmp	.L588	#
	.p2align 4
	.p2align 3
.L451:
# proto_parser.c:1201:                 resp->item = it;
	movq	-408(%rbp), %rbx	# %sfp, resp
	movq	%r15, 40(%rbx)	# it, resp_255(D)->item
# proto_parser.c:1218:     if (of.locked) {
	testb	$4, %al	#, _118
	je	.L460	#,
	jmp	.L457	#
	.p2align 4
	.p2align 3
.L435:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movq	(%rdx), %rsi	#* _89, tmp510
	addq	$9, %rcx	#, tmp512
	movq	%rsi, -8(%rcx)	# tmp510,
	movq	-8(%rdx,%rax), %rsi	#, tmp511
	andq	$-8, %rcx	#, tmp512
	movq	%rsi, -8(%rdi,%rax)	# tmp511,
	movq	%rdi, %rsi	# p, tmp513
	subq	%rcx, %rsi	# tmp512, tmp513
	subq	%rsi, %rdx	# tmp513, _89
	addq	%rax, %rsi	# _85, _85
	andq	$-8, %rsi	#, _85
	cmpq	$8, %rsi	#, _85
	jb	.L436	#,
	andq	$-8, %rsi	#, tmp515
	xorl	%r10d, %r10d	# tmp514
.L439:
	movq	(%rdx,%r10), %r8	#, tmp516
	movq	%r8, (%rcx,%r10)	# tmp516,
	addq	$8, %r10	#, tmp514
	cmpq	%rsi, %r10	# tmp515, tmp514
	jb	.L439	#,
	jmp	.L436	#
	.p2align 4
	.p2align 3
.L411:
	movq	-408(%rbp), %rax	# %sfp, resp
	movw	$17480, 164(%rax)	#, MEM <char[1:2]> [(void *)p_256]
# proto_parser.c:1057:             p += 2;
	leaq	166(%rax), %rcx	#, p
	jmp	.L412	#
	.p2align 4
	.p2align 3
.L581:
# proto_parser.c:409:     resp->skip = false;
	movq	-408(%rbp), %rax	# %sfp, resp
# proto_parser.c:410:     pout_string(resp, str);
	movq	-392(%rbp), %rsi	# errstr,
# proto_parser.c:409:     resp->skip = false;
	movb	$0, 118(%rax)	#, resp_255(D)->skip
# proto_parser.c:410:     pout_string(resp, str);
	movq	%rax, %rdi	# resp,
	call	pout_string	#
# proto_parser.c:1004:         return;
	jmp	.L394	#
	.p2align 4
	.p2align 3
.L429:
# proto_parser.c:1109:                         FLAGS_CONV(it, flags);
	movzbl	41(%rbx), %edx	# it_69->nkey, _72
	leaq	0(,%rax,4), %rax	#, _74
# proto_parser.c:1103:                     META_CHAR(p, 'f');
	leaq	2(%rcx), %rsi	#, p
# proto_parser.c:1109:                         FLAGS_CONV(it, flags);
	andl	$8, %eax	#, _75
	addq	%rbx, %rax	# it, tmp484
# proto_parser.c:1110:                         p = itoa_u64(flags, p);
	movl	49(%rdx,%rax), %edi	# *_78, _79
	jmp	.L577	#
	.p2align 4
	.p2align 3
.L427:
# proto_parser.c:1095:                         p = itoa_u32(it->exptime - current_time, p);
	movl	current_time(%rip), %eax	# current_time, current_time.44_61
# proto_parser.c:1089:                     META_CHAR(p, 't');
	leaq	2(%rcx), %rsi	#, p
# proto_parser.c:1060:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	incl	%r14d	# i
# proto_parser.c:1060:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	addq	$2, %r12	#, ivtmp.315
# proto_parser.c:1095:                         p = itoa_u32(it->exptime - current_time, p);
	subl	%eax, %edi	# current_time.44_61, _62
# proto_parser.c:1095:                         p = itoa_u32(it->exptime - current_time, p);
	call	itoa_u32@PLT	#
	movzbl	16(%r15), %r10d	# pr_258(D)->tok.ntokens, _108
	movq	%rax, %rcx	# p, p
# proto_parser.c:1060:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	cmpl	%r10d, %r14d	# _108, i
	jb	.L442	#,
	jmp	.L588	#
	.p2align 4
	.p2align 3
.L591:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movzbl	(%rdx), %esi	#* _89, tmp507
	movb	%sil, 1(%rcx)	# tmp507,
	testb	$2, %al	#, _85
	je	.L436	#,
	movzwl	-2(%rdx,%rax), %edx	#, tmp509
	movw	%dx, -2(%rdi,%rax)	# tmp509,
	jmp	.L436	#
	.p2align 4
	.p2align 3
.L466:
# proto_parser.c:1234:             t->stats.lru_hits[it->slabs_clsid]++;
	movzbl	40(%r15), %eax	# it_69->slabs_clsid, _159
	incq	4768(%r12,%rax,8)	# t_253(D)->stats.lru_hits[_159]
# proto_parser.c:1235:             t->stats.get_cmds++;
	incq	400(%r12)	# t_253(D)->stats.get_cmds
	jmp	.L467	#
	.p2align 4
	.p2align 3
.L452:
# proto_parser.c:1181:                 resp_add_iov(resp, ITEM_data(it), it->nbytes);
	movl	32(%r15), %ecx	# it_69->nbytes, pretmp_749
# proto_parser.c:1180:             } else if ((it->it_flags & ITEM_CHUNKED) == 0) {
	testb	$32, %al	#, pretmp_750
	jne	.L456	#,
# proto_parser.c:1181:                 resp_add_iov(resp, ITEM_data(it), it->nbytes);
	movl	%eax, %edx	# pretmp_750, _130
	leaq	0(,%rax,4), %rax	#, _134
# proto_parser.c:1181:                 resp_add_iov(resp, ITEM_data(it), it->nbytes);
	movq	-408(%rbp), %rdi	# %sfp,
# proto_parser.c:1181:                 resp_add_iov(resp, ITEM_data(it), it->nbytes);
	shrl	$6, %edx	#, _130
	andl	$8, %eax	#, _135
	andl	$4, %edx	#, _131
	addq	%rdx, %rax	# _131, _443
	movzbl	41(%r15), %edx	# it_69->nkey, _128
	leaq	1(%rax,%rdx), %rax	#, _137
# proto_parser.c:1181:                 resp_add_iov(resp, ITEM_data(it), it->nbytes);
	movl	%ecx, %edx	# pretmp_749,
	leaq	48(%r15,%rax), %rsi	#, _138
	call	resp_add_iov@PLT	#
	jmp	.L453	#
.L585:
# proto_parser.c:1049:             of.value = false;
	andb	$-65, -384(%rbp)	#, of.value
	jmp	.L409	#
	.p2align 4
	.p2align 3
.L584:
# proto_parser.c:1028:     if (it == NULL && of.vivify) {
	movzbl	-384(%rbp), %eax	# of, _10
	testb	$8, %al	#, _10
	jne	.L592	#,
# proto_parser.c:1218:     if (of.locked) {
	testb	$4, %al	#, _10
	je	.L465	#,
.L580:
# proto_parser.c:1223:         item_unlock(hv);
	movl	-396(%rbp), %edi	# hv,
# proto_parser.c:1239:         pthread_mutex_lock(&t->stats.mutex);
	leaq	360(%r12), %rbx	#, _122
# proto_parser.c:1223:         item_unlock(hv);
	call	item_unlock@PLT	#
# proto_parser.c:1239:         pthread_mutex_lock(&t->stats.mutex);
	leaq	360(%r12), %rdi	#,
	call	pthread_mutex_lock@PLT	#
# proto_parser.c:997:     char *p = resp->wbuf;
	movq	-440(%rbp), %r13	# %sfp, p
.L408:
# proto_parser.c:1245:             t->stats.get_cmds++;
	movl	$1, %eax	#, tmp604
	vmovq	%rax, %xmm0	# tmp604, tmp604
	vpunpcklqdq	%xmm0, %xmm0, %xmm0	# tmp604, tmp603
	vpaddq	400(%r12), %xmm0, %xmm0	# MEM <vector(2) long unsigned int> [(long unsigned int *)t_253(D) + 400B], tmp603, vect__172.272_666
	vmovdqu	%xmm0, 400(%r12)	# vect__172.272_666, MEM <vector(2) long unsigned int> [(long unsigned int *)t_253(D) + 400B]
.L468:
# proto_parser.c:1247:         pthread_mutex_unlock(&t->stats.mutex);
	movq	%rbx, %rdi	# _122,
	call	pthread_mutex_unlock@PLT	#
# proto_parser.c:1250:         if (of.no_reply)
	testb	$1, -383(%rbp)	#, of
	je	.L469	#,
# proto_parser.c:1251:             resp->skip = true;
	movq	-408(%rbp), %rax	# %sfp, resp
	movb	$1, 118(%rax)	#, resp_255(D)->skip
.L469:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movw	$20037, 0(%r13)	#, MEM <char[1:2]> [(void *)p_578]
# proto_parser.c:1254:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	movzbl	82(%r14), %r8d	# pr_258(D)->keytoken, _176
# proto_parser.c:1253:         p += 2;
	leaq	2(%r13), %rdx	#, p
# proto_parser.c:1254:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	movzbl	16(%r14), %edi	# pr_258(D)->tok.ntokens, _193
# proto_parser.c:1254:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	incl	%r8d	# i
# proto_parser.c:1254:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	cmpl	%edi, %r8d	# _193, i
	jnb	.L470	#,
	movslq	%r8d, %rax	# i, _719
# proto_parser.c:1268:                     META_KEY(p, key, nkey, of.key_binary);
	movq	%r15, -432(%rbp)	# it, %sfp
	movq	%r14, %r12	# pr, pr
# proto_parser.c:1268:                     META_KEY(p, key, nkey, of.key_binary);
	movzwl	.LC62(%rip), %ebx	#, tmp672
# proto_parser.c:1268:                     META_KEY(p, key, nkey, of.key_binary);
	leaq	18(%r14,%rax,2), %r15	#, ivtmp.298
	movl	%r8d, %r14d	# i, i
	jmp	.L485	#
	.p2align 4
	.p2align 3
.L593:
# proto_parser.c:1255:             switch (pr->request[pr->tok.tokens[i]]) {
	cmpb	$107, %cl	#, _182
	jne	.L473	#,
# proto_parser.c:1268:                     META_KEY(p, key, nkey, of.key_binary);
	movw	%bx, (%rdx)	# tmp672, MEM <vector(2) char> [(char *)p_478]
	leaq	2(%rdx), %r13	#, p
	testb	$16, -383(%rbp)	#, of
	jne	.L484	#,
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movq	-416(%rbp), %rdx	# %sfp,
	movq	%r13, %rdi	# p,
	movq	-424(%rbp), %rsi	# %sfp,
	call	memcpy@PLT	#
# proto_parser.c:1268:                     META_KEY(p, key, nkey, of.key_binary);
	movq	-416(%rbp), %rax	# %sfp, nkey
	movzbl	16(%r12), %edi	# pr_258(D)->tok.ntokens, _193
	leaq	0(%r13,%rax), %rdx	#, p
.L473:
# proto_parser.c:1254:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	incl	%r14d	# i
# proto_parser.c:1254:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	addq	$2, %r15	#, ivtmp.298
	cmpl	%edi, %r14d	# _193, i
	jnb	.L470	#,
.L485:
# proto_parser.c:1255:             switch (pr->request[pr->tok.tokens[i]]) {
	movl	%r14d, %esi	# i, i
# proto_parser.c:1255:             switch (pr->request[pr->tok.tokens[i]]) {
	movq	(%r12), %rax	# pr_258(D)->request, _178
# proto_parser.c:1255:             switch (pr->request[pr->tok.tokens[i]]) {
	movzwl	18(%r12,%rsi,2), %ecx	# pr_258(D)->tok.tokens[i_509], _180
# proto_parser.c:1255:             switch (pr->request[pr->tok.tokens[i]]) {
	movzbl	(%rax,%rcx), %ecx	# *_181, _182
# proto_parser.c:1255:             switch (pr->request[pr->tok.tokens[i]]) {
	cmpb	$79, %cl	#, _182
	jne	.L593	#,
# proto_parser.c:425:   const char *s = pr->request + pr->tok.tokens[token];
	movzwl	(%r15), %ecx	# MEM[(short unsigned int *)_723], _441
# proto_parser.c:426:   const char *e = pr->request + pr->tok.tokens[token+1];
	movzwl	2(%r15), %edi	# MEM[(short unsigned int *)_723 + 2B], _445
# proto_parser.c:425:   const char *s = pr->request + pr->tok.tokens[token];
	addq	%rax, %rcx	# _178, s
# proto_parser.c:426:   const char *e = pr->request + pr->tok.tokens[token+1];
	addq	%rdi, %rax	# _445, e
# proto_parser.c:428:   while (*(e-1) == ' ') {
	cmpb	$32, -1(%rax)	#,
	jne	.L474	#,
	.p2align 4
	.p2align 4
	.p2align 3
.L475:
# proto_parser.c:429:       e--;
	decq	%rax	# e
# proto_parser.c:428:   while (*(e-1) == ' ') {
	cmpb	$32, -1(%rax)	#,
	je	.L475	#,
.L474:
# proto_parser.c:431:   return e - s;
	subq	%rcx, %rax	# s, _450
# proto_parser.c:1259:                     if (tlen > MFLAG_MAX_OPAQUE_LENGTH) {
	cmpl	$32, %eax	#, _450
	jg	.L594	#,
# proto_parser.c:1264:                     memcpy(p, &pr->request[pr->tok.tokens[i]], tlen);
	cltq
# proto_parser.c:1263:                     META_SPACE(p);
	movb	$32, (%rdx)	#, *p_478
	leaq	1(%rdx), %rdi	#, p
# proto_parser.c:1264:                     memcpy(p, &pr->request[pr->tok.tokens[i]], tlen);
	movzwl	18(%r12,%rsi,2), %ecx	# pr_258(D)->tok.tokens[i_509], _188
# proto_parser.c:1264:                     memcpy(p, &pr->request[pr->tok.tokens[i]], tlen);
	addq	(%r12), %rcx	# pr_258(D)->request, _189
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	cmpq	$8, %rax	#, _185
	jnb	.L478	#,
	testb	$4, %al	#, _185
	jne	.L595	#,
	testq	%rax, %rax	# _185
	je	.L479	#,
	movzbl	(%rcx), %esi	#* _189, tmp628
	movb	%sil, 1(%rdx)	# tmp628,
	testb	$2, %al	#, _185
	jne	.L596	#,
.L479:
# proto_parser.c:1265:                     p += tlen;
	leaq	(%rdi,%rax), %rdx	#, p
	movzbl	16(%r12), %edi	# pr_258(D)->tok.ntokens, _193
# proto_parser.c:1254:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	incl	%r14d	# i
# proto_parser.c:1254:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	addq	$2, %r15	#, ivtmp.298
	cmpl	%edi, %r14d	# _193, i
	jb	.L485	#,
.L470:
# proto_parser.c:1272:         resp->wbytes = p - resp->wbuf;
	movq	-440(%rbp), %rsi	# %sfp, p
# proto_parser.c:1272:         resp->wbytes = p - resp->wbuf;
	movq	-408(%rbp), %rax	# %sfp, resp
# proto_parser.c:1272:         resp->wbytes = p - resp->wbuf;
	subq	%rsi, %rdx	# p, _194
# proto_parser.c:1275:         resp_add_iov(resp, resp->wbuf, resp->wbytes);
	movq	%rax, %rdi	# resp,
# proto_parser.c:1272:         resp->wbytes = p - resp->wbuf;
	movl	%edx, 16(%rax)	# _194, resp_255(D)->wbytes
# proto_parser.c:1273:         memcpy(resp->wbuf + resp->wbytes, "\r\n", 2);
	movslq	%edx, %rdx	# _194, _196
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movw	$2573, (%rsi,%rdx)	#, MEM <char[1:2]> [(void *)_197]
# proto_parser.c:1274:         resp->wbytes += 2;
	movl	16(%rax), %ebx	# resp_255(D)->wbytes, resp_255(D)->wbytes
	leal	2(%rbx), %edx	#, _199
	movl	%ebx, -408(%rbp)	# resp_255(D)->wbytes, %sfp
	movl	%edx, 16(%rax)	# _199, resp_255(D)->wbytes
# proto_parser.c:1275:         resp_add_iov(resp, resp->wbuf, resp->wbytes);
	call	resp_add_iov@PLT	#
	jmp	.L394	#
	.p2align 4
	.p2align 3
.L484:
# proto_parser.c:1268:                     META_KEY(p, key, nkey, of.key_binary);
	movq	-424(%rbp), %rdi	# %sfp,
	movq	-416(%rbp), %rsi	# %sfp,
	movq	%r13, %rdx	# p,
	movl	$512, %ecx	#,
	call	base64_encode@PLT	#
# proto_parser.c:1268:                     META_KEY(p, key, nkey, of.key_binary);
	leaq	0(%r13,%rax), %rdx	#, p
	movzwl	.LC63(%rip), %eax	#, tmp801
	addq	$2, %rdx	#, p
	movw	%ax, -2(%rdx)	# tmp801, MEM <vector(2) char> [(char *)p_388]
	movzbl	16(%r12), %edi	# pr_258(D)->tok.ntokens, _193
	jmp	.L473	#
	.p2align 4
	.p2align 3
.L478:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movq	(%rcx), %rsi	#* _189, tmp631
	addq	$9, %rdx	#, tmp633
	movq	%rsi, -8(%rdx)	# tmp631,
	movq	-8(%rcx,%rax), %rsi	#, tmp632
	andq	$-8, %rdx	#, tmp633
	movq	%rsi, -8(%rdi,%rax)	# tmp632,
	movq	%rdi, %rsi	# p, tmp634
	subq	%rdx, %rsi	# tmp633, tmp634
	subq	%rsi, %rcx	# tmp634, _189
	addq	%rax, %rsi	# _185, _185
	andq	$-8, %rsi	#, _185
	cmpq	$8, %rsi	#, _185
	jb	.L479	#,
	andq	$-8, %rsi	#, tmp636
	xorl	%r10d, %r10d	# tmp635
.L482:
	movq	(%rcx,%r10), %r8	#, tmp637
	movq	%r8, (%rdx,%r10)	# tmp637,
	addq	$8, %r10	#, tmp635
	cmpq	%rsi, %r10	# tmp636, tmp635
	jb	.L482	#,
	jmp	.L479	#
.L592:
# proto_parser.c:1030:         it = item_alloc(key, nkey, 0, realtime(0), 2);
	xorl	%edi, %edi	#
	movb	%r11b, -432(%rbp)	# won_token, %sfp
	call	realtime@PLT	#
# proto_parser.c:1030:         it = item_alloc(key, nkey, 0, realtime(0), 2);
	movl	$2, %r8d	#,
	xorl	%edx, %edx	#
	movq	-416(%rbp), %rsi	# %sfp,
	movq	-424(%rbp), %rdi	# %sfp,
	movl	%eax, %ecx	# _12,
	call	item_alloc@PLT	#
	movq	%rax, %r15	# it, it
# proto_parser.c:1036:         if (it != NULL) {
	testq	%rax, %rax	# it
	jne	.L597	#,
# proto_parser.c:1218:     if (of.locked) {
	testb	$4, -384(%rbp)	#, of
	jne	.L580	#,
.L465:
# proto_parser.c:1239:         pthread_mutex_lock(&t->stats.mutex);
	leaq	360(%r12), %rdi	#,
	leaq	360(%r12), %rbx	#, _122
	call	pthread_mutex_lock@PLT	#
# proto_parser.c:997:     char *p = resp->wbuf;
	movq	-440(%rbp), %r13	# %sfp, p
	jmp	.L408	#
.L594:
# proto_parser.c:1260:                         errstr = "CLIENT_ERROR opaque token too long";
	movq	-432(%rbp), %r15	# %sfp, it
	leaq	.LC52(%rip), %rax	#, tmp798
	movq	%rax, -392(%rbp)	# tmp798, errstr
	movq	%rax, %rsi	# tmp798, pretmp_732
# proto_parser.c:1279:     if (it) {
	testq	%r15, %r15	# it
	je	.L477	#,
.L434:
# proto_parser.c:1281:             do_item_remove(it);
	movq	%r15, %rdi	# it,
# proto_parser.c:1280:         if (of.locked) {
	testb	$4, -384(%rbp)	#, of
	je	.L486	#,
# proto_parser.c:1281:             do_item_remove(it);
	call	do_item_remove@PLT	#
# proto_parser.c:1282:             item_unlock(hv);
	movl	-396(%rbp), %edi	# hv,
	call	item_unlock@PLT	#
# proto_parser.c:1287:     pout_errstring(resp, errstr);
	movq	-392(%rbp), %rsi	# errstr, pretmp_732
.L477:
# proto_parser.c:409:     resp->skip = false;
	movq	-408(%rbp), %rax	# %sfp, resp
	movb	$0, 118(%rax)	#, resp_255(D)->skip
# proto_parser.c:410:     pout_string(resp, str);
	movq	%rax, %rdi	# resp,
	call	pout_string	#
	jmp	.L394	#
.L456:
# proto_parser.c:1183:                 resp_add_chunked_iov(resp, it, it->nbytes);
	movq	-408(%rbp), %rdi	# %sfp,
	movl	%ecx, %edx	# pretmp_749,
	movq	%r15, %rsi	# it,
	call	resp_add_chunked_iov@PLT	#
	jmp	.L453	#
.L595:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movl	(%rcx), %edx	#* _189, tmp626
	movl	%edx, (%rdi)	# tmp626,* p
	movl	-4(%rcx,%rax), %edx	#, tmp627
	movl	%edx, -4(%rdi,%rax)	# tmp627,
	jmp	.L479	#
.L486:
# proto_parser.c:1284:             item_remove(it);
	call	item_remove@PLT	#
# proto_parser.c:1287:     pout_errstring(resp, errstr);
	movq	-392(%rbp), %rsi	# errstr, pretmp_732
	jmp	.L477	#
.L597:
# proto_parser.c:1038:             memcpy(ITEM_data(it), "\r\n", 2);
	movzwl	38(%rax), %edx	# it_269->it_flags, _16
# proto_parser.c:1040:             do_item_link(it, hv, of.has_cas_in ? of.cas_id_in : get_cas_id());
	movzbl	-432(%rbp), %r11d	# %sfp, won_token
# proto_parser.c:1038:             memcpy(ITEM_data(it), "\r\n", 2);
	movl	%edx, %eax	# _16, _18
	leaq	0(,%rdx,4), %rdx	#, _22
	shrl	$6, %eax	#, _18
	andl	$8, %edx	#, _23
	andl	$4, %eax	#, _19
	addq	%rdx, %rax	# _23, _409
	movzbl	41(%r15), %edx	# it_269->nkey, _15
	leaq	1(%rax,%rdx), %rax	#, _25
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movw	$2573, 48(%r15,%rax)	#, MEM <char[1:2]> [(void *)_26]
# proto_parser.c:1040:             do_item_link(it, hv, of.has_cas_in ? of.cas_id_in : get_cas_id());
	testb	$4, -383(%rbp)	#, of
	je	.L405	#,
# proto_parser.c:1040:             do_item_link(it, hv, of.has_cas_in ? of.cas_id_in : get_cas_id());
	movq	-344(%rbp), %rdx	# of.cas_id_in, iftmp.41_224
.L406:
# proto_parser.c:1040:             do_item_link(it, hv, of.has_cas_in ? of.cas_id_in : get_cas_id());
	movl	-396(%rbp), %esi	# hv,
	movq	%r15, %rdi	# it,
	movb	%r11b, -441(%rbp)	# won_token, %sfp
	call	do_item_link@PLT	#
	movzbl	-441(%rbp), %r11d	# %sfp, won_token
# proto_parser.c:1041:             item_created = true;
	movb	$1, -432(%rbp)	#, %sfp
	jmp	.L402	#
.L587:
# proto_parser.c:1174:                     pthread_mutex_lock(&t->stats.mutex);
	leaq	360(%r12), %rbx	#, _122
	movq	%rbx, %rdi	# _122,
	call	pthread_mutex_lock@PLT	#
# proto_parser.c:1175:                     t->stats.get_oom_extstore++;
	incq	608(%r12)	# t_253(D)->stats.get_oom_extstore
# proto_parser.c:1176:                     pthread_mutex_unlock(&t->stats.mutex);
	movq	%rbx, %rdi	# _122,
	call	pthread_mutex_unlock@PLT	#
# proto_parser.c:1205:             if (of.locked) {
	testb	$4, -384(%rbp)	#, of
	je	.L598	#,
# proto_parser.c:1206:                 do_item_remove(it);
	movq	%r15, %rdi	# it,
	call	do_item_remove@PLT	#
# proto_parser.c:1218:     if (of.locked) {
	movzbl	-384(%rbp), %eax	# of, _507
# proto_parser.c:1218:     if (of.locked) {
	testb	$4, %al	#, _507
	je	.L464	#,
.L461:
# proto_parser.c:1220:         if (!of.no_update && it != NULL) {
	testb	$2, %al	#, _507
	jne	.L579	#,
# proto_parser.c:1221:             do_item_bump(t, it, hv);
	movl	-396(%rbp), %edx	# hv,
	movq	%r15, %rsi	# it,
	movq	%r12, %rdi	# t,
	call	do_item_bump@PLT	#
.L579:
# proto_parser.c:1223:         item_unlock(hv);
	movl	-396(%rbp), %edi	# hv,
	call	item_unlock@PLT	#
.L464:
# proto_parser.c:1239:         pthread_mutex_lock(&t->stats.mutex);
	movq	%rbx, %rdi	# _122,
	call	pthread_mutex_lock@PLT	#
# proto_parser.c:1240:         if (ttl_set) {
	cmpb	$0, -441(%rbp)	#, %sfp
	je	.L408	#,
# proto_parser.c:1241:             t->stats.touch_cmds++;
	movl	$1, %eax	#, tmp599
	vmovq	%rax, %xmm0	# tmp599, tmp599
	vpunpcklqdq	%xmm0, %xmm0, %xmm0	# tmp599, tmp598
	vpaddq	432(%r12), %xmm0, %xmm0	# MEM <vector(2) long unsigned int> [(long unsigned int *)t_253(D) + 432B], tmp598, vect__166.278_661
	vmovdqu	%xmm0, 432(%r12)	# vect__166.278_661, MEM <vector(2) long unsigned int> [(long unsigned int *)t_253(D) + 432B]
	jmp	.L468	#
.L589:
# proto_parser.c:1129:                         errstr = "CLIENT_ERROR opaque token too long";
	leaq	.LC52(%rip), %rax	#, tmp774
	movq	%rbx, %r15	# it, it
	movq	%rax, -392(%rbp)	# tmp774, errstr
	jmp	.L434	#
.L590:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movl	(%rdx), %ecx	#* _89, tmp505
	movl	%ecx, (%rdi)	# tmp505,* p
	movl	-4(%rdx,%rax), %edx	#, tmp506
	movl	%edx, -4(%rdi,%rax)	# tmp506,
	jmp	.L436	#
.L413:
# proto_parser.c:1145:         if (it->it_flags & ITEM_TOKEN_SENT) {
	movzwl	38(%r15), %eax	# it_69->it_flags, _728
# proto_parser.c:1145:         if (it->it_flags & ITEM_TOKEN_SENT) {
	testb	$2, %ah	#, _728
	je	.L444	#,
# proto_parser.c:1146:             META_CHAR(p, 'Z');
	movw	$23072, (%rcx)	#, MEM <vector(2) char> [(char *)p_215]
# proto_parser.c:1148:         if (it->it_flags & ITEM_STALE) {
	testb	$8, 39(%r15)	#, it_69->it_flags
# proto_parser.c:994:     bool ttl_set = false;
	movb	$0, -441(%rbp)	#, %sfp
# proto_parser.c:1146:             META_CHAR(p, 'Z');
	leaq	2(%rcx), %rcx	#, p
# proto_parser.c:1148:         if (it->it_flags & ITEM_STALE) {
	jne	.L445	#,
	jmp	.L446	#
.L596:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movzwl	-2(%rcx,%rax), %edx	#, tmp630
	movw	%dx, -2(%rdi,%rax)	# tmp630,
	jmp	.L479	#
.L598:
# proto_parser.c:1208:                 item_remove(it);
	movq	%r15, %rdi	# it,
	call	item_remove@PLT	#
# proto_parser.c:1218:     if (of.locked) {
	movzbl	-384(%rbp), %eax	# of, _475
# proto_parser.c:1218:     if (of.locked) {
	testb	$4, %al	#, _475
	je	.L464	#,
	jmp	.L461	#
.L444:
# proto_parser.c:1148:         if (it->it_flags & ITEM_STALE) {
	testb	$8, %ah	#, _728
	jne	.L447	#,
# proto_parser.c:994:     bool ttl_set = false;
	movb	$0, -441(%rbp)	#, %sfp
	jmp	.L446	#
.L405:
	movb	%r11b, -432(%rbp)	# won_token, %sfp
# proto_parser.c:1040:             do_item_link(it, hv, of.has_cas_in ? of.cas_id_in : get_cas_id());
	call	get_cas_id@PLT	#
	movzbl	-432(%rbp), %r11d	# %sfp, won_token
	movq	%rax, %rdx	# iftmp.41_224, iftmp.41_224
	jmp	.L406	#
.L447:
# proto_parser.c:1149:             META_CHAR(p, 'X');
	movw	$22560, (%rcx)	#, MEM <vector(2) char> [(char *)p_215]
# proto_parser.c:1151:             if ((it->it_flags & ITEM_TOKEN_SENT) == 0) {
	testb	$2, 39(%r15)	#, it_69->it_flags
# proto_parser.c:994:     bool ttl_set = false;
	movb	$0, -441(%rbp)	#, %sfp
# proto_parser.c:1149:             META_CHAR(p, 'X');
	leaq	2(%rcx), %rcx	#, p
# proto_parser.c:1151:             if ((it->it_flags & ITEM_TOKEN_SENT) == 0) {
	jne	.L446	#,
	jmp	.L450	#
.L586:
# proto_parser.c:1288: }
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.type	process_mget_cmd.cold, @function
process_mget_cmd.cold:
.LFSB95:
.L571:
	.cfi_def_cfa 6, 16
	.cfi_offset 3, -64
	.cfi_offset 6, -16
	.cfi_offset 10, -56
	.cfi_offset 12, -48
	.cfi_offset 13, -40
	.cfi_offset 14, -32
	.cfi_offset 15, -24
# proto_parser.c:1023:         assert(it == NULL);
	leaq	__PRETTY_FUNCTION__.3(%rip), %rcx	#,
	movl	$1023, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC53(%rip), %rdi	#,
	call	__assert_fail@PLT	#
.L570:
# proto_parser.c:996:     assert(t != NULL);
	leaq	__PRETTY_FUNCTION__.3(%rip), %rcx	#,
	movl	$996, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC43(%rip), %rdi	#,
	vzeroupper
	call	__assert_fail@PLT	#
	.cfi_endproc
.LFE95:
	.text
	.size	process_mget_cmd, .-process_mget_cmd
	.section	.text.unlikely
	.size	process_mget_cmd.cold, .-process_mget_cmd.cold
.LCOLDE68:
	.text
.LHOTE68:
	.section	.rodata.str1.8
	.align 8
.LC69:
	.string	"CLIENT_ERROR invalid mode for ms M token"
	.section	.text.unlikely
.LCOLDB70:
	.text
.LHOTB70:
	.p2align 4
	.globl	process_mset_cmd_start
	.type	process_mset_cmd_start, @function
process_mset_cmd_start:
.LFB96:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
# proto_parser.c:1295:     struct _meta_flags of = {0}; // option bitflags.
	vpxor	%xmm0, %xmm0, %xmm0	# tmp171
# proto_parser.c:1291:         uint64_t *cas_in, bool *has_cas_in, short *comm) {
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%r10	#
	pushq	%rbx	#
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 10, -56
	.cfi_offset 3, -64
	movq	%rdi, %rbx	# t, t
	subq	$384, %rsp	#,
# proto_parser.c:1291:         uint64_t *cas_in, bool *has_cas_in, short *comm) {
	movq	%rsi, %rdi	# pr, pr
	movq	%rcx, -416(%rbp)	# cas_in, %sfp
	movq	%r8, -424(%rbp)	# has_cas_in, %sfp
# proto_parser.c:1296:     char *errstr = "CLIENT_ERROR bad command line format";
	leaq	.LC6(%rip), %rsi	#, tmp172
# proto_parser.c:1291:         uint64_t *cas_in, bool *has_cas_in, short *comm) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp170
	movq	%rax, -56(%rbp)	# tmp170, D.12845
	xorl	%eax, %eax	# tmp170
# proto_parser.c:1294:     *comm = NREAD_SET;
	movw	$2, (%r9)	#, *comm_66(D)
# proto_parser.c:1295:     struct _meta_flags of = {0}; // option bitflags.
	vmovdqu	%ymm0, -384(%rbp)	# tmp171, of
	vmovdqu	%ymm0, -352(%rbp)	# tmp171, of
# proto_parser.c:1296:     char *errstr = "CLIENT_ERROR bad command line format";
	movq	%rsi, -392(%rbp)	# tmp172, errstr
# proto_parser.c:1299:     assert(t != NULL);
	testq	%rbx, %rbx	# t
	je	.L648	#,
# proto_parser.c:1301:     if (pr->tok.ntokens < 3) {
	cmpb	$2, 16(%rdi)	#, pr_70(D)->tok.ntokens
	movq	%rdx, %r12	# resp, resp
	jbe	.L650	#,
# proto_parser.c:1309:     if (_meta_flag_preparse(pr, 3, &of, binkey, &errstr) != 0) {
	leaq	-320(%rbp), %rcx	#, tmp178
	leaq	-384(%rbp), %rdx	#, tmp179
	leaq	-392(%rbp), %r8	#,
	movl	$3, %esi	#,
# proto_parser.c:1298:     int vlen = pr->vlen; // value from data line.
	movl	88(%rdi), %r14d	# pr_70(D)->vlen, vlen
	movq	%r9, %r13	# comm, comm
# proto_parser.c:1309:     if (_meta_flag_preparse(pr, 3, &of, binkey, &errstr) != 0) {
	vzeroupper
	call	_meta_flag_preparse.constprop.0	#
# proto_parser.c:1309:     if (_meta_flag_preparse(pr, 3, &of, binkey, &errstr) != 0) {
	testl	%eax, %eax	# _2
	jne	.L603	#,
# proto_parser.c:1314:     const char *key = of.key;
	movq	-360(%rbp), %rax	# of.key, key
# proto_parser.c:1315:     size_t nkey = of.key_len;
	movzbl	-381(%rbp), %esi	# of.key_len, _3
# proto_parser.c:1317:     rel_time_t exptime = of.exptime;
	movl	-380(%rbp), %ecx	# of.exptime, exptime
# proto_parser.c:1314:     const char *key = of.key;
	movq	%rax, -408(%rbp)	# key, %sfp
# proto_parser.c:1319:     switch (of.mode) {
	movzbl	-382(%rbp), %eax	# of.mode, _4
# proto_parser.c:1319:     switch (of.mode) {
	testb	%al, %al	# _4
	je	.L604	#,
	subl	$65, %eax	#, _135
	cmpb	$18, %al	#, _135
	ja	.L634	#,
	leaq	.L607(%rip), %rdx	#, tmp183
	movzbl	%al, %eax	# _135, _135
	movslq	(%rdx,%rax,4), %rax	#, tmp185
	addq	%rdx, %rax	# tmp183, tmp186
	notrack jmp	*%rax	# tmp186
	.section	.rodata
	.align 4
	.align 4
.L607:
	.long	.L611-.L607
	.long	.L634-.L607
	.long	.L634-.L607
	.long	.L634-.L607
	.long	.L610-.L607
	.long	.L634-.L607
	.long	.L634-.L607
	.long	.L634-.L607
	.long	.L634-.L607
	.long	.L634-.L607
	.long	.L634-.L607
	.long	.L634-.L607
	.long	.L634-.L607
	.long	.L634-.L607
	.long	.L634-.L607
	.long	.L609-.L607
	.long	.L634-.L607
	.long	.L635-.L607
	.long	.L606-.L607
	.text
	.p2align 4
	.p2align 3
.L634:
	leaq	.LC69(%rip), %r14	#, pretmp_49
.L605:
# proto_parser.c:409:     resp->skip = false;
	movb	$0, 118(%r12)	#, resp_92(D)->skip
# proto_parser.c:410:     pout_string(resp, str);
	movq	%r14, %rsi	# pretmp_49,
	movq	%r12, %rdi	# resp,
	call	pout_string	#
.L602:
# proto_parser.c:1303:         return NULL;
	xorl	%r15d, %r15d	# <retval>
.L599:
# proto_parser.c:1423: }
	movq	-56(%rbp), %rax	# D.12845, tmp245
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp245
	jne	.L651	#,
	leaq	-48(%rbp), %rsp	#,
	movq	%r15, %rax	# <retval>,
	popq	%rbx	#
	popq	%r10	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret	
	.p2align 4
	.p2align 3
.L609:
	.cfi_restore_state
# proto_parser.c:1334:             if (of.vivify) {
	testb	$8, -384(%rbp)	#, of
	je	.L615	#,
# proto_parser.c:1336:                 exptime = of.autoviv_exptime;
	movl	-376(%rbp), %ecx	# of.autoviv_exptime, exptime
# proto_parser.c:1335:                 *comm = NREAD_PREPENDVIV;
	movw	$8, 0(%r13)	#, *comm_66(D)
	jmp	.L617	#
	.p2align 4
	.p2align 3
.L611:
# proto_parser.c:1326:             if (of.vivify) {
	testb	$8, -384(%rbp)	#, of
	je	.L613	#,
# proto_parser.c:1328:                 exptime = of.autoviv_exptime;
	movl	-376(%rbp), %ecx	# of.autoviv_exptime, exptime
# proto_parser.c:1327:                 *comm = NREAD_APPENDVIV;
	movw	$7, 0(%r13)	#, *comm_66(D)
	jmp	.L617	#
	.p2align 4
	.p2align 3
.L610:
# proto_parser.c:1323:             *comm = NREAD_ADD;
	movw	$1, 0(%r13)	#, *comm_66(D)
	.p2align 4
	.p2align 3
.L617:
# proto_parser.c:1361:     it = item_alloc(key, nkey, of.client_flags, exptime, vlen);
	movl	-368(%rbp), %edx	# of.client_flags,
# proto_parser.c:1315:     size_t nkey = of.key_len;
	movzbl	%sil, %eax	# _3, nkey
# proto_parser.c:1361:     it = item_alloc(key, nkey, of.client_flags, exptime, vlen);
	movl	%r14d, %r8d	# vlen,
	movq	-408(%rbp), %rdi	# %sfp,
	movq	%rax, %rsi	# nkey,
# proto_parser.c:1315:     size_t nkey = of.key_len;
	movq	%rax, -432(%rbp)	# nkey, %sfp
# proto_parser.c:1361:     it = item_alloc(key, nkey, of.client_flags, exptime, vlen);
	call	item_alloc@PLT	#
	movq	%rax, %r15	# <retval>, <retval>
# proto_parser.c:1363:     if (it == 0) {
	testq	%rax, %rax	# <retval>
	je	.L652	#,
# proto_parser.c:1394:     ITEM_set_cas(it, of.req_cas_id);
	movzwl	38(%rax), %edx	# it_89->it_flags, _30
	testb	$2, %dl	#, _30
	je	.L625	#,
# proto_parser.c:1394:     ITEM_set_cas(it, of.req_cas_id);
	movq	-352(%rbp), %rax	# of.req_cas_id, of.req_cas_id
	movq	%rax, 48(%r15)	# of.req_cas_id, it_89->data[0].cas
.L625:
# proto_parser.c:1399:     if (of.key_binary) {
	movzbl	-383(%rbp), %eax	# of, of
# proto_parser.c:1399:     if (of.key_binary) {
	testb	$16, %al	#, of
	je	.L626	#,
# proto_parser.c:1400:         it->it_flags |= ITEM_KEY_BINARY;
	orb	$16, %dh	#, tmp210
	movw	%dx, 38(%r15)	# tmp210, it_89->it_flags
.L626:
# proto_parser.c:1404:     if (of.set_stale && *comm == NREAD_CAS) {
	cmpb	$0, -384(%rbp)	#, of
# proto_parser.c:1403:     resp->set_stale = CAS_NO_STALE;
	movb	$0, 124(%r12)	#, resp_92(D)->set_stale
# proto_parser.c:1404:     if (of.set_stale && *comm == NREAD_CAS) {
	js	.L653	#,
.L627:
# proto_parser.c:1407:     resp->noreply = of.no_reply;
	andl	$1, %eax	#, _38
# proto_parser.c:1409:     pthread_mutex_lock(&t->stats.mutex);
	leaq	360(%rbx), %rdi	#,
# proto_parser.c:1407:     resp->noreply = of.no_reply;
	movb	%al, 121(%r12)	# _38, resp_92(D)->noreply
# proto_parser.c:1409:     pthread_mutex_lock(&t->stats.mutex);
	call	pthread_mutex_lock@PLT	#
# proto_parser.c:1411:     pthread_mutex_unlock(&t->stats.mutex);
	leaq	360(%rbx), %rdi	#,
# proto_parser.c:1410:     t->stats.slab_stats[ITEM_clsid(it)].set_cmds++;
	movzbl	40(%r15), %eax	# it_89->slabs_clsid, _41
	andl	$63, %eax	#, _104
	salq	$6, %rax	#, _108
# proto_parser.c:1410:     t->stats.slab_stats[ITEM_clsid(it)].set_cmds++;
	incq	672(%rbx,%rax)	# MEM <uint64_t> [(struct LIBEVENT_THREAD *)_123 + 672B]
# proto_parser.c:1411:     pthread_mutex_unlock(&t->stats.mutex);
	call	pthread_mutex_unlock@PLT	#
# proto_parser.c:1413:     if (of.has_cas_in) {
	testb	$4, -383(%rbp)	#, of
	je	.L599	#,
# proto_parser.c:1414:         *cas_in = of.cas_id_in;
	movq	-344(%rbp), %rax	# of.cas_id_in, of.cas_id_in
	movq	-416(%rbp), %rbx	# %sfp, cas_in
	movq	%rax, (%rbx)	# of.cas_id_in, *cas_in_99(D)
# proto_parser.c:1415:         *has_cas_in = true;
	movq	-424(%rbp), %rax	# %sfp, has_cas_in
	movb	$1, (%rax)	#, *has_cas_in_101(D)
	jmp	.L599	#
	.p2align 4
	.p2align 3
.L653:
# proto_parser.c:1404:     if (of.set_stale && *comm == NREAD_CAS) {
	cmpw	$6, 0(%r13)	#, *comm_66(D)
	jne	.L627	#,
# proto_parser.c:1405:         resp->set_stale = CAS_ALLOW_STALE;
	movb	$1, 124(%r12)	#, resp_92(D)->set_stale
	jmp	.L627	#
	.p2align 4
	.p2align 3
.L650:
# proto_parser.c:1302:         pout_string(resp, "CLIENT_ERROR bad command line format");
	movq	%rdx, %rdi	# resp,
	vzeroupper
	call	pout_string	#
# proto_parser.c:1303:         return NULL;
	jmp	.L602	#
	.p2align 4
	.p2align 3
.L603:
# proto_parser.c:1421:     pout_errstring(resp, errstr);
	movq	-392(%rbp), %r14	# errstr, pretmp_49
	jmp	.L605	#
	.p2align 4
	.p2align 3
.L604:
# proto_parser.c:1357:     if (of.has_cas && (*comm == NREAD_SET || *comm == NREAD_REPLACE)) {
	testb	$2, -383(%rbp)	#, of
	je	.L617	#,
# proto_parser.c:1357:     if (of.has_cas && (*comm == NREAD_SET || *comm == NREAD_REPLACE)) {
	movzwl	0(%r13), %eax	# *comm_66(D), tmp248
	subl	$2, %eax	#, _14
# proto_parser.c:1357:     if (of.has_cas && (*comm == NREAD_SET || *comm == NREAD_REPLACE)) {
	cmpw	$1, %ax	#, _14
	ja	.L617	#,
	.p2align 4
	.p2align 3
.L631:
# proto_parser.c:1358:         *comm = NREAD_CAS;
	movw	$6, 0(%r13)	#, *comm_66(D)
	jmp	.L617	#
	.p2align 4
	.p2align 3
.L613:
# proto_parser.c:1330:                 *comm = NREAD_APPEND;
	movw	$4, 0(%r13)	#, *comm_66(D)
	jmp	.L617	#
	.p2align 4
	.p2align 3
.L615:
# proto_parser.c:1338:                 *comm = NREAD_PREPEND;
	movw	$5, 0(%r13)	#, *comm_66(D)
	jmp	.L617	#
	.p2align 4
	.p2align 3
.L635:
# proto_parser.c:1319:     switch (of.mode) {
	movl	$3, %eax	#, _146
.L608:
# proto_parser.c:1342:             *comm = NREAD_REPLACE;
	movw	%ax, 0(%r13)	# _146, *comm_66(D)
# proto_parser.c:1357:     if (of.has_cas && (*comm == NREAD_SET || *comm == NREAD_REPLACE)) {
	testb	$2, -383(%rbp)	#, of
	je	.L617	#,
	jmp	.L631	#
	.p2align 4
	.p2align 3
.L606:
# proto_parser.c:1319:     switch (of.mode) {
	movl	$2, %eax	#, _146
	jmp	.L608	#
	.p2align 4
	.p2align 3
.L652:
# proto_parser.c:1365:         if (! item_size_ok(nkey, of.client_flags, vlen)) {
	movq	-432(%rbp), %rdi	# %sfp,
	movl	-368(%rbp), %esi	# of.client_flags,
	movl	%r14d, %edx	# vlen,
	call	item_size_ok@PLT	#
# proto_parser.c:1368:             pthread_mutex_lock(&t->stats.mutex);
	leaq	360(%rbx), %rdi	#,
# proto_parser.c:1365:         if (! item_size_ok(nkey, of.client_flags, vlen)) {
	testb	%al, %al	# _17
	jne	.L620	#,
# proto_parser.c:1368:             pthread_mutex_lock(&t->stats.mutex);
	call	pthread_mutex_lock@PLT	#
# proto_parser.c:1369:             t->stats.store_too_large++;
	incq	576(%rbx)	# t_72(D)->stats.store_too_large
# proto_parser.c:1370:             pthread_mutex_unlock(&t->stats.mutex);
	leaq	360(%rbx), %rdi	#,
	leaq	.LC35(%rip), %r14	#, pretmp_49
# proto_parser.c:1367:             status = TOO_LARGE;
	movl	$4, %r15d	#, status
# proto_parser.c:1370:             pthread_mutex_unlock(&t->stats.mutex);
	call	pthread_mutex_unlock@PLT	#
.L621:
# proto_parser.c:1379:         LOGGER_LOG(t->l, LOG_MUTATIONS, LOGGER_ITEM_STORE,
	movq	7000(%rbx), %rdi	# t_72(D)->l, myl
	testq	%rdi, %rdi	# myl
	je	.L654	#,
.L622:
# proto_parser.c:1379:         LOGGER_LOG(t->l, LOG_MUTATIONS, LOGGER_ITEM_STORE,
	testb	$8, 84(%rdi)	#, myl_51->eflags
	jne	.L655	#,
.L623:
# proto_parser.c:1384:         it = item_get_locked(key, nkey, t, DONT_UPDATE, &hv);
	movq	-432(%rbp), %rsi	# %sfp,
	movq	-408(%rbp), %rdi	# %sfp,
	leaq	-396(%rbp), %r8	#,
	xorl	%ecx, %ecx	#
	movq	%rbx, %rdx	# t,
	call	item_get_locked@PLT	#
	movq	%rax, %r13	#, it
# proto_parser.c:1385:         if (it) {
	testq	%rax, %rax	# it
	je	.L624	#,
# proto_parser.c:1386:             do_item_unlink(it, hv);
	movl	-396(%rbp), %esi	# hv,
	movq	%rax, %rdi	# it,
	call	do_item_unlink@PLT	#
# proto_parser.c:1387:             STORAGE_delete(t->storage, it);
	movq	6992(%rbx), %rdi	# t_72(D)->storage, t_72(D)->storage
	movq	%r13, %rsi	# it,
	call	storage_delete@PLT	#
# proto_parser.c:1388:             do_item_remove(it);
	movq	%r13, %rdi	# it,
	call	do_item_remove@PLT	#
.L624:
# proto_parser.c:1390:         item_unlock(hv);
	movl	-396(%rbp), %edi	# hv,
	call	item_unlock@PLT	#
# proto_parser.c:1392:         goto error;
	jmp	.L605	#
	.p2align 4
	.p2align 3
.L620:
# proto_parser.c:1374:             pthread_mutex_lock(&t->stats.mutex);
	call	pthread_mutex_lock@PLT	#
# proto_parser.c:1375:             t->stats.store_no_memory++;
	incq	584(%rbx)	# t_72(D)->stats.store_no_memory
# proto_parser.c:1376:             pthread_mutex_unlock(&t->stats.mutex);
	leaq	360(%rbx), %rdi	#,
	leaq	.LC36(%rip), %r14	#, pretmp_49
# proto_parser.c:1373:             status = NO_MEMORY;
	movl	$5, %r15d	#, status
# proto_parser.c:1376:             pthread_mutex_unlock(&t->stats.mutex);
	call	pthread_mutex_unlock@PLT	#
	jmp	.L621	#
.L655:
# proto_parser.c:1379:         LOGGER_LOG(t->l, LOG_MUTATIONS, LOGGER_ITEM_STORE,
	movl	344(%rbx), %eax	# t_72(D)->cur_sfd, t_72(D)->cur_sfd
	subq	$8, %rsp	#,
	movq	-408(%rbp), %r9	# %sfp,
	movq	%r13, %r8	# comm,
	movl	%r15d, %ecx	# status,
	xorl	%edx, %edx	#
	movl	$3, %esi	#,
	pushq	%rax	# t_72(D)->cur_sfd
	pushq	$0	#
	xorl	%eax, %eax	#
	pushq	-432(%rbp)	# %sfp
	call	logger_log@PLT	#
	addq	$32, %rsp	#,
	jmp	.L623	#
.L654:
# proto_parser.c:1379:         LOGGER_LOG(t->l, LOG_MUTATIONS, LOGGER_ITEM_STORE,
	movl	logger_key(%rip), %edi	# logger_key,
	call	pthread_getspecific@PLT	#
	movq	%rax, %rdi	# myl, myl
	jmp	.L622	#
.L651:
# proto_parser.c:1423: }
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.type	process_mset_cmd_start.cold, @function
process_mset_cmd_start.cold:
.LFSB96:
.L648:
	.cfi_def_cfa 6, 16
	.cfi_offset 3, -64
	.cfi_offset 6, -16
	.cfi_offset 10, -56
	.cfi_offset 12, -48
	.cfi_offset 13, -40
	.cfi_offset 14, -32
	.cfi_offset 15, -24
# proto_parser.c:1299:     assert(t != NULL);
	leaq	__PRETTY_FUNCTION__.2(%rip), %rcx	#,
	movl	$1299, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC43(%rip), %rdi	#,
	vzeroupper
	call	__assert_fail@PLT	#
	.cfi_endproc
.LFE96:
	.text
	.size	process_mset_cmd_start, .-process_mset_cmd_start
	.section	.text.unlikely
	.size	process_mset_cmd_start.cold, .-process_mset_cmd_start.cold
.LCOLDE70:
	.text
.LHOTE70:
	.p2align 4
	.globl	process_mset_cmd
	.type	process_mset_cmd, @function
process_mset_cmd:
.LFB97:
	.cfi_startproc
	endbr64	
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rsi, %r14	# pr, pr
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %r12	# t, t
	subq	$56, %rsp	#,
	.cfi_def_cfa_offset 112
# proto_parser.c:1429:     item *it = process_mset_cmd_start(t, pr, resp, &cas_in, &has_cas_in, &comm);
	leaq	24(%rsp), %rcx	#, tmp183
	leaq	18(%rsp), %r9	#,
	leaq	17(%rsp), %r8	#,
# proto_parser.c:1425: void process_mset_cmd(LIBEVENT_THREAD *t, mcp_parser_t *pr, mc_resp *resp) {
	movq	%fs:40, %rbp	# MEM[(<address-space-1> long unsigned int *)40B], resp
	movq	%rbp, 40(%rsp)	# resp, D.12880
	movq	%rdx, %rbp	# resp, resp
# proto_parser.c:1426:     bool has_cas_in = false;
	movb	$0, 17(%rsp)	#, has_cas_in
# proto_parser.c:1427:     uint64_t cas_in = 0;
	movq	$0, 24(%rsp)	#, cas_in
# proto_parser.c:1428:     short comm = 0;
	movw	$0, 18(%rsp)	#, comm
# proto_parser.c:1429:     item *it = process_mset_cmd_start(t, pr, resp, &cas_in, &has_cas_in, &comm);
	call	process_mset_cmd_start	#
# proto_parser.c:1432:     if (it == NULL)
	testq	%rax, %rax	# it
	je	.L656	#,
# proto_parser.c:1437:     if (_store_item_copy_from_buf(it, pr->vbuf, it->nbytes) != 0) {
	movl	32(%rax), %edx	# it_70->nbytes, it_70->nbytes
	movq	8(%r14), %rsi	# pr_67(D)->vbuf, pr_67(D)->vbuf
	movq	%rax, %rdi	# it,
	movq	%rax, %rbx	#, it
	call	_store_item_copy_from_buf	#
# proto_parser.c:1437:     if (_store_item_copy_from_buf(it, pr->vbuf, it->nbytes) != 0) {
	testl	%eax, %eax	# _3
	jne	.L705	#,
# proto_parser.c:1446:     int ret = store_item(it, comm, t, &nbytes, &cas, has_cas_in ? cas_in : get_cas_id(), resp->set_stale);
	cmpb	$0, 17(%rsp)	#, has_cas_in
# proto_parser.c:1443:     char *p = resp->wbuf;
	leaq	164(%rbp), %rax	#, p
# proto_parser.c:1446:     int ret = store_item(it, comm, t, &nbytes, &cas, has_cas_in ? cas_in : get_cas_id(), resp->set_stale);
	movzbl	124(%rbp), %r13d	# resp_68(D)->set_stale, _5
# proto_parser.c:1444:     uint64_t cas = 0;
	movq	$0, 32(%rsp)	#, cas
# proto_parser.c:1446:     int ret = store_item(it, comm, t, &nbytes, &cas, has_cas_in ? cas_in : get_cas_id(), resp->set_stale);
	movq	24(%rsp), %r9	# cas_in, iftmp.72_55
# proto_parser.c:1443:     char *p = resp->wbuf;
	movq	%rax, (%rsp)	# p, %sfp
# proto_parser.c:1445:     int nbytes = 0;
	movl	$0, 20(%rsp)	#, nbytes
# proto_parser.c:1446:     int ret = store_item(it, comm, t, &nbytes, &cas, has_cas_in ? cas_in : get_cas_id(), resp->set_stale);
	je	.L706	#,
.L660:
# proto_parser.c:1446:     int ret = store_item(it, comm, t, &nbytes, &cas, has_cas_in ? cas_in : get_cas_id(), resp->set_stale);
	movswl	18(%rsp), %esi	# comm, _8
	leaq	20(%rsp), %rcx	#, tmp188
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 120
	movq	%r12, %rdx	# t,
	pushq	%r13	# _5
	.cfi_def_cfa_offset 128
	movq	%rbx, %rdi	# it,
	leaq	48(%rsp), %r8	#,
	call	store_item@PLT	#
# proto_parser.c:1447:     switch (ret) {
	popq	%rdx	#
	.cfi_def_cfa_offset 120
	popq	%rcx	#
	.cfi_def_cfa_offset 112
	cmpl	$2, %eax	#, _9
	je	.L661	#,
	ja	.L662	#,
	testl	%eax, %eax	# _9
	je	.L707	#,
# proto_parser.c:1451:           if (resp->noreply) {
	cmpb	$0, 121(%rbp)	#, resp_68(D)->noreply
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movw	$17480, 164(%rbp)	#, MEM <char[1:2]> [(void *)p_72]
# proto_parser.c:1451:           if (resp->noreply) {
	je	.L667	#,
# proto_parser.c:1452:               resp->skip = true;
	movb	$1, 118(%rbp)	#, resp_68(D)->skip
	.p2align 4
	.p2align 3
.L667:
# proto_parser.c:1472:     for (int i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	movzbl	82(%r14), %r8d	# pr_67(D)->keytoken,
# proto_parser.c:1470:     p += 2;
	leaq	166(%rbp), %rdx	#, p
# proto_parser.c:1472:     for (int i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	movzbl	16(%r14), %esi	# pr_67(D)->tok.ntokens, _49
# proto_parser.c:1472:     for (int i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	movq	%r8, %rax	#,
# proto_parser.c:1472:     for (int i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	incl	%r8d	# i_81
# proto_parser.c:1472:     for (int i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	cmpl	%esi, %r8d	# _49, i_81
	jge	.L668	#,
	movl	%r8d, %r13d	# i_81, ivtmp.344
# proto_parser.c:1486:                 META_KEY(p, ITEM_key(it), it->nkey, (it->it_flags & ITEM_KEY_BINARY));
	movzwl	.LC62(%rip), %r15d	#, tmp254
# proto_parser.c:1489:                 META_CHAR(p, 'c');
	movq	%rbp, 8(%rsp)	# resp, %sfp
	subq	%r13, %rax	# ivtmp.344, tmp200
	leaq	(%r14,%rax,2), %r12	#, _227
	jmp	.L687	#
	.p2align 4
	.p2align 3
.L709:
# proto_parser.c:1474:         switch (pr->request[pr->tok.tokens[i]]) {
	cmpb	$79, %cl	#, _17
	je	.L671	#,
	cmpb	$99, %cl	#, _17
	jne	.L673	#,
# proto_parser.c:1489:                 META_CHAR(p, 'c');
	movzwl	.LC58(%rip), %eax	#, tmp299
	leaq	2(%rdx), %rsi	#, p
	movw	%ax, (%rdx)	# tmp299, MEM <vector(2) char> [(char *)p_157]
# proto_parser.c:1490:                 p = itoa_u64(cas, p);
	movq	32(%rsp), %rdi	# cas,
	call	itoa_u64@PLT	#
	movzbl	16(%r14), %esi	# pr_67(D)->tok.ntokens, _49
	movq	%rax, %rdx	# p, p
.L673:
# proto_parser.c:1472:     for (int i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	incq	%r13	# ivtmp.344
	cmpl	%r13d, %esi	# ivtmp.344, _49
	jle	.L708	#,
.L687:
# proto_parser.c:1474:         switch (pr->request[pr->tok.tokens[i]]) {
	movq	(%r14), %rax	# pr_67(D)->request, _13
# proto_parser.c:1474:         switch (pr->request[pr->tok.tokens[i]]) {
	movzwl	18(%r14,%r13,2), %ecx	# MEM[(short unsigned int *)pr_67(D) + 18B + ivtmp.344_124 * 2], _15
# proto_parser.c:1474:         switch (pr->request[pr->tok.tokens[i]]) {
	movzbl	(%rax,%rcx), %ecx	# *_16, _17
# proto_parser.c:1474:         switch (pr->request[pr->tok.tokens[i]]) {
	cmpb	$107, %cl	#, _17
	je	.L669	#,
	jle	.L709	#,
	cmpb	$115, %cl	#, _17
	jne	.L673	#,
# proto_parser.c:1494:                 META_CHAR(p, 's');
	movzwl	.LC55(%rip), %eax	#, tmp300
	leaq	2(%rdx), %rsi	#, p
	movw	%ax, (%rdx)	# tmp300, MEM <vector(2) char> [(char *)p_157]
# proto_parser.c:1496:                 if (nbytes != 0) {
	movl	20(%rsp), %edi	# nbytes, nbytes.76_42
# proto_parser.c:1496:                 if (nbytes != 0) {
	testl	%edi, %edi	# nbytes.76_42
	je	.L686	#,
# proto_parser.c:1497:                     p = itoa_u32(nbytes-2, p);
	subl	$2, %edi	#, _43
# proto_parser.c:1472:     for (int i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	incq	%r13	# ivtmp.344
# proto_parser.c:1497:                     p = itoa_u32(nbytes-2, p);
	call	itoa_u32@PLT	#
	movzbl	16(%r14), %esi	# pr_67(D)->tok.ntokens, _49
	movq	%rax, %rdx	# p, p
# proto_parser.c:1472:     for (int i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	cmpl	%r13d, %esi	# ivtmp.344, _49
	jg	.L687	#,
	.p2align 4
	.p2align 3
.L708:
	movq	8(%rsp), %rbp	# %sfp, resp
.L668:
# proto_parser.c:1511:     resp->wbytes = p - resp->wbuf;
	movq	(%rsp), %rsi	# %sfp, p
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movw	$2573, (%rdx)	#, MEM <char[1:2]> [(void *)p_158]
# proto_parser.c:1509:     p += 2;
	addq	$2, %rdx	#, p_82
# proto_parser.c:1512:     resp_add_iov(resp, resp->wbuf, resp->wbytes);
	movq	%rbp, %rdi	# resp,
# proto_parser.c:1511:     resp->wbytes = p - resp->wbuf;
	subq	%rsi, %rdx	# p, _50
# proto_parser.c:1511:     resp->wbytes = p - resp->wbuf;
	movl	%edx, 16(%rbp)	# _50, resp_68(D)->wbytes
# proto_parser.c:1512:     resp_add_iov(resp, resp->wbuf, resp->wbytes);
	call	resp_add_iov@PLT	#
# proto_parser.c:1514:     item_remove(it);
	movq	%rbx, %rdi	# it,
	call	item_remove@PLT	#
.L656:
# proto_parser.c:1520: }
	movq	40(%rsp), %rax	# D.12880, tmp270
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp270
	jne	.L710	#,
	addq	$56, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4
	.p2align 3
.L706:
	.cfi_restore_state
# proto_parser.c:1446:     int ret = store_item(it, comm, t, &nbytes, &cas, has_cas_in ? cas_in : get_cas_id(), resp->set_stale);
	call	get_cas_id@PLT	#
	movq	%rax, %r9	# iftmp.72_55, iftmp.72_55
	jmp	.L660	#
.L707:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movw	$21326, 164(%rbp)	#, MEM <char[1:2]> [(void *)p_72]
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	jmp	.L667	#
.L661:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movw	$22597, 164(%rbp)	#, MEM <char[1:2]> [(void *)p_72]
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	jmp	.L667	#
	.p2align 4
	.p2align 3
.L671:
# proto_parser.c:425:   const char *s = pr->request + pr->tok.tokens[token];
	movzwl	20(%r12,%r13,2), %ecx	# MEM[(short unsigned int *)_227 + 20B + ivtmp.344_124 * 2], _134
# proto_parser.c:426:   const char *e = pr->request + pr->tok.tokens[token+1];
	movzwl	22(%r12,%r13,2), %esi	# MEM[(short unsigned int *)_227 + 22B + ivtmp.344_124 * 2], _138
# proto_parser.c:425:   const char *s = pr->request + pr->tok.tokens[token];
	addq	%rax, %rcx	# _13, s
# proto_parser.c:426:   const char *e = pr->request + pr->tok.tokens[token+1];
	addq	%rsi, %rax	# _138, e
# proto_parser.c:428:   while (*(e-1) == ' ') {
	cmpb	$32, -1(%rax)	#,
	jne	.L675	#,
	.p2align 4
	.p2align 4
	.p2align 3
.L676:
# proto_parser.c:429:       e--;
	decq	%rax	# e
# proto_parser.c:428:   while (*(e-1) == ' ') {
	cmpb	$32, -1(%rax)	#,
	je	.L676	#,
.L675:
# proto_parser.c:431:   return e - s;
	subq	%rcx, %rax	# s, _143
# proto_parser.c:1477:                 if (tlen > MFLAG_MAX_OPAQUE_LENGTH) {
	cmpl	$32, %eax	#, _143
	jg	.L711	#,
# proto_parser.c:1482:                 memcpy(p, &pr->request[pr->tok.tokens[i]], tlen);
	cltq
# proto_parser.c:1481:                 META_SPACE(p);
	movb	$32, (%rdx)	#, *p_157
	leaq	1(%rdx), %rdi	#, p
# proto_parser.c:1482:                 memcpy(p, &pr->request[pr->tok.tokens[i]], tlen);
	movzwl	18(%r14,%r13,2), %ecx	# MEM[(short unsigned int *)pr_67(D) + 18B + ivtmp.344_124 * 2], _22
# proto_parser.c:1482:                 memcpy(p, &pr->request[pr->tok.tokens[i]], tlen);
	addq	(%r14), %rcx	# pr_67(D)->request, _23
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	cmpq	$8, %rax	#, _19
	jnb	.L679	#,
	testb	$4, %al	#, _19
	jne	.L712	#,
	testq	%rax, %rax	# _19
	je	.L680	#,
	movzbl	(%rcx), %esi	#* _23, tmp216
	movb	%sil, 1(%rdx)	# tmp216,
	testb	$2, %al	#, _19
	jne	.L713	#,
.L680:
	movzbl	16(%r14), %esi	# pr_67(D)->tok.ntokens, _49
# proto_parser.c:1483:                 p += tlen;
	leaq	(%rdi,%rax), %rdx	#, p
# proto_parser.c:1484:                 break;
	jmp	.L673	#
	.p2align 4
	.p2align 3
.L669:
# proto_parser.c:1486:                 META_KEY(p, ITEM_key(it), it->nkey, (it->it_flags & ITEM_KEY_BINARY));
	movw	%r15w, (%rdx)	# tmp254, MEM <vector(2) char> [(char *)p_157]
	leaq	2(%rdx), %rbp	#, p
	movzwl	38(%rbx), %edx	# it_70->it_flags, _24
# proto_parser.c:1486:                 META_KEY(p, ITEM_key(it), it->nkey, (it->it_flags & ITEM_KEY_BINARY));
	movzbl	41(%rbx), %esi	# it_70->nkey, _247
	leaq	0(,%rdx,4), %rax	#, _249
	andl	$8, %eax	#, _250
# proto_parser.c:1486:                 META_KEY(p, ITEM_key(it), it->nkey, (it->it_flags & ITEM_KEY_BINARY));
	andb	$16, %dh	#, _24
	jne	.L685	#,
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movq	%rsi, %rdx	# _247,
	movq	%rbp, %rdi	# p,
	leaq	48(%rbx,%rax), %rsi	#,
	call	memcpy@PLT	#
# proto_parser.c:1486:                 META_KEY(p, ITEM_key(it), it->nkey, (it->it_flags & ITEM_KEY_BINARY));
	movzbl	41(%rbx), %eax	# it_70->nkey, _33
	movzbl	16(%r14), %esi	# pr_67(D)->tok.ntokens, _49
	leaq	0(%rbp,%rax), %rdx	#, p
	jmp	.L673	#
	.p2align 4
	.p2align 3
.L686:
# proto_parser.c:1499:                     p = itoa_u32(it->nbytes-2, p);
	movl	32(%rbx), %eax	# it_70->nbytes, tmp301
	leal	-2(%rax), %edi	#, _46
# proto_parser.c:1499:                     p = itoa_u32(it->nbytes-2, p);
	call	itoa_u32@PLT	#
	movzbl	16(%r14), %esi	# pr_67(D)->tok.ntokens, _49
	movq	%rax, %rdx	# p, p
	jmp	.L673	#
	.p2align 4
	.p2align 3
.L685:
# proto_parser.c:1486:                 META_KEY(p, ITEM_key(it), it->nkey, (it->it_flags & ITEM_KEY_BINARY));
	movq	%rbp, %rdx	# p,
	leaq	48(%rbx,%rax), %rdi	#, _40
	movl	$512, %ecx	#,
	call	base64_encode@PLT	#
# proto_parser.c:1486:                 META_KEY(p, ITEM_key(it), it->nkey, (it->it_flags & ITEM_KEY_BINARY));
	leaq	0(%rbp,%rax), %rdx	#, p
	movzwl	.LC63(%rip), %eax	#, tmp298
	addq	$2, %rdx	#, p
	movw	%ax, -2(%rdx)	# tmp298, MEM <vector(2) char> [(char *)p_98]
	movzbl	16(%r14), %esi	# pr_67(D)->tok.ntokens, _49
	jmp	.L673	#
	.p2align 4
	.p2align 3
.L679:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movq	(%rcx), %rsi	#* _23, tmp219
	addq	$9, %rdx	#, tmp221
	movq	%rsi, -8(%rdx)	# tmp219,
	movq	-8(%rcx,%rax), %rsi	#, tmp220
	andq	$-8, %rdx	#, tmp221
	movq	%rsi, -8(%rdi,%rax)	# tmp220,
	movq	%rdi, %rsi	# p, tmp222
	subq	%rdx, %rsi	# tmp221, tmp222
	subq	%rsi, %rcx	# tmp222, _23
	addq	%rax, %rsi	# _19, _19
	andq	$-8, %rsi	#, _19
	cmpq	$8, %rsi	#, _19
	jb	.L680	#,
	andq	$-8, %rsi	#, tmp224
	xorl	%r8d, %r8d	# tmp223
.L683:
	movq	(%rcx,%r8), %r9	#, tmp225
	movq	%r9, (%rdx,%r8)	# tmp225,
	addq	$8, %r8	#, tmp223
	cmpq	%rsi, %r8	# tmp224, tmp223
	jb	.L683	#,
	jmp	.L680	#
	.p2align 4
	.p2align 3
.L662:
# proto_parser.c:1447:     switch (ret) {
	cmpl	$3, %eax	#, _9
	jne	.L714	#,
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movw	$17998, 164(%rbp)	#, MEM <char[1:2]> [(void *)p_72]
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	jmp	.L667	#
	.p2align 4
	.p2align 3
.L705:
# proto_parser.c:1438:         pout_string(resp, "SERVER_ERROR out of memory storing object");
	movq	%rbp, %rdi	# resp,
	leaq	.LC36(%rip), %rsi	#,
	call	pout_string	#
# proto_parser.c:1439:         item_remove(it);
	movq	%rbx, %rdi	# it,
	call	item_remove@PLT	#
# proto_parser.c:1440:         return;
	jmp	.L656	#
.L714:
# proto_parser.c:410:     pout_string(resp, str);
	movq	%rbp, %rdi	# resp,
# proto_parser.c:409:     resp->skip = false;
	movb	$0, 118(%rbp)	#, resp_68(D)->skip
# proto_parser.c:410:     pout_string(resp, str);
	leaq	.LC42(%rip), %rsi	#,
	call	pout_string	#
# proto_parser.c:1466:           item_remove(it);
	movq	%rbx, %rdi	# it,
	call	item_remove@PLT	#
# proto_parser.c:1467:           return;
	jmp	.L656	#
.L711:
# proto_parser.c:409:     resp->skip = false;
	movq	8(%rsp), %rbp	# %sfp, resp
# proto_parser.c:410:     pout_string(resp, str);
	leaq	.LC52(%rip), %rsi	#,
	movq	%rbp, %rdi	# resp,
# proto_parser.c:409:     resp->skip = false;
	movb	$0, 118(%rbp)	#, resp_68(D)->skip
# proto_parser.c:410:     pout_string(resp, str);
	call	pout_string	#
# proto_parser.c:1519:     item_remove(it);
	movq	%rbx, %rdi	# it,
	call	item_remove@PLT	#
	jmp	.L656	#
.L712:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movl	(%rcx), %edx	#* _23, tmp214
	movl	%edx, (%rdi)	# tmp214,* p
	movl	-4(%rcx,%rax), %edx	#, tmp215
	movl	%edx, -4(%rdi,%rax)	# tmp215,
	jmp	.L680	#
.L713:
	movzwl	-2(%rcx,%rax), %edx	#, tmp218
	movw	%dx, -2(%rdi,%rax)	# tmp218,
	jmp	.L680	#
.L710:
# proto_parser.c:1520: }
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE97:
	.size	process_mset_cmd, .-process_mset_cmd
	.section	.text.unlikely
.LCOLDB71:
	.text
.LHOTB71:
	.p2align 4
	.globl	process_mdelete_cmd
	.type	process_mdelete_cmd, @function
process_mdelete_cmd:
.LFB98:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
# proto_parser.c:1527:     struct _meta_flags of = {0}; // option bitflags.
	vpxor	%xmm0, %xmm0, %xmm0	# tmp234
# proto_parser.c:1522: void process_mdelete_cmd(LIBEVENT_THREAD *t, mcp_parser_t *pr, mc_resp *resp) {
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%r10	#
	pushq	%rbx	#
	subq	$384, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 10, -56
	.cfi_offset 3, -64
# proto_parser.c:1522: void process_mdelete_cmd(LIBEVENT_THREAD *t, mcp_parser_t *pr, mc_resp *resp) {
	movq	%rdi, -416(%rbp)	# t, %sfp
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp233
	movq	%rax, -56(%rbp)	# tmp233, D.12913
	xorl	%eax, %eax	# tmp233
# proto_parser.c:1528:     char *errstr = "CLIENT_ERROR bad command line format";
	leaq	.LC6(%rip), %rax	#, tmp387
# proto_parser.c:1526:     uint32_t hv = 0;
	movl	$0, -396(%rbp)	#, hv
# proto_parser.c:1527:     struct _meta_flags of = {0}; // option bitflags.
	vmovdqu	%ymm0, -384(%rbp)	# tmp234, of
	vmovdqu	%ymm0, -352(%rbp)	# tmp234, of
# proto_parser.c:1528:     char *errstr = "CLIENT_ERROR bad command line format";
	movq	%rax, -392(%rbp)	# tmp387, errstr
# proto_parser.c:1529:     assert(t != NULL);
	testq	%rdi, %rdi	# t
	je	.L793	#,
	movq	%rsi, %r14	# pr, pr
	movq	%rdx, %r13	# resp, resp
# proto_parser.c:1536:     if (_meta_flag_preparse(pr, 2, &of, binkey, &errstr) != 0) {
	leaq	-320(%rbp), %rcx	#, tmp240
	leaq	-384(%rbp), %rdx	#, tmp241
	leaq	-392(%rbp), %r8	#,
	movl	$2, %esi	#,
	movq	%r14, %rdi	# pr,
	vzeroupper
	call	_meta_flag_preparse.constprop.0	#
# proto_parser.c:1536:     if (_meta_flag_preparse(pr, 2, &of, binkey, &errstr) != 0) {
	testl	%eax, %eax	# _1
	jne	.L797	#,
# proto_parser.c:1542:     const char *key = of.key;
	movq	-360(%rbp), %rax	# of.key, key
# proto_parser.c:1545:     for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	movzbl	82(%r14), %r8d	# pr_128(D)->keytoken,
# proto_parser.c:1531:     char *p = resp->wbuf + 2;
	leaq	166(%r13), %r15	#, p
# proto_parser.c:1543:     size_t nkey = of.key_len;
	movzbl	-381(%rbp), %edi	# of.key_len, nkey
# proto_parser.c:1545:     for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	movzbl	16(%r14), %ecx	# pr_128(D)->tok.ntokens, _20
# proto_parser.c:1542:     const char *key = of.key;
	movq	%rax, -408(%rbp)	# key, %sfp
# proto_parser.c:1545:     for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	movq	%r8, %rax	#,
# proto_parser.c:1545:     for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	incl	%r8d	# i_132
# proto_parser.c:1543:     size_t nkey = of.key_len;
	movq	%rdi, -424(%rbp)	# nkey, %sfp
# proto_parser.c:1545:     for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	cmpl	%ecx, %r8d	# _20, i_132
	jge	.L719	#,
	movl	%r8d, %r12d	# i_132, ivtmp.369
# proto_parser.c:1559:                 META_KEY(p, key, nkey, of.key_binary);
	movq	%r15, %rdx	# p, p
	movq	%r13, -432(%rbp)	# resp, %sfp
	subq	%r12, %rax	# ivtmp.369, _195
	movq	%r12, %r15	# ivtmp.369, ivtmp.369
	movq	%rdi, %r12	# nkey, nkey
	leaq	(%r14,%rax,2), %rbx	#, _275
	jmp	.L733	#
	.p2align 4
	.p2align 3
.L799:
# proto_parser.c:1546:         switch (pr->request[pr->tok.tokens[i]]) {
	cmpb	$107, %sil	#, _10
	jne	.L722	#,
# proto_parser.c:1559:                 META_KEY(p, key, nkey, of.key_binary);
	movzwl	.LC62(%rip), %eax	#, tmp392
	leaq	2(%rdx), %r13	#, p
	movw	%ax, (%rdx)	# tmp392, MEM <vector(2) char> [(char *)p_208]
	testb	$16, -383(%rbp)	#, of
	jne	.L732	#,
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movq	-408(%rbp), %rsi	# %sfp,
	movq	%r12, %rdx	# nkey,
	movq	%r13, %rdi	# p,
	call	memcpy@PLT	#
	movzbl	16(%r14), %ecx	# pr_128(D)->tok.ntokens, _20
# proto_parser.c:1559:                 META_KEY(p, key, nkey, of.key_binary);
	leaq	0(%r13,%r12), %rdx	#, p
.L722:
# proto_parser.c:1545:     for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	incq	%r15	# ivtmp.369
	cmpl	%r15d, %ecx	# ivtmp.369, _20
	jle	.L798	#,
.L733:
# proto_parser.c:1546:         switch (pr->request[pr->tok.tokens[i]]) {
	movq	(%r14), %rax	# pr_128(D)->request, _6
# proto_parser.c:1546:         switch (pr->request[pr->tok.tokens[i]]) {
	movzwl	18(%r14,%r15,2), %esi	# MEM[(short unsigned int *)pr_128(D) + 18B + ivtmp.369_281 * 2], _8
# proto_parser.c:1546:         switch (pr->request[pr->tok.tokens[i]]) {
	movzbl	(%rax,%rsi), %esi	# *_9, _10
# proto_parser.c:1546:         switch (pr->request[pr->tok.tokens[i]]) {
	cmpb	$79, %sil	#, _10
	jne	.L799	#,
# proto_parser.c:425:   const char *s = pr->request + pr->tok.tokens[token];
	movzwl	20(%rbx,%r15,2), %ecx	# MEM[(short unsigned int *)_275 + 20B + ivtmp.369_281 * 2], _211
# proto_parser.c:426:   const char *e = pr->request + pr->tok.tokens[token+1];
	movzwl	22(%rbx,%r15,2), %esi	# MEM[(short unsigned int *)_275 + 22B + ivtmp.369_281 * 2], _215
# proto_parser.c:425:   const char *s = pr->request + pr->tok.tokens[token];
	addq	%rax, %rcx	# _6, s
# proto_parser.c:426:   const char *e = pr->request + pr->tok.tokens[token+1];
	addq	%rsi, %rax	# _215, e
# proto_parser.c:428:   while (*(e-1) == ' ') {
	cmpb	$32, -1(%rax)	#,
	jne	.L723	#,
	.p2align 4
	.p2align 4
	.p2align 3
.L724:
# proto_parser.c:429:       e--;
	decq	%rax	# e
# proto_parser.c:428:   while (*(e-1) == ' ') {
	cmpb	$32, -1(%rax)	#,
	je	.L724	#,
.L723:
# proto_parser.c:431:   return e - s;
	subq	%rcx, %rax	# s, _220
# proto_parser.c:1550:                 if (tlen > MFLAG_MAX_OPAQUE_LENGTH) {
	cmpl	$32, %eax	#, _220
	jg	.L758	#,
# proto_parser.c:1555:                 memcpy(p, &pr->request[pr->tok.tokens[i]], tlen);
	cltq
# proto_parser.c:1554:                 META_SPACE(p);
	movb	$32, (%rdx)	#, *p_208
	leaq	1(%rdx), %rdi	#, p
# proto_parser.c:1555:                 memcpy(p, &pr->request[pr->tok.tokens[i]], tlen);
	movzwl	18(%r14,%r15,2), %ecx	# MEM[(short unsigned int *)pr_128(D) + 18B + ivtmp.369_281 * 2], _15
# proto_parser.c:1555:                 memcpy(p, &pr->request[pr->tok.tokens[i]], tlen);
	addq	(%r14), %rcx	# pr_128(D)->request, _16
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	cmpq	$8, %rax	#, _12
	jnb	.L726	#,
	testb	$4, %al	#, _12
	jne	.L800	#,
	testq	%rax, %rax	# _12
	je	.L727	#,
	movzbl	(%rcx), %esi	#* _16, tmp266
	movb	%sil, 1(%rdx)	# tmp266,
	testb	$2, %al	#, _12
	jne	.L801	#,
.L727:
	movzbl	16(%r14), %ecx	# pr_128(D)->tok.ntokens, _20
# proto_parser.c:1545:     for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	incq	%r15	# ivtmp.369
# proto_parser.c:1556:                 p += tlen;
	leaq	(%rdi,%rax), %rdx	#, p
# proto_parser.c:1545:     for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	cmpl	%r15d, %ecx	# ivtmp.369, _20
	jg	.L733	#,
.L798:
	movq	-432(%rbp), %r13	# %sfp, resp
	movq	%rdx, %r15	# p, p
.L719:
# proto_parser.c:1564:     it = item_get_locked(key, nkey, t, DONT_UPDATE, &hv);
	movq	-416(%rbp), %rdx	# %sfp,
	movq	-424(%rbp), %rsi	# %sfp,
	leaq	-396(%rbp), %r8	#,
	xorl	%ecx, %ecx	#
	movq	-408(%rbp), %rdi	# %sfp,
	call	item_get_locked@PLT	#
	movq	%rax, %rbx	# it, it
# proto_parser.c:1565:     if (it) {
	testq	%rax, %rax	# it
	je	.L734	#,
# proto_parser.c:1567:         if (of.has_cas && ITEM_get_cas(it) != of.req_cas_id) {
	movzbl	-383(%rbp), %eax	# of, _21
# proto_parser.c:1567:         if (of.has_cas && ITEM_get_cas(it) != of.req_cas_id) {
	testb	$2, %al	#, _21
	jne	.L802	#,
.L735:
# proto_parser.c:1577:         if (of.remove_val) {
	testb	$32, %al	#, _21
	je	.L738	#,
# proto_parser.c:1578:             item *new_it = item_alloc(key, nkey, of.client_flags, of.exptime, 2);
	movl	-380(%rbp), %ecx	# of.exptime,
	movl	-368(%rbp), %edx	# of.client_flags,
	movl	$2, %r8d	#,
	movq	-424(%rbp), %rsi	# %sfp,
	movq	-408(%rbp), %rdi	# %sfp,
	call	item_alloc@PLT	#
	movq	%rax, %r12	#, new_it
# proto_parser.c:1579:             if (new_it != NULL) {
	testq	%rax, %rax	# new_it
	je	.L739	#,
# proto_parser.c:1580:                 memcpy(ITEM_data(new_it), "\r\n", 2);
	movzwl	38(%rax), %edx	# new_it_144->it_flags, _35
	movl	%edx, %eax	# _35, _37
	leaq	0(,%rdx,4), %rdx	#, _41
	shrl	$6, %eax	#, _37
	andl	$8, %edx	#, _42
	andl	$4, %eax	#, _38
	addq	%rdx, %rax	# _42, _57
	movzbl	41(%r12), %edx	# new_it_144->nkey, _34
	leaq	1(%rax,%rdx), %rax	#, _44
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movw	$2573, 48(%r12,%rax)	#, MEM <char[1:2]> [(void *)_45]
# proto_parser.c:1581:                 if (do_store_item(new_it, NREAD_SET, t, hv, NULL, NULL,
	movq	-344(%rbp), %rax	# of.cas_id_in, iftmp.80_101
# proto_parser.c:1581:                 if (do_store_item(new_it, NREAD_SET, t, hv, NULL, NULL,
	testb	$4, -383(%rbp)	#, of
	jne	.L741	#,
# proto_parser.c:1581:                 if (do_store_item(new_it, NREAD_SET, t, hv, NULL, NULL,
	xorl	%eax, %eax	# iftmp.80_101
# proto_parser.c:1582:                             of.has_cas_in ? of.cas_id_in : ITEM_get_cas(it), CAS_NO_STALE)) {
	testb	$2, 38(%rbx)	#, it_134->it_flags
	jne	.L803	#,
.L741:
# proto_parser.c:1581:                 if (do_store_item(new_it, NREAD_SET, t, hv, NULL, NULL,
	pushq	$0	#
	movq	-416(%rbp), %rdx	# %sfp,
	pushq	%rax	# iftmp.80_101
	xorl	%r9d, %r9d	#
	movl	-396(%rbp), %ecx	# hv,
	xorl	%r8d, %r8d	#
	movl	$2, %esi	#,
	movq	%r12, %rdi	# new_it,
	call	do_store_item@PLT	#
# proto_parser.c:1581:                 if (do_store_item(new_it, NREAD_SET, t, hv, NULL, NULL,
	popq	%rdx	#
	popq	%rcx	#
	testl	%eax, %eax	# _50
	je	.L742	#,
# proto_parser.c:1583:                     do_item_remove(it);
	movq	%rbx, %rdi	# it,
# proto_parser.c:1584:                     it = new_it;
	movq	%r12, %rbx	# new_it, it
# proto_parser.c:1583:                     do_item_remove(it);
	call	do_item_remove@PLT	#
.L738:
# proto_parser.c:1599:         if (of.set_stale) {
	cmpb	$0, -384(%rbp)	#, of
	jns	.L744	#,
# proto_parser.c:1600:             if (of.new_ttl) {
	movzbl	-383(%rbp), %edx	# of, _53
# proto_parser.c:1600:             if (of.new_ttl) {
	testb	$8, %dl	#, _53
	je	.L745	#,
# proto_parser.c:1601:                 it->exptime = of.exptime;
	movl	-380(%rbp), %eax	# of.exptime, of.exptime
	movl	%eax, 28(%rbx)	# of.exptime, it_93->exptime
.L745:
# proto_parser.c:1603:             it->it_flags |= ITEM_STALE;
	movzwl	38(%rbx), %ecx	# it_93->it_flags, _56
# proto_parser.c:1605:             it->it_flags &= ~ITEM_TOKEN_SENT;
	movl	%ecx, %eax	# _56, _95
	andb	$-3, %ah	#, _95
	orb	$8, %ah	#, tmp317
# proto_parser.c:1607:             ITEM_set_cas(it, of.has_cas_in ? of.cas_id_in : get_cas_id());
	andl	$2, %ecx	#, _56
# proto_parser.c:1605:             it->it_flags &= ~ITEM_TOKEN_SENT;
	movw	%ax, 38(%rbx)	# tmp317, it_93->it_flags
# proto_parser.c:1607:             ITEM_set_cas(it, of.has_cas_in ? of.cas_id_in : get_cas_id());
	je	.L746	#,
# proto_parser.c:1607:             ITEM_set_cas(it, of.has_cas_in ? of.cas_id_in : get_cas_id());
	testb	$4, %dl	#, _53
	je	.L747	#,
# proto_parser.c:1607:             ITEM_set_cas(it, of.has_cas_in ? of.cas_id_in : get_cas_id());
	movq	-344(%rbp), %rax	# of.cas_id_in, iftmp.82_102
.L748:
# proto_parser.c:1607:             ITEM_set_cas(it, of.has_cas_in ? of.cas_id_in : get_cas_id());
	movq	%rax, 48(%rbx)	# iftmp.82_102, it_93->data[0].cas
.L746:
# proto_parser.c:1608:             if (of.no_reply)
	andl	$1, %edx	#, _53
	je	.L754	#,
.L796:
# proto_parser.c:1623:                 resp->skip = true;
	movb	$1, 118(%r13)	#, resp_126(D)->skip
.L754:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movw	$17480, 164(%r13)	#, MEM <char[1:2]> [(void *)resp_126(D) + 164B]
.L743:
# proto_parser.c:1637:         do_item_remove(it);
	movq	%rbx, %rdi	# it,
	call	do_item_remove@PLT	#
.L755:
# proto_parser.c:1640:     item_unlock(hv);
	movl	-396(%rbp), %edi	# hv,
	call	item_unlock@PLT	#
# proto_parser.c:1641:     resp->wbytes = p - resp->wbuf;
	leaq	164(%r13), %rsi	#, _84
	movq	%r15, %r10	# p, p
# proto_parser.c:1644:     resp_add_iov(resp, resp->wbuf, resp->wbytes);
	movq	%r13, %rdi	# resp,
# proto_parser.c:1641:     resp->wbytes = p - resp->wbuf;
	subq	%rsi, %r10	# _84, p
# proto_parser.c:1641:     resp->wbytes = p - resp->wbuf;
	movl	%r10d, 16(%r13)	# _85, resp_126(D)->wbytes
# proto_parser.c:1642:     memcpy(resp->wbuf + resp->wbytes, "\r\n", 2);
	movslq	%r10d, %r10	# _85, _87
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movw	$2573, (%rsi,%r10)	#, MEM <char[1:2]> [(void *)_88]
# proto_parser.c:1643:     resp->wbytes += 2;
	movl	16(%r13), %eax	# resp_126(D)->wbytes, tmp405
	leal	2(%rax), %edx	#, _90
	movl	%edx, 16(%r13)	# _90, resp_126(D)->wbytes
# proto_parser.c:1644:     resp_add_iov(resp, resp->wbuf, resp->wbytes);
	call	resp_add_iov@PLT	#
# proto_parser.c:1646:     return;
	jmp	.L715	#
	.p2align 4
	.p2align 3
.L732:
# proto_parser.c:1559:                 META_KEY(p, key, nkey, of.key_binary);
	movq	-408(%rbp), %rdi	# %sfp,
	movl	$512, %ecx	#,
	movq	%r13, %rdx	# p,
	movq	%r12, %rsi	# nkey,
	call	base64_encode@PLT	#
# proto_parser.c:1559:                 META_KEY(p, key, nkey, of.key_binary);
	leaq	0(%r13,%rax), %rdx	#, p
	movzwl	.LC63(%rip), %eax	#, tmp393
	addq	$2, %rdx	#, p
	movw	%ax, -2(%rdx)	# tmp393, MEM <vector(2) char> [(char *)p_180]
	movzbl	16(%r14), %ecx	# pr_128(D)->tok.ntokens, _20
	jmp	.L722	#
	.p2align 4
	.p2align 3
.L726:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movq	(%rcx), %rsi	#* _16, tmp269
	addq	$9, %rdx	#, tmp271
	movq	%rsi, -8(%rdx)	# tmp269,
	movq	-8(%rcx,%rax), %rsi	#, tmp270
	andq	$-8, %rdx	#, tmp271
	movq	%rsi, -8(%rdi,%rax)	# tmp270,
	movq	%rdi, %rsi	# p, tmp272
	subq	%rdx, %rsi	# tmp271, tmp272
	subq	%rsi, %rcx	# tmp272, _16
	addq	%rax, %rsi	# _12, _12
	andq	$-8, %rsi	#, _12
	cmpq	$8, %rsi	#, _12
	jb	.L727	#,
	andq	$-8, %rsi	#, tmp274
	xorl	%r9d, %r9d	# tmp273
.L730:
	movq	(%rcx,%r9), %r8	#, tmp275
	movq	%r8, (%rdx,%r9)	# tmp275,
	addq	$8, %r9	#, tmp273
	cmpq	%rsi, %r9	# tmp274, tmp273
	jb	.L730	#,
	jmp	.L727	#
.L802:
# proto_parser.c:1567:         if (of.has_cas && ITEM_get_cas(it) != of.req_cas_id) {
	xorl	%edx, %edx	# iftmp.79_100
# proto_parser.c:1567:         if (of.has_cas && ITEM_get_cas(it) != of.req_cas_id) {
	testb	$2, 38(%rbx)	#, it_134->it_flags
	je	.L736	#,
# proto_parser.c:1567:         if (of.has_cas && ITEM_get_cas(it) != of.req_cas_id) {
	movq	48(%rbx), %rdx	# it_134->data[0].cas, iftmp.79_100
.L736:
# proto_parser.c:1567:         if (of.has_cas && ITEM_get_cas(it) != of.req_cas_id) {
	cmpq	%rdx, -352(%rbp)	# iftmp.79_100, of.req_cas_id
	je	.L735	#,
# proto_parser.c:1568:             pthread_mutex_lock(&t->stats.mutex);
	movq	-416(%rbp), %r14	# %sfp, t
	leaq	360(%r14), %rdi	#,
	call	pthread_mutex_lock@PLT	#
# proto_parser.c:1569:             t->stats.delete_misses++;
	incq	448(%r14)	# t_124(D)->stats.delete_misses
# proto_parser.c:1570:             pthread_mutex_unlock(&t->stats.mutex);
	leaq	360(%r14), %rdi	#,
	call	pthread_mutex_unlock@PLT	#
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movw	$22597, 164(%r13)	#, MEM <char[1:2]> [(void *)resp_126(D) + 164B]
	jmp	.L743	#
.L797:
# proto_parser.c:410:     pout_string(resp, str);
	movq	-392(%rbp), %rsi	# errstr,
# proto_parser.c:409:     resp->skip = false;
	movb	$0, 118(%r13)	#, resp_126(D)->skip
# proto_parser.c:410:     pout_string(resp, str);
	movq	%r13, %rdi	# resp,
	call	pout_string	#
.L715:
# proto_parser.c:1654: }
	movq	-56(%rbp), %rax	# D.12913, tmp361
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp361
	jne	.L804	#,
	leaq	-48(%rbp), %rsp	#,
	popq	%rbx	#
	popq	%r10	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret	
.L744:
	.cfi_restore_state
# proto_parser.c:1613:             pthread_mutex_lock(&t->stats.mutex);
	movq	-416(%rbp), %r14	# %sfp, t
	leaq	360(%r14), %rdi	#,
	call	pthread_mutex_lock@PLT	#
# proto_parser.c:1614:             t->stats.slab_stats[ITEM_clsid(it)].delete_hits++;
	movzbl	40(%rbx), %eax	# it_93->slabs_clsid, _65
# proto_parser.c:1615:             pthread_mutex_unlock(&t->stats.mutex);
	leaq	360(%r14), %rdi	#,
	andl	$63, %eax	#, _104
	salq	$6, %rax	#, _98
# proto_parser.c:1614:             t->stats.slab_stats[ITEM_clsid(it)].delete_hits++;
	incq	696(%r14,%rax)	# MEM <uint64_t> [(struct LIBEVENT_THREAD *)_11 + 696B]
# proto_parser.c:1615:             pthread_mutex_unlock(&t->stats.mutex);
	call	pthread_mutex_unlock@PLT	#
# proto_parser.c:1616:             LOGGER_LOG(t->l, LOG_DELETIONS, LOGGER_DELETIONS, it, LOG_TYPE_META_DELETE);
	movq	7000(%r14), %rdi	# t_124(D)->l, myl
	testq	%rdi, %rdi	# myl
	je	.L805	#,
.L751:
# proto_parser.c:1616:             LOGGER_LOG(t->l, LOG_DELETIONS, LOGGER_DELETIONS, it, LOG_TYPE_META_DELETE);
	testb	$32, 85(%rdi)	#, myl_99->eflags
	jne	.L806	#,
.L752:
# proto_parser.c:1618:             if (!of.remove_val) {
	movzbl	-383(%rbp), %eax	# of, _72
# proto_parser.c:1618:             if (!of.remove_val) {
	testb	$32, %al	#, _72
	je	.L807	#,
.L753:
# proto_parser.c:1622:             if (of.no_reply)
	testb	$1, %al	#, _72
	je	.L754	#,
	jmp	.L796	#
.L758:
	movq	-432(%rbp), %r13	# %sfp, resp
	leaq	.LC52(%rip), %rsi	#, prephitmp_290
.L725:
# proto_parser.c:409:     resp->skip = false;
	movb	$0, 118(%r13)	#, resp_126(D)->skip
# proto_parser.c:410:     pout_string(resp, str);
	movq	%r13, %rdi	# resp,
	call	pout_string	#
	jmp	.L715	#
.L800:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movl	(%rcx), %edx	#* _16, tmp264
	movl	%edx, (%rdi)	# tmp264,* p
	movl	-4(%rcx,%rax), %edx	#, tmp265
	movl	%edx, -4(%rdi,%rax)	# tmp265,
	jmp	.L727	#
.L742:
# proto_parser.c:1586:                     do_item_remove(new_it);
	movq	%r12, %rdi	# new_it,
	call	do_item_remove@PLT	#
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movw	$21326, 164(%r13)	#, MEM <char[1:2]> [(void *)resp_126(D) + 164B]
	jmp	.L743	#
.L801:
	movzwl	-2(%rcx,%rax), %edx	#, tmp268
	movw	%dx, -2(%rdi,%rax)	# tmp268,
	jmp	.L727	#
.L734:
# proto_parser.c:1628:         pthread_mutex_lock(&t->stats.mutex);
	movq	-416(%rbp), %r14	# %sfp, t
	leaq	360(%r14), %rdi	#,
	call	pthread_mutex_lock@PLT	#
# proto_parser.c:1629:         t->stats.delete_misses++;
	incq	448(%r14)	# t_124(D)->stats.delete_misses
# proto_parser.c:1630:         pthread_mutex_unlock(&t->stats.mutex);
	leaq	360(%r14), %rdi	#,
	call	pthread_mutex_unlock@PLT	#
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movw	$17998, 164(%r13)	#, MEM <char[1:2]> [(void *)resp_126(D) + 164B]
	jmp	.L755	#
.L803:
# proto_parser.c:1581:                 if (do_store_item(new_it, NREAD_SET, t, hv, NULL, NULL,
	movq	48(%rbx), %rax	# it_134->data[0].cas, iftmp.80_101
	jmp	.L741	#
.L739:
# proto_parser.c:1650:         do_item_remove(it);
	movq	%rbx, %rdi	# it,
	call	do_item_remove@PLT	#
# proto_parser.c:1651:         item_unlock(hv);
	movl	-396(%rbp), %edi	# hv,
	call	item_unlock@PLT	#
	leaq	.LC46(%rip), %rsi	#, prephitmp_290
	jmp	.L725	#
.L807:
# proto_parser.c:1619:                 do_item_unlink(it, hv);
	movl	-396(%rbp), %esi	# hv,
	movq	%rbx, %rdi	# it,
	call	do_item_unlink@PLT	#
# proto_parser.c:1620:                 STORAGE_delete(t->storage, it);
	movq	-416(%rbp), %rax	# %sfp, t
	movq	%rbx, %rsi	# it,
	movq	6992(%rax), %rdi	# t_124(D)->storage, t_124(D)->storage
	call	storage_delete@PLT	#
# proto_parser.c:1622:             if (of.no_reply)
	movzbl	-383(%rbp), %eax	# of, _72
	jmp	.L753	#
.L806:
# proto_parser.c:1616:             LOGGER_LOG(t->l, LOG_DELETIONS, LOGGER_DELETIONS, it, LOG_TYPE_META_DELETE);
	movl	$2, %ecx	#,
	movq	%rbx, %rdx	# it,
	movl	$10, %esi	#,
	xorl	%eax, %eax	#
	call	logger_log@PLT	#
	jmp	.L752	#
.L747:
# proto_parser.c:1607:             ITEM_set_cas(it, of.has_cas_in ? of.cas_id_in : get_cas_id());
	call	get_cas_id@PLT	#
# proto_parser.c:1608:             if (of.no_reply)
	movzbl	-383(%rbp), %edx	# of, _53
	jmp	.L748	#
.L805:
# proto_parser.c:1616:             LOGGER_LOG(t->l, LOG_DELETIONS, LOGGER_DELETIONS, it, LOG_TYPE_META_DELETE);
	movl	logger_key(%rip), %edi	# logger_key,
	call	pthread_getspecific@PLT	#
	movq	%rax, %rdi	# myl, myl
	jmp	.L751	#
.L804:
# proto_parser.c:1654: }
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.type	process_mdelete_cmd.cold, @function
process_mdelete_cmd.cold:
.LFSB98:
.L793:
	.cfi_def_cfa 6, 16
	.cfi_offset 3, -64
	.cfi_offset 6, -16
	.cfi_offset 10, -56
	.cfi_offset 12, -48
	.cfi_offset 13, -40
	.cfi_offset 14, -32
	.cfi_offset 15, -24
# proto_parser.c:1529:     assert(t != NULL);
	leaq	__PRETTY_FUNCTION__.1(%rip), %rcx	#,
	movl	$1529, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC43(%rip), %rdi	#,
	vzeroupper
	call	__assert_fail@PLT	#
	.cfi_endproc
.LFE98:
	.text
	.size	process_mdelete_cmd, .-process_mdelete_cmd
	.section	.text.unlikely
	.size	process_mdelete_cmd.cold, .-process_mdelete_cmd.cold
.LCOLDE71:
	.text
.LHOTE71:
	.section	.rodata.str1.8
	.align 8
.LC72:
	.string	"CLIENT_ERROR invalid mode for ma M token"
	.align 8
.LC73:
	.string	"CLIENT_ERROR invalid or duplicate flag"
	.align 8
.LC74:
	.string	"SERVER_ERROR Out of memory allocating new item"
	.section	.text.unlikely
.LCOLDB75:
	.text
.LHOTB75:
	.p2align 4
	.globl	process_marithmetic_cmd
	.type	process_marithmetic_cmd, @function
process_marithmetic_cmd:
.LFB99:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
# proto_parser.c:1659:     struct _meta_flags of = {0}; // option bitflags.
	vpxor	%xmm0, %xmm0, %xmm0	# tmp293
# proto_parser.c:1656: void process_marithmetic_cmd(LIBEVENT_THREAD *t, mcp_parser_t *pr, mc_resp *resp) {
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%r10	#
	pushq	%rbx	#
	subq	$464, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 10, -56
	.cfi_offset 3, -64
# proto_parser.c:1656: void process_marithmetic_cmd(LIBEVENT_THREAD *t, mcp_parser_t *pr, mc_resp *resp) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp292
	movq	%rax, -56(%rbp)	# tmp292, D.12987
	xorl	%eax, %eax	# tmp292
# proto_parser.c:1660:     char *errstr = "CLIENT_ERROR bad command line format";
	leaq	.LC6(%rip), %rax	#, tmp657
# proto_parser.c:1659:     struct _meta_flags of = {0}; // option bitflags.
	vmovdqu	%ymm0, -416(%rbp)	# tmp293, of
	vmovdqu	%ymm0, -384(%rbp)	# tmp293, of
# proto_parser.c:1660:     char *errstr = "CLIENT_ERROR bad command line format";
	movq	%rax, -440(%rbp)	# tmp657, errstr
# proto_parser.c:1661:     assert(t != NULL);
	testq	%rdi, %rdi	# t
	je	.L940	#,
	movq	%rsi, %r14	# pr, pr
	movq	%rdi, %r13	# t, t
	movq	%rdx, %rbx	# resp, resp
# proto_parser.c:1667:     of.delta = 1;
	movq	$1, -368(%rbp)	#, of.delta
# proto_parser.c:1672:     item *it = NULL; // item returned by do_add_delta.
	movq	$0, -432(%rbp)	#, it
# proto_parser.c:1676:     if (_meta_flag_preparse(pr, 2, &of, binkey, &errstr) != 0) {
	leaq	-320(%rbp), %rcx	#, tmp299
	leaq	-416(%rbp), %rdx	#, tmp300
	leaq	-440(%rbp), %r8	#,
	movl	$2, %esi	#,
	movq	%r14, %rdi	# pr,
	vzeroupper
	call	_meta_flag_preparse.constprop.0	#
	movl	%eax, %r15d	# _525, _525
# proto_parser.c:1676:     if (_meta_flag_preparse(pr, 2, &of, binkey, &errstr) != 0) {
	testl	%eax, %eax	# _525
	jne	.L948	#,
# proto_parser.c:1686:     switch (of.mode) {
	movzbl	-414(%rbp), %eax	# of.mode, _3
# proto_parser.c:1686:     switch (of.mode) {
	cmpb	$45, %al	#, _3
	je	.L903	#,
	jle	.L949	#,
	cmpb	$68, %al	#, _3
	je	.L903	#,
	cmpb	$73, %al	#, _3
	je	.L904	#,
.L814:
# proto_parser.c:1867:     if (it != NULL)
	movq	-432(%rbp), %rdi	# it, it.113_82
# proto_parser.c:1698:             errstr = "CLIENT_ERROR invalid mode for ma M token";
	leaq	.LC72(%rip), %rax	#, tmp658
	movq	%rax, -440(%rbp)	# tmp658, errstr
# proto_parser.c:1867:     if (it != NULL)
	movq	%rax, %rsi	# tmp658, pretmp_532
	testq	%rdi, %rdi	# it.113_82
	je	.L816	#,
# proto_parser.c:1868:         do_item_remove(it);
	call	do_item_remove@PLT	#
# proto_parser.c:1871:     pout_errstring(resp, errstr);
	movq	-440(%rbp), %rsi	# errstr, pretmp_532
.L816:
# proto_parser.c:409:     resp->skip = false;
	movb	$0, 118(%rbx)	#, resp_166(D)->skip
# proto_parser.c:410:     pout_string(resp, str);
	movq	%rbx, %rdi	# resp,
	call	pout_string	#
.L808:
# proto_parser.c:1872: }
	movq	-56(%rbp), %rax	# D.12987, tmp591
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp591
	jne	.L950	#,
	leaq	-48(%rbp), %rsp	#,
	popq	%rbx	#
	popq	%r10	#
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret	
	.p2align 4
	.p2align 3
.L949:
	.cfi_restore_state
# proto_parser.c:1686:     switch (of.mode) {
	testb	%al, %al	# _3
	je	.L904	#,
	cmpb	$43, %al	#, _3
	jne	.L814	#,
.L904:
	movl	$1, -480(%rbp)	#, %sfp
# proto_parser.c:1669:     bool incr = true; // default mode is to increment.
	movb	$1, -496(%rbp)	#, %sfp
.L812:
# proto_parser.c:1663:     char *p = resp->wbuf;
	leaq	164(%rbx), %rax	#, p
# proto_parser.c:1683:     size_t nkey = of.key_len;
	movzbl	-413(%rbp), %r12d	# of.key_len, nkey
# proto_parser.c:1663:     char *p = resp->wbuf;
	movq	%rax, -472(%rbp)	# p, %sfp
# proto_parser.c:1682:     const char *key = of.key;
	movq	-392(%rbp), %rax	# of.key, key
# proto_parser.c:1705:     hv = hash(key, nkey);
	movq	%r12, %rsi	# nkey,
	movq	%rax, %rdi	# key,
	movq	%rax, -456(%rbp)	# key, %sfp
	call	*hash(%rip)	# hash
# proto_parser.c:1706:     item_lock(hv);
	movl	%eax, %edi	# hv,
	movl	%eax, -460(%rbp)	# hv, %sfp
	call	item_lock@PLT	#
# proto_parser.c:1714:     switch(do_add_delta(t, key, nkey, incr, of.delta, tmpbuf, &of.req_cas_id, hv, &it)) {
	subq	$8, %rsp	#,
	leaq	-352(%rbp), %r9	#, tmp563
	leaq	-432(%rbp), %rax	#, tmp306
# proto_parser.c:1713:     uint64_t cas = 0;
	movq	$0, -424(%rbp)	#, cas
# proto_parser.c:1714:     switch(do_add_delta(t, key, nkey, incr, of.delta, tmpbuf, &of.req_cas_id, hv, &it)) {
	movq	%r9, -488(%rbp)	# tmp563, %sfp
	pushq	%rax	# tmp306
	movl	-460(%rbp), %eax	# %sfp, hv
	movq	%r12, %rdx	# nkey,
	movq	%r13, %rdi	# t,
	movq	-368(%rbp), %r8	# of.delta,
	movl	-480(%rbp), %ecx	# %sfp,
	movq	-456(%rbp), %rsi	# %sfp,
	pushq	%rax	# hv
	leaq	-384(%rbp), %rax	#, tmp308
	pushq	%rax	# tmp308
	call	do_add_delta@PLT	#
# proto_parser.c:1714:     switch(do_add_delta(t, key, nkey, incr, of.delta, tmpbuf, &of.req_cas_id, hv, &it)) {
	addq	$32, %rsp	#,
	cmpl	$4, %eax	#, _9
	ja	.L946	#,
	leaq	.L819(%rip), %rdx	#, tmp310
	movl	%eax, %eax	# _9, _9
	movslq	(%rdx,%rax,4), %rax	#, tmp312
	addq	%rdx, %rax	# tmp310, tmp313
	notrack jmp	*%rax	# tmp313
	.section	.rodata
	.align 4
	.align 4
.L819:
	.long	.L823-.L819
	.long	.L822-.L819
	.long	.L821-.L819
	.long	.L820-.L819
	.long	.L818-.L819
	.text
	.p2align 4
	.p2align 3
.L903:
# proto_parser.c:1686:     switch (of.mode) {
	movl	$0, -480(%rbp)	#, %sfp
	movb	$0, -496(%rbp)	#, %sfp
	jmp	.L812	#
	.p2align 4
	.p2align 3
.L948:
# proto_parser.c:409:     resp->skip = false;
	movb	$0, 118(%rbx)	#, resp_166(D)->skip
# proto_parser.c:410:     pout_string(resp, str);
	leaq	.LC73(%rip), %rsi	#,
	movq	%rbx, %rdi	# resp,
	call	pout_string	#
# proto_parser.c:1678:         return;
	jmp	.L808	#
	.p2align 4
	.p2align 3
.L820:
# proto_parser.c:1735:         if (of.vivify) {
	testb	$8, -416(%rbp)	#, of
	je	.L835	#,
# proto_parser.c:1736:             itoa_u64(of.initial, tmpbuf);
	movq	-488(%rbp), %rsi	# %sfp,
	movq	-360(%rbp), %rdi	# of.initial,
	call	itoa_u64@PLT	#
# proto_parser.c:1737:             int vlen = strlen(tmpbuf);
	movq	-488(%rbp), %rdi	# %sfp,
	call	strlen@PLT	#
# proto_parser.c:1739:             it = item_alloc(key, nkey, 0, 0, vlen+2);
	movq	-456(%rbp), %rdi	# %sfp,
	xorl	%ecx, %ecx	#
	xorl	%edx, %edx	#
	leal	2(%rax), %r8d	#,
	movq	%r12, %rsi	# nkey,
	movq	%rax, -480(%rbp)	#, %sfp
	call	item_alloc@PLT	#
# proto_parser.c:1739:             it = item_alloc(key, nkey, 0, 0, vlen+2);
	movq	%rax, -432(%rbp)	# _23, it
# proto_parser.c:1740:             if (it != NULL) {
	testq	%rax, %rax	# _23
	je	.L836	#,
# proto_parser.c:1741:                 memcpy(ITEM_data(it), tmpbuf, vlen);
	movzwl	38(%rax), %ecx	# _23->it_flags, _28
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movq	-480(%rbp), %r9	# %sfp, tmp580
# proto_parser.c:1741:                 memcpy(ITEM_data(it), tmpbuf, vlen);
	movl	%ecx, %edx	# _28, _30
	leaq	0(,%rcx,4), %rcx	#, _34
	shrl	$6, %edx	#, _30
	andl	$8, %ecx	#, _35
	andl	$4, %edx	#, _31
	addq	%rcx, %rdx	# _35, _212
	movzbl	41(%rax), %ecx	# _23->nkey, _27
	leaq	1(%rdx,%rcx), %rdx	#, _37
# proto_parser.c:1741:                 memcpy(ITEM_data(it), tmpbuf, vlen);
	leaq	48(%rax,%rdx), %rax	#, _38
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	cmpl	$8, %r9d	#, tmp580
	jnb	.L837	#,
	testb	$4, %r9b	#, tmp580
	jne	.L951	#,
	testl	%r9d, %r9d	# tmp580
	je	.L838	#,
	movzbl	-352(%rbp), %edx	#, tmp356
	movb	%dl, (%rax)	# tmp356,* _38
	testb	$2, %r9b	#, tmp580
	jne	.L952	#,
.L838:
# proto_parser.c:1742:                 memcpy(ITEM_data(it) + vlen, "\r\n", 2);
	movq	-432(%rbp), %rdx	# it, it.99_39
	movzwl	38(%rdx), %ecx	# it.99_39->it_flags, _43
	movl	%ecx, %eax	# _43, _45
	leaq	0(,%rcx,4), %rcx	#, _49
	shrl	$6, %eax	#, _45
	andl	$8, %ecx	#, _50
	andl	$4, %eax	#, _46
# proto_parser.c:1742:                 memcpy(ITEM_data(it) + vlen, "\r\n", 2);
	addq	%rcx, %rax	# _50, _267
# proto_parser.c:1742:                 memcpy(ITEM_data(it) + vlen, "\r\n", 2);
	movzbl	41(%rdx), %ecx	# it.99_39->nkey, _42
# proto_parser.c:1742:                 memcpy(ITEM_data(it) + vlen, "\r\n", 2);
	leaq	1(%rcx,%r9), %rcx	#, _273
	addq	%rcx, %rax	# _273, _53
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movw	$2573, 48(%rdx,%rax)	#, MEM <char[1:2]> [(void *)_54]
# proto_parser.c:1743:                 if (do_store_item(it, NREAD_ADD, t, hv, NULL, &cas,
	testb	$4, -415(%rbp)	#, of
	je	.L843	#,
# proto_parser.c:1743:                 if (do_store_item(it, NREAD_ADD, t, hv, NULL, &cas,
	movq	-376(%rbp), %rax	# of.cas_id_in, iftmp.103_143
.L844:
# proto_parser.c:1743:                 if (do_store_item(it, NREAD_ADD, t, hv, NULL, &cas,
	movl	-460(%rbp), %ecx	# %sfp,
	movq	-432(%rbp), %rdi	# it,
	pushq	$0	#
	movq	%r13, %rdx	# t,
	pushq	%rax	# iftmp.103_143
	leaq	-424(%rbp), %r9	#,
	xorl	%r8d, %r8d	#
	movl	$1, %esi	#,
	call	do_store_item@PLT	#
# proto_parser.c:1743:                 if (do_store_item(it, NREAD_ADD, t, hv, NULL, &cas,
	popq	%rdx	#
	popq	%rcx	#
	testl	%eax, %eax	# _58
	je	.L845	#,
# proto_parser.c:1746:                     if (of.no_reply)
	testb	$1, -415(%rbp)	#, of
	je	.L944	#,
# proto_parser.c:1747:                         resp->skip = true;
	movb	$1, 118(%rbx)	#, resp_166(D)->skip
.L944:
# proto_parser.c:1779:     if (it) {
	movq	-432(%rbp), %rax	# it, pretmp_450
	xorl	%r13d, %r13d	# _528
# proto_parser.c:1745:                     item_created = true;
	movb	$1, -480(%rbp)	#, %sfp
# proto_parser.c:1663:     char *p = resp->wbuf;
	movq	-472(%rbp), %rdx	# %sfp, p
	jmp	.L824	#
	.p2align 4
	.p2align 3
.L821:
# proto_parser.c:1867:     if (it != NULL)
	movq	-432(%rbp), %rdi	# it, it.113_348
# proto_parser.c:1731:         errstr = "SERVER_ERROR out of memory";
	leaq	.LC46(%rip), %rax	#, tmp664
	movq	%rax, -440(%rbp)	# tmp664, errstr
# proto_parser.c:1867:     if (it != NULL)
	testq	%rdi, %rdi	# it.113_348
	je	.L832	#,
.L833:
# proto_parser.c:1868:         do_item_remove(it);
	call	do_item_remove@PLT	#
.L832:
# proto_parser.c:1870:         item_unlock(hv);
	movl	-460(%rbp), %edi	# %sfp,
	call	item_unlock@PLT	#
# proto_parser.c:1871:     pout_errstring(resp, errstr);
	movq	-440(%rbp), %rsi	# errstr, pretmp_532
	jmp	.L816	#
	.p2align 4
	.p2align 3
.L822:
# proto_parser.c:1867:     if (it != NULL)
	movq	-432(%rbp), %rdi	# it, it.113_342
# proto_parser.c:1727:         errstr = "CLIENT_ERROR cannot increment or decrement non-numeric value";
	leaq	.LC45(%rip), %rax	#, tmp663
	movq	%rax, -440(%rbp)	# tmp663, errstr
# proto_parser.c:1867:     if (it != NULL)
	testq	%rdi, %rdi	# it.113_342
	jne	.L833	#,
	jmp	.L832	#
	.p2align 4
	.p2align 3
.L823:
# proto_parser.c:1716:         if (of.no_reply)
	movzbl	-415(%rbp), %eax	# of, _10
# proto_parser.c:1716:         if (of.no_reply)
	testb	$1, %al	#, _10
	je	.L825	#,
# proto_parser.c:1717:             resp->skip = true;
	movb	$1, 118(%rbx)	#, resp_166(D)->skip
.L825:
# proto_parser.c:1722:             ITEM_set_cas(it, of.cas_id_in);
	movq	-432(%rbp), %rdx	# it, pretmp_534
	movzwl	38(%rdx), %ecx	# pretmp_534->it_flags, pretmp_534->it_flags
# proto_parser.c:1719:         if (of.has_cas_in) {
	testb	$4, %al	#, _10
	jne	.L953	#,
# proto_parser.c:1724:         cas = ITEM_get_cas(it);
	andl	$2, %ecx	#, pretmp_534->it_flags
	jne	.L829	#,
.L943:
# proto_parser.c:1724:         cas = ITEM_get_cas(it);
	movq	$0, -424(%rbp)	#, cas
.L828:
# proto_parser.c:1663:     char *p = resp->wbuf;
	movq	-472(%rbp), %rdx	# %sfp, p
# proto_parser.c:1712:     bool item_created = false;
	movb	$0, -480(%rbp)	#, %sfp
	jmp	.L830	#
	.p2align 4
	.p2align 3
.L818:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movw	$22597, 164(%rbx)	#, MEM <char[1:2]> [(void *)p_167]
.L945:
# proto_parser.c:1722:             ITEM_set_cas(it, of.cas_id_in);
	movq	-432(%rbp), %rax	# it, pretmp_450
# proto_parser.c:1772:         p += 2;
	leaq	166(%rbx), %rdx	#, p
# proto_parser.c:1773:         break;
	movl	$2, %r13d	#, _528
	movl	$2, %r15d	#, _525
# proto_parser.c:1712:     bool item_created = false;
	movb	$0, -480(%rbp)	#, %sfp
.L824:
# proto_parser.c:1779:     if (it) {
	testq	%rax, %rax	# pretmp_450
	je	.L849	#,
.L830:
# proto_parser.c:1780:         size_t vlen = strlen(tmpbuf);
	movq	-488(%rbp), %rdi	# %sfp,
	movq	%rdx, -496(%rbp)	# p, %sfp
	call	strlen@PLT	#
# proto_parser.c:1781:         if (of.value) {
	testb	$64, -416(%rbp)	#, of
	movq	-496(%rbp), %rdx	# %sfp, p
# proto_parser.c:1780:         size_t vlen = strlen(tmpbuf);
	movq	%rax, -504(%rbp)	# tmp584, %sfp
# proto_parser.c:1781:         if (of.value) {
	je	.L850	#,
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movw	$16726, (%rdx)	#, MEM <char[1:3]> [(void *)p_259]
	movb	$32, 2(%rdx)	#, MEM <char[1:3]> [(void *)p_259]
# proto_parser.c:1783:             p = itoa_u32(vlen, p+3);
	leaq	3(%rdx), %rsi	#, _69
	movl	%eax, %edi	# tmp584, vlen
	call	itoa_u32@PLT	#
	movq	%rax, %r15	# p, p
.L851:
# proto_parser.c:1789:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	movzbl	82(%r14), %r8d	# pr_170(D)->keytoken,
# proto_parser.c:1789:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	movzbl	16(%r14), %esi	# pr_170(D)->tok.ntokens, _98
# proto_parser.c:1789:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	movq	%r8, %rax	#,
# proto_parser.c:1789:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	incl	%r8d	# i_223
# proto_parser.c:1789:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	cmpl	%esi, %r8d	# _98, i_223
	jge	.L852	#,
	movl	%r8d, %r13d	# i_223, ivtmp.410
# proto_parser.c:1798:                         *p = '-';
	movq	%r15, %rcx	# p, p
	movq	%rbx, -496(%rbp)	# resp, %sfp
	subq	%r13, %rax	# ivtmp.410, _514
	movq	%r13, %r15	# ivtmp.410, ivtmp.410
	movq	%r12, %r13	# nkey, nkey
	leaq	(%r14,%rax,2), %r12	#, _276
	.p2align 4
	.p2align 3
.L874:
# proto_parser.c:1790:             switch (pr->request[pr->tok.tokens[i]]) {
	movq	(%r14), %rax	# pr_170(D)->request, _73
# proto_parser.c:1790:             switch (pr->request[pr->tok.tokens[i]]) {
	movzwl	18(%r14,%r15,2), %edx	# MEM[(short unsigned int *)pr_170(D) + 18B + ivtmp.410_498 * 2], _75
# proto_parser.c:1790:             switch (pr->request[pr->tok.tokens[i]]) {
	movzbl	(%rax,%rdx), %edx	# *_76, *_76
	subl	$78, %edx	#, tmp420
	cmpb	$38, %dl	#, tmp420
	ja	.L861	#,
	leaq	.L855(%rip), %rdi	#, tmp423
	movzbl	%dl, %edx	# tmp420, tmp422
	movslq	(%rdi,%rdx,4), %rdx	#, tmp425
	addq	%rdi, %rdx	# tmp423, tmp426
	notrack jmp	*%rdx	# tmp426
	.section	.rodata
	.align 4
	.align 4
.L855:
	.long	.L860-.L855
	.long	.L859-.L855
	.long	.L861-.L855
	.long	.L861-.L855
	.long	.L861-.L855
	.long	.L861-.L855
	.long	.L858-.L855
	.long	.L861-.L855
	.long	.L861-.L855
	.long	.L861-.L855
	.long	.L861-.L855
	.long	.L861-.L855
	.long	.L861-.L855
	.long	.L861-.L855
	.long	.L861-.L855
	.long	.L861-.L855
	.long	.L861-.L855
	.long	.L861-.L855
	.long	.L861-.L855
	.long	.L861-.L855
	.long	.L861-.L855
	.long	.L857-.L855
	.long	.L861-.L855
	.long	.L861-.L855
	.long	.L861-.L855
	.long	.L861-.L855
	.long	.L861-.L855
	.long	.L861-.L855
	.long	.L861-.L855
	.long	.L856-.L855
	.long	.L861-.L855
	.long	.L861-.L855
	.long	.L861-.L855
	.long	.L861-.L855
	.long	.L861-.L855
	.long	.L861-.L855
	.long	.L861-.L855
	.long	.L861-.L855
	.long	.L854-.L855
	.text
	.p2align 4
	.p2align 3
.L857:
# proto_parser.c:1792:                     META_CHAR(p, 'c');
	movw	$25376, (%rcx)	#, MEM <vector(2) char> [(char *)p_282]
# proto_parser.c:1793:                     p = itoa_u64(cas, p);
	movq	-424(%rbp), %rdi	# cas,
# proto_parser.c:1792:                     META_CHAR(p, 'c');
	leaq	2(%rcx), %rsi	#, p
# proto_parser.c:1793:                     p = itoa_u64(cas, p);
	call	itoa_u64@PLT	#
	movzbl	16(%r14), %esi	# pr_170(D)->tok.ntokens, _98
	movq	%rax, %rcx	# p, p
	.p2align 4
	.p2align 3
.L861:
# proto_parser.c:1789:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	incq	%r15	# ivtmp.410
	cmpl	%r15d, %esi	# ivtmp.410, _98
	jg	.L874	#,
.L955:
	movq	-496(%rbp), %rbx	# %sfp, resp
	movq	%rcx, %r15	# p, p
.L852:
# proto_parser.c:1829:         if (of.value) {
	testb	$64, -416(%rbp)	#, of
	jne	.L954	#,
.L875:
# proto_parser.c:1837:         do_item_remove(it);
	movq	-432(%rbp), %rdi	# it,
	call	do_item_remove@PLT	#
# proto_parser.c:1861:     resp->wbytes = p - resp->wbuf;
	movq	%r15, %rcx	# p, p
	subq	-472(%rbp), %rcx	# %sfp, p
# proto_parser.c:1861:     resp->wbytes = p - resp->wbuf;
	movl	%ecx, %r15d	# _522, _525
# proto_parser.c:1862:     memcpy(resp->wbuf + resp->wbytes, "\r\n", 2);
	movslq	%ecx, %r13	# _522, _528
.L882:
# proto_parser.c:1859:     item_unlock(hv);
	movl	-460(%rbp), %edi	# %sfp,
	call	item_unlock@PLT	#
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movq	-472(%rbp), %rsi	# %sfp, p
# proto_parser.c:1861:     resp->wbytes = p - resp->wbuf;
	movl	%r15d, 16(%rbx)	# _525, resp_166(D)->wbytes
# proto_parser.c:1864:     resp_add_iov(resp, resp->wbuf, resp->wbytes);
	movq	%rbx, %rdi	# resp,
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movw	$2573, (%rsi,%r13)	#, MEM <char[1:2]> [(void *)_123]
# proto_parser.c:1863:     resp->wbytes += 2;
	movl	16(%rbx), %eax	# resp_166(D)->wbytes, tmp698
	leal	2(%rax), %edx	#, _125
	movl	%edx, 16(%rbx)	# _125, resp_166(D)->wbytes
# proto_parser.c:1864:     resp_add_iov(resp, resp->wbuf, resp->wbytes);
	call	resp_add_iov@PLT	#
# proto_parser.c:1865:     return;
	jmp	.L808	#
	.p2align 4
	.p2align 3
.L854:
# proto_parser.c:1796:                     META_CHAR(p, 't');
	movzwl	.LC56(%rip), %eax	#, tmp674
	movw	%ax, (%rcx)	# tmp674, MEM <vector(2) char> [(char *)p_282]
# proto_parser.c:1797:                     if (it->exptime == 0) {
	movq	-432(%rbp), %rax	# it, it
	movl	28(%rax), %edi	# it.107_80->exptime, _81
# proto_parser.c:1797:                     if (it->exptime == 0) {
	testl	%edi, %edi	# _81
	jne	.L862	#,
# proto_parser.c:1798:                         *p = '-';
	movzwl	.LC57(%rip), %eax	#, tmp675
# proto_parser.c:1789:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	incq	%r15	# ivtmp.410
# proto_parser.c:1800:                         p += 2;
	addq	$4, %rcx	#, p
# proto_parser.c:1798:                         *p = '-';
	movw	%ax, -2(%rcx)	# tmp675, MEM <vector(2) char> [(char *)p_282 + 2B]
	movzbl	16(%r14), %esi	# pr_170(D)->tok.ntokens, _98
# proto_parser.c:1789:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	cmpl	%r15d, %esi	# ivtmp.410, _98
	jg	.L874	#,
	jmp	.L955	#
	.p2align 4
	.p2align 3
.L856:
# proto_parser.c:1824:                     META_KEY(p, key, nkey, of.key_binary);
	movzwl	.LC62(%rip), %eax	#, tmp679
	leaq	2(%rcx), %rbx	#, p
	movw	%ax, (%rcx)	# tmp679, MEM <vector(2) char> [(char *)p_282]
	testb	$16, -415(%rbp)	#, of
	jne	.L873	#,
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movq	-456(%rbp), %rsi	# %sfp,
	movq	%r13, %rdx	# nkey,
	movq	%rbx, %rdi	# p,
# proto_parser.c:1789:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	incq	%r15	# ivtmp.410
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	call	memcpy@PLT	#
	movzbl	16(%r14), %esi	# pr_170(D)->tok.ntokens, _98
# proto_parser.c:1824:                     META_KEY(p, key, nkey, of.key_binary);
	leaq	(%rbx,%r13), %rcx	#, p
# proto_parser.c:1789:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	cmpl	%r15d, %esi	# ivtmp.410, _98
	jg	.L874	#,
	jmp	.L955	#
	.p2align 4
	.p2align 3
.L859:
# proto_parser.c:425:   const char *s = pr->request + pr->tok.tokens[token];
	movzwl	20(%r12,%r15,2), %edx	# MEM[(short unsigned int *)_276 + 20B + ivtmp.410_498 * 2], _292
# proto_parser.c:426:   const char *e = pr->request + pr->tok.tokens[token+1];
	movzwl	22(%r12,%r15,2), %esi	# MEM[(short unsigned int *)_276 + 22B + ivtmp.410_498 * 2], _296
# proto_parser.c:425:   const char *s = pr->request + pr->tok.tokens[token];
	addq	%rax, %rdx	# _73, s
# proto_parser.c:426:   const char *e = pr->request + pr->tok.tokens[token+1];
	addq	%rsi, %rax	# _296, e
# proto_parser.c:428:   while (*(e-1) == ' ') {
	cmpb	$32, -1(%rax)	#,
	jne	.L863	#,
	.p2align 4
	.p2align 4
	.p2align 3
.L864:
# proto_parser.c:429:       e--;
	decq	%rax	# e
# proto_parser.c:428:   while (*(e-1) == ' ') {
	cmpb	$32, -1(%rax)	#,
	je	.L864	#,
.L863:
# proto_parser.c:431:   return e - s;
	subq	%rdx, %rax	# s, _301
# proto_parser.c:1815:                     if (tlen > MFLAG_MAX_OPAQUE_LENGTH) {
	cmpl	$32, %eax	#, _301
	jg	.L956	#,
# proto_parser.c:1820:                     memcpy(p, &pr->request[pr->tok.tokens[i]], tlen);
	cltq
# proto_parser.c:1819:                     META_SPACE(p);
	movb	$32, (%rcx)	#, *p_282
	leaq	1(%rcx), %rdi	#, p
# proto_parser.c:1820:                     memcpy(p, &pr->request[pr->tok.tokens[i]], tlen);
	movzwl	18(%r14,%r15,2), %edx	# MEM[(short unsigned int *)pr_170(D) + 18B + ivtmp.410_498 * 2], _93
# proto_parser.c:1820:                     memcpy(p, &pr->request[pr->tok.tokens[i]], tlen);
	addq	(%r14), %rdx	# pr_170(D)->request, _94
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	cmpq	$8, %rax	#, _90
	jnb	.L867	#,
	testb	$4, %al	#, _90
	jne	.L957	#,
	testq	%rax, %rax	# _90
	je	.L868	#,
	movzbl	(%rdx), %esi	#* _94, tmp451
	movb	%sil, 1(%rcx)	# tmp451,
	testb	$2, %al	#, _90
	jne	.L958	#,
.L868:
	movzbl	16(%r14), %esi	# pr_170(D)->tok.ntokens, _98
# proto_parser.c:1789:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	incq	%r15	# ivtmp.410
# proto_parser.c:1821:                     p += tlen;
	leaq	(%rdi,%rax), %rcx	#, p
# proto_parser.c:1789:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	cmpl	%r15d, %esi	# ivtmp.410, _98
	jg	.L874	#,
	jmp	.L955	#
	.p2align 4
	.p2align 3
.L858:
# proto_parser.c:1806:                     it->exptime = of.exptime;
	movq	-432(%rbp), %rax	# it, it
	movl	-412(%rbp), %edx	# of.exptime, of.exptime
# proto_parser.c:1789:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	incq	%r15	# ivtmp.410
# proto_parser.c:1806:                     it->exptime = of.exptime;
	movl	%edx, 28(%rax)	# of.exptime, it.110_85->exptime
# proto_parser.c:1789:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	cmpl	%r15d, %esi	# ivtmp.410, _98
	jg	.L874	#,
	jmp	.L955	#
	.p2align 4
	.p2align 3
.L860:
# proto_parser.c:1809:                     if (item_created) {
	cmpb	$0, -480(%rbp)	#, %sfp
	je	.L861	#,
# proto_parser.c:1810:                         it->exptime = of.autoviv_exptime;
	movq	-432(%rbp), %rax	# it, it
	movl	-408(%rbp), %edx	# of.autoviv_exptime, of.autoviv_exptime
# proto_parser.c:1789:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	incq	%r15	# ivtmp.410
# proto_parser.c:1810:                         it->exptime = of.autoviv_exptime;
	movl	%edx, 28(%rax)	# of.autoviv_exptime, it.111_87->exptime
	movzbl	16(%r14), %esi	# pr_170(D)->tok.ntokens, _98
# proto_parser.c:1789:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	cmpl	%r15d, %esi	# ivtmp.410, _98
	jg	.L874	#,
	jmp	.L955	#
	.p2align 4
	.p2align 3
.L873:
# proto_parser.c:1824:                     META_KEY(p, key, nkey, of.key_binary);
	movq	-456(%rbp), %rdi	# %sfp,
	movl	$512, %ecx	#,
	movq	%r13, %rsi	# nkey,
	movq	%rbx, %rdx	# p,
# proto_parser.c:1789:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	incq	%r15	# ivtmp.410
# proto_parser.c:1824:                     META_KEY(p, key, nkey, of.key_binary);
	call	base64_encode@PLT	#
# proto_parser.c:1824:                     META_KEY(p, key, nkey, of.key_binary);
	leaq	(%rbx,%rax), %rcx	#, p
	movzwl	.LC63(%rip), %eax	#, tmp680
	addq	$2, %rcx	#, p
	movw	%ax, -2(%rcx)	# tmp680, MEM <vector(2) char> [(char *)p_242]
	movzbl	16(%r14), %esi	# pr_170(D)->tok.ntokens, _98
# proto_parser.c:1789:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	cmpl	%r15d, %esi	# ivtmp.410, _98
	jg	.L874	#,
	jmp	.L955	#
	.p2align 4
	.p2align 3
.L867:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movq	(%rdx), %rsi	#* _94, tmp454
	addq	$9, %rcx	#, tmp456
	movq	%rsi, -8(%rcx)	# tmp454,
	movq	-8(%rdx,%rax), %rsi	#, tmp455
	andq	$-8, %rcx	#, tmp456
	movq	%rsi, -8(%rdi,%rax)	# tmp455,
	movq	%rdi, %rsi	# p, tmp457
	subq	%rcx, %rsi	# tmp456, tmp457
	subq	%rsi, %rdx	# tmp457, _94
	addq	%rax, %rsi	# _90, _90
	andq	$-8, %rsi	#, _90
	cmpq	$8, %rsi	#, _90
	jb	.L868	#,
	andq	$-8, %rsi	#, tmp459
	xorl	%r9d, %r9d	# tmp458
.L871:
	movq	(%rdx,%r9), %r8	#, tmp460
	movq	%r8, (%rcx,%r9)	# tmp460,
	addq	$8, %r9	#, tmp458
	cmpq	%rsi, %r9	# tmp459, tmp458
	jb	.L871	#,
	jmp	.L868	#
	.p2align 4
	.p2align 3
.L862:
# proto_parser.c:1802:                         p = itoa_u32(it->exptime - current_time, p);
	movl	current_time(%rip), %eax	# current_time, current_time.109_83
# proto_parser.c:1796:                     META_CHAR(p, 't');
	leaq	2(%rcx), %rsi	#, p
# proto_parser.c:1789:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	incq	%r15	# ivtmp.410
# proto_parser.c:1802:                         p = itoa_u32(it->exptime - current_time, p);
	subl	%eax, %edi	# current_time.109_83, _84
# proto_parser.c:1802:                         p = itoa_u32(it->exptime - current_time, p);
	call	itoa_u32@PLT	#
	movzbl	16(%r14), %esi	# pr_170(D)->tok.ntokens, _98
	movq	%rax, %rcx	# p, p
# proto_parser.c:1789:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	cmpl	%r15d, %esi	# ivtmp.410, _98
	jg	.L874	#,
	jmp	.L955	#
	.p2align 4
	.p2align 3
.L850:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movw	$17480, (%rdx)	#, MEM <char[1:2]> [(void *)p_259]
# proto_parser.c:1786:             p += 2;
	leaq	2(%rdx), %r15	#, p
	jmp	.L851	#
	.p2align 4
	.p2align 3
.L849:
# proto_parser.c:1840:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	movzbl	82(%r14), %r8d	# pr_170(D)->keytoken,
# proto_parser.c:1840:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	movzbl	16(%r14), %esi	# pr_170(D)->tok.ntokens, _119
# proto_parser.c:1840:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	movq	%r8, %rax	#,
# proto_parser.c:1840:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	incl	%r8d	# i_201
# proto_parser.c:1840:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	cmpl	%esi, %r8d	# _119, i_201
	jge	.L882	#,
	movl	%r8d, %r15d	# i_201, ivtmp.426
# proto_parser.c:1853:                     META_KEY(p, key, nkey, of.key_binary);
	movq	%rbx, -480(%rbp)	# resp, %sfp
	subq	%r15, %rax	# ivtmp.426, _481
	leaq	(%r14,%rax,2), %r13	#, _469
	jmp	.L897	#
	.p2align 4
	.p2align 3
.L960:
# proto_parser.c:1841:             switch (pr->request[pr->tok.tokens[i]]) {
	cmpb	$107, %cl	#, _108
	jne	.L885	#,
# proto_parser.c:1853:                     META_KEY(p, key, nkey, of.key_binary);
	movzwl	.LC62(%rip), %eax	#, tmp694
	leaq	2(%rdx), %rbx	#, p
	movw	%ax, (%rdx)	# tmp694, MEM <vector(2) char> [(char *)p_284]
	testb	$16, -415(%rbp)	#, of
	jne	.L896	#,
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movq	-456(%rbp), %rsi	# %sfp,
	movq	%r12, %rdx	# nkey,
	movq	%rbx, %rdi	# p,
	call	memcpy@PLT	#
	movzbl	16(%r14), %esi	# pr_170(D)->tok.ntokens, _119
# proto_parser.c:1853:                     META_KEY(p, key, nkey, of.key_binary);
	leaq	(%rbx,%r12), %rdx	#, p
	.p2align 4
	.p2align 3
.L885:
# proto_parser.c:1840:         for (i = pr->keytoken+1; i < pr->tok.ntokens; i++) {
	incq	%r15	# ivtmp.426
	cmpl	%r15d, %esi	# ivtmp.426, _119
	jle	.L959	#,
.L897:
# proto_parser.c:1841:             switch (pr->request[pr->tok.tokens[i]]) {
	movq	(%r14), %rax	# pr_170(D)->request, _104
# proto_parser.c:1841:             switch (pr->request[pr->tok.tokens[i]]) {
	movzwl	18(%r14,%r15,2), %ecx	# MEM[(short unsigned int *)pr_170(D) + 18B + ivtmp.426_234 * 2], _106
# proto_parser.c:1841:             switch (pr->request[pr->tok.tokens[i]]) {
	movzbl	(%rax,%rcx), %ecx	# *_107, _108
# proto_parser.c:1841:             switch (pr->request[pr->tok.tokens[i]]) {
	cmpb	$79, %cl	#, _108
	jne	.L960	#,
# proto_parser.c:425:   const char *s = pr->request + pr->tok.tokens[token];
	movzwl	20(%r13,%r15,2), %ecx	# MEM[(short unsigned int *)_469 + 20B + ivtmp.426_234 * 2], _304
# proto_parser.c:426:   const char *e = pr->request + pr->tok.tokens[token+1];
	movzwl	22(%r13,%r15,2), %esi	# MEM[(short unsigned int *)_469 + 22B + ivtmp.426_234 * 2], _308
# proto_parser.c:425:   const char *s = pr->request + pr->tok.tokens[token];
	addq	%rax, %rcx	# _104, s
# proto_parser.c:426:   const char *e = pr->request + pr->tok.tokens[token+1];
	addq	%rsi, %rax	# _308, e
# proto_parser.c:428:   while (*(e-1) == ' ') {
	cmpb	$32, -1(%rax)	#,
	jne	.L886	#,
	.p2align 4
	.p2align 4
	.p2align 3
.L887:
# proto_parser.c:429:       e--;
	decq	%rax	# e
# proto_parser.c:428:   while (*(e-1) == ' ') {
	cmpb	$32, -1(%rax)	#,
	je	.L887	#,
.L886:
# proto_parser.c:431:   return e - s;
	subq	%rcx, %rax	# s, _313
# proto_parser.c:1844:                     if (tlen > MFLAG_MAX_OPAQUE_LENGTH) {
	cmpl	$32, %eax	#, _313
	jg	.L961	#,
# proto_parser.c:1849:                     memcpy(p, &pr->request[pr->tok.tokens[i]], tlen);
	cltq
# proto_parser.c:1848:                     META_SPACE(p);
	movb	$32, (%rdx)	#, *p_284
	leaq	1(%rdx), %rdi	#, p
# proto_parser.c:1849:                     memcpy(p, &pr->request[pr->tok.tokens[i]], tlen);
	movzwl	18(%r14,%r15,2), %ecx	# MEM[(short unsigned int *)pr_170(D) + 18B + ivtmp.426_234 * 2], _114
# proto_parser.c:1849:                     memcpy(p, &pr->request[pr->tok.tokens[i]], tlen);
	addq	(%r14), %rcx	# pr_170(D)->request, _115
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	cmpq	$8, %rax	#, _111
	jnb	.L890	#,
	testb	$4, %al	#, _111
	jne	.L962	#,
	testq	%rax, %rax	# _111
	je	.L891	#,
	movzbl	(%rcx), %esi	#* _115, tmp538
	movb	%sil, 1(%rdx)	# tmp538,
	testb	$2, %al	#, _111
	jne	.L963	#,
.L891:
	movzbl	16(%r14), %esi	# pr_170(D)->tok.ntokens, _119
# proto_parser.c:1850:                     p += tlen;
	leaq	(%rdi,%rax), %rdx	#, p
# proto_parser.c:1851:                     break;
	jmp	.L885	#
	.p2align 4
	.p2align 3
.L896:
# proto_parser.c:1853:                     META_KEY(p, key, nkey, of.key_binary);
	movq	-456(%rbp), %rdi	# %sfp,
	movq	%rbx, %rdx	# p,
	movq	%r12, %rsi	# nkey,
	movl	$512, %ecx	#,
	call	base64_encode@PLT	#
# proto_parser.c:1853:                     META_KEY(p, key, nkey, of.key_binary);
	leaq	(%rbx,%rax), %rdx	#, p
	movzwl	.LC63(%rip), %eax	#, tmp695
	addq	$2, %rdx	#, p
	movw	%ax, -2(%rdx)	# tmp695, MEM <vector(2) char> [(char *)p_207]
	movzbl	16(%r14), %esi	# pr_170(D)->tok.ntokens, _119
	jmp	.L885	#
	.p2align 4
	.p2align 3
.L890:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movq	(%rcx), %rsi	#* _115, tmp541
	addq	$9, %rdx	#, tmp543
	movq	%rsi, -8(%rdx)	# tmp541,
	movq	-8(%rcx,%rax), %rsi	#, tmp542
	andq	$-8, %rdx	#, tmp543
	movq	%rsi, -8(%rdi,%rax)	# tmp542,
	movq	%rdi, %rsi	# p, tmp544
	subq	%rdx, %rsi	# tmp543, tmp544
	subq	%rsi, %rcx	# tmp544, _115
	addq	%rax, %rsi	# _111, _111
	andq	$-8, %rsi	#, _111
	cmpq	$8, %rsi	#, _111
	jb	.L891	#,
	andq	$-8, %rsi	#, tmp546
	xorl	%r9d, %r9d	# tmp545
.L894:
	movq	(%rcx,%r9), %r8	#, tmp547
	movq	%r8, (%rdx,%r9)	# tmp547,
	addq	$8, %r9	#, tmp545
	cmpq	%rsi, %r9	# tmp546, tmp545
	jb	.L894	#,
	jmp	.L891	#
.L845:
	movw	$21326, 164(%rbx)	#, MEM <char[1:2]> [(void *)p_167]
.L946:
# proto_parser.c:1779:     if (it) {
	movq	-432(%rbp), %rax	# it, pretmp_450
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	xorl	%r13d, %r13d	# _528
# proto_parser.c:1712:     bool item_created = false;
	movb	$0, -480(%rbp)	#, %sfp
# proto_parser.c:1663:     char *p = resp->wbuf;
	movq	-472(%rbp), %rdx	# %sfp, p
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	jmp	.L824	#
	.p2align 4
	.p2align 3
.L959:
# proto_parser.c:1861:     resp->wbytes = p - resp->wbuf;
	subq	-472(%rbp), %rdx	# %sfp, _523
	movq	-480(%rbp), %rbx	# %sfp, resp
# proto_parser.c:1861:     resp->wbytes = p - resp->wbuf;
	movl	%edx, %r15d	# _523, _525
# proto_parser.c:1862:     memcpy(resp->wbuf + resp->wbytes, "\r\n", 2);
	movslq	%edx, %r13	# _523, _528
	jmp	.L882	#
	.p2align 4
	.p2align 3
.L954:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movq	-504(%rbp), %rax	# %sfp, tmp584
# proto_parser.c:1830:             *p = '\r';
	movw	$2573, (%r15)	#, MEM <vector(2) char> [(char *)p_283]
# proto_parser.c:1832:             p += 2;
	leaq	2(%r15), %rsi	#, p
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	cmpl	$8, %eax	#, tmp584
	jnb	.L876	#,
	testb	$4, %al	#, tmp584
	jne	.L964	#,
	movq	%rax, %rdi	# tmp584, tmp584
	testl	%eax, %eax	# tmp584
	je	.L877	#,
	movzbl	-352(%rbp), %eax	#, tmp487
	andl	$2, %edi	#, tmp584
	movb	%al, 2(%r15)	# tmp487,
	jne	.L965	#,
.L877:
# proto_parser.c:1834:             p += vlen;
	movq	-504(%rbp), %r15	# %sfp, tmp584
	addq	%rsi, %r15	# p, tmp584
	jmp	.L875	#
.L953:
# proto_parser.c:1722:             ITEM_set_cas(it, of.cas_id_in);
	andl	$2, %ecx	#, pretmp_534->it_flags
	je	.L943	#,
# proto_parser.c:1722:             ITEM_set_cas(it, of.cas_id_in);
	movq	-376(%rbp), %rax	# of.cas_id_in, _15
	movq	%rax, 48(%rdx)	# _15, pretmp_534->data[0].cas
# proto_parser.c:1724:         cas = ITEM_get_cas(it);
	movq	%rax, -424(%rbp)	# _15, cas
	jmp	.L828	#
.L835:
# proto_parser.c:1757:             pthread_mutex_lock(&t->stats.mutex);
	leaq	360(%r13), %r15	#, _61
	movq	%r15, %rdi	# _61,
	call	pthread_mutex_lock@PLT	#
# proto_parser.c:1758:             if (incr) {
	cmpb	$0, -496(%rbp)	#, %sfp
	je	.L847	#,
# proto_parser.c:1759:                 t->stats.incr_misses++;
	incq	456(%r13)	# t_164(D)->stats.incr_misses
.L848:
# proto_parser.c:1763:             pthread_mutex_unlock(&t->stats.mutex);
	movq	%r15, %rdi	# _61,
	call	pthread_mutex_unlock@PLT	#
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movw	$17998, 164(%rbx)	#, MEM <char[1:2]> [(void *)p_167]
	jmp	.L945	#
.L876:
	movq	-352(%rbp), %rax	#, tmp496
	leaq	10(%r15), %rcx	#, tmp504
	andq	$-8, %rcx	#, tmp504
	movq	%rax, 2(%r15)	# tmp496,
	movq	-504(%rbp), %r10	# %sfp, tmp584
	movq	-488(%rbp), %rdi	# %sfp, tmp563
	movl	%r10d, %eax	# tmp584, vlen
	movq	-8(%rdi,%rax), %rdx	#, tmp503
	movq	%rdx, -8(%rsi,%rax)	# tmp503,
	movq	%rsi, %rdx	# p, tmp505
	movq	%rdi, %rax	# tmp563, tmp563
	subq	%rcx, %rdx	# tmp504, tmp505
	subq	%rdx, %rax	# tmp505, tmp563
	addl	%r10d, %edx	# tmp584, vlen
	andl	$-8, %edx	#, vlen
	cmpl	$8, %edx	#, vlen
	jb	.L877	#,
	andl	$-8, %edx	#, tmp507
	xorl	%edi, %edi	# tmp506
.L880:
	movl	%edi, %r8d	# tmp506, tmp508
	addl	$8, %edi	#, tmp506
	movq	(%rax,%r8), %r9	#, tmp509
	movq	%r9, (%rcx,%r8)	# tmp509,
	cmpl	%edx, %edi	# tmp507, tmp506
	jb	.L880	#,
	jmp	.L877	#
.L956:
# proto_parser.c:1816:                         errstr = "CLIENT_ERROR opaque token too long";
	movq	-496(%rbp), %rbx	# %sfp, resp
.L947:
# proto_parser.c:1867:     if (it != NULL)
	movq	-432(%rbp), %rdi	# it, it.113_336
# proto_parser.c:1845:                         errstr = "CLIENT_ERROR opaque token too long";
	leaq	.LC52(%rip), %rax	#, tmp692
	movq	%rax, -440(%rbp)	# tmp692, errstr
# proto_parser.c:1867:     if (it != NULL)
	testq	%rdi, %rdi	# it.113_336
	jne	.L833	#,
	jmp	.L832	#
.L957:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movl	(%rdx), %ecx	#* _94, tmp449
	movl	%ecx, (%rdi)	# tmp449,* p
	movl	-4(%rdx,%rax), %edx	#, tmp450
	movl	%edx, -4(%rdi,%rax)	# tmp450,
	jmp	.L868	#
.L961:
# proto_parser.c:1845:                         errstr = "CLIENT_ERROR opaque token too long";
	movq	-480(%rbp), %rbx	# %sfp, resp
	jmp	.L947	#
.L847:
# proto_parser.c:1761:                 t->stats.decr_misses++;
	incq	464(%r13)	# t_164(D)->stats.decr_misses
	jmp	.L848	#
.L829:
# proto_parser.c:1724:         cas = ITEM_get_cas(it);
	movq	48(%rdx), %rax	# pretmp_534->data[0].cas, pretmp_534->data[0].cas
	movq	%rax, -424(%rbp)	# pretmp_534->data[0].cas, cas
	jmp	.L828	#
.L962:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movl	(%rcx), %edx	#* _115, tmp536
	movl	%edx, (%rdi)	# tmp536,* p
	movl	-4(%rcx,%rax), %edx	#, tmp537
	movl	%edx, -4(%rdi,%rax)	# tmp537,
	jmp	.L891	#
.L837:
	movq	-352(%rbp), %rdx	#, tmp365
	movq	%rdx, (%rax)	# tmp365,* _38
	movq	-488(%rbp), %rdi	# %sfp, tmp563
	movl	%r9d, %edx	# tmp580, _21
	movq	-8(%rdi,%rdx), %rcx	#, tmp372
	movq	%rcx, -8(%rax,%rdx)	# tmp372,
	leaq	8(%rax), %rdx	#, tmp373
	andq	$-8, %rdx	#, tmp373
	subq	%rdx, %rax	# tmp373, tmp374
	subq	%rax, %rdi	# tmp374, tmp346
	addl	%r9d, %eax	# tmp580, _21
	andl	$-8, %eax	#, _21
	movq	%rdi, %rsi	# tmp346, tmp346
	cmpl	$8, %eax	#, _21
	jb	.L838	#,
	andl	$-8, %eax	#, tmp376
	xorl	%ecx, %ecx	# tmp375
.L841:
	movl	%ecx, %edi	# tmp375, tmp377
	addl	$8, %ecx	#, tmp375
	movq	(%rsi,%rdi), %r8	#, tmp378
	movq	%r8, (%rdx,%rdi)	# tmp378,
	cmpl	%eax, %ecx	# tmp376, tmp375
	jb	.L841	#,
	jmp	.L838	#
.L836:
# proto_parser.c:1753:                 errstr = "SERVER_ERROR Out of memory allocating new item";
	leaq	.LC74(%rip), %rax	#, tmp671
	movq	%rax, -440(%rbp)	# tmp671, errstr
	jmp	.L832	#
.L958:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movzwl	-2(%rdx,%rax), %edx	#, tmp453
	movw	%dx, -2(%rdi,%rax)	# tmp453,
	jmp	.L868	#
.L843:
# proto_parser.c:1744:                             of.has_cas_in ? of.cas_id_in : get_cas_id(), CAS_NO_STALE)) {
	call	get_cas_id@PLT	#
	jmp	.L844	#
.L963:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movzwl	-2(%rcx,%rax), %edx	#, tmp540
	movw	%dx, -2(%rdi,%rax)	# tmp540,
	jmp	.L891	#
.L964:
	movl	-352(%rbp), %eax	#, tmp479
	movl	%eax, (%rsi)	# tmp479,* p
	movl	-504(%rbp), %eax	# %sfp, vlen
	movq	-488(%rbp), %rdi	# %sfp, tmp563
	movl	-4(%rdi,%rax), %edx	#, tmp486
	movl	%edx, -4(%rsi,%rax)	# tmp486,
	jmp	.L877	#
.L965:
	movl	-504(%rbp), %eax	# %sfp, vlen
	movq	-488(%rbp), %rdi	# %sfp, tmp563
	movzwl	-2(%rdi,%rax), %edx	#, tmp495
	movw	%dx, -2(%rsi,%rax)	# tmp495,
	jmp	.L877	#
.L951:
	movl	-352(%rbp), %edx	#, tmp348
	movl	%edx, (%rax)	# tmp348,* _38
	movq	-488(%rbp), %rdi	# %sfp, tmp563
	movl	%r9d, %edx	# tmp580, _21
	movl	-4(%rdi,%rdx), %ecx	#, tmp355
	movl	%ecx, -4(%rax,%rdx)	# tmp355,
	jmp	.L838	#
.L952:
	movq	-488(%rbp), %rdi	# %sfp, tmp563
	movl	%r9d, %edx	# tmp580, _21
	movzwl	-2(%rdi,%rdx), %ecx	#, tmp364
	movw	%cx, -2(%rax,%rdx)	# tmp364,
	jmp	.L838	#
.L950:
# proto_parser.c:1872: }
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.type	process_marithmetic_cmd.cold, @function
process_marithmetic_cmd.cold:
.LFSB99:
.L940:
	.cfi_def_cfa 6, 16
	.cfi_offset 3, -64
	.cfi_offset 6, -16
	.cfi_offset 10, -56
	.cfi_offset 12, -48
	.cfi_offset 13, -40
	.cfi_offset 14, -32
	.cfi_offset 15, -24
# proto_parser.c:1661:     assert(t != NULL);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rcx	#,
	movl	$1661, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC43(%rip), %rdi	#,
	vzeroupper
	call	__assert_fail@PLT	#
	.cfi_endproc
.LFE99:
	.text
	.size	process_marithmetic_cmd, .-process_marithmetic_cmd
	.section	.text.unlikely
	.size	process_marithmetic_cmd.cold, .-process_marithmetic_cmd.cold
.LCOLDE75:
	.text
.LHOTE75:
	.section	.rodata
	.align 16
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 24
__PRETTY_FUNCTION__.0:
	.string	"process_marithmetic_cmd"
	.align 16
	.type	__PRETTY_FUNCTION__.1, @object
	.size	__PRETTY_FUNCTION__.1, 20
__PRETTY_FUNCTION__.1:
	.string	"process_mdelete_cmd"
	.align 16
	.type	__PRETTY_FUNCTION__.2, @object
	.size	__PRETTY_FUNCTION__.2, 23
__PRETTY_FUNCTION__.2:
	.string	"process_mset_cmd_start"
	.align 16
	.type	__PRETTY_FUNCTION__.3, @object
	.size	__PRETTY_FUNCTION__.3, 17
__PRETTY_FUNCTION__.3:
	.string	"process_mget_cmd"
	.align 16
	.type	__PRETTY_FUNCTION__.4, @object
	.size	__PRETTY_FUNCTION__.4, 18
__PRETTY_FUNCTION__.4:
	.string	"process_touch_cmd"
	.align 16
	.type	__PRETTY_FUNCTION__.5, @object
	.size	__PRETTY_FUNCTION__.5, 19
__PRETTY_FUNCTION__.5:
	.string	"process_delete_cmd"
	.align 16
	.type	__PRETTY_FUNCTION__.6, @object
	.size	__PRETTY_FUNCTION__.6, 23
__PRETTY_FUNCTION__.6:
	.string	"process_arithmetic_cmd"
	.align 16
	.type	__PRETTY_FUNCTION__.7, @object
	.size	__PRETTY_FUNCTION__.7, 26
__PRETTY_FUNCTION__.7:
	.string	"_store_item_copy_from_buf"
	.align 16
	.type	__PRETTY_FUNCTION__.8, @object
	.size	__PRETTY_FUNCTION__.8, 25
__PRETTY_FUNCTION__.8:
	.string	"process_update_cmd_start"
	.align 16
	.type	__PRETTY_FUNCTION__.10, @object
	.size	__PRETTY_FUNCTION__.10, 16
__PRETTY_FUNCTION__.10:
	.string	"process_request"
	.section	.rodata.cst2,"aM",@progbits,2
	.align 2
.LC55:
	.byte	32
	.byte	115
	.align 2
.LC56:
	.byte	32
	.byte	116
	.align 2
.LC57:
	.byte	45
	.byte	49
	.align 2
.LC58:
	.byte	32
	.byte	99
	.align 2
.LC59:
	.byte	32
	.byte	102
	.align 2
.LC60:
	.byte	32
	.byte	108
	.align 2
.LC61:
	.byte	32
	.byte	104
	.align 2
.LC62:
	.byte	32
	.byte	107
	.align 2
.LC63:
	.byte	32
	.byte	98
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
