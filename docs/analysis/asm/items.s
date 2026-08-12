	.file	"items.c"
# GNU C23 (Ubuntu 15.2.0-16ubuntu1) version 15.2.0 (x86_64-linux-gnu)
#	compiled by GNU C version 15.2.0, GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.3.1, isl version isl-0.27-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -D_FORTIFY_SOURCE=3 -march=znver3 -mmmx -mpopcnt -msse -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mavx -mavx2 -msse4a -mno-fma4 -mno-xop -mfma -mno-avx512f -mbmi -mbmi2 -maes -mpclmul -mno-avx512vl -mno-avx512bw -mno-avx512dq -mno-avx512cd -mno-avx512vbmi -mno-avx512ifma -mno-avx512vpopcntdq -mno-avx512vbmi2 -mno-gfni -mvpclmulqdq -mno-avx512vnni -mno-avx512bitalg -mno-avx512bf16 -mno-avx512vp2intersect -mno-3dnow -madx -mabm -mno-cldemote -mclflushopt -mclwb -mclzero -mcx16 -mno-enqcmd -mf16c -mfsgsbase -mfxsr -mno-hle -msahf -mno-lwp -mlzcnt -mmovbe -mno-movdir64b -mno-movdiri -mno-mwaitx -mno-pconfig -mno-pku -mprfchw -mno-ptwrite -mrdpid -mrdrnd -mrdseed -mno-rtm -mno-serialize -mno-sgx -msha -mshstk -mno-tbm -mno-tsxldtrk -mvaes -mno-waitpkg -mno-wbnoinvd -mxsave -mxsavec -mxsaveopt -mxsaves -mno-amx-tile -mno-amx-int8 -mno-amx-bf16 -mno-uintr -mno-hreset -mno-kl -mno-widekl -mno-avxvnni -mno-avx512fp16 -mno-avxifma -mno-avxvnniint8 -mno-avxneconvert -mno-cmpccxadd -mno-amx-fp16 -mno-prefetchi -mno-raoint -mno-amx-complex -mno-avxvnniint16 -mno-sm3 -mno-sha512 -mno-sm4 -mno-apxf -mno-usermsr -mno-avx10.2 -mno-amx-avx512 -mno-amx-tf32 -mno-amx-transpose -mno-amx-fp8 -mno-movrs -mno-amx-movrs --param=l1-cache-size=32 --param=l1-cache-line-size=64 --param=l2-cache-size=512 -mtune=znver3 -O3 -ftree-vectorize -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection -fzero-init-padding-bits=all
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"items.c"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"(it->it_flags & ITEM_SLABBED) == 0"
	.section	.rodata.str1.1
.LC2:
	.string	"it != *head"
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"(*head && *tail) || (*head == 0 && *tail == 0)"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB4:
	.text
.LHOTB4:
	.p2align 4
	.type	do_item_link_q, @function
do_item_link_q:
.LFB99:
	.cfi_startproc
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
# items.c:409:     assert((it->it_flags & ITEM_SLABBED) == 0);
	movzwl	38(%rdi), %edx	# it_54(D)->it_flags, _1
	testb	$4, %dl	#, _1
	jne	.L11	#,
# items.c:413:     assert(it != *head);
	movzbl	40(%rdi), %eax	# it_54(D)->slabs_clsid, _3
	leaq	heads(%rip), %rsi	#, tmp132
	movq	(%rsi,%rax,8), %rcx	# MEM <struct item *[256]> [(struct item * *)&heads][_3], _4
	cmpq	%rdi, %rcx	# it, _4
	je	.L12	#,
# items.c:414:     assert((*head && *tail) || (*head == 0 && *tail == 0));
	leaq	tails(%rip), %r8	#, tmp137
	movq	(%r8,%rax,8), %r9	# MEM <struct item *[256]> [(struct item * *)&tails][_3], pretmp_90
# items.c:414:     assert((*head && *tail) || (*head == 0 && *tail == 0));
	testq	%rcx, %rcx	# _4
	je	.L4	#,
# items.c:414:     assert((*head && *tail) || (*head == 0 && *tail == 0));
	testq	%r9, %r9	# pretmp_90
	je	.L15	#,
# items.c:415:     it->prev = 0;
	movq	$0, 8(%rdi)	#, it_54(D)->prev
# items.c:416:     it->next = *head;
	movq	%rcx, (%rdi)	# _4, it_54(D)->next
# items.c:418:     *head = it;
	movq	%rdi, (%rsi,%rax,8)	# it, MEM <struct item *[256]> [(struct item * *)&heads][_3]
# items.c:417:     if (it->next) it->next->prev = it;
	movq	%rdi, 8(%rcx)	# it, MEM[(struct _stritem *)_4].prev
.L8:
# items.c:420:     sizes[it->slabs_clsid]++;
	leaq	sizes(%rip), %rcx	#, tmp149
# items.c:423:         sizes_bytes[it->slabs_clsid] += (ITEM_ntotal(it) - it->nbytes) + sizeof(item_hdr);
	leaq	0(,%rdx,4), %rsi	#, _81
# items.c:423:         sizes_bytes[it->slabs_clsid] += (ITEM_ntotal(it) - it->nbytes) + sizeof(item_hdr);
	leaq	sizes_bytes(%rip), %r8	#, tmp176
# items.c:423:         sizes_bytes[it->slabs_clsid] += (ITEM_ntotal(it) - it->nbytes) + sizeof(item_hdr);
	movzbl	41(%rdi), %r10d	# it_54(D)->nkey, _84
# items.c:420:     sizes[it->slabs_clsid]++;
	incl	(%rcx,%rax,4)	# sizes[_3]
# items.c:423:         sizes_bytes[it->slabs_clsid] += (ITEM_ntotal(it) - it->nbytes) + sizeof(item_hdr);
	movl	%edx, %ecx	# _1, _86
	andl	$8, %esi	#, _89
# items.c:423:         sizes_bytes[it->slabs_clsid] += (ITEM_ntotal(it) - it->nbytes) + sizeof(item_hdr);
	movq	(%r8,%rax,8), %r9	# sizes_bytes[_3], pretmp_82
# items.c:423:         sizes_bytes[it->slabs_clsid] += (ITEM_ntotal(it) - it->nbytes) + sizeof(item_hdr);
	shrl	$6, %ecx	#, _86
	andl	$4, %ecx	#, _88
# items.c:422:     if (it->it_flags & ITEM_HDR) {
	andl	$128, %edx	#, _1
	je	.L9	#,
# items.c:423:         sizes_bytes[it->slabs_clsid] += (ITEM_ntotal(it) - it->nbytes) + sizeof(item_hdr);
	leaq	61(%r10,%rcx), %rdx	#, _77
	addq	%rsi, %r9	# _89, _7
	addq	%r9, %rdx	# _7, _49
	movq	%rdx, (%r8,%rax,8)	# _49, sizes_bytes[_3]
# items.c:432: }
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4
	.p2align 3
.L4:
	.cfi_restore_state
# items.c:414:     assert((*head && *tail) || (*head == 0 && *tail == 0));
	testq	%r9, %r9	# pretmp_90
	jne	.L6	#,
# items.c:416:     it->next = *head;
	vpxor	%xmm0, %xmm0, %xmm0	# tmp142
# items.c:418:     *head = it;
	movq	%rdi, (%rsi,%rax,8)	# it, MEM <struct item *[256]> [(struct item * *)&heads][_3]
# items.c:419:     if (*tail == 0) *tail = it;
	movq	%rdi, (%r8,%rax,8)	# it, MEM <struct item *[256]> [(struct item * *)&tails][_3]
# items.c:416:     it->next = *head;
	vmovdqu	%xmm0, (%rdi)	# tmp142, MEM <vector(2) long unsigned int> [(struct _stritem * *)it_54(D)]
	jmp	.L8	#
	.p2align 4
	.p2align 3
.L9:
# items.c:425:         sizes_bytes[it->slabs_clsid] += ITEM_ntotal(it);
	movslq	32(%rdi), %rdx	# it_54(D)->nbytes, _38
# items.c:425:         sizes_bytes[it->slabs_clsid] += ITEM_ntotal(it);
	leaq	49(%r9,%rcx), %rcx	#, _73
	addq	%r10, %rdx	# _84, _76
	addq	%rsi, %rdx	# _89, _74
	addq	%rcx, %rdx	# _73, _49
	movq	%rdx, (%r8,%rax,8)	# _49, sizes_bytes[_3]
# items.c:432: }
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4
	.p2align 3
.L15:
	.cfi_restore_state
	jmp	.L6	#
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.type	do_item_link_q.cold, @function
do_item_link_q.cold:
.LFSB99:
.L12:
	.cfi_def_cfa_offset 16
# items.c:413:     assert(it != *head);
	leaq	__PRETTY_FUNCTION__.11(%rip), %rcx	#,
	movl	$413, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC2(%rip), %rdi	#,
	call	__assert_fail@PLT	#
.L11:
# items.c:409:     assert((it->it_flags & ITEM_SLABBED) == 0);
	leaq	__PRETTY_FUNCTION__.11(%rip), %rcx	#,
	movl	$409, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC1(%rip), %rdi	#,
	call	__assert_fail@PLT	#
.L6:
# items.c:414:     assert((*head && *tail) || (*head == 0 && *tail == 0));
	leaq	__PRETTY_FUNCTION__.11(%rip), %rcx	#,
	movl	$414, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC3(%rip), %rdi	#,
	call	__assert_fail@PLT	#
	.cfi_endproc
.LFE99:
	.text
	.size	do_item_link_q, .-do_item_link_q
	.section	.text.unlikely
	.size	do_item_link_q.cold, .-do_item_link_q.cold
.LCOLDE4:
	.text
.LHOTE4:
	.section	.rodata.str1.1
.LC5:
	.string	"it->prev == 0"
.LC6:
	.string	"it->next == 0"
.LC7:
	.string	"it->next != it"
.LC8:
	.string	"it->prev != it"
	.section	.text.unlikely
.LCOLDB9:
	.text
.LHOTB9:
	.p2align 4
	.type	do_item_unlink_q, @function
do_item_unlink_q:
.LFB102:
	.cfi_startproc
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
# items.c:452:     if (*head == it) {
	movzbl	40(%rdi), %eax	# it_60(D)->slabs_clsid, _2
	leaq	heads(%rip), %rdx	#, tmp129
# items.c:452:     if (*head == it) {
	cmpq	%rdi, (%rdx,%rax,8)	# it, MEM <struct item *[256]> [(struct item * *)&heads][_2]
	je	.L17	#,
# items.c:456:     if (*tail == it) {
	leaq	tails(%rip), %rsi	#, tmp136
# items.c:454:         *head = it->next;
	movq	(%rdi), %rcx	# it_60(D)->next, prephitmp_43
# items.c:456:     if (*tail == it) {
	cmpq	%rdi, (%rsi,%rax,8)	# it, MEM <struct item *[256]> [(struct item * *)&tails][_2]
	je	.L39	#,
.L20:
# items.c:460:     assert(it->next != it);
	cmpq	%rdi, %rcx	# it, prephitmp_43
	je	.L37	#,
# items.c:453:         assert(it->prev == 0);
	movq	8(%rdi), %rdx	# it_60(D)->prev, prephitmp_51
# items.c:461:     assert(it->prev != it);
	cmpq	%rdx, %rdi	# prephitmp_51, it
	je	.L23	#,
# items.c:463:     if (it->next) it->next->prev = it->prev;
	testq	%rcx, %rcx	# prephitmp_43
	je	.L22	#,
# items.c:463:     if (it->next) it->next->prev = it->prev;
	movq	%rdx, 8(%rcx)	# prephitmp_51, prephitmp_43->prev
# items.c:464:     if (it->prev) it->prev->next = it->next;
	movq	8(%rdi), %rdx	# it_60(D)->prev, prephitmp_51
.L22:
# items.c:464:     if (it->prev) it->prev->next = it->next;
	testq	%rdx, %rdx	# prephitmp_51
	je	.L26	#,
# items.c:464:     if (it->prev) it->prev->next = it->next;
	movq	%rcx, (%rdx)	# prephitmp_43, prephitmp_51->next
.L26:
# items.c:465:     sizes[it->slabs_clsid]--;
	leaq	sizes(%rip), %rdx	#, tmp149
# items.c:468:         sizes_bytes[it->slabs_clsid] -= (ITEM_ntotal(it) - it->nbytes) + sizeof(item_hdr);
	leaq	sizes_bytes(%rip), %r9	#, tmp178
# items.c:468:         sizes_bytes[it->slabs_clsid] -= (ITEM_ntotal(it) - it->nbytes) + sizeof(item_hdr);
	movzbl	41(%rdi), %r10d	# it_60(D)->nkey, _95
# items.c:465:     sizes[it->slabs_clsid]--;
	decl	(%rdx,%rax,4)	# sizes[_2]
# items.c:467:     if (it->it_flags & ITEM_HDR) {
	movzwl	38(%rdi), %edx	# it_60(D)->it_flags, _16
	movq	(%r9,%rax,8), %rcx	# sizes_bytes[_2], _103
# items.c:468:         sizes_bytes[it->slabs_clsid] -= (ITEM_ntotal(it) - it->nbytes) + sizeof(item_hdr);
	movl	%edx, %esi	# _16, _97
	leaq	0(,%rdx,4), %r8	#, _101
	shrl	$6, %esi	#, _97
	andl	$8, %r8d	#, _102
	subq	%r10, %rcx	# _95, _103
	andl	$4, %esi	#, _99
# items.c:467:     if (it->it_flags & ITEM_HDR) {
	andl	$128, %edx	#, _16
	je	.L27	#,
# items.c:468:         sizes_bytes[it->slabs_clsid] -= (ITEM_ntotal(it) - it->nbytes) + sizeof(item_hdr);
	leaq	-61(%rcx), %rdx	#, _77
	addq	%r8, %rsi	# _102, _52
	subq	%rsi, %rdx	# _52, _53
	movq	%rdx, (%r9,%rax,8)	# _53, sizes_bytes[_2]
# items.c:477: }
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4
	.p2align 3
.L27:
	.cfi_restore_state
# items.c:470:         sizes_bytes[it->slabs_clsid] -= ITEM_ntotal(it);
	movslq	32(%rdi), %rdi	# it_60(D)->nbytes, _42
# items.c:470:         sizes_bytes[it->slabs_clsid] -= ITEM_ntotal(it);
	movq	$-49, %rdx	#, tmp172
	subq	%r8, %rcx	# _102, _58
	subq	%rdi, %rdx	# _42, _70
	subq	%rsi, %rdx	# _99, _55
	addq	%rcx, %rdx	# _58, _53
	movq	%rdx, (%r9,%rax,8)	# _53, sizes_bytes[_2]
# items.c:477: }
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4
	.p2align 3
.L17:
	.cfi_restore_state
# items.c:453:         assert(it->prev == 0);
	cmpq	$0, 8(%rdi)	#, it_60(D)->prev
	jne	.L35	#,
# items.c:454:         *head = it->next;
	movq	(%rdi), %rcx	# it_60(D)->next, prephitmp_43
# items.c:456:     if (*tail == it) {
	leaq	tails(%rip), %rsi	#, tmp136
# items.c:454:         *head = it->next;
	movq	%rcx, (%rdx,%rax,8)	# prephitmp_43, MEM <struct item *[256]> [(struct item * *)&heads][_2]
# items.c:456:     if (*tail == it) {
	cmpq	%rdi, (%rsi,%rax,8)	# it, MEM <struct item *[256]> [(struct item * *)&tails][_2]
	jne	.L20	#,
.L39:
# items.c:457:         assert(it->next == 0);
	testq	%rcx, %rcx	# prephitmp_43
	jne	.L36	#,
# items.c:458:         *tail = it->prev;
	movq	8(%rdi), %rdx	# it_60(D)->prev, prephitmp_51
# items.c:458:         *tail = it->prev;
	movq	%rdx, (%rsi,%rax,8)	# prephitmp_51, MEM <struct item *[256]> [(struct item * *)&tails][_2]
# items.c:461:     assert(it->prev != it);
	cmpq	%rdx, %rdi	# prephitmp_51, it
	jne	.L22	#,
	jmp	.L23	#
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.type	do_item_unlink_q.cold, @function
do_item_unlink_q.cold:
.LFSB102:
.L35:
	.cfi_def_cfa_offset 16
# items.c:453:         assert(it->prev == 0);
	leaq	__PRETTY_FUNCTION__.10(%rip), %rcx	#,
	movl	$453, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC5(%rip), %rdi	#,
	call	__assert_fail@PLT	#
.L36:
# items.c:457:         assert(it->next == 0);
	leaq	__PRETTY_FUNCTION__.10(%rip), %rcx	#,
	movl	$457, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC6(%rip), %rdi	#,
	call	__assert_fail@PLT	#
.L23:
# items.c:461:     assert(it->prev != it);
	leaq	__PRETTY_FUNCTION__.10(%rip), %rcx	#,
	movl	$461, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC8(%rip), %rdi	#,
	call	__assert_fail@PLT	#
.L37:
# items.c:460:     assert(it->next != it);
	leaq	__PRETTY_FUNCTION__.10(%rip), %rcx	#,
	movl	$460, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC7(%rip), %rdi	#,
	call	__assert_fail@PLT	#
	.cfi_endproc
.LFE102:
	.text
	.size	do_item_unlink_q, .-do_item_unlink_q
	.section	.text.unlikely
	.size	do_item_unlink_q.cold, .-do_item_unlink_q.cold
.LCOLDE9:
	.text
.LHOTE9:
	.section	.rodata.str1.1
.LC10:
	.string	"it->refcount > 0"
	.section	.text.unlikely
	.type	do_item_remove.part.0, @function
do_item_remove.part.0:
.LFB140:
	.cfi_startproc
	pushq	%rax	#
	.cfi_def_cfa_offset 16
	popq	%rax	#
	.cfi_def_cfa_offset 8
# items.c:541:     assert(it->refcount > 0);
	leaq	__PRETTY_FUNCTION__.9(%rip), %rcx	#,
	movl	$541, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC10(%rip), %rdi	#,
# items.c:538: void do_item_remove(item *it) {
	pushq	%rax	#
	.cfi_def_cfa_offset 16
# items.c:541:     assert(it->refcount > 0);
	call	__assert_fail@PLT	#
	.cfi_endproc
.LFE140:
	.size	do_item_remove.part.0, .-do_item_remove.part.0
	.text
	.p2align 4
	.globl	item_stats_reset
	.type	item_stats_reset, @function
item_stats_reset:
.LFB86:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r13	#
	pushq	%r12	#
	pushq	%rbx	#
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	leaq	itemstats(%rip), %rbx	#, ivtmp.198
	subq	$8, %rsp	#,
	leaq	lru_locks(%rip), %r12	#, ivtmp.197
	leaq	43008(%rbx), %r13	#, _23
	.p2align 4
	.p2align 3
.L43:
# items.c:66:         pthread_mutex_lock(&lru_locks[i]);
	movq	%r12, %rdi	# ivtmp.197,
	call	pthread_mutex_lock@PLT	#
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:59:   return __builtin___memset_chk (__dest, __ch, __len,
	vpxor	%xmm0, %xmm0, %xmm0	# tmp105
	movq	$0, 160(%rbx)	#, MEM <char[1:168]> [(void *)_2]
# items.c:68:         pthread_mutex_unlock(&lru_locks[i]);
	movq	%r12, %rdi	# ivtmp.197,
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:59:   return __builtin___memset_chk (__dest, __ch, __len,
	vmovdqu	%ymm0, (%rbx)	# tmp105, MEM <char[1:168]> [(void *)_2]
	vmovdqu	%ymm0, 32(%rbx)	# tmp105, MEM <char[1:168]> [(void *)_2]
	vmovdqu	%ymm0, 64(%rbx)	# tmp105, MEM <char[1:168]> [(void *)_2]
	vmovdqu	%ymm0, 96(%rbx)	# tmp105, MEM <char[1:168]> [(void *)_2]
	vmovdqu	%ymm0, 128(%rbx)	# tmp105, MEM <char[1:168]> [(void *)_2]
# items.c:68:         pthread_mutex_unlock(&lru_locks[i]);
	vzeroupper
# items.c:65:     for (i = 0; i < LARGEST_ID; i++) {
	addq	$168, %rbx	#, ivtmp.198
# items.c:68:         pthread_mutex_unlock(&lru_locks[i]);
	call	pthread_mutex_unlock@PLT	#
# items.c:65:     for (i = 0; i < LARGEST_ID; i++) {
	addq	$40, %r12	#, ivtmp.197
	cmpq	%r13, %rbx	# _23, ivtmp.198
	jne	.L43	#,
# items.c:70: }
	addq	$8, %rsp	#,
	popq	%rbx	#
	popq	%r12	#
	popq	%r13	#
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE86:
	.size	item_stats_reset, .-item_stats_reset
	.p2align 4
	.globl	do_item_stats_add_crawl
	.type	do_item_stats_add_crawl, @function
do_item_stats_add_crawl:
.LFB87:
	.cfi_startproc
	endbr64	
	movslq	%edi, %rdi	# i, i
	leaq	itemstats(%rip), %rax	#, tmp111
# items.c:75:     itemstats[i].crawler_reclaimed += reclaimed;
	vmovq	%rsi, %xmm1	# reclaimed, reclaimed
	imulq	$168, %rdi, %rdi	#, i, tmp109
	vpinsrq	$1, %rcx, %xmm1, %xmm0	# checked, reclaimed, _18
	vpaddq	64(%rax,%rdi), %xmm0, %xmm0	# MEM <vector(2) long unsigned int> [(long unsigned int *)vectp.204_15], _18, vect__2.206
# items.c:76:     itemstats[i].expired_unfetched += unfetched;
	addq	%rdx, 40(%rax,%rdi)	# unfetched, itemstats[i_8(D)].expired_unfetched
# items.c:75:     itemstats[i].crawler_reclaimed += reclaimed;
	vmovdqu	%xmm0, 64(%rax,%rdi)	# vect__2.206, MEM <vector(2) long unsigned int> [(long unsigned int *)vectp.204_15]
# items.c:78: }
	ret	
	.cfi_endproc
.LFE87:
	.size	do_item_stats_add_crawl, .-do_item_stats_add_crawl
	.p2align 4
	.globl	get_cas_id
	.type	get_cas_id, @function
get_cas_id:
.LFB88:
	.cfi_startproc
	endbr64	
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
# items.c:105:     pthread_mutex_lock(&cas_id_lock);
	leaq	cas_id_lock(%rip), %rdi	#,
	call	pthread_mutex_lock@PLT	#
# items.c:106:     uint64_t next_id = ++cas_id;
	movq	cas_id(%rip), %rax	# cas_id, tmp105
# items.c:107:     pthread_mutex_unlock(&cas_id_lock);
	leaq	cas_id_lock(%rip), %rdi	#,
# items.c:106:     uint64_t next_id = ++cas_id;
	leaq	1(%rax), %rbx	#, <retval>
# items.c:106:     uint64_t next_id = ++cas_id;
	movq	%rbx, cas_id(%rip)	# <retval>, cas_id
# items.c:107:     pthread_mutex_unlock(&cas_id_lock);
	call	pthread_mutex_unlock@PLT	#
# items.c:109: }
	movq	%rbx, %rax	# <retval>,
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret	
	.cfi_endproc
.LFE88:
	.size	get_cas_id, .-get_cas_id
	.p2align 4
	.globl	set_cas_id
	.type	set_cas_id, @function
set_cas_id:
.LFB89:
	.cfi_startproc
	endbr64	
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
# items.c:111: void set_cas_id(uint64_t new_cas) {
	movq	%rdi, %rbx	# new_cas, new_cas
# items.c:112:     pthread_mutex_lock(&cas_id_lock);
	leaq	cas_id_lock(%rip), %rdi	#,
	call	pthread_mutex_lock@PLT	#
# items.c:113:     cas_id = new_cas;
	movq	%rbx, cas_id(%rip)	# new_cas, cas_id
# items.c:115: }
	popq	%rbx	#
	.cfi_def_cfa_offset 8
# items.c:114:     pthread_mutex_unlock(&cas_id_lock);
	leaq	cas_id_lock(%rip), %rdi	#,
	jmp	pthread_mutex_unlock@PLT	#
	.cfi_endproc
.LFE89:
	.size	set_cas_id, .-set_cas_id
	.p2align 4
	.globl	item_is_flushed
	.type	item_is_flushed, @function
item_is_flushed:
.LFB90:
	.cfi_startproc
	endbr64	
# items.c:118:     rel_time_t oldest_live = settings.oldest_live;
	movl	36+settings(%rip), %edx	# settings.oldest_live, oldest_live
# items.c:122:     return 0;
	xorl	%eax, %eax	# <retval>
# items.c:119:     if (it->time <= oldest_live && oldest_live <= current_time)
	cmpl	24(%rdi), %edx	# it_6(D)->time, oldest_live
	jb	.L51	#,
# items.c:119:     if (it->time <= oldest_live && oldest_live <= current_time)
	movl	current_time(%rip), %eax	# current_time, current_time.1_2
# items.c:119:     if (it->time <= oldest_live && oldest_live <= current_time)
	cmpl	%edx, %eax	# oldest_live, current_time.1_2
	setnb	%al	#, <retval>
	movzbl	%al, %eax	# <retval>, <retval>
.L51:
# items.c:123: }
	ret	
	.cfi_endproc
.LFE90:
	.size	item_is_flushed, .-item_is_flushed
	.p2align 4
	.globl	do_get_lru_size
	.type	do_get_lru_size, @function
do_get_lru_size:
.LFB91:
	.cfi_startproc
	endbr64	
# items.c:127:     return sizes[id];
	movl	%edi, %edi	# id, id
# items.c:127:     return sizes[id];
	leaq	sizes(%rip), %rax	#, tmp101
	movl	(%rax,%rdi,4), %eax	# sizes[id_2(D)], sizes[id_2(D)]
# items.c:128: }
	ret	
	.cfi_endproc
.LFE91:
	.size	do_get_lru_size, .-do_get_lru_size
	.section	.rodata.str1.8
	.align 8
.LC11:
	.string	"(it->it_flags & ITEM_LINKED) == 0"
	.section	.rodata.str1.1
.LC12:
	.string	"it != heads[it->slabs_clsid]"
.LC13:
	.string	"it != tails[it->slabs_clsid]"
.LC14:
	.string	"it->refcount == 0"
	.section	.text.unlikely
.LCOLDB15:
	.text
.LHOTB15:
	.p2align 4
	.globl	item_free
	.type	item_free, @function
item_free:
.LFB96:
	.cfi_startproc
	endbr64	
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
# items.c:352:     assert((it->it_flags & ITEM_LINKED) == 0);
	testb	$1, 38(%rdi)	#, it_10(D)->it_flags
	jne	.L60	#,
# items.c:353:     assert(it != heads[it->slabs_clsid]);
	movzbl	40(%rdi), %eax	# it_10(D)->slabs_clsid,
	leaq	heads(%rip), %rdx	#, tmp113
	movq	%rax, %rsi	#,
	cmpq	%rdi, (%rdx,%rax,8)	# it, heads[_3]
	je	.L61	#,
# items.c:354:     assert(it != tails[it->slabs_clsid]);
	leaq	tails(%rip), %rdx	#, tmp118
	cmpq	%rdi, (%rdx,%rax,8)	# it, tails[_3]
	je	.L62	#,
# items.c:355:     assert(it->refcount == 0);
	cmpw	$0, 36(%rdi)	#, it_10(D)->refcount
	jne	.L63	#,
# items.c:358:     clsid = ITEM_clsid(it);
	andb	$63, %sil	#, clsid_14
# items.c:361: }
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 8
# items.c:360:     slabs_free(it, clsid);
	jmp	slabs_free@PLT	#
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.type	item_free.cold, @function
item_free.cold:
.LFSB96:
.L60:
	.cfi_def_cfa_offset 16
# items.c:352:     assert((it->it_flags & ITEM_LINKED) == 0);
	leaq	__PRETTY_FUNCTION__.13(%rip), %rcx	#,
	movl	$352, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC11(%rip), %rdi	#,
	call	__assert_fail@PLT	#
.L63:
# items.c:355:     assert(it->refcount == 0);
	leaq	__PRETTY_FUNCTION__.13(%rip), %rcx	#,
	movl	$355, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC14(%rip), %rdi	#,
	call	__assert_fail@PLT	#
.L62:
# items.c:354:     assert(it != tails[it->slabs_clsid]);
	leaq	__PRETTY_FUNCTION__.13(%rip), %rcx	#,
	movl	$354, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC13(%rip), %rdi	#,
	call	__assert_fail@PLT	#
.L61:
# items.c:353:     assert(it != heads[it->slabs_clsid]);
	leaq	__PRETTY_FUNCTION__.13(%rip), %rcx	#,
	movl	$353, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC12(%rip), %rdi	#,
	call	__assert_fail@PLT	#
	.cfi_endproc
.LFE96:
	.text
	.size	item_free, .-item_free
	.section	.text.unlikely
	.size	item_free.cold, .-item_free.cold
.LCOLDE15:
	.text
.LHOTE15:
	.p2align 4
	.globl	item_size_ok
	.type	item_size_ok, @function
item_size_ok:
.LFB97:
	.cfi_startproc
	endbr64	
# items.c:370:     if (nbytes < 2)
	cmpl	$1, %edx	#, nbytes
	jle	.L70	#,
# items.c:367: bool item_size_ok(const size_t nkey, const client_flags_t flags, const int nbytes) {
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
# items.c:154:     if (flags == 0) {
	xorl	%eax, %eax	# _26
	testl	%esi, %esi	# flags
# items.c:159:     return sizeof(item) + nkey + *nsuffix + nbytes;
	movslq	%edx, %rdx	# nbytes, _18
# items.c:154:     if (flags == 0) {
	setne	%al	#, _26
# items.c:373:     size_t ntotal = item_make_header(nkey + 1, flags, nbytes,
	incl	%edi	# _2
# items.c:375:     if (settings.use_cas) {
	cmpb	$0, 104+settings(%rip)	#, settings.use_cas
# items.c:159:     return sizeof(item) + nkey + *nsuffix + nbytes;
	leaq	(%rdx,%rax,4), %rax	#, _21
# items.c:159:     return sizeof(item) + nkey + *nsuffix + nbytes;
	movzbl	%dil, %edi	# _2, _15
# items.c:159:     return sizeof(item) + nkey + *nsuffix + nbytes;
	leaq	(%rax,%rdi), %rdx	#, _19
# items.c:376:         ntotal += sizeof(uint64_t);
	leaq	56(%rax,%rdi), %rdi	#, ntotal
# items.c:375:     if (settings.use_cas) {
	je	.L75	#,
# items.c:379:     return slabs_clsid(ntotal) != 0;
	call	slabs_clsid@PLT	#
# items.c:379:     return slabs_clsid(ntotal) != 0;
	testl	%eax, %eax	# _4
	setne	%al	#, <retval>
# items.c:380: }
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4
	.p2align 3
.L75:
	.cfi_restore_state
# items.c:159:     return sizeof(item) + nkey + *nsuffix + nbytes;
	leaq	48(%rdx), %rdi	#, ntotal
# items.c:379:     return slabs_clsid(ntotal) != 0;
	call	slabs_clsid@PLT	#
# items.c:379:     return slabs_clsid(ntotal) != 0;
	testl	%eax, %eax	# _4
	setne	%al	#, <retval>
# items.c:380: }
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4
	.p2align 3
.L70:
	xorl	%eax, %eax	# <retval>
	ret	
	.cfi_endproc
.LFE97:
	.size	item_size_ok, .-item_size_ok
	.p2align 4
	.globl	do_item_link_fixup
	.type	do_item_link_fixup, @function
do_item_link_fixup:
.LFB98:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# it, it
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 32
# items.c:385:     int ntotal = ITEM_ntotal(it);
	movzbl	41(%rdi), %ecx	# it_47(D)->nkey,
	movzwl	38(%rdi), %eax	# it_47(D)->it_flags,
	movq	%rcx, %rsi	#,
	addl	32(%rbx), %ecx	# it_47(D)->nbytes, _34
	movl	%eax, %edx	# _7, _8
	movl	%eax, %edi	#,
	sarl	$6, %edx	#, _8
	sall	$2, %eax	#, _12
	andl	$4, %edx	#, _62
	andl	$8, %eax	#, _13
	addl	%ecx, %edx	# _34, _78
	leal	49(%rdx,%rax), %ebp	#, ntotal
# items.c:386:     uint32_t hv = hash(ITEM_key(it), it->nkey);
	leaq	0(,%rdi,4), %rax	#, _20
	andl	$8, %eax	#, _21
# items.c:386:     uint32_t hv = hash(ITEM_key(it), it->nkey);
	leaq	48(%rbx,%rax), %rdi	#, _22
	call	*hash(%rip)	# hash
# items.c:387:     assoc_insert(it, hv);
	movq	%rbx, %rdi	# it,
	movl	%eax, %esi	# hv,
	call	assoc_insert@PLT	#
# items.c:391:     if (it->prev == 0 && *head == 0) *head = it;
	cmpq	$0, 8(%rbx)	#, it_47(D)->prev
	movzbl	40(%rbx), %eax	# it_47(D)->slabs_clsid, _24
	je	.L89	#,
.L77:
# items.c:392:     if (it->next == 0 && *tail == 0) *tail = it;
	cmpq	$0, (%rbx)	#, it_47(D)->next
	je	.L90	#,
.L78:
# items.c:393:     sizes[it->slabs_clsid]++;
	leaq	sizes(%rip), %rdx	#, tmp194
# items.c:394:     sizes_bytes[it->slabs_clsid] += ntotal;
	movslq	%ebp, %rbp	# ntotal, _36
# items.c:393:     sizes[it->slabs_clsid]++;
	incl	(%rdx,%rax,4)	# sizes[_24]
# items.c:394:     sizes_bytes[it->slabs_clsid] += ntotal;
	leaq	sizes_bytes(%rip), %rdx	#, tmp202
	addq	%rbp, (%rdx,%rax,8)	# _36, sizes_bytes[_24]
# items.c:396:     STATS_LOCK();
	call	STATS_LOCK@PLT	#
# items.c:398:     stats_state.curr_items += 1;
	movq	stats_state(%rip), %rax	# stats_state.curr_items, tmp252
# items.c:397:     stats_state.curr_bytes += ntotal;
	addq	8+stats_state(%rip), %rbp	# stats_state.curr_bytes, _39
# items.c:399:     stats.total_items += 1;
	incq	stats(%rip)	# stats.total_items
# items.c:398:     stats_state.curr_items += 1;
	incq	%rax	# _41
	vmovq	%rax, %xmm0	# _41, _41
	vpinsrq	$1, %rbp, %xmm0, %xmm0	# _39, _41, _33
	vmovdqu	%xmm0, stats_state(%rip)	# _33, MEM <vector(2) long unsigned int> [(long unsigned int *)&stats_state]
# items.c:400:     STATS_UNLOCK();
	call	STATS_UNLOCK@PLT	#
# items.c:930:     if (stats_sizes_hist == NULL)
	movq	stats_sizes_hist(%rip), %rsi	# stats_sizes_hist, stats_sizes_hist.64_63
# items.c:930:     if (stats_sizes_hist == NULL)
	testq	%rsi, %rsi	# stats_sizes_hist.64_63
	je	.L87	#,
# items.c:932:     int ntotal = ITEM_ntotal(it);
	movzwl	38(%rbx), %eax	# it_47(D)->it_flags, _70
	movzbl	41(%rbx), %edx	# it_47(D)->nkey, _65
	addl	32(%rbx), %edx	# it_47(D)->nbytes, _95
	movl	%eax, %ecx	# _70, _71
	sall	$2, %eax	#, _76
	sarl	$6, %ecx	#, _71
	andl	$8, %eax	#, _77
	andl	$4, %ecx	#, _72
	addl	%ecx, %edx	# _72, _97
	leal	49(%rdx,%rax), %ecx	#, _79
# items.c:933:     int bucket = ntotal / 32;
	leal	80(%rdx,%rax), %eax	#, tmp236
	testl	%ecx, %ecx	# _79
	cmovns	%ecx, %eax	# tmp236,, _79, _79
# items.c:934:     if ((ntotal % 32) != 0) bucket++;
	andl	$31, %ecx	#, _82
# items.c:933:     int bucket = ntotal / 32;
	sarl	$5, %eax	#, bucket_81
# items.c:934:     if ((ntotal % 32) != 0) bucket++;
	cmpl	$1, %ecx	#, _82
	sbbl	$-1, %eax	#, bucket
# items.c:935:     if (bucket < stats_sizes_buckets) stats_sizes_hist[bucket]++;
	cmpl	%eax, stats_sizes_buckets(%rip)	# bucket, stats_sizes_buckets
	jle	.L87	#,
# items.c:935:     if (bucket < stats_sizes_buckets) stats_sizes_hist[bucket]++;
	cltq
# items.c:935:     if (bucket < stats_sizes_buckets) stats_sizes_hist[bucket]++;
	incl	(%rsi,%rax,4)	# *_88
.L87:
# items.c:405: }
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4
	.p2align 3
.L90:
	.cfi_restore_state
# items.c:392:     if (it->next == 0 && *tail == 0) *tail = it;
	leaq	tails(%rip), %rdx	#, tmp190
# items.c:392:     if (it->next == 0 && *tail == 0) *tail = it;
	cmpq	$0, (%rdx,%rax,8)	#, MEM <struct item *[256]> [(struct item * *)&tails][_24]
	jne	.L78	#,
# items.c:392:     if (it->next == 0 && *tail == 0) *tail = it;
	movq	%rbx, (%rdx,%rax,8)	# it, MEM <struct item *[256]> [(struct item * *)&tails][_24]
	jmp	.L78	#
	.p2align 4
	.p2align 3
.L89:
# items.c:391:     if (it->prev == 0 && *head == 0) *head = it;
	leaq	heads(%rip), %rdx	#, tmp186
# items.c:391:     if (it->prev == 0 && *head == 0) *head = it;
	cmpq	$0, (%rdx,%rax,8)	#, MEM <struct item *[256]> [(struct item * *)&heads][_24]
	jne	.L77	#,
# items.c:391:     if (it->prev == 0 && *head == 0) *head = it;
	movq	%rbx, (%rdx,%rax,8)	# it, MEM <struct item *[256]> [(struct item * *)&heads][_24]
	jmp	.L77	#
	.cfi_endproc
.LFE98:
	.size	do_item_link_fixup, .-do_item_link_fixup
	.section	.rodata.str1.8
	.align 8
.LC16:
	.string	"(it->it_flags & (ITEM_LINKED|ITEM_SLABBED)) == 0"
	.section	.text.unlikely
.LCOLDB17:
	.text
.LHOTB17:
	.p2align 4
	.globl	do_item_link
	.type	do_item_link, @function
do_item_link:
.LFB104:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 48
# items.c:487:     assert((it->it_flags & (ITEM_LINKED|ITEM_SLABBED)) == 0);
	movzwl	38(%rdi), %eax	# it_30(D)->it_flags, _1
	testb	$5, %al	#, _1
	jne	.L104	#,
# items.c:488:     it->it_flags |= ITEM_LINKED;
	orl	$1, %eax	#, tmp171
	movq	%rdi, %rbx	# it, it
	movl	%esi, 12(%rsp)	# hv, %sfp
	movq	%rdx, %rbp	# cas, cas
	movw	%ax, 38(%rdi)	# tmp171, it_30(D)->it_flags
# items.c:489:     it->time = current_time;
	movl	current_time(%rip), %eax	# current_time, current_time.14_3
	movl	%eax, 24(%rdi)	# current_time.14_3, it_30(D)->time
# items.c:491:     STATS_LOCK();
	call	STATS_LOCK@PLT	#
# items.c:493:     stats_state.curr_items += 1;
	movq	stats_state(%rip), %rax	# stats_state.curr_items, tmp242
# items.c:492:     stats_state.curr_bytes += ITEM_ntotal(it);
	movzwl	38(%rbx), %ecx	# it_30(D)->it_flags, _10
	movslq	32(%rbx), %rdx	# it_30(D)->nbytes, _8
# items.c:494:     stats.total_items += 1;
	incq	stats(%rip)	# stats.total_items
# items.c:493:     stats_state.curr_items += 1;
	incq	%rax	# _22
	vmovq	%rax, %xmm0	# _22, _22
# items.c:492:     stats_state.curr_bytes += ITEM_ntotal(it);
	movzbl	41(%rbx), %eax	# it_30(D)->nkey, _6
# items.c:492:     stats_state.curr_bytes += ITEM_ntotal(it);
	addq	%rdx, %rax	# _8, _98
# items.c:492:     stats_state.curr_bytes += ITEM_ntotal(it);
	movl	%ecx, %edx	# _10, _12
	shrl	$6, %edx	#, _12
	andl	$4, %edx	#, _13
# items.c:492:     stats_state.curr_bytes += ITEM_ntotal(it);
	addq	%rdx, %rax	# _13, _96
# items.c:492:     stats_state.curr_bytes += ITEM_ntotal(it);
	leaq	0(,%rcx,4), %rdx	#, _16
# items.c:492:     stats_state.curr_bytes += ITEM_ntotal(it);
	movq	8+stats_state(%rip), %rcx	# stats_state.curr_bytes, stats_state.curr_bytes
# items.c:492:     stats_state.curr_bytes += ITEM_ntotal(it);
	andl	$8, %edx	#, _17
# items.c:492:     stats_state.curr_bytes += ITEM_ntotal(it);
	leaq	49(%rdx,%rcx), %rdx	#, _97
	addq	%rdx, %rax	# _97, _20
# items.c:493:     stats_state.curr_items += 1;
	vpinsrq	$1, %rax, %xmm0, %xmm0	# _20, _22, _100
	vmovdqu	%xmm0, stats_state(%rip)	# _100, MEM <vector(2) long unsigned int> [(long unsigned int *)&stats_state]
# items.c:495:     STATS_UNLOCK();
	call	STATS_UNLOCK@PLT	#
# items.c:498:     ITEM_set_cas(it, cas);
	testb	$2, 38(%rbx)	#, it_30(D)->it_flags
	movl	12(%rsp), %esi	# %sfp, hv
	je	.L93	#,
# items.c:498:     ITEM_set_cas(it, cas);
	movq	%rbp, 48(%rbx)	# cas, it_30(D)->data[0].cas
.L93:
# items.c:499:     assoc_insert(it, hv);
	movq	%rbx, %rdi	# it,
# items.c:435:     pthread_mutex_lock(&lru_locks[it->slabs_clsid]);
	leaq	lru_locks(%rip), %rbp	#, tmp208
# items.c:499:     assoc_insert(it, hv);
	call	assoc_insert@PLT	#
# items.c:435:     pthread_mutex_lock(&lru_locks[it->slabs_clsid]);
	movzbl	40(%rbx), %eax	# it_30(D)->slabs_clsid, _60
	leaq	(%rax,%rax,4), %rax	#, _64
	leaq	0(%rbp,%rax,8), %rdi	#, _79
	call	pthread_mutex_lock@PLT	#
# items.c:436:     do_item_link_q(it);
	movq	%rbx, %rdi	# it,
	call	do_item_link_q	#
# items.c:437:     pthread_mutex_unlock(&lru_locks[it->slabs_clsid]);
	movzbl	40(%rbx), %eax	# it_30(D)->slabs_clsid, _9
	leaq	(%rax,%rax,4), %rax	#, _14
	leaq	0(%rbp,%rax,8), %rdi	#, _82
	call	pthread_mutex_unlock@PLT	#
# items.c:930:     if (stats_sizes_hist == NULL)
	movq	stats_sizes_hist(%rip), %rsi	# stats_sizes_hist, stats_sizes_hist.64_49
# items.c:501:     refcount_incr(it);
	incw	36(%rbx)	# it_30(D)->refcount
# items.c:930:     if (stats_sizes_hist == NULL)
	testq	%rsi, %rsi	# stats_sizes_hist.64_49
	je	.L94	#,
# items.c:932:     int ntotal = ITEM_ntotal(it);
	movzwl	38(%rbx), %eax	# it_30(D)->it_flags, _56
	movzbl	41(%rbx), %edx	# it_30(D)->nkey, _51
	addl	32(%rbx), %edx	# it_30(D)->nbytes, _18
	movl	%eax, %ecx	# _56, _57
	sall	$2, %eax	#, _62
	sarl	$6, %ecx	#, _57
	andl	$8, %eax	#, _63
	andl	$4, %ecx	#, _58
	addl	%ecx, %edx	# _58, _92
	leal	49(%rdx,%rax), %ecx	#, _65
# items.c:933:     int bucket = ntotal / 32;
	leal	80(%rdx,%rax), %eax	#, tmp228
	testl	%ecx, %ecx	# _65
	cmovns	%ecx, %eax	# tmp228,, _65, _65
# items.c:934:     if ((ntotal % 32) != 0) bucket++;
	andl	$31, %ecx	#, _68
# items.c:933:     int bucket = ntotal / 32;
	sarl	$5, %eax	#, bucket_67
# items.c:934:     if ((ntotal % 32) != 0) bucket++;
	cmpl	$1, %ecx	#, _68
	sbbl	$-1, %eax	#, bucket
# items.c:935:     if (bucket < stats_sizes_buckets) stats_sizes_hist[bucket]++;
	cmpl	%eax, stats_sizes_buckets(%rip)	# bucket, stats_sizes_buckets
	jle	.L94	#,
# items.c:935:     if (bucket < stats_sizes_buckets) stats_sizes_hist[bucket]++;
	cltq
# items.c:935:     if (bucket < stats_sizes_buckets) stats_sizes_hist[bucket]++;
	incl	(%rsi,%rax,4)	# *_74
.L94:
# items.c:505: }
	addq	$24, %rsp	#,
	.cfi_def_cfa_offset 24
	movl	$1, %eax	#,
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret	
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.type	do_item_link.cold, @function
do_item_link.cold:
.LFSB104:
.L104:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -24
	.cfi_offset 6, -16
# items.c:487:     assert((it->it_flags & (ITEM_LINKED|ITEM_SLABBED)) == 0);
	leaq	__PRETTY_FUNCTION__.12(%rip), %rcx	#,
	movl	$487, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC16(%rip), %rdi	#,
	call	__assert_fail@PLT	#
	.cfi_endproc
.LFE104:
	.text
	.size	do_item_link, .-do_item_link
	.section	.text.unlikely
	.size	do_item_link.cold, .-do_item_link.cold
.LCOLDE17:
	.text
.LHOTE17:
	.section	.text.unlikely
.LCOLDB18:
	.text
.LHOTB18:
	.p2align 4
	.globl	do_item_remove
	.type	do_item_remove, @function
do_item_remove:
.LFB107:
	.cfi_startproc
	endbr64	
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
# items.c:540:     assert((it->it_flags & ITEM_SLABBED) == 0);
	movzwl	38(%rdi), %edx	# it_7(D)->it_flags, _1
	testb	$4, %dl	#, _1
	jne	.L113	#,
# items.c:541:     assert(it->refcount > 0);
	movzwl	36(%rdi), %eax	# it_7(D)->refcount, _2
	testw	%ax, %ax	# _2
	je	.L114	#,
# items.c:543:     if (refcount_decr(it) == 0) {
	decl	%eax	# _4
# items.c:543:     if (refcount_decr(it) == 0) {
	movw	%ax, 36(%rdi)	# _4, it_7(D)->refcount
	testw	%ax, %ax	# _4
	je	.L120	#,
# items.c:546: }
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4
	.p2align 3
.L120:
	.cfi_restore_state
# items.c:352:     assert((it->it_flags & ITEM_LINKED) == 0);
	andl	$1, %edx	#, _1
	jne	.L115	#,
# items.c:353:     assert(it != heads[it->slabs_clsid]);
	movzbl	40(%rdi), %eax	# it_7(D)->slabs_clsid,
	leaq	heads(%rip), %rdx	#, tmp118
	movq	%rax, %rsi	#,
	cmpq	(%rdx,%rax,8), %rdi	# heads[_15], it
	je	.L116	#,
# items.c:354:     assert(it != tails[it->slabs_clsid]);
	leaq	tails(%rip), %rdx	#, tmp123
	cmpq	(%rdx,%rax,8), %rdi	# tails[_15], it
	je	.L117	#,
# items.c:358:     clsid = ITEM_clsid(it);
	andb	$63, %sil	#, clsid_20
# items.c:546: }
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 8
# items.c:360:     slabs_free(it, clsid);
	jmp	slabs_free@PLT	#
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.type	do_item_remove.cold, @function
do_item_remove.cold:
.LFSB107:
.L115:
	.cfi_def_cfa_offset 16
# items.c:352:     assert((it->it_flags & ITEM_LINKED) == 0);
	leaq	__PRETTY_FUNCTION__.13(%rip), %rcx	#,
	movl	$352, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC11(%rip), %rdi	#,
	call	__assert_fail@PLT	#
.L116:
# items.c:353:     assert(it != heads[it->slabs_clsid]);
	leaq	__PRETTY_FUNCTION__.13(%rip), %rcx	#,
	movl	$353, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC12(%rip), %rdi	#,
	call	__assert_fail@PLT	#
.L117:
# items.c:354:     assert(it != tails[it->slabs_clsid]);
	leaq	__PRETTY_FUNCTION__.13(%rip), %rcx	#,
	movl	$354, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC13(%rip), %rdi	#,
	call	__assert_fail@PLT	#
.L114:
	call	do_item_remove.part.0	#
.L113:
# items.c:540:     assert((it->it_flags & ITEM_SLABBED) == 0);
	leaq	__PRETTY_FUNCTION__.9(%rip), %rcx	#,
	movl	$540, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC1(%rip), %rdi	#,
	call	__assert_fail@PLT	#
	.cfi_endproc
.LFE107:
	.text
	.size	do_item_remove, .-do_item_remove
	.section	.text.unlikely
	.size	do_item_remove.cold, .-do_item_remove.cold
.LCOLDE18:
	.text
.LHOTE18:
	.p2align 4
	.globl	do_item_unlink
	.type	do_item_unlink, @function
do_item_unlink:
.LFB105:
	.cfi_startproc
	endbr64	
# items.c:509:     if ((it->it_flags & ITEM_LINKED) != 0) {
	movzwl	38(%rdi), %eax	# it_32(D)->it_flags, _1
# items.c:509:     if ((it->it_flags & ITEM_LINKED) != 0) {
	testb	$1, %al	#, _1
	jne	.L134	#,
	ret	
	.p2align 4
	.p2align 3
.L134:
# items.c:507: void do_item_unlink(item *it, const uint32_t hv) {
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
# items.c:510:         it->it_flags &= ~ITEM_LINKED;
	andl	$-2, %eax	#, tmp166
	movq	%rdi, %rbx	# it, it
# items.c:507: void do_item_unlink(item *it, const uint32_t hv) {
	subq	$16, %rsp	#,
	.cfi_def_cfa_offset 32
# items.c:510:         it->it_flags &= ~ITEM_LINKED;
	movw	%ax, 38(%rdi)	# tmp166, it_32(D)->it_flags
	movl	%esi, 12(%rsp)	# hv, %sfp
# items.c:511:         STATS_LOCK();
	call	STATS_LOCK@PLT	#
# items.c:513:         stats_state.curr_items -= 1;
	movq	stats_state(%rip), %rax	# stats_state.curr_items, tmp232
# items.c:512:         stats_state.curr_bytes -= ITEM_ntotal(it);
	movzwl	38(%rbx), %ecx	# it_32(D)->it_flags, _9
	movslq	32(%rbx), %rdi	# it_32(D)->nbytes, _7
# items.c:513:         stats_state.curr_items -= 1;
	decq	%rax	# _21
	vmovq	%rax, %xmm0	# _21, _21
# items.c:512:         stats_state.curr_bytes -= ITEM_ntotal(it);
	movq	8+stats_state(%rip), %rax	# stats_state.curr_bytes, tmp233
# items.c:512:         stats_state.curr_bytes -= ITEM_ntotal(it);
	leaq	0(,%rcx,4), %rsi	#, _15
	shrl	$6, %ecx	#, _11
	andl	$8, %esi	#, _16
	andl	$4, %ecx	#, _12
# items.c:512:         stats_state.curr_bytes -= ITEM_ntotal(it);
	subq	$49, %rax	#, _38
	subq	%rsi, %rax	# _16, _66
# items.c:512:         stats_state.curr_bytes -= ITEM_ntotal(it);
	movzbl	41(%rbx), %esi	# it_32(D)->nkey, _5
# items.c:512:         stats_state.curr_bytes -= ITEM_ntotal(it);
	addq	%rdi, %rsi	# _7, _36
	addq	%rsi, %rcx	# _36, _97
	subq	%rcx, %rax	# _97, _19
# items.c:513:         stats_state.curr_items -= 1;
	vpinsrq	$1, %rax, %xmm0, %xmm0	# _19, _21, _57
	vmovdqu	%xmm0, stats_state(%rip)	# _57, MEM <vector(2) long unsigned int> [(long unsigned int *)&stats_state]
# items.c:514:         STATS_UNLOCK();
	call	STATS_UNLOCK@PLT	#
# items.c:942:     if (stats_sizes_hist == NULL)
	movq	stats_sizes_hist(%rip), %rdi	# stats_sizes_hist, stats_sizes_hist.68_51
# items.c:944:     int ntotal = ITEM_ntotal(it);
	movzwl	38(%rbx), %esi	# it_32(D)->it_flags, pretmp_98
# items.c:942:     if (stats_sizes_hist == NULL)
	movl	12(%rsp), %edx	# %sfp, hv
	testq	%rdi, %rdi	# stats_sizes_hist.68_51
	je	.L123	#,
# items.c:944:     int ntotal = ITEM_ntotal(it);
	movzbl	41(%rbx), %ecx	# it_32(D)->nkey, _53
	addl	32(%rbx), %ecx	# it_32(D)->nbytes, _88
	movzwl	%si, %eax	# pretmp_98, _58
	movl	%eax, %r8d	# _58, _59
	sall	$2, %eax	#, _64
	sarl	$6, %r8d	#, _59
	andl	$8, %eax	#, _65
	andl	$4, %r8d	#, _60
	addl	%r8d, %ecx	# _60, _35
	leal	49(%rcx,%rax), %r8d	#, _67
# items.c:945:     int bucket = ntotal / 32;
	leal	80(%rcx,%rax), %eax	#, tmp201
	testl	%r8d, %r8d	# _67
	cmovns	%r8d, %eax	# tmp201,, _67, _67
# items.c:946:     if ((ntotal % 32) != 0) bucket++;
	andl	$31, %r8d	#, _70
# items.c:945:     int bucket = ntotal / 32;
	sarl	$5, %eax	#, bucket_69
# items.c:946:     if ((ntotal % 32) != 0) bucket++;
	cmpl	$1, %r8d	#, _70
	sbbl	$-1, %eax	#, bucket
# items.c:947:     if (bucket < stats_sizes_buckets) stats_sizes_hist[bucket]--;
	cmpl	%eax, stats_sizes_buckets(%rip)	# bucket, stats_sizes_buckets
	jle	.L123	#,
# items.c:947:     if (bucket < stats_sizes_buckets) stats_sizes_hist[bucket]--;
	cltq
# items.c:947:     if (bucket < stats_sizes_buckets) stats_sizes_hist[bucket]--;
	decl	(%rdi,%rax,4)	# *_76
.L123:
# items.c:516:         assoc_delete(ITEM_key(it), it->nkey, hv);
	movzbl	41(%rbx), %ecx	# it_32(D)->nkey, _23
# items.c:516:         assoc_delete(ITEM_key(it), it->nkey, hv);
	leaq	0(,%rsi,4), %rax	#, _27
	andl	$8, %eax	#, _28
# items.c:516:         assoc_delete(ITEM_key(it), it->nkey, hv);
	leaq	48(%rbx,%rax), %rdi	#, _29
	movq	%rcx, %rsi	# _23,
	call	assoc_delete@PLT	#
# items.c:480:     pthread_mutex_lock(&lru_locks[it->slabs_clsid]);
	movzbl	40(%rbx), %eax	# it_32(D)->slabs_clsid, _84
	leaq	lru_locks(%rip), %rdx	#, tmp218
	leaq	(%rax,%rax,4), %rax	#, _41
	leaq	(%rdx,%rax,8), %rdi	#, _47
	call	pthread_mutex_lock@PLT	#
# items.c:481:     do_item_unlink_q(it);
	movq	%rbx, %rdi	# it,
	call	do_item_unlink_q	#
# items.c:482:     pthread_mutex_unlock(&lru_locks[it->slabs_clsid]);
	movzbl	40(%rbx), %eax	# it_32(D)->slabs_clsid, _85
	leaq	lru_locks(%rip), %rdx	#, tmp218
	leaq	(%rax,%rax,4), %rax	#, _87
	leaq	(%rdx,%rax,8), %rdi	#, _50
	call	pthread_mutex_unlock@PLT	#
# items.c:520: }
	addq	$16, %rsp	#,
	.cfi_def_cfa_offset 16
# items.c:518:         do_item_remove(it);
	movq	%rbx, %rdi	# it,
# items.c:520: }
	popq	%rbx	#
	.cfi_restore 3
	.cfi_def_cfa_offset 8
# items.c:518:         do_item_remove(it);
	jmp	do_item_remove	#
	.cfi_endproc
.LFE105:
	.size	do_item_unlink, .-do_item_unlink
	.p2align 4
	.globl	do_item_unlink_nolock
	.type	do_item_unlink_nolock, @function
do_item_unlink_nolock:
.LFB106:
	.cfi_startproc
	endbr64	
# items.c:525:     if ((it->it_flags & ITEM_LINKED) != 0) {
	movzwl	38(%rdi), %eax	# it_32(D)->it_flags, _1
# items.c:525:     if ((it->it_flags & ITEM_LINKED) != 0) {
	testb	$1, %al	#, _1
	jne	.L148	#,
	ret	
	.p2align 4
	.p2align 3
.L148:
# items.c:523: void do_item_unlink_nolock(item *it, const uint32_t hv) {
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
# items.c:526:         it->it_flags &= ~ITEM_LINKED;
	andl	$-2, %eax	#, tmp158
	movq	%rdi, %rbx	# it, it
# items.c:523: void do_item_unlink_nolock(item *it, const uint32_t hv) {
	subq	$16, %rsp	#,
	.cfi_def_cfa_offset 32
# items.c:526:         it->it_flags &= ~ITEM_LINKED;
	movw	%ax, 38(%rdi)	# tmp158, it_32(D)->it_flags
	movl	%esi, 12(%rsp)	# hv, %sfp
# items.c:527:         STATS_LOCK();
	call	STATS_LOCK@PLT	#
# items.c:529:         stats_state.curr_items -= 1;
	movq	stats_state(%rip), %rax	# stats_state.curr_items, tmp210
# items.c:528:         stats_state.curr_bytes -= ITEM_ntotal(it);
	movzwl	38(%rbx), %ecx	# it_32(D)->it_flags, _9
	movslq	32(%rbx), %rdi	# it_32(D)->nbytes, _7
# items.c:529:         stats_state.curr_items -= 1;
	decq	%rax	# _21
	vmovq	%rax, %xmm0	# _21, _21
# items.c:528:         stats_state.curr_bytes -= ITEM_ntotal(it);
	movq	8+stats_state(%rip), %rax	# stats_state.curr_bytes, tmp211
# items.c:528:         stats_state.curr_bytes -= ITEM_ntotal(it);
	leaq	0(,%rcx,4), %rsi	#, _15
	shrl	$6, %ecx	#, _11
	andl	$8, %esi	#, _16
	andl	$4, %ecx	#, _12
# items.c:528:         stats_state.curr_bytes -= ITEM_ntotal(it);
	subq	$49, %rax	#, _78
	subq	%rsi, %rax	# _16, _35
# items.c:528:         stats_state.curr_bytes -= ITEM_ntotal(it);
	movzbl	41(%rbx), %esi	# it_32(D)->nkey, _5
# items.c:528:         stats_state.curr_bytes -= ITEM_ntotal(it);
	addq	%rdi, %rsi	# _7, _80
	addq	%rsi, %rcx	# _80, _17
	subq	%rcx, %rax	# _17, _19
# items.c:529:         stats_state.curr_items -= 1;
	vpinsrq	$1, %rax, %xmm0, %xmm0	# _19, _21, _56
	vmovdqu	%xmm0, stats_state(%rip)	# _56, MEM <vector(2) long unsigned int> [(long unsigned int *)&stats_state]
# items.c:530:         STATS_UNLOCK();
	call	STATS_UNLOCK@PLT	#
# items.c:942:     if (stats_sizes_hist == NULL)
	movq	stats_sizes_hist(%rip), %rdi	# stats_sizes_hist, stats_sizes_hist.68_45
# items.c:944:     int ntotal = ITEM_ntotal(it);
	movzwl	38(%rbx), %esi	# it_32(D)->it_flags, pretmp_18
# items.c:942:     if (stats_sizes_hist == NULL)
	movl	12(%rsp), %edx	# %sfp, hv
	testq	%rdi, %rdi	# stats_sizes_hist.68_45
	je	.L137	#,
# items.c:944:     int ntotal = ITEM_ntotal(it);
	movzbl	41(%rbx), %ecx	# it_32(D)->nkey, _47
	addl	32(%rbx), %ecx	# it_32(D)->nbytes, _13
	movzwl	%si, %eax	# pretmp_18, _52
	movl	%eax, %r8d	# _52, _53
	sall	$2, %eax	#, _58
	sarl	$6, %r8d	#, _53
	andl	$8, %eax	#, _59
	andl	$4, %r8d	#, _54
	addl	%r8d, %ecx	# _54, _51
	leal	49(%rcx,%rax), %r8d	#, _61
# items.c:945:     int bucket = ntotal / 32;
	leal	80(%rcx,%rax), %eax	#, tmp193
	testl	%r8d, %r8d	# _61
	cmovns	%r8d, %eax	# tmp193,, _61, _61
# items.c:946:     if ((ntotal % 32) != 0) bucket++;
	andl	$31, %r8d	#, _64
# items.c:945:     int bucket = ntotal / 32;
	sarl	$5, %eax	#, bucket_63
# items.c:946:     if ((ntotal % 32) != 0) bucket++;
	cmpl	$1, %r8d	#, _64
	sbbl	$-1, %eax	#, bucket
# items.c:947:     if (bucket < stats_sizes_buckets) stats_sizes_hist[bucket]--;
	cmpl	%eax, stats_sizes_buckets(%rip)	# bucket, stats_sizes_buckets
	jle	.L137	#,
# items.c:947:     if (bucket < stats_sizes_buckets) stats_sizes_hist[bucket]--;
	cltq
# items.c:947:     if (bucket < stats_sizes_buckets) stats_sizes_hist[bucket]--;
	decl	(%rdi,%rax,4)	# *_70
.L137:
# items.c:532:         assoc_delete(ITEM_key(it), it->nkey, hv);
	movzbl	41(%rbx), %ecx	# it_32(D)->nkey, _23
# items.c:532:         assoc_delete(ITEM_key(it), it->nkey, hv);
	leaq	0(,%rsi,4), %rax	#, _27
	andl	$8, %eax	#, _28
# items.c:532:         assoc_delete(ITEM_key(it), it->nkey, hv);
	leaq	48(%rbx,%rax), %rdi	#, _29
	movq	%rcx, %rsi	# _23,
	call	assoc_delete@PLT	#
# items.c:533:         do_item_unlink_q(it);
	movq	%rbx, %rdi	# it,
	call	do_item_unlink_q	#
# items.c:536: }
	addq	$16, %rsp	#,
	.cfi_def_cfa_offset 16
# items.c:534:         do_item_remove(it);
	movq	%rbx, %rdi	# it,
# items.c:536: }
	popq	%rbx	#
	.cfi_restore 3
	.cfi_def_cfa_offset 8
# items.c:534:         do_item_remove(it);
	jmp	do_item_remove	#
	.cfi_endproc
.LFE106:
	.size	do_item_unlink_nolock, .-do_item_unlink_nolock
	.p2align 4
	.type	lru_pull_tail.constprop.0, @function
lru_pull_tail.constprop.0:
.LFB146:
	.cfi_startproc
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
	subq	$40, %rsp	#,
	.cfi_def_cfa_offset 96
# items.c:1078:     if (id == 0)
	testl	%edi, %edi	# orig_id
	jne	.L241	#,
.L150:
# items.c:1079:         return 0;
	movl	$0, 4(%rsp)	#, %sfp
.L149:
# items.c:1251: }
	movl	4(%rsp), %eax	# %sfp,
	addq	$40, %rsp	#,
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
.L241:
	.cfi_restore_state
# items.c:1089:     id |= cur_lru;
	movl	%edi, %r14d	# orig_id, id
	movl	%edx, %r12d	# flags, flags
# items.c:1090:     pthread_mutex_lock(&lru_locks[id]);
	leaq	lru_locks(%rip), %rdx	#, tmp535
	movl	%edi, 28(%rsp)	# orig_id, %sfp
# items.c:1089:     id |= cur_lru;
	orb	$-128, %r14b	#, id
# items.c:1090:     pthread_mutex_lock(&lru_locks[id]);
	movslq	%r14d, %rbx	# id, id
	leaq	(%rbx,%rbx,4), %rax	#, _57
	movq	%rbx, 8(%rsp)	# id, %sfp
	leaq	(%rdx,%rax,8), %rax	#, _3
	movq	%rax, %rdi	# _3,
	movq	%rax, 16(%rsp)	# _3, %sfp
	call	pthread_mutex_lock@PLT	#
# items.c:1091:     search = tails[id];
	leaq	tails(%rip), %rax	#, tmp232
	movq	(%rax,%rbx,8), %r15	# tails[id_2], next_it
# items.c:1093:     for (; tries > 0 && search != NULL; tries--, search=next_it) {
	testq	%r15, %r15	# next_it
	je	.L151	#,
	testb	$2, %r12b	#, flags
	jne	.L195	#,
# items.c:1114:             itemstats[id].lrutail_reflocked++;
	imulq	$168, %rbx, %rax	#, id, tmp500
	leaq	itemstats(%rip), %rbp	#, tmp499
	movq	%r15, %rbx	# next_it, next_it
# items.c:1077:     int removed = 0;
	movl	$0, 4(%rsp)	#, %sfp
# items.c:1114:             itemstats[id].lrutail_reflocked++;
	movl	$5, %r15d	#, tries
	movl	%r12d, 24(%rsp)	# flags, %sfp
	addq	%rax, %rbp	# tmp500, tmp501
	.p2align 4
	.p2align 3
.L167:
	movq	%rbx, %r13	# next_it, search
# items.c:1095:         next_it = search->prev;
	movq	8(%rbx), %rbx	# search_119->prev, next_it
# items.c:1096:         if (search->nbytes == 0 && search->nkey == 0 && search->it_flags == 1) {
	movl	32(%r13), %edi	# search_226->nbytes,
# items.c:1096:         if (search->nbytes == 0 && search->nkey == 0 && search->it_flags == 1) {
	movzbl	41(%r13), %esi	# search_226->nkey,
# items.c:1096:         if (search->nbytes == 0 && search->nkey == 0 && search->it_flags == 1) {
	testl	%edi, %edi	#
	jne	.L242	#,
# items.c:1096:         if (search->nbytes == 0 && search->nkey == 0 && search->it_flags == 1) {
	movzwl	38(%r13), %eax	# search_226->it_flags, prephitmp_67
# items.c:1096:         if (search->nbytes == 0 && search->nkey == 0 && search->it_flags == 1) {
	testb	%sil, %sil	# pretmp_5
	jne	.L166	#,
# items.c:1096:         if (search->nbytes == 0 && search->nkey == 0 && search->it_flags == 1) {
	cmpw	$1, %ax	#, prephitmp_67
	je	.L156	#,
	.p2align 4
	.p2align 3
.L166:
# items.c:1105:         uint32_t hv = hash(ITEM_key(search), search->nkey);
	leaq	0(,%rax,4), %rax	#, _112
	andl	$8, %eax	#, _15
# items.c:1105:         uint32_t hv = hash(ITEM_key(search), search->nkey);
	leaq	48(%r13,%rax), %rdi	#, _18
	call	*hash(%rip)	# hash
# items.c:1108:         if ((hold_lock = item_trylock(hv)) == NULL)
	movl	%eax, %edi	# hv,
# items.c:1105:         uint32_t hv = hash(ITEM_key(search), search->nkey);
	movl	%eax, %r14d	# hv, hv
# items.c:1108:         if ((hold_lock = item_trylock(hv)) == NULL)
	call	item_trylock@PLT	#
	movq	%rax, %r12	# hold_lock, hold_lock
# items.c:1108:         if ((hold_lock = item_trylock(hv)) == NULL)
	testq	%rax, %rax	# hold_lock
	je	.L240	#,
# items.c:1111:         if (refcount_incr(search) != 2) {
	movzwl	36(%r13), %eax	# search_226->refcount, tmp539
	incl	%eax	# _257
# items.c:1111:         if (refcount_incr(search) != 2) {
	movw	%ax, 36(%r13)	# _257, search_226->refcount
	cmpw	$2, %ax	#, _257
	je	.L165	#,
# items.c:1117:             if (settings.tail_repair_time &&
	movl	180+settings(%rip), %eax	# settings.tail_repair_time, _173
# items.c:1114:             itemstats[id].lrutail_reflocked++;
	incq	80(%rbp)	# itemstats[id_2].lrutail_reflocked
# items.c:1117:             if (settings.tail_repair_time &&
	testl	%eax, %eax	# _173
	je	.L165	#,
# items.c:1118:                     search->time + settings.tail_repair_time < current_time) {
	addl	24(%r13), %eax	# search_226->time, _240
# items.c:1118:                     search->time + settings.tail_repair_time < current_time) {
	movl	current_time(%rip), %ecx	# current_time, current_time.88_239
# items.c:1117:             if (settings.tail_repair_time &&
	cmpl	%ecx, %eax	# current_time.88_239, _240
	jb	.L243	#,
.L165:
# items.c:1130:         if ((search->exptime != 0 && search->exptime < current_time)
	movl	28(%r13), %eax	# search_226->exptime, _210
# items.c:1130:         if ((search->exptime != 0 && search->exptime < current_time)
	testl	%eax, %eax	# _210
	je	.L159	#,
# items.c:1130:         if ((search->exptime != 0 && search->exptime < current_time)
	movl	current_time(%rip), %ecx	# current_time, current_time.90_171
# items.c:1130:         if ((search->exptime != 0 && search->exptime < current_time)
	cmpl	%ecx, %eax	# current_time.90_171, _210
	jb	.L163	#,
.L159:
# items.c:118:     rel_time_t oldest_live = settings.oldest_live;
	movl	36+settings(%rip), %ecx	# settings.oldest_live, oldest_live
# items.c:119:     if (it->time <= oldest_live && oldest_live <= current_time)
	movl	24(%r13), %esi	# search_226->time, _51
# items.c:119:     if (it->time <= oldest_live && oldest_live <= current_time)
	cmpl	%esi, %ecx	# _51, oldest_live
	jb	.L236	#,
# items.c:119:     if (it->time <= oldest_live && oldest_live <= current_time)
	movl	current_time(%rip), %edi	# current_time, current_time.1_174
# items.c:119:     if (it->time <= oldest_live && oldest_live <= current_time)
	cmpl	%ecx, %edi	# oldest_live, current_time.1_174
	jnb	.L163	#,
.L236:
	movl	%r14d, %ebx	# hv, hv
	movq	%r12, %r14	# hold_lock, hold_lock
	movl	24(%rsp), %r12d	# %sfp, flags
.L178:
# items.c:1189:                 if (flags & LRU_PULL_EVICT) {
	testb	$1, %r12b	#, flags
	je	.L180	#,
# items.c:1190:                     if (settings.evict_to_free == 0) {
	movl	40+settings(%rip), %edx	# settings.evict_to_free,
	testl	%edx, %edx	#
	jne	.L244	#,
# items.c:1232:     pthread_mutex_unlock(&lru_locks[id]);
	movq	16(%rsp), %rdi	# %sfp,
	call	pthread_mutex_unlock@PLT	#
# items.c:1240:         if ((flags & LRU_PULL_RETURN_ITEM) == 0) {
	andb	$4, %r12b	#, flags
	jne	.L149	#,
	jmp	.L192	#
	.p2align 4
	.p2align 3
.L163:
# items.c:1132:             itemstats[id].reclaimed++;
	incq	16(%rbp)	# itemstats[id_2].reclaimed
# items.c:1133:             if ((search->it_flags & ITEM_FETCHED) == 0) {
	testb	$8, 38(%r13)	#, search_226->it_flags
	jne	.L161	#,
# items.c:1134:                 itemstats[id].expired_unfetched++;
	incq	40(%rbp)	# itemstats[id_2].expired_unfetched
.L161:
# items.c:1137:             do_item_unlink_nolock(search, hv);
	movl	%r14d, %esi	# hv,
	movq	%r13, %rdi	# search,
	call	do_item_unlink_nolock	#
# items.c:1138:             STORAGE_delete(ext_storage, search);
	movq	%r13, %rsi	# search,
	movq	ext_storage(%rip), %rdi	# ext_storage,
	call	storage_delete@PLT	#
# items.c:1140:             do_item_remove(search);
	movq	%r13, %rdi	# search,
	call	do_item_remove	#
# items.c:1141:             item_trylock_unlock(hold_lock);
	movq	%r12, %rdi	# hold_lock,
	call	item_trylock_unlock@PLT	#
# items.c:1142:             removed++;
	incl	4(%rsp)	# %sfp
.L240:
# items.c:1093:     for (; tries > 0 && search != NULL; tries--, search=next_it) {
	decl	%r15d	# tries
	setne	%al	#, _74
.L156:
# items.c:1093:     for (; tries > 0 && search != NULL; tries--, search=next_it) {
	testq	%rbx, %rbx	# next_it
	je	.L169	#,
	testb	%al, %al	# _74
	jne	.L167	#,
.L169:
# items.c:1232:     pthread_mutex_unlock(&lru_locks[id]);
	movq	16(%rsp), %rdi	# %sfp,
	call	pthread_mutex_unlock@PLT	#
	jmp	.L149	#
	.p2align 4
	.p2align 3
.L242:
# items.c:1096:         if (search->nbytes == 0 && search->nkey == 0 && search->it_flags == 1) {
	movzwl	38(%r13), %eax	# search_226->it_flags, prephitmp_67
	jmp	.L166	#
	.p2align 4
	.p2align 3
.L180:
# items.c:1211:                 } else if (flags & LRU_PULL_RETURN_ITEM) {
	andl	$4, %r12d	#, flags
	je	.L188	#,
# items.c:1213:                     ret_it->it = it;
	movq	%r13, 0	# search, MEM[(struct lru_pull_tail_return *)0B].it
	ud2	
	.p2align 4
	.p2align 3
.L244:
# items.c:1194:                     itemstats[id].evicted++;
	imulq	$168, 8(%rsp), %rdi	#, %sfp, tmp390
# items.c:1195:                     itemstats[id].evicted_time = current_time - search->time;
	movl	current_time(%rip), %r8d	# current_time, current_time.93_80
# items.c:1194:                     itemstats[id].evicted++;
	leaq	itemstats(%rip), %r9	#, tmp496
# items.c:1195:                     itemstats[id].evicted_time = current_time - search->time;
	subl	%esi, %r8d	# _51, tmp405
# items.c:1194:                     itemstats[id].evicted++;
	addq	%r9, %rdi	# tmp496, tmp391
	incq	(%rdi)	# itemstats[id_2].evicted
# items.c:1195:                     itemstats[id].evicted_time = current_time - search->time;
	movl	%r8d, 160(%rdi)	# tmp405, itemstats[id_2].evicted_time
# items.c:1196:                     if (search->exptime != 0)
	testl	%eax, %eax	# _210
	je	.L182	#,
# items.c:1197:                         itemstats[id].evicted_nonzero++;
	incq	8(%rdi)	# itemstats[id_2].evicted_nonzero
.L182:
# items.c:1198:                     if ((search->it_flags & ITEM_FETCHED) == 0) {
	movzwl	38(%r13), %eax	# search_127->it_flags, _84
# items.c:1198:                     if ((search->it_flags & ITEM_FETCHED) == 0) {
	testb	$8, %al	#, _84
	jne	.L183	#,
# items.c:1199:                         itemstats[id].evicted_unfetched++;
	imulq	$168, 8(%rsp), %rsi	#, %sfp, tmp423
	incq	48(%r9,%rsi)	# itemstats[id_2].evicted_unfetched
.L183:
# items.c:1201:                     if ((search->it_flags & ITEM_ACTIVE)) {
	testb	$16, %al	#, _84
	je	.L184	#,
# items.c:1202:                         itemstats[id].evicted_active++;
	imulq	$168, 8(%rsp), %rax	#, %sfp, tmp438
	incq	56(%r9,%rax)	# itemstats[id_2].evicted_active
.L184:
# items.c:1204:                     LOGGER_LOG(NULL, LOG_EVICTIONS, LOGGER_EVICTION, search);
	movl	logger_key(%rip), %edi	# logger_key,
	call	pthread_getspecific@PLT	#
# items.c:1204:                     LOGGER_LOG(NULL, LOG_EVICTIONS, LOGGER_EVICTION, search);
	testb	$64, 84(%rax)	#, myl_92->eflags
	jne	.L245	#,
.L185:
# items.c:1205:                     STORAGE_delete(ext_storage, search);
	movq	ext_storage(%rip), %rdi	# ext_storage,
	movq	%r13, %rsi	# search,
	call	storage_delete@PLT	#
# items.c:1206:                     do_item_unlink_nolock(search, hv);
	movl	%ebx, %esi	# hv,
	movq	%r13, %rdi	# search,
	call	do_item_unlink_nolock	#
# items.c:1232:     pthread_mutex_unlock(&lru_locks[id]);
	movq	16(%rsp), %rdi	# %sfp,
# items.c:1207:                     removed++;
	incl	4(%rsp)	# %sfp
# items.c:1208:                     if (settings.slab_automove == 2) {
	movl	140+settings(%rip), %ebx	# settings.slab_automove, _97
# items.c:1232:     pthread_mutex_unlock(&lru_locks[id]);
	call	pthread_mutex_unlock@PLT	#
# items.c:1240:         if ((flags & LRU_PULL_RETURN_ITEM) == 0) {
	andl	$4, %r12d	#, flags
	je	.L246	#,
.L187:
# items.c:1246:     if (do_slab_reassign) {
	cmpl	$2, %ebx	#, _97
	jne	.L149	#,
# items.c:1247:         slabs_reassign(settings.slab_rebal, -1, orig_id, SLABS_REASSIGN_ALLOW_EVICTIONS);
	movl	28(%rsp), %edx	# %sfp,
	movq	264+settings(%rip), %rdi	# settings.slab_rebal,
	movl	$1, %ecx	#,
	movl	$-1, %esi	#,
	call	slabs_reassign@PLT	#
	jmp	.L149	#
	.p2align 4
	.p2align 3
.L188:
# items.c:1215:                 } else if ((search->it_flags & ITEM_ACTIVE) != 0
	movzwl	38(%r13), %eax	# search_127->it_flags, _99
# items.c:1215:                 } else if ((search->it_flags & ITEM_ACTIVE) != 0
	testb	$16, %al	#, _99
	je	.L190	#,
# items.c:1216:                         && settings.lru_segmented) {
	cmpb	$0, 136+settings(%rip)	#, settings.lru_segmented
	jne	.L247	#,
.L190:
# items.c:1232:     pthread_mutex_unlock(&lru_locks[id]);
	movq	16(%rsp), %rdi	# %sfp,
	call	pthread_mutex_unlock@PLT	#
.L192:
# items.c:1241:             do_item_remove(it);
	movq	%r13, %rdi	# search,
	call	do_item_remove	#
# items.c:1242:             item_trylock_unlock(hold_lock);
	movq	%r14, %rdi	# hold_lock,
	call	item_trylock_unlock@PLT	#
	jmp	.L149	#
	.p2align 4
	.p2align 3
.L245:
# items.c:1204:                     LOGGER_LOG(NULL, LOG_EVICTIONS, LOGGER_EVICTION, search);
	movq	%rax, %rdi	# myl,
	movq	%r13, %rdx	# search,
	movl	$1, %esi	#,
	xorl	%eax, %eax	#
	call	logger_log@PLT	#
	jmp	.L185	#
	.p2align 4
	.p2align 3
.L243:
# items.c:1122:                 STORAGE_delete(ext_storage, search);
	movq	ext_storage(%rip), %rdi	# ext_storage,
# items.c:1119:                 itemstats[id].tailrepairs++;
	incq	32(%rbp)	# itemstats[id_2].tailrepairs
# items.c:1122:                 STORAGE_delete(ext_storage, search);
	movq	%r13, %rsi	# search,
# items.c:1120:                 search->refcount = 1;
	movw	$1, 36(%r13)	#, search_226->refcount
# items.c:1122:                 STORAGE_delete(ext_storage, search);
	call	storage_delete@PLT	#
# items.c:1123:                 do_item_unlink_nolock(search, hv);
	movl	%r14d, %esi	# hv,
	movq	%r13, %rdi	# search,
	call	do_item_unlink_nolock	#
# items.c:1124:                 item_trylock_unlock(hold_lock);
	movq	%r12, %rdi	# hold_lock,
	call	item_trylock_unlock@PLT	#
# items.c:1093:     for (; tries > 0 && search != NULL; tries--, search=next_it) {
	decl	%r15d	# tries
	setne	%al	#, _74
	jmp	.L156	#
	.p2align 4
	.p2align 3
.L151:
# items.c:1099:                 pthread_mutex_unlock(&lru_locks[id]);
	movq	16(%rsp), %rdi	# %sfp,
	call	pthread_mutex_unlock@PLT	#
# items.c:1100:                 return 0;
	jmp	.L150	#
	.p2align 4
	.p2align 3
.L195:
# items.c:1132:             itemstats[id].reclaimed++;
	imulq	$168, 8(%rsp), %rax	#, %sfp, tmp503
# items.c:1091:     search = tails[id];
	movq	%r15, %r13	# next_it, search
# items.c:1132:             itemstats[id].reclaimed++;
	leaq	itemstats(%rip), %r15	#, tmp502
# items.c:1093:     for (; tries > 0 && search != NULL; tries--, search=next_it) {
	movl	$4, %ebp	#, ivtmp.256
# items.c:1077:     int removed = 0;
	movl	$0, 4(%rsp)	#, %sfp
	movl	%r12d, 24(%rsp)	# flags, %sfp
# items.c:1132:             itemstats[id].reclaimed++;
	addq	%rax, %r15	# tmp503, tmp504
	.p2align 4
	.p2align 3
.L152:
# items.c:1096:         if (search->nbytes == 0 && search->nkey == 0 && search->it_flags == 1) {
	movl	32(%r13), %ecx	# search_65->nbytes,
# items.c:1096:         if (search->nbytes == 0 && search->nkey == 0 && search->it_flags == 1) {
	movzbl	41(%r13), %esi	# search_65->nkey,
# items.c:1096:         if (search->nbytes == 0 && search->nkey == 0 && search->it_flags == 1) {
	movzwl	38(%r13), %eax	# search_65->it_flags, prephitmp_61
# items.c:1096:         if (search->nbytes == 0 && search->nkey == 0 && search->it_flags == 1) {
	testl	%ecx, %ecx	#
	jne	.L171	#,
# items.c:1096:         if (search->nbytes == 0 && search->nkey == 0 && search->it_flags == 1) {
	testb	%sil, %sil	# pretmp_235
	jne	.L171	#,
# items.c:1096:         if (search->nbytes == 0 && search->nkey == 0 && search->it_flags == 1) {
	cmpw	$1, %ax	#, prephitmp_61
	je	.L151	#,
	.p2align 4
	.p2align 3
.L171:
# items.c:1105:         uint32_t hv = hash(ITEM_key(search), search->nkey);
	leaq	0(,%rax,4), %rax	#, _20
# items.c:1095:         next_it = search->prev;
	movq	8(%r13), %r12	# search_65->prev, next_it
# items.c:1105:         uint32_t hv = hash(ITEM_key(search), search->nkey);
	andl	$8, %eax	#, _21
# items.c:1105:         uint32_t hv = hash(ITEM_key(search), search->nkey);
	leaq	48(%r13,%rax), %rdi	#, _22
	call	*hash(%rip)	# hash
# items.c:1108:         if ((hold_lock = item_trylock(hv)) == NULL)
	movl	%eax, %edi	# hv,
# items.c:1105:         uint32_t hv = hash(ITEM_key(search), search->nkey);
	movl	%eax, %ebx	# hv, hv
# items.c:1108:         if ((hold_lock = item_trylock(hv)) == NULL)
	call	item_trylock@PLT	#
	movq	%rax, %r14	# hold_lock, hold_lock
# items.c:1108:         if ((hold_lock = item_trylock(hv)) == NULL)
	testq	%rax, %rax	# hold_lock
	je	.L173	#,
# items.c:1111:         if (refcount_incr(search) != 2) {
	movzwl	36(%r13), %eax	# search_65->refcount, tmp542
	incl	%eax	# _26
# items.c:1111:         if (refcount_incr(search) != 2) {
	movw	%ax, 36(%r13)	# _26, search_65->refcount
	cmpw	$2, %ax	#, _26
	je	.L174	#,
# items.c:1117:             if (settings.tail_repair_time &&
	movl	180+settings(%rip), %eax	# settings.tail_repair_time, _29
# items.c:1114:             itemstats[id].lrutail_reflocked++;
	incq	80(%r15)	# itemstats[id_2].lrutail_reflocked
# items.c:1117:             if (settings.tail_repair_time &&
	testl	%eax, %eax	# _29
	je	.L174	#,
# items.c:1118:                     search->time + settings.tail_repair_time < current_time) {
	addl	24(%r13), %eax	# search_65->time, _32
# items.c:1118:                     search->time + settings.tail_repair_time < current_time) {
	movl	current_time(%rip), %ecx	# current_time, current_time.88_33
# items.c:1117:             if (settings.tail_repair_time &&
	cmpl	%ecx, %eax	# current_time.88_33, _32
	jb	.L248	#,
.L174:
# items.c:1130:         if ((search->exptime != 0 && search->exptime < current_time)
	movl	28(%r13), %eax	# search_65->exptime, _210
# items.c:1130:         if ((search->exptime != 0 && search->exptime < current_time)
	testl	%eax, %eax	# _210
	je	.L176	#,
# items.c:1130:         if ((search->exptime != 0 && search->exptime < current_time)
	movl	current_time(%rip), %ecx	# current_time, current_time.90_38
# items.c:1130:         if ((search->exptime != 0 && search->exptime < current_time)
	cmpl	%ecx, %eax	# current_time.90_38, _210
	jb	.L177	#,
.L176:
# items.c:118:     rel_time_t oldest_live = settings.oldest_live;
	movl	36+settings(%rip), %ecx	# settings.oldest_live, oldest_live
# items.c:119:     if (it->time <= oldest_live && oldest_live <= current_time)
	movl	24(%r13), %esi	# search_65->time, _51
# items.c:119:     if (it->time <= oldest_live && oldest_live <= current_time)
	cmpl	%esi, %ecx	# _51, oldest_live
	jb	.L238	#,
# items.c:119:     if (it->time <= oldest_live && oldest_live <= current_time)
	movl	current_time(%rip), %edi	# current_time, current_time.1_41
# items.c:119:     if (it->time <= oldest_live && oldest_live <= current_time)
	cmpl	%ecx, %edi	# oldest_live, current_time.1_41
	jnb	.L177	#,
.L238:
	movl	24(%rsp), %r12d	# %sfp, flags
	jmp	.L178	#
	.p2align 4
	.p2align 3
.L177:
# items.c:1132:             itemstats[id].reclaimed++;
	incq	16(%r15)	# itemstats[id_2].reclaimed
# items.c:1133:             if ((search->it_flags & ITEM_FETCHED) == 0) {
	testb	$8, 38(%r13)	#, search_65->it_flags
	jne	.L179	#,
# items.c:1134:                 itemstats[id].expired_unfetched++;
	incq	40(%r15)	# itemstats[id_2].expired_unfetched
.L179:
# items.c:1137:             do_item_unlink_nolock(search, hv);
	movl	%ebx, %esi	# hv,
	movq	%r13, %rdi	# search,
	call	do_item_unlink_nolock	#
# items.c:1138:             STORAGE_delete(ext_storage, search);
	movq	%r13, %rsi	# search,
	movq	ext_storage(%rip), %rdi	# ext_storage,
	call	storage_delete@PLT	#
# items.c:1140:             do_item_remove(search);
	movq	%r13, %rdi	# search,
	call	do_item_remove	#
# items.c:1141:             item_trylock_unlock(hold_lock);
	movq	%r14, %rdi	# hold_lock,
	call	item_trylock_unlock@PLT	#
# items.c:1142:             removed++;
	incl	4(%rsp)	# %sfp
# items.c:1093:     for (; tries > 0 && search != NULL; tries--, search=next_it) {
	testl	%ebp, %ebp	# ivtmp.256
	setne	%al	#, _113
.L175:
# items.c:1093:     for (; tries > 0 && search != NULL; tries--, search=next_it) {
	decl	%ebp	# ivtmp.256
	testq	%r12, %r12	# next_it
	je	.L169	#,
	testb	%al, %al	# _113
	je	.L169	#,
	movq	%r12, %r13	# next_it, search
	jmp	.L152	#
	.p2align 4
	.p2align 3
.L173:
# items.c:1093:     for (; tries > 0 && search != NULL; tries--, search=next_it) {
	testl	%ebp, %ebp	# ivtmp.256
	setne	%al	#, _113
	jmp	.L175	#
	.p2align 4
	.p2align 3
.L248:
# items.c:1122:                 STORAGE_delete(ext_storage, search);
	movq	ext_storage(%rip), %rdi	# ext_storage,
# items.c:1119:                 itemstats[id].tailrepairs++;
	incq	32(%r15)	# itemstats[id_2].tailrepairs
# items.c:1122:                 STORAGE_delete(ext_storage, search);
	movq	%r13, %rsi	# search,
# items.c:1120:                 search->refcount = 1;
	movw	$1, 36(%r13)	#, search_65->refcount
# items.c:1122:                 STORAGE_delete(ext_storage, search);
	call	storage_delete@PLT	#
# items.c:1123:                 do_item_unlink_nolock(search, hv);
	movl	%ebx, %esi	# hv,
	movq	%r13, %rdi	# search,
	call	do_item_unlink_nolock	#
# items.c:1124:                 item_trylock_unlock(hold_lock);
	movq	%r14, %rdi	# hold_lock,
	call	item_trylock_unlock@PLT	#
# items.c:1093:     for (; tries > 0 && search != NULL; tries--, search=next_it) {
	testl	%ebp, %ebp	# ivtmp.256
	setne	%al	#, _113
# items.c:1125:                 continue;
	jmp	.L175	#
.L247:
# items.c:1217:                     itemstats[id].moves_to_warm++;
	imulq	$168, 8(%rsp), %rdx	#, %sfp, tmp460
	leaq	itemstats(%rip), %rsi	#, tmp458
# items.c:1218:                     search->it_flags &= ~ITEM_ACTIVE;
	andl	$-17, %eax	#, tmp472
# items.c:1220:                     do_item_unlink_q(search);
	movq	%r13, %rdi	# search,
# items.c:435:     pthread_mutex_lock(&lru_locks[it->slabs_clsid]);
	leaq	lru_locks(%rip), %rbx	#, tmp551
# items.c:1217:                     itemstats[id].moves_to_warm++;
	incq	96(%rsi,%rdx)	# itemstats[id_2].moves_to_warm
# items.c:1218:                     search->it_flags &= ~ITEM_ACTIVE;
	movw	%ax, 38(%r13)	# tmp472, search_127->it_flags
# items.c:1220:                     do_item_unlink_q(search);
	call	do_item_unlink_q	#
# items.c:1232:     pthread_mutex_unlock(&lru_locks[id]);
	movq	16(%rsp), %rdi	# %sfp,
# items.c:1221:                     removed++;
	incl	4(%rsp)	# %sfp
# items.c:1232:     pthread_mutex_unlock(&lru_locks[id]);
	call	pthread_mutex_unlock@PLT	#
# items.c:1236:             it->slabs_clsid = ITEM_clsid(it);
	movzbl	40(%r13), %eax	# search_127->slabs_clsid, _115
	andl	$63, %eax	#, _115
# items.c:1237:             it->slabs_clsid |= move_to_lru;
	orl	$64, %eax	#, _117
	movb	%al, 40(%r13)	# _117, search_127->slabs_clsid
# items.c:435:     pthread_mutex_lock(&lru_locks[it->slabs_clsid]);
	movzbl	%al, %eax	# _117, _131
	leaq	(%rax,%rax,4), %rax	#, _148
	leaq	(%rbx,%rax,8), %rdi	#, _203
	call	pthread_mutex_lock@PLT	#
# items.c:436:     do_item_link_q(it);
	movq	%r13, %rdi	# search,
	call	do_item_link_q	#
# items.c:437:     pthread_mutex_unlock(&lru_locks[it->slabs_clsid]);
	movzbl	40(%r13), %eax	# search_127->slabs_clsid, _234
	leaq	(%rax,%rax,4), %rax	#, _169
	leaq	(%rbx,%rax,8), %rdi	#, _206
	call	pthread_mutex_unlock@PLT	#
# items.c:1241:             do_item_remove(it);
	movq	%r13, %rdi	# search,
	call	do_item_remove	#
# items.c:1242:             item_trylock_unlock(hold_lock);
	movq	%r14, %rdi	# hold_lock,
	call	item_trylock_unlock@PLT	#
	jmp	.L149	#
.L246:
# items.c:1241:             do_item_remove(it);
	movq	%r13, %rdi	# search,
	call	do_item_remove	#
# items.c:1242:             item_trylock_unlock(hold_lock);
	movq	%r14, %rdi	# hold_lock,
	call	item_trylock_unlock@PLT	#
	jmp	.L187	#
	.cfi_endproc
.LFE146:
	.size	lru_pull_tail.constprop.0, .-lru_pull_tail.constprop.0
	.p2align 4
	.type	lru_pull_tail.constprop.1, @function
lru_pull_tail.constprop.1:
.LFB147:
	.cfi_startproc
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
# items.c:1078:     if (id == 0)
	testl	%edi, %edi	# orig_id
	jne	.L327	#,
.L250:
# items.c:1079:         return 0;
	xorl	%ebx, %ebx	# <retval>
.L249:
# items.c:1251: }
	addq	$56, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	%ebx, %eax	# <retval>,
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
.L327:
	.cfi_restore_state
	movq	%rsi, 24(%rsp)	# total_bytes, %sfp
# items.c:1090:     pthread_mutex_lock(&lru_locks[id]);
	movslq	%edi, %rsi	# orig_id, orig_id
	movl	%ecx, 40(%rsp)	# max_age, %sfp
	leaq	lru_locks(%rip), %rcx	#, tmp486
	leaq	(%rsi,%rsi,4), %rax	#, _126
	movq	%rsi, 16(%rsp)	# orig_id, %sfp
	movl	%edx, %ebx	# flags, flags
	movl	%edx, 44(%rsp)	# flags, %sfp
	leaq	(%rcx,%rax,8), %rax	#, _3
	movq	%rax, %rdi	# _3,
	movq	%rax, 8(%rsp)	# _3, %sfp
	call	pthread_mutex_lock@PLT	#
# items.c:1091:     search = tails[id];
	leaq	tails(%rip), %rax	#, tmp224
	movq	16(%rsp), %rsi	# %sfp, orig_id
	movq	(%rax,%rsi,8), %r13	# tails[orig_id_1(D)], next_it
# items.c:1093:     for (; tries > 0 && search != NULL; tries--, search=next_it) {
	testq	%r13, %r13	# next_it
	je	.L251	#,
	andl	$2, %ebx	#, flags
	movq	24(%rsp), %r9	# %sfp, total_bytes
	jne	.L290	#,
# items.c:1114:             itemstats[id].lrutail_reflocked++;
	imulq	$168, %rsi, %rax	#, orig_id, tmp449
	leaq	itemstats(%rip), %r12	#, tmp448
	movq	%r13, %r14	# next_it, next_it
# items.c:1077:     int removed = 0;
	xorl	%ebx, %ebx	# <retval>
# items.c:1114:             itemstats[id].lrutail_reflocked++;
	movl	$5, %r13d	#, tries
	addq	%rax, %r12	# tmp449, tmp450
	.p2align 4
	.p2align 3
.L267:
	movq	%r14, %r15	# next_it, search
# items.c:1095:         next_it = search->prev;
	movq	8(%r14), %r14	# search_120->prev, next_it
# items.c:1096:         if (search->nbytes == 0 && search->nkey == 0 && search->it_flags == 1) {
	movl	32(%r15), %edx	# search_179->nbytes,
# items.c:1096:         if (search->nbytes == 0 && search->nkey == 0 && search->it_flags == 1) {
	movzbl	41(%r15), %esi	# search_179->nkey,
# items.c:1096:         if (search->nbytes == 0 && search->nkey == 0 && search->it_flags == 1) {
	testl	%edx, %edx	#
	jne	.L328	#,
# items.c:1096:         if (search->nbytes == 0 && search->nkey == 0 && search->it_flags == 1) {
	movzwl	38(%r15), %eax	# search_179->it_flags, prephitmp_103
# items.c:1096:         if (search->nbytes == 0 && search->nkey == 0 && search->it_flags == 1) {
	testb	%sil, %sil	# pretmp_104
	jne	.L266	#,
# items.c:1096:         if (search->nbytes == 0 && search->nkey == 0 && search->it_flags == 1) {
	cmpw	$1, %ax	#, prephitmp_103
	je	.L256	#,
	.p2align 4
	.p2align 3
.L266:
# items.c:1105:         uint32_t hv = hash(ITEM_key(search), search->nkey);
	leaq	0(,%rax,4), %rax	#, _94
	andl	$8, %eax	#, _93
# items.c:1105:         uint32_t hv = hash(ITEM_key(search), search->nkey);
	leaq	48(%r15,%rax), %rdi	#, _92
	call	*hash(%rip)	# hash
# items.c:1108:         if ((hold_lock = item_trylock(hv)) == NULL)
	movl	%eax, %edi	# hv,
# items.c:1105:         uint32_t hv = hash(ITEM_key(search), search->nkey);
	movl	%eax, %ebp	#, hv
# items.c:1108:         if ((hold_lock = item_trylock(hv)) == NULL)
	call	item_trylock@PLT	#
# items.c:1108:         if ((hold_lock = item_trylock(hv)) == NULL)
	testq	%rax, %rax	# hold_lock
	je	.L325	#,
# items.c:1111:         if (refcount_incr(search) != 2) {
	movzwl	36(%r15), %ecx	# search_179->refcount, tmp489
	leal	1(%rcx), %esi	#, _2
# items.c:1111:         if (refcount_incr(search) != 2) {
	movw	%si, 36(%r15)	# _2, search_179->refcount
	cmpw	$2, %si	#, _2
	je	.L265	#,
# items.c:1117:             if (settings.tail_repair_time &&
	movl	180+settings(%rip), %esi	# settings.tail_repair_time, _211
# items.c:1114:             itemstats[id].lrutail_reflocked++;
	incq	80(%r12)	# itemstats[orig_id_1(D)].lrutail_reflocked
# items.c:1117:             if (settings.tail_repair_time &&
	testl	%esi, %esi	# _211
	je	.L265	#,
# items.c:1118:                     search->time + settings.tail_repair_time < current_time) {
	addl	24(%r15), %esi	# search_179->time, _214
# items.c:1118:                     search->time + settings.tail_repair_time < current_time) {
	movl	current_time(%rip), %edi	# current_time, current_time.88_215
# items.c:1117:             if (settings.tail_repair_time &&
	cmpl	%edi, %esi	# current_time.88_215, _214
	jb	.L329	#,
.L265:
# items.c:1130:         if ((search->exptime != 0 && search->exptime < current_time)
	movl	28(%r15), %esi	# search_179->exptime, _8
# items.c:1130:         if ((search->exptime != 0 && search->exptime < current_time)
	testl	%esi, %esi	# _8
	je	.L259	#,
# items.c:1130:         if ((search->exptime != 0 && search->exptime < current_time)
	movl	current_time(%rip), %edi	# current_time, current_time.90_171
# items.c:1130:         if ((search->exptime != 0 && search->exptime < current_time)
	cmpl	%edi, %esi	# current_time.90_171, _8
	jb	.L263	#,
.L259:
# items.c:118:     rel_time_t oldest_live = settings.oldest_live;
	movl	36+settings(%rip), %esi	# settings.oldest_live, oldest_live
# items.c:119:     if (it->time <= oldest_live && oldest_live <= current_time)
	movl	24(%r15), %edi	# search_179->time, _108
# items.c:119:     if (it->time <= oldest_live && oldest_live <= current_time)
	cmpl	%edi, %esi	# _108, oldest_live
	jb	.L326	#,
# items.c:119:     if (it->time <= oldest_live && oldest_live <= current_time)
	movl	current_time(%rip), %r8d	# current_time, current_time.1_181
# items.c:119:     if (it->time <= oldest_live && oldest_live <= current_time)
	cmpl	%esi, %r8d	# oldest_live, current_time.1_181
	jnb	.L263	#,
.L326:
	movq	24(%rsp), %r9	# %sfp, total_bytes
	movq	%rax, %r14	# hold_lock, hold_lock
# items.c:1153:                 limit = total_bytes * settings.hot_lru_pct / 100;
	movslq	208+settings(%rip), %rax	# settings.hot_lru_pct, _52
	movq	16(%rsp), %rsi	# %sfp, orig_id
# items.c:1153:                 limit = total_bytes * settings.hot_lru_pct / 100;
	imulq	%r9, %rax	# total_bytes, _54
# items.c:1155:                 if (limit == 0)
	cmpq	$99, %rax	#, _54
	jbe	.L280	#,
# items.c:1153:                 limit = total_bytes * settings.hot_lru_pct / 100;
	shrq	$2, %rax	#, tmp381
	movabsq	$2951479051793528259, %rdx	#, tmp383
	mulq	%rdx	# tmp383
	shrq	$2, %rdx	#, limit
.L281:
# items.c:1158:                 if ((search->it_flags & ITEM_ACTIVE) != 0) {
	movzwl	38(%r15), %eax	# search_122->it_flags, _61
# items.c:1158:                 if ((search->it_flags & ITEM_ACTIVE) != 0) {
	testb	$16, %al	#, _61
	je	.L282	#,
# items.c:1169:                         itemstats[id].moves_to_warm++;
	imulq	$168, %rsi, %rsi	#, orig_id, tmp395
# items.c:1159:                     search->it_flags &= ~ITEM_ACTIVE;
	andl	$-17, %eax	#, tmp392
# items.c:1171:                         do_item_unlink_q(search);
	movq	%r15, %rdi	# search,
# items.c:1160:                     removed++;
	incl	%ebx	# <retval>
# items.c:1159:                     search->it_flags &= ~ITEM_ACTIVE;
	movw	%ax, 38(%r15)	# tmp392, search_122->it_flags
# items.c:1169:                         itemstats[id].moves_to_warm++;
	leaq	itemstats(%rip), %rax	#, tmp393
	incq	96(%rax,%rsi)	# itemstats[orig_id_1(D)].moves_to_warm
# items.c:1171:                         do_item_unlink_q(search);
	call	do_item_unlink_q	#
# items.c:1232:     pthread_mutex_unlock(&lru_locks[id]);
	movq	8(%rsp), %rdi	# %sfp,
	call	pthread_mutex_unlock@PLT	#
	movl	$64, %eax	#, prephitmp_88
.L283:
# items.c:1236:             it->slabs_clsid = ITEM_clsid(it);
	movzbl	40(%r15), %edx	# search_122->slabs_clsid, _116
# items.c:435:     pthread_mutex_lock(&lru_locks[it->slabs_clsid]);
	leaq	lru_locks(%rip), %rbp	#, tmp494
# items.c:1236:             it->slabs_clsid = ITEM_clsid(it);
	andl	$63, %edx	#, _116
# items.c:1237:             it->slabs_clsid |= move_to_lru;
	orl	%edx, %eax	# _116, _118
	movb	%al, 40(%r15)	# _118, search_122->slabs_clsid
# items.c:435:     pthread_mutex_lock(&lru_locks[it->slabs_clsid]);
	movzbl	%al, %eax	# _118, _132
	leaq	(%rax,%rax,4), %rax	#, _202
	leaq	0(%rbp,%rax,8), %rdi	#, _204
	call	pthread_mutex_lock@PLT	#
# items.c:436:     do_item_link_q(it);
	movq	%r15, %rdi	# search,
	call	do_item_link_q	#
# items.c:437:     pthread_mutex_unlock(&lru_locks[it->slabs_clsid]);
	movzbl	40(%r15), %eax	# search_122->slabs_clsid, _188
	leaq	(%rax,%rax,4), %rax	#, _152
	leaq	0(%rbp,%rax,8), %rdi	#, _207
	call	pthread_mutex_unlock@PLT	#
.L287:
# items.c:1240:         if ((flags & LRU_PULL_RETURN_ITEM) == 0) {
	testb	$4, 44(%rsp)	#, %sfp
	jne	.L249	#,
# items.c:1241:             do_item_remove(it);
	movq	%r15, %rdi	# search,
	call	do_item_remove	#
# items.c:1242:             item_trylock_unlock(hold_lock);
	movq	%r14, %rdi	# hold_lock,
	call	item_trylock_unlock@PLT	#
	jmp	.L249	#
	.p2align 4
	.p2align 3
.L263:
# items.c:1132:             itemstats[id].reclaimed++;
	incq	16(%r12)	# itemstats[orig_id_1(D)].reclaimed
# items.c:1133:             if ((search->it_flags & ITEM_FETCHED) == 0) {
	testb	$8, 38(%r15)	#, search_179->it_flags
	jne	.L261	#,
# items.c:1134:                 itemstats[id].expired_unfetched++;
	incq	40(%r12)	# itemstats[orig_id_1(D)].expired_unfetched
.L261:
# items.c:1137:             do_item_unlink_nolock(search, hv);
	movl	%ebp, %esi	# hv,
	movq	%r15, %rdi	# search,
	movq	%rax, 32(%rsp)	# hold_lock, %sfp
	call	do_item_unlink_nolock	#
# items.c:1138:             STORAGE_delete(ext_storage, search);
	movq	%r15, %rsi	# search,
# items.c:1142:             removed++;
	incl	%ebx	# <retval>
# items.c:1138:             STORAGE_delete(ext_storage, search);
	movq	ext_storage(%rip), %rdi	# ext_storage,
	call	storage_delete@PLT	#
# items.c:1140:             do_item_remove(search);
	movq	%r15, %rdi	# search,
	call	do_item_remove	#
# items.c:1141:             item_trylock_unlock(hold_lock);
	movq	32(%rsp), %rdi	# %sfp,
	call	item_trylock_unlock@PLT	#
.L325:
# items.c:1093:     for (; tries > 0 && search != NULL; tries--, search=next_it) {
	decl	%r13d	# tries
	setne	%al	#, _167
.L256:
# items.c:1093:     for (; tries > 0 && search != NULL; tries--, search=next_it) {
	testq	%r14, %r14	# next_it
	je	.L269	#,
	testb	%al, %al	# _167
	jne	.L267	#,
.L269:
# items.c:1232:     pthread_mutex_unlock(&lru_locks[id]);
	movq	8(%rsp), %rdi	# %sfp,
	call	pthread_mutex_unlock@PLT	#
	jmp	.L249	#
	.p2align 4
	.p2align 3
.L328:
# items.c:1096:         if (search->nbytes == 0 && search->nkey == 0 && search->it_flags == 1) {
	movzwl	38(%r15), %eax	# search_179->it_flags, prephitmp_103
	jmp	.L266	#
	.p2align 4
	.p2align 3
.L282:
# items.c:1174:                 } else if (sizes_bytes[id] > limit ||
	leaq	sizes_bytes(%rip), %rax	#, tmp407
# items.c:1174:                 } else if (sizes_bytes[id] > limit ||
	cmpq	(%rax,%rsi,8), %rdx	# sizes_bytes[orig_id_1(D)], limit
	jb	.L284	#,
# items.c:1175:                            current_time - search->time > max_age) {
	movl	current_time(%rip), %eax	# current_time, current_time.92_71
	subl	%edi, %eax	# _108, _72
# items.c:1174:                 } else if (sizes_bytes[id] > limit ||
	cmpl	%eax, 40(%rsp)	# _72, %sfp
	jnb	.L285	#,
.L284:
# items.c:1176:                     itemstats[id].moves_to_cold++;
	imulq	$168, %rsi, %rsi	#, orig_id, tmp412
	leaq	itemstats(%rip), %rax	#, tmp410
# items.c:1178:                     do_item_unlink_q(search);
	movq	%r15, %rdi	# search,
# items.c:1180:                     removed++;
	incl	%ebx	# <retval>
# items.c:1176:                     itemstats[id].moves_to_cold++;
	incq	88(%rax,%rsi)	# itemstats[orig_id_1(D)].moves_to_cold
# items.c:1178:                     do_item_unlink_q(search);
	call	do_item_unlink_q	#
# items.c:1232:     pthread_mutex_unlock(&lru_locks[id]);
	movq	8(%rsp), %rdi	# %sfp,
	call	pthread_mutex_unlock@PLT	#
	movl	$-128, %eax	#, prephitmp_88
	jmp	.L283	#
	.p2align 4
	.p2align 3
.L280:
# items.c:1156:                     limit = total_bytes * settings.warm_lru_pct / 100;
	movslq	212+settings(%rip), %rdx	# settings.warm_lru_pct, _58
# items.c:1156:                     limit = total_bytes * settings.warm_lru_pct / 100;
	movabsq	$2951479051793528259, %rax	#, tmp388
# items.c:1156:                     limit = total_bytes * settings.warm_lru_pct / 100;
	imulq	%r9, %rdx	# total_bytes, _59
# items.c:1156:                     limit = total_bytes * settings.warm_lru_pct / 100;
	shrq	$2, %rdx	#, tmp388
	mulq	%rdx	# tmp388
	shrq	$2, %rdx	#, limit
	jmp	.L281	#
	.p2align 4
	.p2align 3
.L329:
# items.c:1122:                 STORAGE_delete(ext_storage, search);
	movq	ext_storage(%rip), %rdi	# ext_storage,
# items.c:1119:                 itemstats[id].tailrepairs++;
	incq	32(%r12)	# itemstats[orig_id_1(D)].tailrepairs
# items.c:1122:                 STORAGE_delete(ext_storage, search);
	movq	%r15, %rsi	# search,
# items.c:1120:                 search->refcount = 1;
	movw	$1, 36(%r15)	#, search_179->refcount
	movq	%rax, 32(%rsp)	# hold_lock, %sfp
# items.c:1122:                 STORAGE_delete(ext_storage, search);
	call	storage_delete@PLT	#
# items.c:1123:                 do_item_unlink_nolock(search, hv);
	movl	%ebp, %esi	# hv,
	movq	%r15, %rdi	# search,
	call	do_item_unlink_nolock	#
# items.c:1124:                 item_trylock_unlock(hold_lock);
	movq	32(%rsp), %rdi	# %sfp,
	call	item_trylock_unlock@PLT	#
# items.c:1093:     for (; tries > 0 && search != NULL; tries--, search=next_it) {
	decl	%r13d	# tries
	setne	%al	#, _167
	jmp	.L256	#
	.p2align 4
	.p2align 3
.L251:
# items.c:1099:                 pthread_mutex_unlock(&lru_locks[id]);
	movq	8(%rsp), %rdi	# %sfp,
	call	pthread_mutex_unlock@PLT	#
# items.c:1100:                 return 0;
	jmp	.L250	#
	.p2align 4
	.p2align 3
.L290:
# items.c:1132:             itemstats[id].reclaimed++;
	imulq	$168, %rsi, %rax	#, orig_id, tmp452
	movq	%r13, %r14	# next_it, search
	leaq	itemstats(%rip), %r13	#, tmp451
# items.c:1093:     for (; tries > 0 && search != NULL; tries--, search=next_it) {
	movl	$4, %ebp	#, ivtmp.264
# items.c:1077:     int removed = 0;
	xorl	%ebx, %ebx	# <retval>
	movq	%rsi, 16(%rsp)	# orig_id, %sfp
	movq	%r9, 24(%rsp)	# total_bytes, %sfp
# items.c:1132:             itemstats[id].reclaimed++;
	addq	%rax, %r13	# tmp452, tmp453
	.p2align 4
	.p2align 3
.L252:
# items.c:1096:         if (search->nbytes == 0 && search->nkey == 0 && search->it_flags == 1) {
	movl	32(%r14), %eax	# search_134->nbytes,
# items.c:1096:         if (search->nbytes == 0 && search->nkey == 0 && search->it_flags == 1) {
	movzbl	41(%r14), %esi	# search_134->nkey,
# items.c:1096:         if (search->nbytes == 0 && search->nkey == 0 && search->it_flags == 1) {
	testl	%eax, %eax	#
# items.c:1096:         if (search->nbytes == 0 && search->nkey == 0 && search->it_flags == 1) {
	movzwl	38(%r14), %eax	# search_134->it_flags, pretmp_80
# items.c:1096:         if (search->nbytes == 0 && search->nkey == 0 && search->it_flags == 1) {
	jne	.L271	#,
# items.c:1096:         if (search->nbytes == 0 && search->nkey == 0 && search->it_flags == 1) {
	testb	%sil, %sil	# pretmp_176
	jne	.L271	#,
# items.c:1096:         if (search->nbytes == 0 && search->nkey == 0 && search->it_flags == 1) {
	cmpw	$1, %ax	#, pretmp_80
	je	.L251	#,
	.p2align 4
	.p2align 3
.L271:
# items.c:1105:         uint32_t hv = hash(ITEM_key(search), search->nkey);
	leaq	0(,%rax,4), %rax	#, _20
# items.c:1095:         next_it = search->prev;
	movq	8(%r14), %r15	# search_134->prev, next_it
# items.c:1105:         uint32_t hv = hash(ITEM_key(search), search->nkey);
	andl	$8, %eax	#, _21
# items.c:1105:         uint32_t hv = hash(ITEM_key(search), search->nkey);
	leaq	48(%r14,%rax), %rdi	#, _22
	call	*hash(%rip)	# hash
# items.c:1108:         if ((hold_lock = item_trylock(hv)) == NULL)
	movl	%eax, %edi	# hv,
# items.c:1105:         uint32_t hv = hash(ITEM_key(search), search->nkey);
	movl	%eax, %r12d	#, hv
# items.c:1108:         if ((hold_lock = item_trylock(hv)) == NULL)
	call	item_trylock@PLT	#
# items.c:1108:         if ((hold_lock = item_trylock(hv)) == NULL)
	testq	%rax, %rax	# hold_lock
	je	.L273	#,
# items.c:1111:         if (refcount_incr(search) != 2) {
	movzwl	36(%r14), %ecx	# search_134->refcount, tmp490
	incl	%ecx	# _26
# items.c:1111:         if (refcount_incr(search) != 2) {
	movw	%cx, 36(%r14)	# _26, search_134->refcount
	cmpw	$2, %cx	#, _26
	je	.L274	#,
# items.c:1117:             if (settings.tail_repair_time &&
	movl	180+settings(%rip), %ecx	# settings.tail_repair_time, _29
# items.c:1114:             itemstats[id].lrutail_reflocked++;
	incq	80(%r13)	# itemstats[orig_id_1(D)].lrutail_reflocked
# items.c:1117:             if (settings.tail_repair_time &&
	testl	%ecx, %ecx	# _29
	je	.L274	#,
# items.c:1118:                     search->time + settings.tail_repair_time < current_time) {
	addl	24(%r14), %ecx	# search_134->time, _32
# items.c:1118:                     search->time + settings.tail_repair_time < current_time) {
	movl	current_time(%rip), %esi	# current_time, current_time.88_33
# items.c:1117:             if (settings.tail_repair_time &&
	cmpl	%esi, %ecx	# current_time.88_33, _32
	jb	.L330	#,
.L274:
# items.c:1130:         if ((search->exptime != 0 && search->exptime < current_time)
	movl	28(%r14), %ecx	# search_134->exptime, _37
# items.c:1130:         if ((search->exptime != 0 && search->exptime < current_time)
	testl	%ecx, %ecx	# _37
	je	.L276	#,
# items.c:1130:         if ((search->exptime != 0 && search->exptime < current_time)
	movl	current_time(%rip), %esi	# current_time, current_time.90_38
# items.c:1130:         if ((search->exptime != 0 && search->exptime < current_time)
	cmpl	%esi, %ecx	# current_time.90_38, _37
	jb	.L277	#,
.L276:
# items.c:118:     rel_time_t oldest_live = settings.oldest_live;
	movl	36+settings(%rip), %ecx	# settings.oldest_live, oldest_live
# items.c:119:     if (it->time <= oldest_live && oldest_live <= current_time)
	movl	24(%r14), %edi	# search_134->time, _108
# items.c:119:     if (it->time <= oldest_live && oldest_live <= current_time)
	cmpl	%edi, %ecx	# _108, oldest_live
	jb	.L322	#,
# items.c:119:     if (it->time <= oldest_live && oldest_live <= current_time)
	movl	current_time(%rip), %esi	# current_time, current_time.1_41
# items.c:119:     if (it->time <= oldest_live && oldest_live <= current_time)
	cmpl	%ecx, %esi	# oldest_live, current_time.1_41
	jnb	.L277	#,
.L322:
	movq	%r14, %r15	# search, search
	jmp	.L326	#
	.p2align 4
	.p2align 3
.L277:
# items.c:1132:             itemstats[id].reclaimed++;
	incq	16(%r13)	# itemstats[orig_id_1(D)].reclaimed
# items.c:1133:             if ((search->it_flags & ITEM_FETCHED) == 0) {
	testb	$8, 38(%r14)	#, search_134->it_flags
	jne	.L279	#,
# items.c:1134:                 itemstats[id].expired_unfetched++;
	incq	40(%r13)	# itemstats[orig_id_1(D)].expired_unfetched
.L279:
# items.c:1137:             do_item_unlink_nolock(search, hv);
	movl	%r12d, %esi	# hv,
	movq	%r14, %rdi	# search,
	movq	%rax, 32(%rsp)	# hold_lock, %sfp
	call	do_item_unlink_nolock	#
# items.c:1138:             STORAGE_delete(ext_storage, search);
	movq	%r14, %rsi	# search,
# items.c:1142:             removed++;
	incl	%ebx	# <retval>
# items.c:1138:             STORAGE_delete(ext_storage, search);
	movq	ext_storage(%rip), %rdi	# ext_storage,
	call	storage_delete@PLT	#
# items.c:1140:             do_item_remove(search);
	movq	%r14, %rdi	# search,
	call	do_item_remove	#
# items.c:1141:             item_trylock_unlock(hold_lock);
	movq	32(%rsp), %rdi	# %sfp,
	call	item_trylock_unlock@PLT	#
# items.c:1093:     for (; tries > 0 && search != NULL; tries--, search=next_it) {
	testl	%ebp, %ebp	# ivtmp.264
	setne	%al	#, prephitmp_79
.L275:
# items.c:1093:     for (; tries > 0 && search != NULL; tries--, search=next_it) {
	decl	%ebp	# ivtmp.264
	testq	%r15, %r15	# next_it
	je	.L269	#,
	testb	%al, %al	# prephitmp_79
	je	.L269	#,
	movq	%r15, %r14	# next_it, search
	jmp	.L252	#
	.p2align 4
	.p2align 3
.L273:
# items.c:1093:     for (; tries > 0 && search != NULL; tries--, search=next_it) {
	testl	%ebp, %ebp	# ivtmp.264
	setne	%al	#, prephitmp_79
	jmp	.L275	#
	.p2align 4
	.p2align 3
.L330:
# items.c:1122:                 STORAGE_delete(ext_storage, search);
	movq	ext_storage(%rip), %rdi	# ext_storage,
# items.c:1119:                 itemstats[id].tailrepairs++;
	incq	32(%r13)	# itemstats[orig_id_1(D)].tailrepairs
# items.c:1122:                 STORAGE_delete(ext_storage, search);
	movq	%r14, %rsi	# search,
# items.c:1120:                 search->refcount = 1;
	movw	$1, 36(%r14)	#, search_134->refcount
	movq	%rax, 32(%rsp)	# hold_lock, %sfp
# items.c:1122:                 STORAGE_delete(ext_storage, search);
	call	storage_delete@PLT	#
# items.c:1123:                 do_item_unlink_nolock(search, hv);
	movl	%r12d, %esi	# hv,
	movq	%r14, %rdi	# search,
	call	do_item_unlink_nolock	#
# items.c:1124:                 item_trylock_unlock(hold_lock);
	movq	32(%rsp), %rdi	# %sfp,
	call	item_trylock_unlock@PLT	#
# items.c:1093:     for (; tries > 0 && search != NULL; tries--, search=next_it) {
	testl	%ebp, %ebp	# ivtmp.264
	setne	%al	#, prephitmp_79
# items.c:1125:                 continue;
	jmp	.L275	#
.L285:
# items.c:1232:     pthread_mutex_unlock(&lru_locks[id]);
	movq	8(%rsp), %rdi	# %sfp,
	call	pthread_mutex_unlock@PLT	#
	jmp	.L287	#
	.cfi_endproc
.LFE147:
	.size	lru_pull_tail.constprop.1, .-lru_pull_tail.constprop.1
	.p2align 4
	.globl	do_item_alloc_pull
	.type	do_item_alloc_pull, @function
do_item_alloc_pull:
.LFB93:
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
	leaq	settings(%rip), %r13	#, tmp137
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movl	%esi, %ebp	# id,
# items.c:171:     for (i = 0; i < 10; i++) {
	xorl	%ebx, %ebx	# i
# items.c:162: item *do_item_alloc_pull(const size_t ntotal, const unsigned int id) {
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 48
	jmp	.L335	#
	.p2align 4
	.p2align 3
.L334:
# items.c:171:     for (i = 0; i < 10; i++) {
	incl	%ebx	# i
# items.c:171:     for (i = 0; i < 10; i++) {
	cmpl	$10, %ebx	#, i
	je	.L336	#,
.L335:
# items.c:173:         if (!settings.lru_segmented) {
	cmpb	$0, 136(%r13)	#, settings.lru_segmented
	je	.L343	#,
.L332:
# items.c:176:         it = slabs_alloc(id, 0);
	xorl	%esi, %esi	#
	movl	%ebp, %edi	# id,
	call	slabs_alloc@PLT	#
	movq	%rax, %r12	#, <retval>
# items.c:178:         if (it == NULL) {
	testq	%rax, %rax	# <retval>
	jne	.L333	#,
# items.c:182:             if (lru_pull_tail(id, COLD_LRU, 0, LRU_PULL_EVICT, 0, NULL) <= 0) {
	xorl	%esi, %esi	#
	movl	$1, %edx	#,
	movl	%ebp, %edi	# id,
	call	lru_pull_tail.constprop.0	#
# items.c:182:             if (lru_pull_tail(id, COLD_LRU, 0, LRU_PULL_EVICT, 0, NULL) <= 0) {
	testl	%eax, %eax	# _4
	jne	.L334	#,
# items.c:183:                 if (settings.lru_segmented) {
	cmpb	$0, 136(%r13)	#, settings.lru_segmented
	je	.L333	#,
# items.c:184:                     lru_pull_tail(id, HOT_LRU, 0, 0, 0, NULL);
	xorl	%ecx, %ecx	#
	xorl	%edx, %edx	#
	xorl	%esi, %esi	#
	movl	%ebp, %edi	# id,
# items.c:171:     for (i = 0; i < 10; i++) {
	incl	%ebx	# i
# items.c:184:                     lru_pull_tail(id, HOT_LRU, 0, 0, 0, NULL);
	call	lru_pull_tail.constprop.1	#
# items.c:171:     for (i = 0; i < 10; i++) {
	cmpl	$10, %ebx	#, i
	jne	.L335	#,
.L336:
# items.c:195:         pthread_mutex_lock(&lru_locks[id]);
	leaq	0(%rbp,%rbp,4), %rdx	#, _12
# items.c:196:         itemstats[id].direct_reclaims += i;
	imulq	$168, %rbp, %rbp	#, _15, tmp123
# items.c:195:         pthread_mutex_lock(&lru_locks[id]);
	leaq	lru_locks(%rip), %rax	#, tmp120
# items.c:196:         itemstats[id].direct_reclaims += i;
	movslq	%ebx, %rbx	# i, _9
# items.c:195:         pthread_mutex_lock(&lru_locks[id]);
	leaq	(%rax,%rdx,8), %r13	#, _7
	movq	%r13, %rdi	# _7,
	call	pthread_mutex_lock@PLT	#
# items.c:196:         itemstats[id].direct_reclaims += i;
	leaq	itemstats(%rip), %rax	#, tmp121
# items.c:197:         pthread_mutex_unlock(&lru_locks[id]);
	movq	%r13, %rdi	# _7,
# items.c:196:         itemstats[id].direct_reclaims += i;
	addq	%rbx, 112(%rax,%rbp)	# _9, itemstats[id_19(D)].direct_reclaims
# items.c:197:         pthread_mutex_unlock(&lru_locks[id]);
	call	pthread_mutex_unlock@PLT	#
# items.c:201: }
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movq	%r12, %rax	# <retval>,
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
.L343:
	.cfi_restore_state
# items.c:174:             lru_pull_tail(id, COLD_LRU, 0, 0, 0, NULL);
	xorl	%edx, %edx	#
	xorl	%esi, %esi	#
	movl	%ebp, %edi	# id,
	call	lru_pull_tail.constprop.0	#
	jmp	.L332	#
	.p2align 4
	.p2align 3
.L333:
# items.c:194:     if (i > 0) {
	testl	%ebx, %ebx	# i
	jne	.L336	#,
# items.c:201: }
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 40
	movq	%r12, %rax	# <retval>,
	popq	%rbx	#
	.cfi_def_cfa_offset 32
	popq	%rbp	#
	.cfi_def_cfa_offset 24
	popq	%r12	#
	.cfi_def_cfa_offset 16
	popq	%r13	#
	.cfi_def_cfa_offset 8
	ret	
	.cfi_endproc
.LFE93:
	.size	do_item_alloc_pull, .-do_item_alloc_pull
	.p2align 4
	.globl	do_item_alloc_chunk
	.type	do_item_alloc_chunk, @function
do_item_alloc_chunk:
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
# items.c:210:     size_t size = bytes_remain + sizeof(item_chunk);
	addq	$48, %rsi	#, size_20
# items.c:208: item_chunk *do_item_alloc_chunk(item_chunk *ch, const size_t bytes_remain) {
	pushq	%rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
# items.c:211:     if (size > settings.slab_chunk_size_max)
	movslq	120+settings(%rip), %rbp	# settings.slab_chunk_size_max, _2
# items.c:208: item_chunk *do_item_alloc_chunk(item_chunk *ch, const size_t bytes_remain) {
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
# items.c:208: item_chunk *do_item_alloc_chunk(item_chunk *ch, const size_t bytes_remain) {
	movq	%rdi, %r13	# ch, ch
# items.c:211:     if (size > settings.slab_chunk_size_max)
	cmpq	%rsi, %rbp	# size_20, _2
	cmova	%rsi, %rbp	# _2,, size_20, size
# items.c:213:     unsigned int id = slabs_clsid(size);
	movq	%rbp, %rdi	# size,
	call	slabs_clsid@PLT	#
# items.c:215:     item_chunk *nch = (item_chunk *) do_item_alloc_pull(size, id);
	movq	%rbp, %rdi	# size,
	movl	%eax, %esi	# id,
# items.c:213:     unsigned int id = slabs_clsid(size);
	movl	%eax, %r12d	# id, id
# items.c:215:     item_chunk *nch = (item_chunk *) do_item_alloc_pull(size, id);
	call	do_item_alloc_pull	#
	movq	%rax, %rbx	# <retval>, <retval>
# items.c:216:     if (nch == NULL) {
	testq	%rax, %rax	# <retval>
	je	.L353	#,
.L345:
# items.c:236:     slabs_mlock();
	call	slabs_mlock@PLT	#
# items.c:237:     nch->head = ch->head;
	movq	16(%r13), %rax	# ch_32(D)->head, _6
# items.c:240:     nch->next = 0;
	vpxor	%xmm0, %xmm0, %xmm0	# _43
# items.c:243:     nch->size = size - sizeof(item_chunk);
	subl	$48, %ebp	#, tmp125
# items.c:240:     nch->next = 0;
	vpinsrq	$1, %r13, %xmm0, %xmm0	#, ch, _43, _43
# items.c:237:     nch->head = ch->head;
	movq	%rax, 16(%rbx)	# _6, nch_15->head
# items.c:238:     ch->next = nch;
	movq	%rbx, 0(%r13)	# <retval>, ch_32(D)->next
# items.c:244:     nch->it_flags |= ITEM_CHUNK;
	orw	$64, 38(%rbx)	#, nch_15->it_flags
# items.c:240:     nch->next = 0;
	vmovdqu	%xmm0, (%rbx)	# _43, MEM <vector(2) long unsigned int> [(struct _strchunk * *)nch_15]
# items.c:241:     nch->used = 0;
	movl	$0, 28(%rbx)	#, nch_15->used
# items.c:242:     nch->slabs_clsid = id;
	movb	%r12b, 40(%rbx)	# id, nch_15->slabs_clsid
# items.c:243:     nch->size = size - sizeof(item_chunk);
	movl	%ebp, 24(%rbx)	# tmp125, nch_15->size
# items.c:245:     slabs_munlock();
	call	slabs_munlock@PLT	#
.L344:
# items.c:247: }
	movq	%rbx, %rax	# <retval>,
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
.L353:
	.cfi_restore_state
# items.c:222:         if (size == settings.slab_chunk_size_max) {
	movslq	120+settings(%rip), %r14	# settings.slab_chunk_size_max, _5
# items.c:222:         if (size == settings.slab_chunk_size_max) {
	cmpq	%rbp, %r14	# size, _5
	je	.L344	#,
# items.c:226:             id = slabs_clsid(size);
	movq	%r14, %rdi	# _5,
	call	slabs_clsid@PLT	#
# items.c:227:             nch = (item_chunk *) do_item_alloc_pull(size, id);
	movq	%r14, %rdi	# _5,
	movl	%eax, %esi	# id,
# items.c:226:             id = slabs_clsid(size);
	movl	%eax, %r12d	# id, id
# items.c:227:             nch = (item_chunk *) do_item_alloc_pull(size, id);
	call	do_item_alloc_pull	#
# items.c:229:             if (nch == NULL)
	testq	%rax, %rax	# nch
	je	.L344	#,
# items.c:227:             nch = (item_chunk *) do_item_alloc_pull(size, id);
	movq	%rax, %rbx	# nch, <retval>
# items.c:225:             size = settings.slab_chunk_size_max;
	movq	%r14, %rbp	# _5, size
	jmp	.L345	#
	.cfi_endproc
.LFE94:
	.size	do_item_alloc_chunk, .-do_item_alloc_chunk
	.section	.rodata.str1.8
	.align 8
.LC19:
	.string	"it->it_flags == 0 || it->it_flags == ITEM_CHUNKED"
	.section	.text.unlikely
.LCOLDB20:
	.text
.LHOTB20:
	.p2align 4
	.globl	do_item_alloc
	.type	do_item_alloc, @function
do_item_alloc:
.LFB95:
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
	subq	$40, %rsp	#,
	.cfi_def_cfa_offset 96
# items.c:255:     if (nbytes < 2)
	cmpl	$1, %r8d	#, nbytes
	jle	.L356	#,
# items.c:258:     size_t ntotal = item_make_header(nkey + 1, flags, nbytes, suffix, &nsuffix);
	leal	1(%rsi), %eax	#, _3
# items.c:154:     if (flags == 0) {
	testl	%edx, %edx	# flags
	movl	%ecx, %r13d	# exptime, exptime
# items.c:159:     return sizeof(item) + nkey + *nsuffix + nbytes;
	movslq	%r8d, %rcx	# nbytes, _117
# items.c:159:     return sizeof(item) + nkey + *nsuffix + nbytes;
	movzbl	%al, %eax	# _3, _114
# items.c:154:     if (flags == 0) {
	setne	%r14b	#, _130
# items.c:159:     return sizeof(item) + nkey + *nsuffix + nbytes;
	addq	%rcx, %rax	# _117, _1
# items.c:259:     if (settings.use_cas) {
	cmpb	$0, 104+settings(%rip)	#, settings.use_cas
# items.c:154:     if (flags == 0) {
	leal	0(,%r14,4), %r15d	#, _132
# items.c:159:     return sizeof(item) + nkey + *nsuffix + nbytes;
	movzbl	%r15b, %ecx	# _132, _115
# items.c:260:         ntotal += sizeof(uint64_t);
	leaq	56(%rax,%rcx), %rbp	#, ntotal
# items.c:259:     if (settings.use_cas) {
	je	.L386	#,
.L358:
	movq	%rdi, 8(%rsp)	# key, %sfp
# items.c:263:     unsigned int id = slabs_clsid(ntotal);
	movq	%rbp, %rdi	# ntotal,
	movl	%edx, %r12d	# flags, flags
	movl	%r8d, 20(%rsp)	# nbytes, %sfp
	movq	%rsi, %rbx	# nkey, nkey
	call	slabs_clsid@PLT	#
	movl	%eax, %edx	# id, id
# items.c:265:     if (id == 0)
	testl	%eax, %eax	# id
	je	.L356	#,
# items.c:271:     if (ntotal > settings.slab_chunk_size_max) {
	movslq	120+settings(%rip), %rax	# settings.slab_chunk_size_max, _7
# items.c:271:     if (ntotal > settings.slab_chunk_size_max) {
	cmpq	%rbp, %rax	# ntotal, _7
	jnb	.L360	#,
# items.c:277:         if (settings.use_cas) {
	cmpb	$0, 104+settings(%rip)	#, settings.use_cas
# items.c:276:         int htotal = nkey + 1 + nsuffix + sizeof(item) + sizeof(item_chunk);
	movzbl	%r15b, %r15d	# _132, _8
	leal	(%r15,%rbx), %eax	#, _10
# items.c:278:             htotal += sizeof(uint64_t);
	leal	105(%r15,%rbx), %r15d	#, _11
# items.c:277:         if (settings.use_cas) {
	jne	.L362	#,
# items.c:276:         int htotal = nkey + 1 + nsuffix + sizeof(item) + sizeof(item_chunk);
	leal	97(%rax), %r15d	#, _11
.L362:
# items.c:287:         hdr_id = slabs_clsid(htotal);
	movslq	%r15d, %rdi	# _11,
	movl	%edx, 28(%rsp)	# id, %sfp
	call	slabs_clsid@PLT	#
# items.c:288:         it = do_item_alloc_pull(htotal, hdr_id);
	movslq	%r15d, %rdi	# _11,
	movl	%eax, %esi	# hdr_id,
# items.c:287:         hdr_id = slabs_clsid(htotal);
	movl	%eax, 24(%rsp)	# hdr_id, %sfp
# items.c:288:         it = do_item_alloc_pull(htotal, hdr_id);
	call	do_item_alloc_pull	#
# items.c:290:         if (it != NULL)
	testq	%rax, %rax	# <retval>
	movl	28(%rsp), %edx	# %sfp, id
# items.c:288:         it = do_item_alloc_pull(htotal, hdr_id);
	movq	%rax, %r15	# <retval>, <retval>
# items.c:290:         if (it != NULL)
	je	.L366	#,
# items.c:291:             it->it_flags |= ITEM_CHUNKED;
	movzwl	38(%rax), %ecx	# it_85->it_flags, _16
	orl	$32, %ecx	#, _16
	movw	%cx, 38(%rax)	# _16, it_85->it_flags
.L365:
# items.c:303:     assert(it->it_flags == 0 || it->it_flags == ITEM_CHUNKED);
	testw	$-33, %cx	#, _16
	jne	.L384	#,
# items.c:312:     if (settings.temp_lru &&
	cmpb	$0, 236+settings(%rip)	#, settings.temp_lru
# items.c:307:     it->next = it->prev = 0;
	vpxor	%xmm0, %xmm0, %xmm0	# tmp216
	vmovdqu	%xmm0, (%r15)	# tmp216, MEM <vector(2) long unsigned int> [(struct _stritem * *)it_34]
# items.c:312:     if (settings.temp_lru &&
	je	.L368	#,
# items.c:313:             exptime - current_time <= settings.temporary_ttl) {
	movl	current_time(%rip), %esi	# current_time, current_time.8_24
	movl	%r13d, %eax	# exptime, _25
	subl	%esi, %eax	# current_time.8_24, _25
# items.c:312:     if (settings.temp_lru &&
	cmpl	%eax, 240+settings(%rip)	# _25, settings.temporary_ttl
	jnb	.L387	#,
.L368:
# items.c:315:     } else if (settings.lru_segmented) {
	cmpb	$0, 136+settings(%rip)	#, settings.lru_segmented
	jne	.L369	#,
# items.c:319:         id |= COLD_LRU;
	orb	$-128, %dl	#, id
.L369:
# items.c:325:     it->it_flags |= nsuffix != 0 ? ITEM_CFLAGS : 0;
	movzbl	104+settings(%rip), %eax	# settings.use_cas, _20
	sall	$8, %r14d	#, _124
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movq	8(%rsp), %rsi	# %sfp,
# items.c:328:     memcpy(ITEM_key(it), key, nkey);
	leaq	48(%r15), %rbp	#, _36
# items.c:325:     it->it_flags |= nsuffix != 0 ? ITEM_CFLAGS : 0;
	addl	%eax, %eax	# _125
	orl	%eax, %r14d	# _125, _129
# items.c:321:     it->slabs_clsid = id;
	movzbl	%dl, %eax	# id, _136
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movq	%rbx, %rdx	# nkey,
# items.c:321:     it->slabs_clsid = id;
	movb	%bl, %ah	# nkey, _136
# items.c:325:     it->it_flags |= nsuffix != 0 ? ITEM_CFLAGS : 0;
	orl	%ecx, %r14d	# _16, _35
# items.c:321:     it->slabs_clsid = id;
	movw	%ax, 40(%r15)	# _136, MEM <vector(2) unsigned char> [(unsigned char *)it_34 + 40B]
# items.c:327:     it->nbytes = nbytes;
	movl	20(%rsp), %eax	# %sfp, nbytes
# items.c:325:     it->it_flags |= nsuffix != 0 ? ITEM_CFLAGS : 0;
	movw	%r14w, 38(%r15)	# _35, it_34->it_flags
# items.c:327:     it->nbytes = nbytes;
	movl	%eax, 32(%r15)	# nbytes, it_34->nbytes
# items.c:328:     memcpy(ITEM_key(it), key, nkey);
	leaq	0(,%r14,4), %rax	#, _38
	andl	$8, %eax	#, _39
# items.c:328:     memcpy(ITEM_key(it), key, nkey);
	leaq	48(%r15,%rax), %rdi	#, _40
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	call	memcpy@PLT	#
# items.c:329:     it->exptime = exptime;
	movl	%r13d, 28(%r15)	# exptime, it_34->exptime
# items.c:330:     if (nsuffix > 0) {
	testl	%r12d, %r12d	# flags
	jne	.L388	#,
.L370:
# items.c:335:     if (it->it_flags & ITEM_CHUNKED) {
	movzwl	38(%r15), %eax	# it_34->it_flags, _50
# items.c:335:     if (it->it_flags & ITEM_CHUNKED) {
	testb	$32, %al	#, _50
	je	.L371	#,
# items.c:336:         item_chunk *chunk = (item_chunk *) ITEM_schunk(it);
	movl	%eax, %edx	# _50, _54
	leaq	0(,%rax,4), %rax	#, _58
# items.c:338:         chunk->next = 0;
	vpxor	%xmm0, %xmm0, %xmm0	# tmp256
# items.c:336:         item_chunk *chunk = (item_chunk *) ITEM_schunk(it);
	shrl	$6, %edx	#, _54
	andl	$8, %eax	#, _59
	andl	$4, %edx	#, _55
	addq	%rdx, %rax	# _55, _140
	movzbl	41(%r15), %edx	# it_34->nkey, _52
	leaq	1(%rax,%rdx), %rax	#, _61
# items.c:336:         item_chunk *chunk = (item_chunk *) ITEM_schunk(it);
	addq	%rax, %rbp	# _61, chunk
# items.c:343:         chunk->orig_clsid = hdr_id;
	movzbl	24(%rsp), %eax	# %sfp, tmp304
# items.c:338:         chunk->next = 0;
	vmovdqu	%xmm0, 0(%rbp)	# tmp256, MEM <vector(2) long unsigned int> [(struct _strchunk * *)chunk_101]
# items.c:341:         chunk->size = 0;
	movq	$0, 24(%rbp)	#, MEM <vector(2) int> [(int *)chunk_101 + 24B]
# items.c:342:         chunk->head = it;
	movq	%r15, 16(%rbp)	# <retval>, chunk_101->head
# items.c:343:         chunk->orig_clsid = hdr_id;
	movb	%al, 41(%rbp)	# tmp304, chunk_101->orig_clsid
.L371:
# items.c:345:     it->h_next = 0;
	movq	$0, 16(%r15)	#, it_34->h_next
.L354:
# items.c:348: }
	addq	$40, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%r15, %rax	# <retval>,
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
.L386:
	.cfi_restore_state
# items.c:159:     return sizeof(item) + nkey + *nsuffix + nbytes;
	leaq	48(%rax,%rcx), %rbp	#, ntotal
	jmp	.L358	#
	.p2align 4
	.p2align 3
.L360:
# items.c:293:         it = do_item_alloc_pull(ntotal, id);
	movl	%edx, %esi	# id,
	movq	%rbp, %rdi	# ntotal,
	movl	%edx, 24(%rsp)	# id, %sfp
	call	do_item_alloc_pull	#
# items.c:296:     if (it == NULL) {
	testq	%rax, %rax	# <retval>
	movl	24(%rsp), %edx	# %sfp, id
# items.c:293:         it = do_item_alloc_pull(ntotal, id);
	movq	%rax, %r15	# <retval>, <retval>
# items.c:296:     if (it == NULL) {
	je	.L366	#,
# items.c:303:     assert(it->it_flags == 0 || it->it_flags == ITEM_CHUNKED);
	movzwl	38(%rax), %ecx	# it_79->it_flags, _16
	movl	$0, 24(%rsp)	#, %sfp
	jmp	.L365	#
	.p2align 4
	.p2align 3
.L366:
# items.c:297:         pthread_mutex_lock(&lru_locks[id]);
	movl	%edx, %ebx	# id, _128
	leaq	lru_locks(%rip), %rax	#, tmp196
	leaq	(%rbx,%rbx,4), %rdx	#, _112
	leaq	(%rax,%rdx,8), %rbp	#, _17
	movq	%rbp, %rdi	# _17,
	call	pthread_mutex_lock@PLT	#
# items.c:298:         itemstats[id].outofmemory++;
	imulq	$168, %rbx, %rdx	#, _128, tmp199
	leaq	itemstats(%rip), %rax	#, tmp197
# items.c:299:         pthread_mutex_unlock(&lru_locks[id]);
	movq	%rbp, %rdi	# _17,
# items.c:298:         itemstats[id].outofmemory++;
	incq	24(%rax,%rdx)	# itemstats[id_77].outofmemory
# items.c:299:         pthread_mutex_unlock(&lru_locks[id]);
	call	pthread_mutex_unlock@PLT	#
	.p2align 4
	.p2align 3
.L356:
# items.c:256:         return 0;
	xorl	%r15d, %r15d	# <retval>
	jmp	.L354	#
	.p2align 4
	.p2align 3
.L388:
# items.c:331:         memcpy(ITEM_suffix(it), &flags, sizeof(flags));
	movzwl	38(%r15), %eax	# it_34->it_flags, _44
	movzbl	41(%r15), %edx	# it_34->nkey, _42
	salq	$2, %rax	#, _45
	andl	$8, %eax	#, _46
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	addq	%rbp, %rax	# _36, tmp241
	movl	%r12d, 1(%rdx,%rax)	# flags, MEM <unsigned int> [(char * {ref-all})_49]
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	jmp	.L370	#
	.p2align 4
	.p2align 3
.L387:
# items.c:314:         id |= TEMP_LRU;
	orb	$-64, %dl	#, id
	jmp	.L369	#
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.type	do_item_alloc.cold, @function
do_item_alloc.cold:
.LFSB95:
.L384:
	.cfi_def_cfa_offset 96
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
# items.c:303:     assert(it->it_flags == 0 || it->it_flags == ITEM_CHUNKED);
	leaq	__PRETTY_FUNCTION__.14(%rip), %rcx	#,
	movl	$303, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC19(%rip), %rdi	#,
	call	__assert_fail@PLT	#
	.cfi_endproc
.LFE95:
	.text
	.size	do_item_alloc, .-do_item_alloc
	.section	.text.unlikely
	.size	do_item_alloc.cold, .-do_item_alloc.cold
.LCOLDE20:
	.text
.LHOTE20:
	.section	.text.unlikely
.LCOLDB21:
	.text
.LHOTB21:
	.p2align 4
	.globl	do_item_update
	.type	do_item_update, @function
do_item_update:
.LFB108:
	.cfi_startproc
	endbr64	
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rdx	# it, it
	subq	$16, %rsp	#,
	.cfi_def_cfa_offset 32
# items.c:553:     if (settings.lru_segmented) {
	cmpb	$0, 136+settings(%rip)	#, settings.lru_segmented
	je	.L390	#,
# items.c:554:         assert((it->it_flags & ITEM_SLABBED) == 0);
	movzwl	38(%rdi), %eax	# it_9(D)->it_flags, _17
	testb	$4, %al	#, _17
	jne	.L404	#,
# items.c:555:         if ((it->it_flags & ITEM_LINKED) != 0) {
	testb	$1, %al	#, _17
	je	.L406	#,
# items.c:556:             if (ITEM_lruid(it) == COLD_LRU && (it->it_flags & ITEM_ACTIVE)) {
	movzbl	40(%rdi), %ecx	# it_9(D)->slabs_clsid,
# items.c:556:             if (ITEM_lruid(it) == COLD_LRU && (it->it_flags & ITEM_ACTIVE)) {
	movl	%ecx, %esi	# _20, _21
	andl	$-64, %esi	#, _21
	cmpb	$-128, %sil	#, _21
	je	.L409	#,
.L393:
# items.c:564:                 it->time = current_time;
	movl	current_time(%rip), %eax	# current_time, current_time.16_29
	movl	%eax, 24(%rdx)	# current_time.16_29, it_9(D)->time
.L406:
# items.c:576: }
	addq	$16, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4
	.p2align 3
.L390:
	.cfi_restore_state
# items.c:567:     } else if (it->time < current_time - ITEM_UPDATE_INTERVAL) {
	movl	current_time(%rip), %eax	# current_time, current_time.17_3
	subl	$60, %eax	#, _4
# items.c:567:     } else if (it->time < current_time - ITEM_UPDATE_INTERVAL) {
	cmpl	%eax, 24(%rdi)	# _4, it_9(D)->time
	jnb	.L406	#,
# items.c:568:         assert((it->it_flags & ITEM_SLABBED) == 0);
	movzwl	38(%rdi), %eax	# it_9(D)->it_flags, _5
	testb	$4, %al	#, _5
	jne	.L405	#,
# items.c:570:         if ((it->it_flags & ITEM_LINKED) != 0) {
	testb	$1, %al	#, _5
	je	.L406	#,
# items.c:571:             it->time = current_time;
	movl	current_time(%rip), %eax	# current_time, current_time.18_7
# items.c:480:     pthread_mutex_lock(&lru_locks[it->slabs_clsid]);
	leaq	lru_locks(%rip), %rbx	#, tmp247
	movq	%rdi, 8(%rsp)	# it, %sfp
# items.c:571:             it->time = current_time;
	movl	%eax, 24(%rdi)	# current_time.18_7, it_9(D)->time
# items.c:480:     pthread_mutex_lock(&lru_locks[it->slabs_clsid]);
	movzbl	40(%rdi), %eax	# it_9(D)->slabs_clsid, _77
	leaq	(%rax,%rax,4), %rax	#, _78
	leaq	(%rbx,%rax,8), %rdi	#, _52
	call	pthread_mutex_lock@PLT	#
# items.c:481:     do_item_unlink_q(it);
	movq	8(%rsp), %rdi	# %sfp,
	call	do_item_unlink_q	#
# items.c:482:     pthread_mutex_unlock(&lru_locks[it->slabs_clsid]);
	movq	8(%rsp), %rdx	# %sfp, it
	movzbl	40(%rdx), %eax	# it_9(D)->slabs_clsid, _79
	leaq	(%rax,%rax,4), %rax	#, _80
	leaq	(%rbx,%rax,8), %rdi	#, _55
	call	pthread_mutex_unlock@PLT	#
# items.c:435:     pthread_mutex_lock(&lru_locks[it->slabs_clsid]);
	movq	8(%rsp), %rdx	# %sfp, it
	movzbl	40(%rdx), %eax	# it_9(D)->slabs_clsid, _81
	leaq	(%rax,%rax,4), %rax	#, _82
	leaq	(%rbx,%rax,8), %rdi	#, _46
	call	pthread_mutex_lock@PLT	#
# items.c:436:     do_item_link_q(it);
	movq	8(%rsp), %rdi	# %sfp,
	call	do_item_link_q	#
# items.c:437:     pthread_mutex_unlock(&lru_locks[it->slabs_clsid]);
	movq	8(%rsp), %rdx	# %sfp, it
	movzbl	40(%rdx), %eax	# it_9(D)->slabs_clsid, _83
.L408:
	leaq	(%rax,%rax,4), %rax	#, _84
# items.c:576: }
	addq	$16, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 16
# items.c:437:     pthread_mutex_unlock(&lru_locks[it->slabs_clsid]);
	leaq	(%rbx,%rax,8), %rdi	#, _49
# items.c:576: }
	popq	%rbx	#
	.cfi_def_cfa_offset 8
# items.c:437:     pthread_mutex_unlock(&lru_locks[it->slabs_clsid]);
	jmp	pthread_mutex_unlock@PLT	#
	.p2align 4
	.p2align 3
.L409:
	.cfi_restore_state
# items.c:556:             if (ITEM_lruid(it) == COLD_LRU && (it->it_flags & ITEM_ACTIVE)) {
	testb	$16, %al	#, _17
	je	.L393	#,
# items.c:557:                 it->time = current_time;
	movl	current_time(%rip), %eax	# current_time, current_time.15_23
# items.c:480:     pthread_mutex_lock(&lru_locks[it->slabs_clsid]);
	leaq	lru_locks(%rip), %rbx	#, tmp242
# items.c:557:                 it->time = current_time;
	movq	%rdi, 8(%rsp)	# it, %sfp
	movl	%eax, 24(%rdi)	# current_time.15_23, it_9(D)->time
# items.c:480:     pthread_mutex_lock(&lru_locks[it->slabs_clsid]);
	leaq	(%rcx,%rcx,4), %rax	#, _38
	leaq	(%rbx,%rax,8), %rdi	#, _40
	call	pthread_mutex_lock@PLT	#
# items.c:481:     do_item_unlink_q(it);
	movq	8(%rsp), %rdi	# %sfp,
	call	do_item_unlink_q	#
# items.c:482:     pthread_mutex_unlock(&lru_locks[it->slabs_clsid]);
	movq	8(%rsp), %rdx	# %sfp, it
	movzbl	40(%rdx), %eax	# it_9(D)->slabs_clsid, _30
	leaq	(%rax,%rax,4), %rax	#, _12
	leaq	(%rbx,%rax,8), %rdi	#, _43
	call	pthread_mutex_unlock@PLT	#
# items.c:559:                 it->slabs_clsid = ITEM_clsid(it);
	movq	8(%rsp), %rdx	# %sfp, it
	movzbl	40(%rdx), %eax	# it_9(D)->slabs_clsid, _25
# items.c:561:                 it->it_flags &= ~ITEM_ACTIVE;
	andw	$-17, 38(%rdx)	#, it_9(D)->it_flags
# items.c:559:                 it->slabs_clsid = ITEM_clsid(it);
	andl	$63, %eax	#, _25
# items.c:560:                 it->slabs_clsid |= WARM_LRU;
	orl	$64, %eax	#, _26
	movb	%al, 40(%rdx)	# _26, it_9(D)->slabs_clsid
# items.c:441:     pthread_mutex_lock(&lru_locks[it->slabs_clsid]);
	movzbl	%al, %eax	# _26, _13
	leaq	(%rax,%rax,4), %rax	#, _6
	leaq	(%rbx,%rax,8), %rdi	#, _32
	call	pthread_mutex_lock@PLT	#
# items.c:442:     do_item_link_q(it);
	movq	8(%rsp), %rdi	# %sfp,
	call	do_item_link_q	#
# items.c:443:     itemstats[it->slabs_clsid].moves_to_warm++;
	movq	8(%rsp), %rdx	# %sfp, it
# items.c:443:     itemstats[it->slabs_clsid].moves_to_warm++;
	leaq	itemstats(%rip), %rcx	#, tmp184
# items.c:443:     itemstats[it->slabs_clsid].moves_to_warm++;
	movzbl	40(%rdx), %edx	# it_9(D)->slabs_clsid,
	movq	%rdx, %rax	#,
# items.c:443:     itemstats[it->slabs_clsid].moves_to_warm++;
	imulq	$168, %rdx, %rdx	#, _34, tmp186
	incq	96(%rcx,%rdx)	# itemstats[_34].moves_to_warm
	jmp	.L408	#
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.type	do_item_update.cold, @function
do_item_update.cold:
.LFSB108:
.L404:
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -16
# items.c:554:         assert((it->it_flags & ITEM_SLABBED) == 0);
	leaq	__PRETTY_FUNCTION__.8(%rip), %rcx	#,
	movl	$554, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC1(%rip), %rdi	#,
	call	__assert_fail@PLT	#
.L405:
# items.c:568:         assert((it->it_flags & ITEM_SLABBED) == 0);
	leaq	__PRETTY_FUNCTION__.8(%rip), %rcx	#,
	movl	$568, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC1(%rip), %rdi	#,
	call	__assert_fail@PLT	#
	.cfi_endproc
.LFE108:
	.text
	.size	do_item_update, .-do_item_update
	.section	.text.unlikely
	.size	do_item_update.cold, .-do_item_update.cold
.LCOLDE21:
	.text
.LHOTE21:
	.section	.text.unlikely
.LCOLDB22:
	.text
.LHOTB22:
	.p2align 4
	.globl	do_item_replace
	.type	do_item_replace, @function
do_item_replace:
.LFB109:
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
	subq	$16, %rsp	#,
	.cfi_def_cfa_offset 48
# items.c:581:     assert((it->it_flags & ITEM_SLABBED) == 0);
	movzwl	38(%rdi), %eax	# it_3(D)->it_flags, _1
	testb	$4, %al	#, _1
	jne	.L423	#,
	movq	%rsi, %r12	# new_it, new_it
	movl	%edx, %ebp	# hv, hv
# items.c:509:     if ((it->it_flags & ITEM_LINKED) != 0) {
	testb	$1, %al	#, _1
	jne	.L425	#,
.L412:
# items.c:585: }
	addq	$16, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 32
# items.c:584:     return do_item_link(new_it, hv, cas);
	movl	%ebp, %esi	# hv,
	movq	%r12, %rdi	# new_it,
	movq	%rcx, %rdx	# cas,
# items.c:585: }
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
# items.c:584:     return do_item_link(new_it, hv, cas);
	jmp	do_item_link	#
	.p2align 4
	.p2align 3
.L425:
	.cfi_restore_state
# items.c:510:         it->it_flags &= ~ITEM_LINKED;
	andl	$-2, %eax	#, tmp174
	movq	%rdi, %rbx	# it, it
	movq	%rcx, 8(%rsp)	# cas, %sfp
	movw	%ax, 38(%rdi)	# tmp174, it_3(D)->it_flags
# items.c:511:         STATS_LOCK();
	call	STATS_LOCK@PLT	#
# items.c:513:         stats_state.curr_items -= 1;
	movq	stats_state(%rip), %rax	# stats_state.curr_items, tmp240
# items.c:512:         stats_state.curr_bytes -= ITEM_ntotal(it);
	movzwl	38(%rbx), %edx	# it_3(D)->it_flags, _20
	movslq	32(%rbx), %rdi	# it_3(D)->nbytes, _18
# items.c:513:         stats_state.curr_items -= 1;
	decq	%rax	# _33
# items.c:512:         stats_state.curr_bytes -= ITEM_ntotal(it);
	leaq	0(,%rdx,4), %rsi	#, _27
	shrl	$6, %edx	#, _22
# items.c:513:         stats_state.curr_items -= 1;
	vmovq	%rax, %xmm0	# _33, _33
# items.c:512:         stats_state.curr_bytes -= ITEM_ntotal(it);
	movq	8+stats_state(%rip), %rax	# stats_state.curr_bytes, tmp241
# items.c:512:         stats_state.curr_bytes -= ITEM_ntotal(it);
	andl	$8, %esi	#, _28
	andl	$4, %edx	#, _24
# items.c:512:         stats_state.curr_bytes -= ITEM_ntotal(it);
	subq	$49, %rax	#, _30
	subq	%rsi, %rax	# _28, _63
# items.c:512:         stats_state.curr_bytes -= ITEM_ntotal(it);
	movzbl	41(%rbx), %esi	# it_3(D)->nkey, _16
# items.c:512:         stats_state.curr_bytes -= ITEM_ntotal(it);
	addq	%rdi, %rsi	# _18, _81
	addq	%rsi, %rdx	# _81, _102
	subq	%rdx, %rax	# _102, _31
# items.c:513:         stats_state.curr_items -= 1;
	vpinsrq	$1, %rax, %xmm0, %xmm0	# _31, _33, _54
	vmovdqu	%xmm0, stats_state(%rip)	# _54, MEM <vector(2) long unsigned int> [(long unsigned int *)&stats_state]
# items.c:514:         STATS_UNLOCK();
	call	STATS_UNLOCK@PLT	#
# items.c:942:     if (stats_sizes_hist == NULL)
	movq	stats_sizes_hist(%rip), %rdi	# stats_sizes_hist, stats_sizes_hist.68_48
# items.c:944:     int ntotal = ITEM_ntotal(it);
	movzwl	38(%rbx), %esi	# it_3(D)->it_flags, pretmp_103
# items.c:942:     if (stats_sizes_hist == NULL)
	movq	8(%rsp), %rcx	# %sfp, cas
	testq	%rdi, %rdi	# stats_sizes_hist.68_48
	je	.L413	#,
# items.c:944:     int ntotal = ITEM_ntotal(it);
	movzbl	41(%rbx), %edx	# it_3(D)->nkey, _50
	addl	32(%rbx), %edx	# it_3(D)->nbytes, _93
	movzwl	%si, %eax	# pretmp_103, _55
	movl	%eax, %r8d	# _55, _56
	sall	$2, %eax	#, _61
	sarl	$6, %r8d	#, _56
	andl	$8, %eax	#, _62
	andl	$4, %r8d	#, _57
	addl	%r8d, %edx	# _57, _80
	leal	49(%rdx,%rax), %r8d	#, _64
# items.c:945:     int bucket = ntotal / 32;
	leal	80(%rdx,%rax), %eax	#, tmp209
	testl	%r8d, %r8d	# _64
	cmovns	%r8d, %eax	# tmp209,, _64, _64
# items.c:946:     if ((ntotal % 32) != 0) bucket++;
	andl	$31, %r8d	#, _67
# items.c:945:     int bucket = ntotal / 32;
	sarl	$5, %eax	#, bucket_66
# items.c:946:     if ((ntotal % 32) != 0) bucket++;
	cmpl	$1, %r8d	#, _67
	sbbl	$-1, %eax	#, bucket
# items.c:947:     if (bucket < stats_sizes_buckets) stats_sizes_hist[bucket]--;
	cmpl	%eax, stats_sizes_buckets(%rip)	# bucket, stats_sizes_buckets
	jle	.L413	#,
# items.c:947:     if (bucket < stats_sizes_buckets) stats_sizes_hist[bucket]--;
	cltq
# items.c:947:     if (bucket < stats_sizes_buckets) stats_sizes_hist[bucket]--;
	decl	(%rdi,%rax,4)	# *_73
.L413:
# items.c:516:         assoc_delete(ITEM_key(it), it->nkey, hv);
	movzbl	41(%rbx), %r8d	# it_3(D)->nkey, _35
# items.c:516:         assoc_delete(ITEM_key(it), it->nkey, hv);
	leaq	0(,%rsi,4), %rax	#, _39
# items.c:516:         assoc_delete(ITEM_key(it), it->nkey, hv);
	movl	%ebp, %edx	# hv,
	movq	%rcx, 8(%rsp)	# cas, %sfp
# items.c:516:         assoc_delete(ITEM_key(it), it->nkey, hv);
	andl	$8, %eax	#, _40
# items.c:516:         assoc_delete(ITEM_key(it), it->nkey, hv);
	leaq	48(%rbx,%rax), %rdi	#, _41
	movq	%r8, %rsi	# _35,
	call	assoc_delete@PLT	#
# items.c:480:     pthread_mutex_lock(&lru_locks[it->slabs_clsid]);
	movzbl	40(%rbx), %eax	# it_3(D)->slabs_clsid, _90
	leaq	lru_locks(%rip), %rdx	#, tmp226
	leaq	(%rax,%rax,4), %rax	#, _89
	leaq	(%rdx,%rax,8), %rdi	#, _44
	call	pthread_mutex_lock@PLT	#
# items.c:481:     do_item_unlink_q(it);
	movq	%rbx, %rdi	# it,
	call	do_item_unlink_q	#
# items.c:482:     pthread_mutex_unlock(&lru_locks[it->slabs_clsid]);
	movzbl	40(%rbx), %eax	# it_3(D)->slabs_clsid, _11
	leaq	lru_locks(%rip), %rdx	#, tmp226
	leaq	(%rax,%rax,4), %rax	#, _92
	leaq	(%rdx,%rax,8), %rdi	#, _47
	call	pthread_mutex_unlock@PLT	#
# items.c:518:         do_item_remove(it);
	movq	%rbx, %rdi	# it,
	call	do_item_remove	#
	movq	8(%rsp), %rcx	# %sfp, cas
	jmp	.L412	#
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.type	do_item_replace.cold, @function
do_item_replace.cold:
.LFSB109:
.L423:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
# items.c:581:     assert((it->it_flags & ITEM_SLABBED) == 0);
	leaq	__PRETTY_FUNCTION__.7(%rip), %rcx	#,
	movl	$581, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC1(%rip), %rdi	#,
	call	__assert_fail@PLT	#
	.cfi_endproc
.LFE109:
	.text
	.size	do_item_replace, .-do_item_replace
	.section	.text.unlikely
	.size	do_item_replace.cold, .-do_item_replace.cold
.LCOLDE22:
	.text
.LHOTE22:
	.p2align 4
	.globl	item_flush_expired
	.type	item_flush_expired, @function
item_flush_expired:
.LFB110:
	.cfi_startproc
	endbr64	
# items.c:590:     if (settings.oldest_live == 0)
	movl	36+settings(%rip), %ecx	# settings.oldest_live,
	testl	%ecx, %ecx	#
	je	.L449	#,
# items.c:587: void item_flush_expired(void) {
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	leaq	heads(%rip), %rax	#, ivtmp.312
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	leaq	lru_locks(%rip), %r13	#, ivtmp.311
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 80
# items.c:612:             if (iter->time >= settings.oldest_live) {
	leaq	settings(%rip), %r12	#, tmp151
	movq	%rax, 8(%rsp)	# ivtmp.312, %sfp
	.p2align 4
	.p2align 3
.L436:
# items.c:598:         pthread_mutex_lock(&lru_locks[i]);
	movq	%r13, %rdi	# ivtmp.311,
	call	pthread_mutex_lock@PLT	#
# items.c:599:         for (iter = heads[i]; iter != NULL; iter = next) {
	movq	8(%rsp), %rax	# %sfp, ivtmp.312
	movq	(%rax), %rbx	# MEM[(struct item * *)_55], next
.L452:
# items.c:599:         for (iter = heads[i]; iter != NULL; iter = next) {
	testq	%rbx, %rbx	# next
	je	.L429	#,
.L454:
	movq	%rbx, %r14	# next, iter
# items.c:601:             next = iter->next;
	movq	(%rbx), %rbx	# iter_58->next, next
# items.c:602:             if (iter->time == 0 && iter->nkey == 0 && iter->it_flags == 1) {
	movl	24(%r14), %edx	# iter_75->time,
# items.c:602:             if (iter->time == 0 && iter->nkey == 0 && iter->it_flags == 1) {
	movzbl	41(%r14), %esi	# iter_75->nkey,
# items.c:602:             if (iter->time == 0 && iter->nkey == 0 && iter->it_flags == 1) {
	movzwl	38(%r14), %eax	# iter_75->it_flags, pretmp_78
# items.c:602:             if (iter->time == 0 && iter->nkey == 0 && iter->it_flags == 1) {
	testl	%edx, %edx	#
	jne	.L430	#,
# items.c:602:             if (iter->time == 0 && iter->nkey == 0 && iter->it_flags == 1) {
	testb	%sil, %sil	# pretmp_77
	jne	.L430	#,
# items.c:602:             if (iter->time == 0 && iter->nkey == 0 && iter->it_flags == 1) {
	cmpw	$1, %ax	#, pretmp_78
	je	.L452	#,
.L430:
# items.c:605:             uint32_t hv = hash(ITEM_key(iter), iter->nkey);
	leaq	0(,%rax,4), %rax	#, _12
	leaq	48(%r14), %rbp	#, _9
	andl	$8, %eax	#, _13
# items.c:605:             uint32_t hv = hash(ITEM_key(iter), iter->nkey);
	leaq	48(%r14,%rax), %rdi	#, _14
	call	*hash(%rip)	# hash
# items.c:608:             if ((hold_lock = item_trylock(hv)) == NULL) {
	movl	%eax, %edi	# hv,
	call	item_trylock@PLT	#
	movq	%rax, %r15	#, hold_lock
# items.c:608:             if ((hold_lock = item_trylock(hv)) == NULL) {
	testq	%rax, %rax	# hold_lock
	je	.L452	#,
# items.c:612:             if (iter->time >= settings.oldest_live) {
	movl	36(%r12), %eax	# settings.oldest_live, tmp158
	cmpl	%eax, 24(%r14)	# tmp158, iter_75->time
	jb	.L432	#,
# items.c:616:                 if ((iter->it_flags & ITEM_SLABBED) == 0) {
	testb	$4, 38(%r14)	#, iter_75->it_flags
	je	.L453	#,
.L433:
# items.c:621:                 item_trylock_unlock(hold_lock);
	movq	%r15, %rdi	# hold_lock,
	call	item_trylock_unlock@PLT	#
# items.c:599:         for (iter = heads[i]; iter != NULL; iter = next) {
	testq	%rbx, %rbx	# next
	jne	.L454	#,
.L429:
# items.c:628:         pthread_mutex_unlock(&lru_locks[i]);
	movq	%r13, %rdi	# ivtmp.311,
# items.c:592:     for (i = 0; i < LARGEST_ID; i++) {
	addq	$40, %r13	#, ivtmp.311
# items.c:628:         pthread_mutex_unlock(&lru_locks[i]);
	call	pthread_mutex_unlock@PLT	#
# items.c:592:     for (i = 0; i < LARGEST_ID; i++) {
	leaq	10240+lru_locks(%rip), %rax	#, tmp160
	addq	$8, 8(%rsp)	#, %sfp
	cmpq	%r13, %rax	# ivtmp.311, tmp160
	jne	.L436	#,
# items.c:630: }
	addq	$24, %rsp	#,
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
.L453:
	.cfi_restore_state
# items.c:617:                     STORAGE_delete(ext_storage, iter);
	movq	ext_storage(%rip), %rdi	# ext_storage,
	movq	%r14, %rsi	# iter,
	call	storage_delete@PLT	#
# items.c:619:                     do_item_unlink_nolock(iter, hash(ITEM_key(iter), iter->nkey));
	movzwl	38(%r14), %eax	# iter_75->it_flags, _24
# items.c:619:                     do_item_unlink_nolock(iter, hash(ITEM_key(iter), iter->nkey));
	movzbl	41(%r14), %esi	# iter_75->nkey, _21
# items.c:619:                     do_item_unlink_nolock(iter, hash(ITEM_key(iter), iter->nkey));
	salq	$2, %rax	#, _25
	andl	$8, %eax	#, _26
# items.c:619:                     do_item_unlink_nolock(iter, hash(ITEM_key(iter), iter->nkey));
	leaq	0(%rbp,%rax), %rdi	#, _27
	call	*hash(%rip)	# hash
# items.c:619:                     do_item_unlink_nolock(iter, hash(ITEM_key(iter), iter->nkey));
	movq	%r14, %rdi	# iter,
	movl	%eax, %esi	# _28,
	call	do_item_unlink_nolock	#
	jmp	.L433	#
	.p2align 4
	.p2align 3
.L432:
# items.c:624:                 item_trylock_unlock(hold_lock);
	movq	%r15, %rdi	# hold_lock,
	call	item_trylock_unlock@PLT	#
# items.c:625:                 break;
	jmp	.L429	#
.L449:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
	.cfi_restore 6
	.cfi_restore 12
	.cfi_restore 13
	.cfi_restore 14
	.cfi_restore 15
	ret	
	.cfi_endproc
.LFE110:
	.size	item_flush_expired, .-item_flush_expired
	.section	.rodata.str1.1
.LC23:
	.string	"it->nkey <= KEY_MAX_LENGTH"
.LC24:
	.string	"ITEM %s [%d b; %llu s]\r\n"
.LC25:
	.string	"END\r\n"
	.section	.text.unlikely
.LCOLDB26:
	.text
.LHOTB26:
	.p2align 4
	.globl	item_cachedump
	.type	item_cachedump, @function
item_cachedump:
.LFB111:
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
# items.c:651:     pthread_mutex_lock(&lru_locks[id]);
	leaq	lru_locks(%rip), %rax	#, tmp151
# items.c:639: char *item_cachedump(const unsigned int slabs_clsid, const unsigned int limit, unsigned int *bytes) {
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%esi, %r12d	# limit, limit
	subq	$824, %rsp	#,
	.cfi_def_cfa_offset 880
# items.c:639: char *item_cachedump(const unsigned int slabs_clsid, const unsigned int limit, unsigned int *bytes) {
	movq	%rdx, 24(%rsp)	# bytes, %sfp
# items.c:651:     pthread_mutex_lock(&lru_locks[id]);
	movq	%fs:40, %rbx	# MEM[(<address-space-1> long unsigned int *)40B], _65
	movq	%rbx, 808(%rsp)	# _65, D.13734
	movl	%edi, %ebx	# slabs_clsid, _65
	orl	$128, %ebx	#, _65
	leaq	(%rbx,%rbx,4), %rdx	#, _76
	leaq	(%rax,%rdx,8), %rax	#, _1
	movq	%rax, %rdi	# _1,
	movq	%rax, 16(%rsp)	# _1, %sfp
	call	pthread_mutex_lock@PLT	#
# items.c:652:     it = heads[id];
	leaq	heads(%rip), %rax	#, tmp152
# items.c:654:     buffer = malloc((size_t)memlimit);
	movl	$2097152, %edi	#,
# items.c:652:     it = heads[id];
	movq	(%rax,%rbx,8), %r15	# heads[id_37], it
# items.c:654:     buffer = malloc((size_t)memlimit);
	call	malloc@PLT	#
	movq	%rax, 8(%rsp)	# <retval>, %sfp
# items.c:655:     if (buffer == 0) {
	testq	%rax, %rax	# <retval>
	je	.L483	#,
# items.c:661:     while (it != NULL && (limit == 0 || shown < limit)) {
	testq	%r15, %r15	# it
	je	.L469	#,
	decl	%r12d	# _77
# items.c:645:     unsigned int shown = 0;
	xorl	%ebp, %ebp	# shown
# items.c:659:     bufcurr = 0;
	xorl	%ebx, %ebx	# bufcurr
	.p2align 4
	.p2align 3
.L458:
# items.c:662:         assert(it->nkey <= KEY_MAX_LENGTH);
	movzbl	41(%r15), %edx	# it_80->nkey,
	cmpb	$-6, %dl	#, _2
	ja	.L480	#,
# items.c:664:         if ((it->nbytes == 0 && it->nkey == 0) || (it->it_flags & ITEM_KEY_BINARY)) {
	movl	32(%r15), %r9d	# it_80->nbytes,
	testl	%r9d, %r9d	#
	jne	.L471	#,
	testb	%dl, %dl	# _2
	je	.L482	#,
.L471:
# items.c:664:         if ((it->nbytes == 0 && it->nkey == 0) || (it->it_flags & ITEM_KEY_BINARY)) {
	movzwl	38(%r15), %eax	# it_80->it_flags, _5
# items.c:664:         if ((it->nbytes == 0 && it->nkey == 0) || (it->it_flags & ITEM_KEY_BINARY)) {
	testb	$16, %ah	#, _5
	jne	.L482	#,
# items.c:669:         strncpy(key_temp, ITEM_key(it), it->nkey);
	leaq	0(,%rax,4), %rax	#, _11
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:112:   return __builtin___strncpy_chk (__dest, __src, __len,
	leaq	32(%rsp), %rdi	#,
# items.c:669:         strncpy(key_temp, ITEM_key(it), it->nkey);
	andl	$8, %eax	#, _12
# items.c:669:         strncpy(key_temp, ITEM_key(it), it->nkey);
	leaq	48(%r15,%rax), %rsi	#, _13
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:112:   return __builtin___strncpy_chk (__dest, __src, __len,
	call	strncpy@PLT	#
	movq	%rax, %r9	#, tmp187
# items.c:670:         key_temp[it->nkey] = 0x00; /* terminate */
	movzbl	41(%r15), %eax	# it_80->nkey, _15
	movb	$0, 32(%rsp,%rax)	#, key_temp[_15]
# items.c:673:                        it->exptime == 0 ? 0 :
	movl	28(%r15), %edx	# it_80->exptime, _16
# items.c:671:         len = snprintf(temp, sizeof(temp), "ITEM %s [%d b; %llu s]\r\n",
	xorl	%eax, %eax	# iftmp.22_32
# items.c:671:         len = snprintf(temp, sizeof(temp), "ITEM %s [%d b; %llu s]\r\n",
	testl	%edx, %edx	# _16
	je	.L465	#,
# items.c:674:                        (unsigned long long)it->exptime + process_started);
	movl	%edx, %eax	# _16, _17
# items.c:671:         len = snprintf(temp, sizeof(temp), "ITEM %s [%d b; %llu s]\r\n",
	addq	process_started(%rip), %rax	# process_started, iftmp.22_32
.L465:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:68:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	leaq	288(%rsp), %r14	#, tmp176
	pushq	%rax	# iftmp.22_32
	.cfi_def_cfa_offset 888
# items.c:671:         len = snprintf(temp, sizeof(temp), "ITEM %s [%d b; %llu s]\r\n",
	movl	32(%r15), %eax	# it_80->nbytes, tmp205
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:68:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	leaq	.LC24(%rip), %r8	#,
	movl	$512, %ecx	#,
	movl	$2, %edx	#,
	movl	$512, %esi	#,
	movq	%r14, %rdi	# tmp176,
# items.c:671:         len = snprintf(temp, sizeof(temp), "ITEM %s [%d b; %llu s]\r\n",
	subl	$2, %eax	#, _21
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:68:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	pushq	%rax	# _21
	.cfi_def_cfa_offset 896
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
# items.c:677:         memcpy(buffer + bufcurr, temp, len);
	movq	24(%rsp), %rsi	# %sfp, <retval>
# items.c:677:         memcpy(buffer + bufcurr, temp, len);
	movl	%ebx, %edx	# bufcurr, _113
	movl	$2097152, %ecx	#, tmp199
	cmpq	%rcx, %rdx	# tmp199, _113
	cmovnb	%rdx, %rcx	# _113,, _115
	subq	%rdx, %rcx	# _113, _111
# items.c:677:         memcpy(buffer + bufcurr, temp, len);
	leaq	(%rsi,%rdx), %rdi	#, _99
# items.c:675:         if (bufcurr + len + 6 > memlimit)  /* 6 is END\r\n\0 */
	leal	6(%rbx,%rax), %edx	#, _23
# items.c:675:         if (bufcurr + len + 6 > memlimit)  /* 6 is END\r\n\0 */
	popq	%rsi	#
	.cfi_def_cfa_offset 888
	popq	%r8	#
	.cfi_def_cfa_offset 880
	cmpl	$2097152, %edx	#, _23
	ja	.L484	#,
# items.c:677:         memcpy(buffer + bufcurr, temp, len);
	movslq	%eax, %rdx	# _60, _24
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movq	%r14, %rsi	# tmp176,
# items.c:678:         bufcurr += len;
	addl	%eax, %ebx	# _60, bufcurr
# items.c:679:         shown++;
	incl	%ebp	# shown
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	call	__memcpy_chk@PLT	#
.L482:
# items.c:680:         it = it->next;
	movq	(%r15), %r15	# it_80->next, it
# items.c:661:     while (it != NULL && (limit == 0 || shown < limit)) {
	testq	%r15, %r15	# it
	je	.L467	#,
# items.c:661:     while (it != NULL && (limit == 0 || shown < limit)) {
	cmpl	%ebp, %r12d	# shown, _77
	jnb	.L458	#,
.L467:
# items.c:683:     memcpy(buffer + bufcurr, "END\r\n", 6);
	movq	8(%rsp), %rdi	# %sfp, <retval>
# items.c:683:     memcpy(buffer + bufcurr, "END\r\n", 6);
	movl	%ebx, %eax	# bufcurr, _95
	movl	$2097152, %ecx	#, tmp198
# items.c:684:     bufcurr += 5;
	addl	$5, %ebx	#, _103
# items.c:683:     memcpy(buffer + bufcurr, "END\r\n", 6);
	addq	%rax, %rdi	# _95, _99
	cmpq	%rcx, %rax	# tmp198, _95
	cmovnb	%rax, %rcx	# _95,, _107
	subq	%rax, %rcx	# _95, _111
.L457:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movl	$6, %edx	#,
	leaq	.LC25(%rip), %rsi	#,
	call	__memcpy_chk@PLT	#
# items.c:686:     *bytes = bufcurr;
	movq	24(%rsp), %rax	# %sfp, bytes
	movl	%ebx, (%rax)	# _103, *bytes_52(D)
.L483:
# items.c:687:     pthread_mutex_unlock(&lru_locks[id]);
	movq	16(%rsp), %rdi	# %sfp,
	call	pthread_mutex_unlock@PLT	#
# items.c:689: }
	movq	808(%rsp), %rax	# D.13734, tmp200
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp200
	jne	.L485	#,
	movq	8(%rsp), %rax	# %sfp,
	addq	$824, %rsp	#,
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
.L484:
	.cfi_restore_state
# items.c:684:     bufcurr += 5;
	addl	$5, %ebx	#, _103
	jmp	.L457	#
.L469:
	movq	%rax, %rdi	# <retval>, _99
# items.c:661:     while (it != NULL && (limit == 0 || shown < limit)) {
	movl	$2097152, %ecx	#, _111
	movl	$5, %ebx	#, _103
	jmp	.L457	#
.L485:
# items.c:689: }
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.type	item_cachedump.cold, @function
item_cachedump.cold:
.LFSB111:
.L480:
	.cfi_def_cfa_offset 880
	.cfi_offset 3, -56
	.cfi_offset 6, -48
	.cfi_offset 12, -40
	.cfi_offset 13, -32
	.cfi_offset 14, -24
	.cfi_offset 15, -16
# items.c:662:         assert(it->nkey <= KEY_MAX_LENGTH);
	leaq	__PRETTY_FUNCTION__.6(%rip), %rcx	#,
	movl	$662, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC23(%rip), %rdi	#,
	call	__assert_fail@PLT	#
	.cfi_endproc
.LFE111:
	.text
	.size	item_cachedump, .-item_cachedump
	.section	.text.unlikely
	.size	item_cachedump.cold, .-item_cachedump.cold
.LCOLDE26:
	.text
.LHOTE26:
	.p2align 4
	.globl	fill_item_stats_automove
	.type	fill_item_stats_automove, @function
fill_item_stats_automove:
.LFB112:
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
	leaq	24+itemstats(%rip), %r13	#, ivtmp.328
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	leaq	lru_locks(%rip), %r12	#, ivtmp.327
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 64
	movq	%rdi, %rbx	# am, ivtmp.330
# items.c:696:     for (n = 0; n < MAX_NUMBER_OF_SLAB_CLASSES; n++) {
	xorl	%ebp, %ebp	# n
	jmp	.L489	#
	.p2align 4
	.p2align 3
.L488:
# items.c:719:             cur->age = current_time - tails[i]->time;
	movl	current_time(%rip), %eax	# current_time, current_time.26_17
	subl	24(%rdx), %eax	#, _19
.L487:
# items.c:714:                cur->age = current_time - tails[i]->prev->time;
	movl	%eax, 16(%rbx)	# _19, MEM[(unsigned int *)_35 + 16B]
# items.c:721:         pthread_mutex_unlock(&lru_locks[i]);
	movq	%r14, %rdi	# _6,
# items.c:696:     for (n = 0; n < MAX_NUMBER_OF_SLAB_CLASSES; n++) {
	incl	%ebp	# n
# items.c:721:         pthread_mutex_unlock(&lru_locks[i]);
	call	pthread_mutex_unlock@PLT	#
# items.c:696:     for (n = 0; n < MAX_NUMBER_OF_SLAB_CLASSES; n++) {
	addq	$40, %r12	#, ivtmp.327
	addq	$168, %r13	#, ivtmp.328
	addq	$24, %rbx	#, ivtmp.330
	cmpl	$64, %ebp	#, n
	je	.L496	#,
.L489:
# items.c:701:         pthread_mutex_lock(&lru_locks[i]);
	movq	%r12, %rdi	# ivtmp.327,
	call	pthread_mutex_lock@PLT	#
# items.c:702:         cur->outofmemory = itemstats[i].outofmemory;
	movq	0(%r13), %rax	# MEM[(long unsigned int *)_43], MEM[(long unsigned int *)_43]
# items.c:703:         pthread_mutex_unlock(&lru_locks[i]);
	movq	%r12, %rdi	# ivtmp.327,
# items.c:702:         cur->outofmemory = itemstats[i].outofmemory;
	movq	%rax, 8(%rbx)	# MEM[(long unsigned int *)_43], MEM[(long int *)_35 + 8B]
# items.c:703:         pthread_mutex_unlock(&lru_locks[i]);
	call	pthread_mutex_unlock@PLT	#
# items.c:706:         i = n | COLD_LRU;
	movl	%ebp, %edx	# n, i
# items.c:707:         pthread_mutex_lock(&lru_locks[i]);
	leaq	lru_locks(%rip), %rcx	#, tmp147
# items.c:706:         i = n | COLD_LRU;
	orb	$-128, %dl	#, i
# items.c:707:         pthread_mutex_lock(&lru_locks[i]);
	movslq	%edx, %r15	# i, _20
	leaq	(%r15,%r15,4), %rax	#, _39
	leaq	(%rcx,%rax,8), %r14	#, _6
	movq	%r14, %rdi	# _6,
	call	pthread_mutex_lock@PLT	#
# items.c:708:         cur->evicted = itemstats[i].evicted;
	imulq	$168, %r15, %rax	#, _20, tmp135
# items.c:708:         cur->evicted = itemstats[i].evicted;
	leaq	itemstats(%rip), %rsi	#, tmp148
	movq	(%rsi,%rax), %rax	# itemstats[i_29].evicted, itemstats[i_29].evicted
	movq	%rax, (%rbx)	# itemstats[i_29].evicted, MEM[(long int *)_35]
# items.c:709:         if (!tails[i]) {
	leaq	tails(%rip), %rax	#, tmp149
	movq	(%rax,%r15,8), %rdx	# tails[i_29], _9
	xorl	%eax, %eax	# _19
# items.c:709:         if (!tails[i]) {
	testq	%rdx, %rdx	# _9
	je	.L487	#,
# items.c:711:         } else if (tails[i]->nbytes == 0 && tails[i]->nkey == 0 && tails[i]->it_flags == 1) {
	movl	32(%rdx), %ecx	# _9->nbytes,
	testl	%ecx, %ecx	#
	jne	.L488	#,
# items.c:711:         } else if (tails[i]->nbytes == 0 && tails[i]->nkey == 0 && tails[i]->it_flags == 1) {
	cmpb	$0, 41(%rdx)	#, _9->nkey
	jne	.L488	#,
# items.c:711:         } else if (tails[i]->nbytes == 0 && tails[i]->nkey == 0 && tails[i]->it_flags == 1) {
	cmpw	$1, 38(%rdx)	#, _9->it_flags
	jne	.L488	#,
# items.c:713:             if (tails[i]->prev) {
	movq	8(%rdx), %rdx	# _9->prev, _13
# items.c:713:             if (tails[i]->prev) {
	testq	%rdx, %rdx	# _13
	jne	.L488	#,
	jmp	.L487	#
	.p2align 4
	.p2align 3
.L496:
# items.c:723: }
	addq	$8, %rsp	#,
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
	.cfi_endproc
.LFE112:
	.size	fill_item_stats_automove, .-fill_item_stats_automove
	.section	.rodata.str1.1
.LC27:
	.string	"%llu"
.LC28:
	.string	"expired_unfetched"
.LC29:
	.string	"evicted_unfetched"
.LC30:
	.string	"evicted_active"
.LC31:
	.string	"evictions"
.LC32:
	.string	"reclaimed"
.LC33:
	.string	"crawler_reclaimed"
.LC34:
	.string	"crawler_items_checked"
.LC35:
	.string	"lrutail_reflocked"
.LC36:
	.string	"moves_to_cold"
.LC37:
	.string	"moves_to_warm"
.LC38:
	.string	"moves_within_lru"
.LC39:
	.string	"direct_reclaims"
.LC40:
	.string	"lru_bumps_dropped"
	.text
	.p2align 4
	.globl	item_stats_totals
	.type	item_stats_totals, @function
item_stats_totals:
.LFB113:
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
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:59:   return __builtin___memset_chk (__dest, __ch, __len,
	xorl	%r15d, %r15d	# totals$evicted_active
# items.c:725: void item_stats_totals(ADD_STAT add_stats, void *c) {
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:59:   return __builtin___memset_chk (__dest, __ch, __len,
	xorl	%r12d, %r12d	# totals$expired_unfetched
# items.c:725: void item_stats_totals(ADD_STAT add_stats, void *c) {
	subq	$168, %rsp	#,
	.cfi_def_cfa_offset 224
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:59:   return __builtin___memset_chk (__dest, __ch, __len,
	xorl	%r14d, %r14d	# totals$reclaimed
# items.c:729:     for (n = 0; n < MAX_NUMBER_OF_SLAB_CLASSES; n++) {
	xorl	%ecx, %ecx	# n
	movq	%r12, %r13	# totals$expired_unfetched, totals$expired_unfetched
# items.c:725: void item_stats_totals(ADD_STAT add_stats, void *c) {
	movq	%rdi, 144(%rsp)	# add_stats, %sfp
	movq	%rsi, 152(%rsp)	# c, %sfp
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:59:   return __builtin___memset_chk (__dest, __ch, __len,
	movq	$0, 56(%rsp)	#, %sfp
	movq	$0, 48(%rsp)	#, %sfp
	movq	$0, 40(%rsp)	#, %sfp
	movq	$0, 32(%rsp)	#, %sfp
	movq	$0, 24(%rsp)	#, %sfp
	movq	$0, 16(%rsp)	#, %sfp
	movq	$0, 8(%rsp)	#, %sfp
	movq	$0, (%rsp)	#, %sfp
	.p2align 4
	.p2align 3
.L498:
	leaq	lru_type_map(%rip), %rbp	#, ivtmp.355
	movl	%ecx, 76(%rsp)	# n, %sfp
	movq	%rbp, %rax	# ivtmp.355, ivtmp.355
	movq	%r13, %rbp	# totals$expired_unfetched, totals$expired_unfetched
	movq	%r14, %r13	# totals$evicted_unfetched, totals$evicted_unfetched
	movq	%r15, %r14	# totals$evicted_active, totals$evicted_active
	movq	%rax, %r15	# ivtmp.355, ivtmp.355
.L499:
# items.c:733:             i = n | lru_type_map[x];
	movl	76(%rsp), %ebx	# %sfp, i
	orl	(%r15), %ebx	# MEM[(unsigned int *)_164], i
# items.c:734:             pthread_mutex_lock(&lru_locks[i]);
	leaq	lru_locks(%rip), %rdi	#, tmp300
# items.c:732:         for (x = 0; x < 4; x++) {
	addq	$4, %r15	#, ivtmp.355
# items.c:734:             pthread_mutex_lock(&lru_locks[i]);
	movslq	%ebx, %rbx	# i, _182
	leaq	(%rbx,%rbx,4), %rax	#, _181
	leaq	(%rdi,%rax,8), %rdi	#, _2
	movq	%rdi, 64(%rsp)	# _2, %sfp
	call	pthread_mutex_lock@PLT	#
# items.c:735:             totals.evicted += itemstats[i].evicted;
	imulq	$168, %rbx, %rax	#, _182, tmp148
	leaq	itemstats(%rip), %rbx	#, tmp301
# items.c:735:             totals.evicted += itemstats[i].evicted;
	movq	(%rsp), %rdx	# %sfp, totals$evicted
# items.c:740:             totals.crawler_reclaimed += itemstats[i].crawler_reclaimed;
	movq	8(%rsp), %rsi	# %sfp, totals$crawler_reclaimed
# items.c:741:             totals.crawler_items_checked += itemstats[i].crawler_items_checked;
	movq	16(%rsp), %rcx	# %sfp, totals$crawler_items_checked
# items.c:735:             totals.evicted += itemstats[i].evicted;
	addq	%rbx, %rax	# tmp301, tmp149
# items.c:743:             totals.moves_to_cold += itemstats[i].moves_to_cold;
	movq	32(%rsp), %rdi	# %sfp, totals$moves_to_cold
# items.c:742:             totals.lrutail_reflocked += itemstats[i].lrutail_reflocked;
	movq	24(%rsp), %rbx	# %sfp, totals$lrutail_reflocked
# items.c:735:             totals.evicted += itemstats[i].evicted;
	addq	(%rax), %rdx	# itemstats[i_79].evicted, totals$evicted
# items.c:740:             totals.crawler_reclaimed += itemstats[i].crawler_reclaimed;
	addq	64(%rax), %rsi	# itemstats[i_79].crawler_reclaimed, totals$crawler_reclaimed
# items.c:743:             totals.moves_to_cold += itemstats[i].moves_to_cold;
	addq	88(%rax), %rdi	# itemstats[i_79].moves_to_cold, totals$moves_to_cold
# items.c:741:             totals.crawler_items_checked += itemstats[i].crawler_items_checked;
	addq	72(%rax), %rcx	# itemstats[i_79].crawler_items_checked, totals$crawler_items_checked
# items.c:736:             totals.reclaimed += itemstats[i].reclaimed;
	addq	16(%rax), %r12	# itemstats[i_79].reclaimed, totals$reclaimed
# items.c:742:             totals.lrutail_reflocked += itemstats[i].lrutail_reflocked;
	addq	80(%rax), %rbx	# itemstats[i_79].lrutail_reflocked, totals$lrutail_reflocked
# items.c:737:             totals.expired_unfetched += itemstats[i].expired_unfetched;
	addq	40(%rax), %rbp	# itemstats[i_79].expired_unfetched, totals$expired_unfetched
# items.c:738:             totals.evicted_unfetched += itemstats[i].evicted_unfetched;
	addq	48(%rax), %r13	# itemstats[i_79].evicted_unfetched, totals$evicted_unfetched
# items.c:739:             totals.evicted_active += itemstats[i].evicted_active;
	addq	56(%rax), %r14	# itemstats[i_79].evicted_active, totals$evicted_active
# items.c:735:             totals.evicted += itemstats[i].evicted;
	movq	%rdx, 80(%rsp)	# _5, %sfp
	movq	%rdx, (%rsp)	# _5, %sfp
# items.c:740:             totals.crawler_reclaimed += itemstats[i].crawler_reclaimed;
	movq	%rsi, 96(%rsp)	# _20, %sfp
# items.c:744:             totals.moves_to_warm += itemstats[i].moves_to_warm;
	movq	40(%rsp), %rdx	# %sfp, totals$moves_to_warm
# items.c:740:             totals.crawler_reclaimed += itemstats[i].crawler_reclaimed;
	movq	%rsi, 8(%rsp)	# _20, %sfp
# items.c:743:             totals.moves_to_cold += itemstats[i].moves_to_cold;
	movq	%rdi, 112(%rsp)	# _29, %sfp
	movq	%rdi, 32(%rsp)	# _29, %sfp
# items.c:736:             totals.reclaimed += itemstats[i].reclaimed;
	movq	%r12, 88(%rsp)	# _8, %sfp
# items.c:741:             totals.crawler_items_checked += itemstats[i].crawler_items_checked;
	movq	%rcx, 104(%rsp)	# _23, %sfp
	movq	%rcx, 16(%rsp)	# _23, %sfp
# items.c:742:             totals.lrutail_reflocked += itemstats[i].lrutail_reflocked;
	movq	%rbx, 24(%rsp)	# _26, %sfp
# items.c:744:             totals.moves_to_warm += itemstats[i].moves_to_warm;
	addq	96(%rax), %rdx	# itemstats[i_79].moves_to_warm, totals$moves_to_warm
# items.c:745:             totals.moves_within_lru += itemstats[i].moves_within_lru;
	movq	48(%rsp), %rsi	# %sfp, totals$moves_within_lru
	addq	104(%rax), %rsi	# itemstats[i_79].moves_within_lru, totals$moves_within_lru
# items.c:744:             totals.moves_to_warm += itemstats[i].moves_to_warm;
	movq	%rdx, 120(%rsp)	# _32, %sfp
	movq	%rdx, 40(%rsp)	# _32, %sfp
# items.c:745:             totals.moves_within_lru += itemstats[i].moves_within_lru;
	movq	%rsi, 128(%rsp)	# _35, %sfp
	movq	%rsi, 48(%rsp)	# _35, %sfp
# items.c:746:             totals.direct_reclaims += itemstats[i].direct_reclaims;
	movq	56(%rsp), %rcx	# %sfp, totals$direct_reclaims
	addq	112(%rax), %rcx	# itemstats[i_79].direct_reclaims, totals$direct_reclaims
# items.c:747:             pthread_mutex_unlock(&lru_locks[i]);
	movq	64(%rsp), %rdi	# %sfp, _2
# items.c:746:             totals.direct_reclaims += itemstats[i].direct_reclaims;
	movq	%rcx, 136(%rsp)	# _38, %sfp
	movq	%rcx, 56(%rsp)	# _38, %sfp
# items.c:747:             pthread_mutex_unlock(&lru_locks[i]);
	call	pthread_mutex_unlock@PLT	#
# items.c:732:         for (x = 0; x < 4; x++) {
	leaq	16+lru_type_map(%rip), %rax	#, tmp318
	cmpq	%rax, %r15	# tmp318, ivtmp.355
	jne	.L499	#,
# items.c:729:     for (n = 0; n < MAX_NUMBER_OF_SLAB_CLASSES; n++) {
	movl	76(%rsp), %ecx	# %sfp, n
	movq	%r14, %r15	# totals$evicted_active, totals$evicted_active
	movq	%r13, %r14	# totals$evicted_unfetched, totals$evicted_unfetched
	movq	%rbp, %r13	# totals$expired_unfetched, totals$expired_unfetched
	incl	%ecx	# n
# items.c:729:     for (n = 0; n < MAX_NUMBER_OF_SLAB_CLASSES; n++) {
	cmpl	$64, %ecx	#, n
	jne	.L498	#,
# items.c:750:     APPEND_STAT("expired_unfetched", "%llu",
	movq	%r13, %r8	# totals$expired_unfetched,
	movq	%r14, %rbp	# totals$evicted_unfetched, totals$evicted_unfetched
	movq	152(%rsp), %r13	# %sfp, c
	movq	144(%rsp), %r14	# %sfp, add_stats
	xorl	%eax, %eax	#
	leaq	.LC27(%rip), %rcx	#,
	leaq	.LC28(%rip), %rdi	#,
	movq	%r13, %rdx	# c,
	movq	%r14, %rsi	# add_stats,
	call	append_stat@PLT	#
# items.c:752:     APPEND_STAT("evicted_unfetched", "%llu",
	xorl	%eax, %eax	#
	movq	%rbp, %r8	# totals$evicted_unfetched,
	leaq	.LC27(%rip), %rcx	#,
	movq	%r13, %rdx	# c,
	movq	%r14, %rsi	# add_stats,
	leaq	.LC29(%rip), %rdi	#,
	call	append_stat@PLT	#
# items.c:754:     if (settings.lru_maintainer_thread) {
	cmpb	$0, 135+settings(%rip)	#, settings.lru_maintainer_thread
	jne	.L510	#,
.L501:
# items.c:758:     APPEND_STAT("evictions", "%llu",
	movq	152(%rsp), %r15	# %sfp, c
	movq	144(%rsp), %r14	# %sfp, add_stats
	xorl	%eax, %eax	#
	leaq	.LC27(%rip), %rcx	#,
	movq	80(%rsp), %r8	# %sfp,
	leaq	.LC31(%rip), %rdi	#,
	movq	%r15, %rdx	# c,
	movq	%r14, %rsi	# add_stats,
	call	append_stat@PLT	#
# items.c:760:     APPEND_STAT("reclaimed", "%llu",
	movq	88(%rsp), %r8	# %sfp,
	xorl	%eax, %eax	#
	leaq	.LC27(%rip), %rcx	#,
	movq	%r15, %rdx	# c,
	movq	%r14, %rsi	# add_stats,
	leaq	.LC32(%rip), %rdi	#,
	call	append_stat@PLT	#
# items.c:762:     APPEND_STAT("crawler_reclaimed", "%llu",
	movq	96(%rsp), %r8	# %sfp,
	xorl	%eax, %eax	#
	leaq	.LC27(%rip), %rcx	#,
	movq	%r15, %rdx	# c,
	movq	%r14, %rsi	# add_stats,
	leaq	.LC33(%rip), %rdi	#,
	call	append_stat@PLT	#
# items.c:764:     APPEND_STAT("crawler_items_checked", "%llu",
	movq	104(%rsp), %r8	# %sfp,
	xorl	%eax, %eax	#
	leaq	.LC27(%rip), %rcx	#,
	movq	%r15, %rdx	# c,
	movq	%r14, %rsi	# add_stats,
	leaq	.LC34(%rip), %rdi	#,
	call	append_stat@PLT	#
# items.c:766:     APPEND_STAT("lrutail_reflocked", "%llu",
	xorl	%eax, %eax	#
	movq	%rbx, %r8	# _26,
	leaq	.LC27(%rip), %rcx	#,
	movq	%r15, %rdx	# c,
	movq	%r14, %rsi	# add_stats,
	leaq	.LC35(%rip), %rdi	#,
	call	append_stat@PLT	#
# items.c:768:     if (settings.lru_maintainer_thread) {
	cmpb	$0, 135+settings(%rip)	#, settings.lru_maintainer_thread
	jne	.L511	#,
# items.c:780: }
	addq	$168, %rsp	#,
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
.L510:
	.cfi_restore_state
# items.c:755:         APPEND_STAT("evicted_active", "%llu",
	movq	152(%rsp), %rdx	# %sfp,
	movq	144(%rsp), %rsi	# %sfp,
	movq	%r15, %r8	# totals$evicted_active,
	leaq	.LC27(%rip), %rcx	#,
	leaq	.LC30(%rip), %rdi	#,
	xorl	%eax, %eax	#
	call	append_stat@PLT	#
	jmp	.L501	#
.L511:
# items.c:769:         APPEND_STAT("moves_to_cold", "%llu",
	movq	144(%rsp), %rbx	# %sfp, add_stats
	movq	152(%rsp), %r14	# %sfp, c
	leaq	.LC27(%rip), %rcx	#,
	leaq	.LC36(%rip), %rdi	#,
	movq	112(%rsp), %r8	# %sfp,
	xorl	%eax, %eax	#
# items.c:1351:     uint64_t total = 0;
	xorl	%r12d, %r12d	# total
# items.c:769:         APPEND_STAT("moves_to_cold", "%llu",
	movq	%rbx, %rsi	# add_stats,
	movq	%r14, %rdx	# c,
	call	append_stat@PLT	#
# items.c:771:         APPEND_STAT("moves_to_warm", "%llu",
	movq	120(%rsp), %r8	# %sfp,
	movq	%rbx, %rsi	# add_stats,
	leaq	.LC27(%rip), %rcx	#,
	movq	%r14, %rdx	# c,
	leaq	.LC37(%rip), %rdi	#,
	xorl	%eax, %eax	#
	call	append_stat@PLT	#
# items.c:773:         APPEND_STAT("moves_within_lru", "%llu",
	movq	128(%rsp), %r8	# %sfp,
	movq	%rbx, %rsi	# add_stats,
	leaq	.LC27(%rip), %rcx	#,
	movq	%r14, %rdx	# c,
	leaq	.LC38(%rip), %rdi	#,
	xorl	%eax, %eax	#
	call	append_stat@PLT	#
# items.c:775:         APPEND_STAT("direct_reclaims", "%llu",
	movq	136(%rsp), %r8	# %sfp,
	movq	%rbx, %rsi	# add_stats,
	leaq	.LC27(%rip), %rcx	#,
	movq	%r14, %rdx	# c,
	leaq	.LC39(%rip), %rdi	#,
	xorl	%eax, %eax	#
	call	append_stat@PLT	#
# items.c:1353:     pthread_mutex_lock(&bump_buf_lock);
	leaq	bump_buf_lock(%rip), %rdi	#,
	call	pthread_mutex_lock@PLT	#
# items.c:1354:     for (b = bump_buf_head; b != NULL; b=b->next) {
	movq	bump_buf_head(%rip), %rbx	# bump_buf_head, b
# items.c:1354:     for (b = bump_buf_head; b != NULL; b=b->next) {
	testq	%rbx, %rbx	# b
	je	.L503	#,
.L504:
# items.c:1355:         pthread_mutex_lock(&b->mutex);
	leaq	16(%rbx), %rbp	#, _99
	movq	%rbp, %rdi	# _99,
	call	pthread_mutex_lock@PLT	#
# items.c:1357:         pthread_mutex_unlock(&b->mutex);
	movq	%rbp, %rdi	# _99,
# items.c:1356:         total += b->dropped;
	addq	64(%rbx), %r12	# b_120->dropped, total
# items.c:1357:         pthread_mutex_unlock(&b->mutex);
	call	pthread_mutex_unlock@PLT	#
# items.c:1354:     for (b = bump_buf_head; b != NULL; b=b->next) {
	movq	8(%rbx), %rbx	# b_120->next, b
# items.c:1354:     for (b = bump_buf_head; b != NULL; b=b->next) {
	testq	%rbx, %rbx	# b
	jne	.L504	#,
.L503:
# items.c:1359:     pthread_mutex_unlock(&bump_buf_lock);
	leaq	bump_buf_lock(%rip), %rdi	#,
	call	pthread_mutex_unlock@PLT	#
# items.c:777:         APPEND_STAT("lru_bumps_dropped", "%llu",
	movq	152(%rsp), %rdx	# %sfp,
	movq	%r12, %r8	# total,
	leaq	.LC27(%rip), %rcx	#,
	movq	144(%rsp), %rsi	# %sfp,
# items.c:780: }
	addq	$168, %rsp	#,
	.cfi_def_cfa_offset 56
# items.c:777:         APPEND_STAT("lru_bumps_dropped", "%llu",
	leaq	.LC40(%rip), %rdi	#,
	xorl	%eax, %eax	#
# items.c:780: }
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
# items.c:777:         APPEND_STAT("lru_bumps_dropped", "%llu",
	jmp	append_stat@PLT	#
	.cfi_endproc
.LFE113:
	.size	item_stats_totals, .-item_stats_totals
	.section	.rodata.str1.1
.LC41:
	.string	"items:%d:%s"
.LC42:
	.string	"number"
.LC43:
	.string	"%u"
.LC44:
	.string	"number_hot"
.LC45:
	.string	"number_warm"
.LC46:
	.string	"number_cold"
.LC47:
	.string	"number_temp"
.LC48:
	.string	"age_hot"
.LC49:
	.string	"age_warm"
.LC50:
	.string	"age"
.LC51:
	.string	"mem_requested"
.LC52:
	.string	"evicted"
.LC53:
	.string	"evicted_nonzero"
.LC54:
	.string	"evicted_time"
.LC55:
	.string	"outofmemory"
.LC56:
	.string	"tailrepairs"
.LC57:
	.string	"hits_to_hot"
.LC58:
	.string	"hits_to_warm"
.LC59:
	.string	"hits_to_cold"
.LC60:
	.string	"hits_to_temp"
	.text
	.p2align 4
	.globl	item_stats
	.type	item_stats, @function
item_stats:
.LFB114:
	.cfi_startproc
	endbr64	
	leaq	8(%rsp), %r10	#,
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp	#,
	pushq	-8(%r10)	#
	pushq	%rbp	#
	movq	%rsp, %rbp	#,
	.cfi_escape 0x10,0x6,0x2,0x76,0
	pushq	%r15	#
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%r10	#
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx	#
	subq	$4096, %rsp	#,
	orq	$0, (%rsp)	#,
	subq	$2912, %rsp	#,
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	leaq	itemstats(%rip), %r15	#, tmp566
# items.c:782: void item_stats(ADD_STAT add_stats, void *c) {
	movq	%rdi, -7032(%rbp)	# add_stats, %sfp
	movq	%rsi, -7008(%rbp)	# c, %sfp
# items.c:784:     threadlocal_stats_aggregate(&thread_stats);
	movq	%fs:40, %rdi	# MEM[(<address-space-1> long unsigned int *)40B], tmp269
	movq	%rdi, -56(%rbp)	# tmp269, D.13849
	leaq	-6800(%rbp), %rdi	#, tmp269
	call	threadlocal_stats_aggregate@PLT	#
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:68:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	movl	$0, -6996(%rbp)	#, %sfp
	.p2align 4
	.p2align 3
.L524:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:59:   return __builtin___memset_chk (__dest, __ch, __len,
	vpxor	%xmm0, %xmm0, %xmm0	# tmp273
	movq	$0, -6832(%rbp)	#, MEM <char[1:168]> [(void *)&totals]
# items.c:794:         unsigned int age_warm = 0;
	movl	$0, -7036(%rbp)	#, %sfp
# items.c:793:         unsigned int age_hot = 0;
	movl	$0, -7024(%rbp)	#, %sfp
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:59:   return __builtin___memset_chk (__dest, __ch, __len,
	vmovdqa	%ymm0, -6992(%rbp)	# tmp273, MEM <char[1:168]> [(void *)&totals]
	vmovdqa	%ymm0, -6960(%rbp)	# tmp273, MEM <char[1:168]> [(void *)&totals]
	vmovdqa	%ymm0, -6928(%rbp)	# tmp273, MEM <char[1:168]> [(void *)&totals]
# items.c:791:         unsigned int size = 0;
	xorl	%r13d, %r13d	# size
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:59:   return __builtin___memset_chk (__dest, __ch, __len,
	vmovdqa	%ymm0, -6896(%rbp)	# tmp273, MEM <char[1:168]> [(void *)&totals]
	vmovdqa	%ymm0, -6864(%rbp)	# tmp273, MEM <char[1:168]> [(void *)&totals]
# items.c:792:         unsigned int age  = 0;
	movl	$0, -7020(%rbp)	#, %sfp
	leaq	lru_type_map(%rip), %rbx	#, ivtmp.395
	leaq	-6816(%rbp), %r12	#, ivtmp.396
	vzeroupper
.L522:
# items.c:801:             i = n | lru_type_map[x];
	movl	(%rbx), %ecx	# MEM[(unsigned int *)_197], _1
# items.c:801:             i = n | lru_type_map[x];
	movl	-6996(%rbp), %edx	# %sfp, i
# items.c:802:             pthread_mutex_lock(&lru_locks[i]);
	leaq	lru_locks(%rip), %rdi	#, tmp647
# items.c:801:             i = n | lru_type_map[x];
	orl	%ecx, %edx	# _1, i
	movl	%ecx, -7000(%rbp)	# _1, %sfp
# items.c:802:             pthread_mutex_lock(&lru_locks[i]);
	movslq	%edx, %rdx	# i, i
	leaq	(%rdx,%rdx,4), %rax	#, _396
	movq	%rdx, -7016(%rbp)	# i, %sfp
	leaq	(%rdi,%rax,8), %r14	#, _2
	movq	%r14, %rdi	# _2,
	call	pthread_mutex_lock@PLT	#
	movq	-7016(%rbp), %rdx	# %sfp, i
# items.c:821:             if (lru_type_map[x] == COLD_LRU && tails[i] != NULL) {
	movl	-7000(%rbp), %ecx	# %sfp, _1
	imulq	$168, %rdx, %rsi	#, i, tmp281
	leaq	(%r15,%rsi), %rax	#, vectp.373
# items.c:803:             totals.evicted += itemstats[i].evicted;
	vmovdqu	(%rax), %ymm2	# MEM <vector(4) long unsigned int> [(long unsigned int *)vectp.373_180], vect__4.374_181
	vmovdqu	32(%rax), %ymm1	# MEM <vector(4) long unsigned int> [(long unsigned int *)vectp.373_180 + 32B], vect__4.375_131
	vmovdqu	64(%rax), %ymm0	# MEM <vector(4) long unsigned int> [(long unsigned int *)vectp.373_180 + 64B], vect__4.376_397
# items.c:803:             totals.evicted += itemstats[i].evicted;
	vpaddq	-6960(%rbp), %ymm1, %ymm1	# MEM <vector(4) long unsigned int> [(long unsigned int *)&totals + 32B], vect__4.375_131, vect__5.377
	vpaddq	-6928(%rbp), %ymm0, %ymm0	# MEM <vector(4) long unsigned int> [(long unsigned int *)&totals + 64B], vect__4.376_397, vect__5.377
	vpaddq	-6992(%rbp), %ymm2, %ymm2	# MEM <vector(4) long unsigned int> [(long unsigned int *)&totals], vect__4.374_181, vect__5.377_398
# items.c:817:             totals.direct_reclaims += itemstats[i].direct_reclaims;
	movq	112(%rax), %rax	# itemstats[i_186].direct_reclaims, itemstats[i_186].direct_reclaims
# items.c:803:             totals.evicted += itemstats[i].evicted;
	vmovdqa	%ymm1, -6960(%rbp)	# vect__5.377, MEM <vector(4) long unsigned int> [(long unsigned int *)&totals + 32B]
	vmovdqa	%ymm2, -6992(%rbp)	# vect__5.377_398, MEM <vector(4) long unsigned int> [(long unsigned int *)&totals]
	vmovdqa	%ymm0, -6928(%rbp)	# vect__5.377, MEM <vector(4) long unsigned int> [(long unsigned int *)&totals + 64B]
# items.c:815:             totals.moves_to_warm += itemstats[i].moves_to_warm;
	vmovdqu	96(%r15,%rsi), %xmm0	# MEM <vector(2) long unsigned int> [(long unsigned int *)vectp.384_383], vect__40.385_367
# items.c:815:             totals.moves_to_warm += itemstats[i].moves_to_warm;
	vpaddq	-6896(%rbp), %xmm0, %xmm0	# MEM <vector(2) long unsigned int> [(long unsigned int *)&totals + 96B], vect__40.385_367, vect__41.386_403
# items.c:817:             totals.direct_reclaims += itemstats[i].direct_reclaims;
	addq	%rax, -6880(%rbp)	# itemstats[i_186].direct_reclaims, totals.direct_reclaims
# items.c:818:             totals.mem_requested += sizes_bytes[i];
	leaq	sizes_bytes(%rip), %rax	#, tmp648
	movq	(%rax,%rdx,8), %rax	# sizes_bytes[i_186], sizes_bytes[i_186]
	addq	%rax, -6840(%rbp)	# sizes_bytes[i_186], totals.mem_requested
# items.c:819:             size += sizes[i];
	leaq	sizes(%rip), %rax	#, tmp649
	movl	(%rax,%rdx,4), %eax	# sizes[i_186], _51
# items.c:819:             size += sizes[i];
	addl	%eax, %r13d	# _51, size
# items.c:820:             lru_size_map[x] = sizes[i];
	movl	%eax, (%r12)	# _51, MEM[(unsigned int *)_196]
# items.c:815:             totals.moves_to_warm += itemstats[i].moves_to_warm;
	vmovdqa	%xmm0, -6896(%rbp)	# vect__41.386_403, MEM <vector(2) long unsigned int> [(long unsigned int *)&totals + 96B]
# items.c:821:             if (lru_type_map[x] == COLD_LRU && tails[i] != NULL) {
	cmpl	$128, %ecx	#, _1
	je	.L546	#,
# items.c:823:             } else if (lru_type_map[x] == HOT_LRU && tails[i] != NULL) {
	testl	%ecx, %ecx	# _1
	jne	.L547	#,
# items.c:823:             } else if (lru_type_map[x] == HOT_LRU && tails[i] != NULL) {
	leaq	tails(%rip), %rax	#, tmp652
	movq	(%rax,%rdx,8), %rax	# tails[i_186], _56
# items.c:823:             } else if (lru_type_map[x] == HOT_LRU && tails[i] != NULL) {
	testq	%rax, %rax	# _56
	je	.L518	#,
# items.c:824:                 age_hot = current_time - tails[i]->time;
	movl	current_time(%rip), %ecx	# current_time, current_time.30_57
# items.c:824:                 age_hot = current_time - tails[i]->time;
	subl	24(%rax), %ecx	# _56->time, current_time.30_57
	movl	%ecx, -7024(%rbp)	# current_time.30_57, %sfp
.L518:
# items.c:832:                     totals.hits_to_hot = thread_stats.lru_hits[i];
	movq	-2392(%rbp,%rdx,8), %rax	# thread_stats.lru_hits[i_186], thread_stats.lru_hits[i_186]
	movq	%rax, -6872(%rbp)	# thread_stats.lru_hits[i_186], totals.hits_to_hot
	.p2align 4
	.p2align 3
.L520:
# items.c:844:             pthread_mutex_unlock(&lru_locks[i]);
	movq	%r14, %rdi	# _2,
	vzeroupper
# items.c:800:         for (x = 0; x < 4; x++) {
	addq	$4, %rbx	#, ivtmp.395
	addq	$4, %r12	#, ivtmp.396
# items.c:844:             pthread_mutex_unlock(&lru_locks[i]);
	call	pthread_mutex_unlock@PLT	#
# items.c:800:         for (x = 0; x < 4; x++) {
	leaq	16+lru_type_map(%rip), %rax	#, tmp656
	cmpq	%rax, %rbx	# tmp656, ivtmp.395
	jne	.L522	#,
# items.c:846:         if (size == 0)
	testl	%r13d, %r13d	# size
	je	.L529	#,
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:68:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	movl	-6996(%rbp), %r9d	# %sfp,
	subq	$8, %rsp	#,
	leaq	-320(%rbp), %rbx	#, tmp565
	leaq	.LC42(%rip), %rax	#, tmp659
	pushq	%rax	# tmp659
	leaq	.LC41(%rip), %r8	#,
	movl	$128, %ecx	#,
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%rbx, %rdi	# tmp565,
	xorl	%eax, %eax	#
	leaq	-192(%rbp), %r12	#, tmp574
	call	__snprintf_chk@PLT	#
	movl	%r13d, %r9d	# size,
	leaq	.LC43(%rip), %r8	#,
	movl	$128, %ecx	#,
	movl	%eax, %r14d	#, _217
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%r12, %rdi	# tmp574,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
# items.c:848:         APPEND_NUM_FMT_STAT(fmt, n, "number", "%u", size);
	movl	%r14d, %esi	# _217,
	movq	-7008(%rbp), %r8	# %sfp,
	movq	%r12, %rdx	# tmp574,
	movl	%eax, %ecx	# _216,
	movq	%rbx, %rdi	# tmp565,
	movq	-7032(%rbp), %rax	# %sfp, add_stats
	call	*%rax	# add_stats
# items.c:849:         if (settings.lru_maintainer_thread) {
	cmpb	$0, 135+settings(%rip)	#, settings.lru_maintainer_thread
	popq	%rcx	#
	popq	%rsi	#
	jne	.L548	#,
.L526:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:68:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	movl	-6996(%rbp), %r9d	# %sfp,
	subq	$8, %rsp	#,
	leaq	.LC50(%rip), %rax	#, tmp673
	leaq	.LC41(%rip), %r8	#,
	pushq	%rax	# tmp673
	movl	$128, %ecx	#,
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%rbx, %rdi	# tmp565,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
	movl	-7020(%rbp), %r9d	# %sfp,
	leaq	.LC43(%rip), %r8	#,
	movl	$128, %ecx	#,
	movl	%eax, %r13d	#, _249
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%r12, %rdi	# tmp574,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
# items.c:859:         APPEND_NUM_FMT_STAT(fmt, n, "age", "%u", age);
	movq	-7032(%rbp), %r14	# %sfp, add_stats
	movl	%r13d, %esi	# _249,
	movq	%r12, %rdx	# tmp574,
	movl	%eax, %ecx	# _248,
	movq	-7008(%rbp), %r8	# %sfp,
	movq	%rbx, %rdi	# tmp565,
	call	*%r14	# add_stats
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:68:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	movl	-6996(%rbp), %r9d	# %sfp,
	leaq	.LC51(%rip), %rax	#, tmp675
	leaq	.LC41(%rip), %r8	#,
	movl	$128, %ecx	#,
	movq	%rax, (%rsp)	# tmp675,
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%rbx, %rdi	# tmp565,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
	movq	-6840(%rbp), %r9	# totals.mem_requested,
	leaq	.LC27(%rip), %r8	#,
	movl	$128, %ecx	#,
	movl	%eax, %r13d	#, _247
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%r12, %rdi	# tmp574,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
# items.c:860:         APPEND_NUM_FMT_STAT(fmt, n, "mem_requested", "%llu", (unsigned long long)totals.mem_requested);
	movl	%r13d, %esi	# _247,
	movq	-7008(%rbp), %r8	# %sfp,
	movq	%r12, %rdx	# tmp574,
	movl	%eax, %ecx	# _246,
	movq	%rbx, %rdi	# tmp565,
	call	*%r14	# add_stats
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:68:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	movl	-6996(%rbp), %r9d	# %sfp,
	leaq	.LC52(%rip), %rax	#, tmp677
	leaq	.LC41(%rip), %r8	#,
	movl	$128, %ecx	#,
	movq	%rax, (%rsp)	# tmp677,
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%rbx, %rdi	# tmp565,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
	movq	-6992(%rbp), %r9	# totals.evicted,
	leaq	.LC27(%rip), %r8	#,
	movl	$128, %ecx	#,
	movl	%eax, %r13d	#, _245
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%r12, %rdi	# tmp574,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
# items.c:861:         APPEND_NUM_FMT_STAT(fmt, n, "evicted",
	movl	%r13d, %esi	# _245,
	movq	-7008(%rbp), %r8	# %sfp,
	movq	%r12, %rdx	# tmp574,
	movl	%eax, %ecx	# _244,
	movq	%rbx, %rdi	# tmp565,
	call	*%r14	# add_stats
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:68:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	movl	-6996(%rbp), %r9d	# %sfp,
	leaq	.LC53(%rip), %rax	#, tmp679
	leaq	.LC41(%rip), %r8	#,
	movl	$128, %ecx	#,
	movq	%rax, (%rsp)	# tmp679,
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%rbx, %rdi	# tmp565,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
	movq	-6984(%rbp), %r9	# totals.evicted_nonzero,
	leaq	.LC27(%rip), %r8	#,
	movl	$128, %ecx	#,
	movl	%eax, %r13d	#, _243
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%r12, %rdi	# tmp574,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
# items.c:863:         APPEND_NUM_FMT_STAT(fmt, n, "evicted_nonzero",
	movl	%r13d, %esi	# _243,
	movq	-7008(%rbp), %r8	# %sfp,
	movq	%r12, %rdx	# tmp574,
	movl	%eax, %ecx	# _242,
	movq	%rbx, %rdi	# tmp565,
	call	*%r14	# add_stats
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:68:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	movl	-6996(%rbp), %r9d	# %sfp,
	leaq	.LC54(%rip), %rax	#, tmp681
	leaq	.LC41(%rip), %r8	#,
	movl	$128, %ecx	#,
	movq	%rax, (%rsp)	# tmp681,
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%rbx, %rdi	# tmp565,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
	movl	-6832(%rbp), %r9d	# totals.evicted_time,
	leaq	.LC43(%rip), %r8	#,
	movl	$128, %ecx	#,
	movl	%eax, %r13d	#, _241
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%r12, %rdi	# tmp574,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
# items.c:865:         APPEND_NUM_FMT_STAT(fmt, n, "evicted_time",
	movl	%r13d, %esi	# _241,
	movq	-7008(%rbp), %r8	# %sfp,
	movq	%r12, %rdx	# tmp574,
	movl	%eax, %ecx	# _240,
	movq	%rbx, %rdi	# tmp565,
	call	*%r14	# add_stats
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:68:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	movl	-6996(%rbp), %r9d	# %sfp,
	leaq	.LC55(%rip), %rax	#, tmp683
	leaq	.LC41(%rip), %r8	#,
	movl	$128, %ecx	#,
	movq	%rax, (%rsp)	# tmp683,
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%rbx, %rdi	# tmp565,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
	movq	-6968(%rbp), %r9	# totals.outofmemory,
	leaq	.LC27(%rip), %r8	#,
	movl	$128, %ecx	#,
	movl	%eax, %r13d	#, _239
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%r12, %rdi	# tmp574,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
# items.c:867:         APPEND_NUM_FMT_STAT(fmt, n, "outofmemory",
	movl	%r13d, %esi	# _239,
	movq	-7008(%rbp), %r8	# %sfp,
	movq	%r12, %rdx	# tmp574,
	movl	%eax, %ecx	# _238,
	movq	%rbx, %rdi	# tmp565,
	call	*%r14	# add_stats
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:68:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	movl	-6996(%rbp), %r9d	# %sfp,
	leaq	.LC56(%rip), %rax	#, tmp685
	leaq	.LC41(%rip), %r8	#,
	movl	$128, %ecx	#,
	movq	%rax, (%rsp)	# tmp685,
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%rbx, %rdi	# tmp565,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
	movq	-6960(%rbp), %r9	# totals.tailrepairs,
	leaq	.LC27(%rip), %r8	#,
	movl	$128, %ecx	#,
	movl	%eax, %r13d	#, _237
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%r12, %rdi	# tmp574,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
# items.c:869:         APPEND_NUM_FMT_STAT(fmt, n, "tailrepairs",
	movl	%r13d, %esi	# _237,
	movq	-7008(%rbp), %r8	# %sfp,
	movq	%r12, %rdx	# tmp574,
	movl	%eax, %ecx	# _236,
	movq	%rbx, %rdi	# tmp565,
	call	*%r14	# add_stats
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:68:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	movl	-6996(%rbp), %r9d	# %sfp,
	leaq	.LC32(%rip), %rax	#, tmp687
	leaq	.LC41(%rip), %r8	#,
	movl	$128, %ecx	#,
	movq	%rax, (%rsp)	# tmp687,
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%rbx, %rdi	# tmp565,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
	movq	-6976(%rbp), %r9	# totals.reclaimed,
	leaq	.LC27(%rip), %r8	#,
	movl	$128, %ecx	#,
	movl	%eax, %r13d	#, _235
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%r12, %rdi	# tmp574,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
# items.c:871:         APPEND_NUM_FMT_STAT(fmt, n, "reclaimed",
	movl	%r13d, %esi	# _235,
	movq	-7008(%rbp), %r8	# %sfp,
	movq	%r12, %rdx	# tmp574,
	movl	%eax, %ecx	# _234,
	movq	%rbx, %rdi	# tmp565,
	call	*%r14	# add_stats
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:68:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	movl	-6996(%rbp), %r9d	# %sfp,
	leaq	.LC28(%rip), %rax	#, tmp689
	leaq	.LC41(%rip), %r8	#,
	movl	$128, %ecx	#,
	movq	%rax, (%rsp)	# tmp689,
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%rbx, %rdi	# tmp565,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
	movq	-6952(%rbp), %r9	# totals.expired_unfetched,
	leaq	.LC27(%rip), %r8	#,
	movl	$128, %ecx	#,
	movl	%eax, %r13d	#, _233
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%r12, %rdi	# tmp574,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
# items.c:873:         APPEND_NUM_FMT_STAT(fmt, n, "expired_unfetched",
	movl	%r13d, %esi	# _233,
	movq	-7008(%rbp), %r8	# %sfp,
	movq	%r12, %rdx	# tmp574,
	movl	%eax, %ecx	# _232,
	movq	%rbx, %rdi	# tmp565,
	call	*%r14	# add_stats
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:68:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	movl	-6996(%rbp), %r9d	# %sfp,
	leaq	.LC29(%rip), %rax	#, tmp691
	leaq	.LC41(%rip), %r8	#,
	movl	$128, %ecx	#,
	movq	%rax, (%rsp)	# tmp691,
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%rbx, %rdi	# tmp565,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
	movq	-6944(%rbp), %r9	# totals.evicted_unfetched,
	leaq	.LC27(%rip), %r8	#,
	movl	$128, %ecx	#,
	movl	%eax, %r13d	#, _231
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%r12, %rdi	# tmp574,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
# items.c:875:         APPEND_NUM_FMT_STAT(fmt, n, "evicted_unfetched",
	movq	-7008(%rbp), %r8	# %sfp,
	movq	%r12, %rdx	# tmp574,
	movl	%r13d, %esi	# _231,
	movl	%eax, %ecx	# _230,
	movq	%rbx, %rdi	# tmp565,
	call	*%r14	# add_stats
# items.c:877:         if (settings.lru_maintainer_thread) {
	cmpb	$0, 135+settings(%rip)	#, settings.lru_maintainer_thread
	popq	%r9	#
	popq	%r10	#
	jne	.L549	#,
.L528:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:68:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	movl	-6996(%rbp), %r9d	# %sfp,
	subq	$8, %rsp	#,
	leaq	.LC33(%rip), %rax	#, tmp695
	leaq	.LC41(%rip), %r8	#,
	pushq	%rax	# tmp695
	movl	$128, %ecx	#,
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%rbx, %rdi	# tmp565,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
	movq	-6928(%rbp), %r9	# totals.crawler_reclaimed,
	leaq	.LC27(%rip), %r8	#,
	movl	$128, %ecx	#,
	movl	%eax, %r13d	#, _257
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%r12, %rdi	# tmp574,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
# items.c:881:         APPEND_NUM_FMT_STAT(fmt, n, "crawler_reclaimed",
	movq	-7032(%rbp), %r14	# %sfp, add_stats
	movl	%r13d, %esi	# _257,
	movq	%r12, %rdx	# tmp574,
	movl	%eax, %ecx	# _256,
	movq	-7008(%rbp), %r8	# %sfp,
	movq	%rbx, %rdi	# tmp565,
	call	*%r14	# add_stats
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:68:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	movl	-6996(%rbp), %r9d	# %sfp,
	leaq	.LC34(%rip), %rax	#, tmp697
	leaq	.LC41(%rip), %r8	#,
	movl	$128, %ecx	#,
	movq	%rax, (%rsp)	# tmp697,
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%rbx, %rdi	# tmp565,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
	movq	-6920(%rbp), %r9	# totals.crawler_items_checked,
	leaq	.LC27(%rip), %r8	#,
	movl	$128, %ecx	#,
	movl	%eax, %r13d	#, _255
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%r12, %rdi	# tmp574,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
# items.c:883:         APPEND_NUM_FMT_STAT(fmt, n, "crawler_items_checked",
	movl	%r13d, %esi	# _255,
	movq	-7008(%rbp), %r8	# %sfp,
	movq	%r12, %rdx	# tmp574,
	movl	%eax, %ecx	# _254,
	movq	%rbx, %rdi	# tmp565,
	call	*%r14	# add_stats
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:68:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	movl	-6996(%rbp), %r9d	# %sfp,
	leaq	.LC35(%rip), %rax	#, tmp699
	leaq	.LC41(%rip), %r8	#,
	movl	$128, %ecx	#,
	movq	%rax, (%rsp)	# tmp699,
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%rbx, %rdi	# tmp565,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
	movq	-6912(%rbp), %r9	# totals.lrutail_reflocked,
	leaq	.LC27(%rip), %r8	#,
	movl	$128, %ecx	#,
	movl	%eax, %r13d	#, _253
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%r12, %rdi	# tmp574,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
# items.c:885:         APPEND_NUM_FMT_STAT(fmt, n, "lrutail_reflocked",
	movl	%r13d, %esi	# _253,
	movq	-7008(%rbp), %r8	# %sfp,
	movq	%r12, %rdx	# tmp574,
	movl	%eax, %ecx	# _252,
	movq	%rbx, %rdi	# tmp565,
	call	*%r14	# add_stats
# items.c:887:         if (settings.lru_maintainer_thread) {
	cmpb	$0, 135+settings(%rip)	#, settings.lru_maintainer_thread
	popq	%rcx	#
	popq	%rsi	#
	jne	.L550	#,
.L529:
# items.c:787:     for (n = 0; n < MAX_NUMBER_OF_SLAB_CLASSES; n++) {
	incl	-6996(%rbp)	# %sfp
# items.c:787:     for (n = 0; n < MAX_NUMBER_OF_SLAB_CLASSES; n++) {
	cmpl	$64, -6996(%rbp)	#, %sfp
	jne	.L524	#,
# items.c:912:     add_stats(NULL, 0, NULL, 0, c);
	movq	-7032(%rbp), %rax	# %sfp, add_stats
	xorl	%ecx, %ecx	#
	xorl	%edx, %edx	#
	xorl	%esi, %esi	#
	xorl	%edi, %edi	#
	movq	-7008(%rbp), %r8	# %sfp,
	call	*%rax	# add_stats
# items.c:913: }
	movq	-56(%rbp), %rax	# D.13849, tmp640
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp640
	jne	.L551	#,
	leaq	-48(%rbp), %rsp	#,
	popq	%rbx	#
	popq	%r10	#
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%r15	#
	popq	%rbp	#
	leaq	-8(%r10), %rsp	#,
	.cfi_def_cfa 7, 8
	ret	
	.p2align 4
	.p2align 3
.L546:
	.cfi_restore_state
# items.c:821:             if (lru_type_map[x] == COLD_LRU && tails[i] != NULL) {
	leaq	tails(%rip), %rax	#, tmp650
	movq	(%rax,%rdx,8), %rax	# tails[i_186], _53
# items.c:821:             if (lru_type_map[x] == COLD_LRU && tails[i] != NULL) {
	testq	%rax, %rax	# _53
	je	.L514	#,
# items.c:822:                 age = current_time - tails[i]->time;
	movl	current_time(%rip), %ecx	# current_time, current_time.29_54
# items.c:822:                 age = current_time - tails[i]->time;
	subl	24(%rax), %ecx	# _53->time, current_time.29_54
	movl	%ecx, -7020(%rbp)	# current_time.29_54, %sfp
.L514:
# items.c:829:                 totals.evicted_time = itemstats[i].evicted_time;
	imulq	$168, %rdx, %rax	#, i, tmp312
# items.c:829:                 totals.evicted_time = itemstats[i].evicted_time;
	movl	160(%r15,%rax), %eax	# itemstats[i_186].evicted_time, itemstats[i_186].evicted_time
	movl	%eax, -6832(%rbp)	# itemstats[i_186].evicted_time, totals.evicted_time
# items.c:838:                     totals.hits_to_cold = thread_stats.lru_hits[i];
	movq	-2392(%rbp,%rdx,8), %rax	# thread_stats.lru_hits[i_186], thread_stats.lru_hits[i_186]
	movq	%rax, -6856(%rbp)	# thread_stats.lru_hits[i_186], totals.hits_to_cold
# items.c:839:                     break;
	jmp	.L520	#
	.p2align 4
	.p2align 3
.L547:
# items.c:825:             } else if (lru_type_map[x] == WARM_LRU && tails[i] != NULL) {
	cmpl	$64, %ecx	#, _1
	je	.L552	#,
# items.c:830:             switch (lru_type_map[x]) {
	cmpl	$192, %ecx	#, _1
	jne	.L520	#,
# items.c:841:                     totals.hits_to_temp = thread_stats.lru_hits[i];
	movq	-2392(%rbp,%rdx,8), %rax	# thread_stats.lru_hits[i_186], thread_stats.lru_hits[i_186]
	movq	%rax, -6848(%rbp)	# thread_stats.lru_hits[i_186], totals.hits_to_temp
# items.c:842:                     break;
	jmp	.L520	#
	.p2align 4
	.p2align 3
.L552:
# items.c:825:             } else if (lru_type_map[x] == WARM_LRU && tails[i] != NULL) {
	leaq	tails(%rip), %rax	#, tmp654
	movq	(%rax,%rdx,8), %rax	# tails[i_186], _142
# items.c:825:             } else if (lru_type_map[x] == WARM_LRU && tails[i] != NULL) {
	testq	%rax, %rax	# _142
	je	.L519	#,
# items.c:826:                 age_warm = current_time - tails[i]->time;
	movl	current_time(%rip), %ecx	# current_time, current_time.31_125
# items.c:826:                 age_warm = current_time - tails[i]->time;
	subl	24(%rax), %ecx	# _142->time, current_time.31_125
	movl	%ecx, -7036(%rbp)	# current_time.31_125, %sfp
.L519:
# items.c:835:                     totals.hits_to_warm = thread_stats.lru_hits[i];
	movq	-2392(%rbp,%rdx,8), %rax	# thread_stats.lru_hits[i_186], thread_stats.lru_hits[i_186]
	movq	%rax, -6864(%rbp)	# thread_stats.lru_hits[i_186], totals.hits_to_warm
# items.c:836:                     break;
	jmp	.L520	#
	.p2align 4
	.p2align 3
.L550:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:68:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	movl	-6996(%rbp), %r9d	# %sfp,
	subq	$8, %rsp	#,
	leaq	.LC36(%rip), %rax	#, tmp701
	leaq	.LC41(%rip), %r8	#,
	pushq	%rax	# tmp701
	movl	$128, %ecx	#,
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%rbx, %rdi	# tmp565,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
	movq	-6904(%rbp), %r9	# totals.moves_to_cold,
	leaq	.LC27(%rip), %r8	#,
	movl	$128, %ecx	#,
	movl	%eax, %r13d	#, _273
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%r12, %rdi	# tmp574,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
# items.c:888:             APPEND_NUM_FMT_STAT(fmt, n, "moves_to_cold",
	movq	-7032(%rbp), %r14	# %sfp, add_stats
	movl	%r13d, %esi	# _273,
	movq	%r12, %rdx	# tmp574,
	movl	%eax, %ecx	# _272,
	movq	-7008(%rbp), %r8	# %sfp,
	movq	%rbx, %rdi	# tmp565,
	call	*%r14	# add_stats
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:68:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	movl	-6996(%rbp), %r9d	# %sfp,
	leaq	.LC37(%rip), %rax	#, tmp703
	leaq	.LC41(%rip), %r8	#,
	movl	$128, %ecx	#,
	movq	%rax, (%rsp)	# tmp703,
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%rbx, %rdi	# tmp565,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
	movq	-6896(%rbp), %r9	# totals.moves_to_warm,
	leaq	.LC27(%rip), %r8	#,
	movl	$128, %ecx	#,
	movl	%eax, %r13d	#, _271
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%r12, %rdi	# tmp574,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
# items.c:890:             APPEND_NUM_FMT_STAT(fmt, n, "moves_to_warm",
	movl	%r13d, %esi	# _271,
	movq	-7008(%rbp), %r8	# %sfp,
	movq	%r12, %rdx	# tmp574,
	movl	%eax, %ecx	# _270,
	movq	%rbx, %rdi	# tmp565,
	call	*%r14	# add_stats
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:68:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	movl	-6996(%rbp), %r9d	# %sfp,
	leaq	.LC38(%rip), %rax	#, tmp705
	leaq	.LC41(%rip), %r8	#,
	movl	$128, %ecx	#,
	movq	%rax, (%rsp)	# tmp705,
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%rbx, %rdi	# tmp565,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
	movq	-6888(%rbp), %r9	# totals.moves_within_lru,
	leaq	.LC27(%rip), %r8	#,
	movl	$128, %ecx	#,
	movl	%eax, %r13d	#, _269
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%r12, %rdi	# tmp574,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
# items.c:892:             APPEND_NUM_FMT_STAT(fmt, n, "moves_within_lru",
	movl	%r13d, %esi	# _269,
	movq	-7008(%rbp), %r8	# %sfp,
	movq	%r12, %rdx	# tmp574,
	movl	%eax, %ecx	# _268,
	movq	%rbx, %rdi	# tmp565,
	call	*%r14	# add_stats
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:68:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	movl	-6996(%rbp), %r9d	# %sfp,
	leaq	.LC39(%rip), %rax	#, tmp707
	leaq	.LC41(%rip), %r8	#,
	movl	$128, %ecx	#,
	movq	%rax, (%rsp)	# tmp707,
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%rbx, %rdi	# tmp565,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
	movq	-6880(%rbp), %r9	# totals.direct_reclaims,
	leaq	.LC27(%rip), %r8	#,
	movl	$128, %ecx	#,
	movl	%eax, %r13d	#, _267
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%r12, %rdi	# tmp574,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
# items.c:894:             APPEND_NUM_FMT_STAT(fmt, n, "direct_reclaims",
	movl	%r13d, %esi	# _267,
	movq	-7008(%rbp), %r8	# %sfp,
	movq	%r12, %rdx	# tmp574,
	movl	%eax, %ecx	# _266,
	movq	%rbx, %rdi	# tmp565,
	call	*%r14	# add_stats
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:68:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	movl	-6996(%rbp), %r9d	# %sfp,
	leaq	.LC57(%rip), %rax	#, tmp709
	leaq	.LC41(%rip), %r8	#,
	movl	$128, %ecx	#,
	movq	%rax, (%rsp)	# tmp709,
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%rbx, %rdi	# tmp565,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
	movq	-6872(%rbp), %r9	# totals.hits_to_hot,
	leaq	.LC27(%rip), %r8	#,
	movl	$128, %ecx	#,
	movl	%eax, %r13d	#, _265
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%r12, %rdi	# tmp574,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
# items.c:896:             APPEND_NUM_FMT_STAT(fmt, n, "hits_to_hot",
	movl	%r13d, %esi	# _265,
	movq	-7008(%rbp), %r8	# %sfp,
	movq	%r12, %rdx	# tmp574,
	movl	%eax, %ecx	# _264,
	movq	%rbx, %rdi	# tmp565,
	call	*%r14	# add_stats
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:68:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	movl	-6996(%rbp), %r9d	# %sfp,
	leaq	.LC58(%rip), %rax	#, tmp711
	leaq	.LC41(%rip), %r8	#,
	movl	$128, %ecx	#,
	movq	%rax, (%rsp)	# tmp711,
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%rbx, %rdi	# tmp565,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
	movq	-6864(%rbp), %r9	# totals.hits_to_warm,
	leaq	.LC27(%rip), %r8	#,
	movl	$128, %ecx	#,
	movl	%eax, %r13d	#, _263
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%r12, %rdi	# tmp574,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
# items.c:899:             APPEND_NUM_FMT_STAT(fmt, n, "hits_to_warm",
	movl	%r13d, %esi	# _263,
	movq	-7008(%rbp), %r8	# %sfp,
	movq	%r12, %rdx	# tmp574,
	movl	%eax, %ecx	# _262,
	movq	%rbx, %rdi	# tmp565,
	call	*%r14	# add_stats
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:68:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	movl	-6996(%rbp), %r9d	# %sfp,
	leaq	.LC59(%rip), %rax	#, tmp713
	leaq	.LC41(%rip), %r8	#,
	movl	$128, %ecx	#,
	movq	%rax, (%rsp)	# tmp713,
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%rbx, %rdi	# tmp565,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
	movq	-6856(%rbp), %r9	# totals.hits_to_cold,
	leaq	.LC27(%rip), %r8	#,
	movl	$128, %ecx	#,
	movl	%eax, %r13d	#, _261
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%r12, %rdi	# tmp574,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
# items.c:902:             APPEND_NUM_FMT_STAT(fmt, n, "hits_to_cold",
	movl	%r13d, %esi	# _261,
	movq	-7008(%rbp), %r8	# %sfp,
	movq	%r12, %rdx	# tmp574,
	movl	%eax, %ecx	# _260,
	movq	%rbx, %rdi	# tmp565,
	call	*%r14	# add_stats
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:68:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	movl	-6996(%rbp), %r9d	# %sfp,
	leaq	.LC60(%rip), %rax	#, tmp715
	leaq	.LC41(%rip), %r8	#,
	movl	$128, %ecx	#,
	movq	%rax, (%rsp)	# tmp715,
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%rbx, %rdi	# tmp565,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
	movq	-6848(%rbp), %r9	# totals.hits_to_temp,
	leaq	.LC27(%rip), %r8	#,
	movl	$128, %ecx	#,
	movl	%eax, %r13d	#, _259
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%r12, %rdi	# tmp574,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
# items.c:905:             APPEND_NUM_FMT_STAT(fmt, n, "hits_to_temp",
	movq	%r12, %rdx	# tmp574,
	movq	-7008(%rbp), %r8	# %sfp,
	movl	%r13d, %esi	# _259,
	movl	%eax, %ecx	# _258,
	movq	%rbx, %rdi	# tmp565,
	call	*%r14	# add_stats
	popq	%rax	#
	popq	%rdx	#
	jmp	.L529	#
	.p2align 4
	.p2align 3
.L549:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:68:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	movl	-6996(%rbp), %r9d	# %sfp,
	subq	$8, %rsp	#,
	leaq	.LC30(%rip), %rax	#, tmp693
	leaq	.LC41(%rip), %r8	#,
	pushq	%rax	# tmp693
	movl	$128, %ecx	#,
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%rbx, %rdi	# tmp565,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
	movq	-6936(%rbp), %r9	# totals.evicted_active,
	leaq	.LC27(%rip), %r8	#,
	movl	$128, %ecx	#,
	movl	%eax, %r13d	#, _251
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%r12, %rdi	# tmp574,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
# items.c:878:             APPEND_NUM_FMT_STAT(fmt, n, "evicted_active",
	movq	-7008(%rbp), %r8	# %sfp,
	movq	%rbx, %rdi	# tmp565,
	movq	%r12, %rdx	# tmp574,
	movl	%eax, %ecx	# _250,
	movl	%r13d, %esi	# _251,
	movq	-7032(%rbp), %rax	# %sfp, add_stats
	call	*%rax	# add_stats
	popq	%rdi	#
	popq	%r8	#
	jmp	.L528	#
	.p2align 4
	.p2align 3
.L548:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:68:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	movl	-6996(%rbp), %r9d	# %sfp,
	subq	$8, %rsp	#,
	leaq	.LC44(%rip), %rax	#, tmp661
	leaq	.LC41(%rip), %r8	#,
	pushq	%rax	# tmp661
	movl	$128, %ecx	#,
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%rbx, %rdi	# tmp565,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
	movl	-6816(%rbp), %r9d	# lru_size_map[0],
	leaq	.LC43(%rip), %r8	#,
	movl	$128, %ecx	#,
	movl	%eax, %r13d	#, _223
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%r12, %rdi	# tmp574,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
# items.c:850:             APPEND_NUM_FMT_STAT(fmt, n, "number_hot", "%u", lru_size_map[0]);
	movq	-7032(%rbp), %r14	# %sfp, add_stats
	movl	%r13d, %esi	# _223,
	movq	%r12, %rdx	# tmp574,
	movl	%eax, %ecx	# _222,
	movq	-7008(%rbp), %r8	# %sfp,
	movq	%rbx, %rdi	# tmp565,
	call	*%r14	# add_stats
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:68:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	movl	-6996(%rbp), %r9d	# %sfp,
	leaq	.LC45(%rip), %rax	#, tmp663
	leaq	.LC41(%rip), %r8	#,
	movl	$128, %ecx	#,
	movq	%rax, (%rsp)	# tmp663,
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%rbx, %rdi	# tmp565,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
	movl	-6812(%rbp), %r9d	# lru_size_map[1],
	leaq	.LC43(%rip), %r8	#,
	movl	$128, %ecx	#,
	movl	%eax, %r13d	#, _221
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%r12, %rdi	# tmp574,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
# items.c:851:             APPEND_NUM_FMT_STAT(fmt, n, "number_warm", "%u", lru_size_map[1]);
	movl	%r13d, %esi	# _221,
	movq	-7008(%rbp), %r8	# %sfp,
	movq	%r12, %rdx	# tmp574,
	movl	%eax, %ecx	# _220,
	movq	%rbx, %rdi	# tmp565,
	call	*%r14	# add_stats
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:68:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	movl	-6996(%rbp), %r9d	# %sfp,
	leaq	.LC46(%rip), %rax	#, tmp665
	leaq	.LC41(%rip), %r8	#,
	movl	$128, %ecx	#,
	movq	%rax, (%rsp)	# tmp665,
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%rbx, %rdi	# tmp565,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
	movl	-6808(%rbp), %r9d	# lru_size_map[2],
	leaq	.LC43(%rip), %r8	#,
	movl	$128, %ecx	#,
	movl	%eax, %r13d	#, _219
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%r12, %rdi	# tmp574,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
# items.c:852:             APPEND_NUM_FMT_STAT(fmt, n, "number_cold", "%u", lru_size_map[2]);
	movq	%r12, %rdx	# tmp574,
	movq	-7008(%rbp), %r8	# %sfp,
	movl	%r13d, %esi	# _219,
	movl	%eax, %ecx	# _218,
	movq	%rbx, %rdi	# tmp565,
	call	*%r14	# add_stats
# items.c:853:             if (settings.temp_lru) {
	cmpb	$0, 236+settings(%rip)	#, settings.temp_lru
	popq	%rax	#
	popq	%rdx	#
	jne	.L553	#,
.L527:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:68:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	movl	-6996(%rbp), %r9d	# %sfp,
	subq	$8, %rsp	#,
	leaq	.LC48(%rip), %rax	#, tmp669
	leaq	.LC41(%rip), %r8	#,
	pushq	%rax	# tmp669
	movl	$128, %ecx	#,
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%rbx, %rdi	# tmp565,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
	movl	-7024(%rbp), %r9d	# %sfp,
	leaq	.LC43(%rip), %r8	#,
	movl	$128, %ecx	#,
	movl	%eax, %r13d	#, _229
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%r12, %rdi	# tmp574,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
# items.c:856:             APPEND_NUM_FMT_STAT(fmt, n, "age_hot", "%u", age_hot);
	movl	%r13d, %esi	# _229,
	movq	-7008(%rbp), %r8	# %sfp,
	movq	%r12, %rdx	# tmp574,
	movl	%eax, %ecx	# _228,
	movq	-7032(%rbp), %r14	# %sfp, add_stats
	movq	%rbx, %rdi	# tmp565,
	call	*%r14	# add_stats
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:68:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	movl	-6996(%rbp), %r9d	# %sfp,
	leaq	.LC49(%rip), %rax	#, tmp671
	leaq	.LC41(%rip), %r8	#,
	movl	$128, %ecx	#,
	movq	%rax, (%rsp)	# tmp671,
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%rbx, %rdi	# tmp565,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
	movl	-7036(%rbp), %r9d	# %sfp,
	leaq	.LC43(%rip), %r8	#,
	movl	$128, %ecx	#,
	movl	%eax, %r13d	#, _227
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%r12, %rdi	# tmp574,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
# items.c:857:             APPEND_NUM_FMT_STAT(fmt, n, "age_warm", "%u", age_warm);
	movl	%r13d, %esi	# _227,
	movq	-7008(%rbp), %r8	# %sfp,
	movq	%r12, %rdx	# tmp574,
	movl	%eax, %ecx	# _226,
	movq	%rbx, %rdi	# tmp565,
	call	*%r14	# add_stats
	popq	%r11	#
	popq	%r13	#
	jmp	.L526	#
	.p2align 4
	.p2align 3
.L553:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:68:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	movl	-6996(%rbp), %r9d	# %sfp,
	subq	$8, %rsp	#,
	leaq	.LC47(%rip), %rax	#, tmp667
	leaq	.LC41(%rip), %r8	#,
	pushq	%rax	# tmp667
	movl	$128, %ecx	#,
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%rbx, %rdi	# tmp565,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
	movl	-6804(%rbp), %r9d	# lru_size_map[3],
	leaq	.LC43(%rip), %r8	#,
	movl	$128, %ecx	#,
	movl	%eax, %r13d	#, _225
	movl	$2, %edx	#,
	movl	$128, %esi	#,
	movq	%r12, %rdi	# tmp574,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
# items.c:854:                 APPEND_NUM_FMT_STAT(fmt, n, "number_temp", "%u", lru_size_map[3]);
	movq	-7008(%rbp), %r8	# %sfp,
	movq	%r12, %rdx	# tmp574,
	movl	%r13d, %esi	# _225,
	movl	%eax, %ecx	# _224,
	movq	%rbx, %rdi	# tmp565,
	movq	-7032(%rbp), %rax	# %sfp, add_stats
	call	*%rax	# add_stats
	popq	%r14	#
	popq	%rax	#
	jmp	.L527	#
.L551:
# items.c:913: }
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE114:
	.size	item_stats, .-item_stats
	.p2align 4
	.globl	item_stats_sizes_status
	.type	item_stats_sizes_status, @function
item_stats_sizes_status:
.LFB115:
	.cfi_startproc
	endbr64	
# items.c:917:     if (stats_sizes_hist != NULL)
	cmpq	$0, stats_sizes_hist(%rip)	#, stats_sizes_hist
	setne	%al	#, _4
# items.c:920: }
	ret	
	.cfi_endproc
.LFE115:
	.size	item_stats_sizes_status, .-item_stats_sizes_status
	.p2align 4
	.globl	item_stats_sizes_init
	.type	item_stats_sizes_init, @function
item_stats_sizes_init:
.LFB116:
	.cfi_startproc
	endbr64	
# items.c:923:     if (stats_sizes_hist != NULL)
	cmpq	$0, stats_sizes_hist(%rip)	#, stats_sizes_hist
	je	.L562	#,
	ret	
	.p2align 4
	.p2align 3
.L562:
# items.c:922: void item_stats_sizes_init(void) {
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
# items.c:925:     stats_sizes_buckets = settings.item_size_max / 32 + 1;
	movl	116+settings(%rip), %eax	# settings.item_size_max, settings.item_size_max
# items.c:926:     stats_sizes_hist = calloc(stats_sizes_buckets, sizeof(int));
	movl	$4, %esi	#,
# items.c:925:     stats_sizes_buckets = settings.item_size_max / 32 + 1;
	testl	%eax, %eax	# settings.item_size_max
	leal	31(%rax), %edi	#, tmp108
	cmovns	%eax, %edi	# tmp108,, settings.item_size_max, settings.item_size_max
	sarl	$5, %edi	#, _3
# items.c:925:     stats_sizes_buckets = settings.item_size_max / 32 + 1;
	incl	%edi	# _4
# items.c:925:     stats_sizes_buckets = settings.item_size_max / 32 + 1;
	movl	%edi, stats_sizes_buckets(%rip)	# _4, stats_sizes_buckets
# items.c:926:     stats_sizes_hist = calloc(stats_sizes_buckets, sizeof(int));
	movslq	%edi, %rdi	# _4, _5
	call	calloc@PLT	#
# items.c:926:     stats_sizes_hist = calloc(stats_sizes_buckets, sizeof(int));
	movq	%rax, stats_sizes_hist(%rip)	# tmp112, stats_sizes_hist
# items.c:927: }
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 8
	ret	
	.cfi_endproc
.LFE116:
	.size	item_stats_sizes_init, .-item_stats_sizes_init
	.p2align 4
	.globl	item_stats_sizes_add
	.type	item_stats_sizes_add, @function
item_stats_sizes_add:
.LFB117:
	.cfi_startproc
	endbr64	
# items.c:930:     if (stats_sizes_hist == NULL)
	movq	stats_sizes_hist(%rip), %rsi	# stats_sizes_hist, stats_sizes_hist.64_1
# items.c:930:     if (stats_sizes_hist == NULL)
	testq	%rsi, %rsi	# stats_sizes_hist.64_1
	je	.L571	#,
# items.c:932:     int ntotal = ITEM_ntotal(it);
	movzwl	38(%rdi), %eax	# it_28(D)->it_flags, _8
	movzbl	41(%rdi), %edx	# it_28(D)->nkey, _3
	addl	32(%rdi), %edx	# it_28(D)->nbytes, _52
	movl	%eax, %ecx	# _8, _9
	sall	$2, %eax	#, _13
	sarl	$6, %ecx	#, _9
	andl	$8, %eax	#, _14
	andl	$4, %ecx	#, _17
	addl	%ecx, %edx	# _17, _50
	leal	49(%rdx,%rax), %ecx	#, _16
# items.c:933:     int bucket = ntotal / 32;
	leal	80(%rdx,%rax), %eax	#, tmp137
	testl	%ecx, %ecx	# _16
	cmovns	%ecx, %eax	# tmp137,, _16, _16
# items.c:934:     if ((ntotal % 32) != 0) bucket++;
	andl	$31, %ecx	#, _18
# items.c:933:     int bucket = ntotal / 32;
	sarl	$5, %eax	#, bucket_30
# items.c:934:     if ((ntotal % 32) != 0) bucket++;
	cmpl	$1, %ecx	#, _18
	sbbl	$-1, %eax	#, bucket
# items.c:935:     if (bucket < stats_sizes_buckets) stats_sizes_hist[bucket]++;
	cmpl	%eax, stats_sizes_buckets(%rip)	# bucket, stats_sizes_buckets
	jle	.L571	#,
# items.c:935:     if (bucket < stats_sizes_buckets) stats_sizes_hist[bucket]++;
	cltq
# items.c:935:     if (bucket < stats_sizes_buckets) stats_sizes_hist[bucket]++;
	incl	(%rsi,%rax,4)	# *_22
.L571:
# items.c:936: }
	ret	
	.cfi_endproc
.LFE117:
	.size	item_stats_sizes_add, .-item_stats_sizes_add
	.p2align 4
	.globl	item_stats_sizes_remove
	.type	item_stats_sizes_remove, @function
item_stats_sizes_remove:
.LFB118:
	.cfi_startproc
	endbr64	
# items.c:942:     if (stats_sizes_hist == NULL)
	movq	stats_sizes_hist(%rip), %rsi	# stats_sizes_hist, stats_sizes_hist.68_1
# items.c:942:     if (stats_sizes_hist == NULL)
	testq	%rsi, %rsi	# stats_sizes_hist.68_1
	je	.L580	#,
# items.c:944:     int ntotal = ITEM_ntotal(it);
	movzwl	38(%rdi), %eax	# it_28(D)->it_flags, _8
	movzbl	41(%rdi), %edx	# it_28(D)->nkey, _3
	addl	32(%rdi), %edx	# it_28(D)->nbytes, _52
	movl	%eax, %ecx	# _8, _9
	sall	$2, %eax	#, _13
	sarl	$6, %ecx	#, _9
	andl	$8, %eax	#, _14
	andl	$4, %ecx	#, _17
	addl	%ecx, %edx	# _17, _50
	leal	49(%rdx,%rax), %ecx	#, _16
# items.c:945:     int bucket = ntotal / 32;
	leal	80(%rdx,%rax), %eax	#, tmp137
	testl	%ecx, %ecx	# _16
	cmovns	%ecx, %eax	# tmp137,, _16, _16
# items.c:946:     if ((ntotal % 32) != 0) bucket++;
	andl	$31, %ecx	#, _18
# items.c:945:     int bucket = ntotal / 32;
	sarl	$5, %eax	#, bucket_30
# items.c:946:     if ((ntotal % 32) != 0) bucket++;
	cmpl	$1, %ecx	#, _18
	sbbl	$-1, %eax	#, bucket
# items.c:947:     if (bucket < stats_sizes_buckets) stats_sizes_hist[bucket]--;
	cmpl	%eax, stats_sizes_buckets(%rip)	# bucket, stats_sizes_buckets
	jle	.L580	#,
# items.c:947:     if (bucket < stats_sizes_buckets) stats_sizes_hist[bucket]--;
	cltq
# items.c:947:     if (bucket < stats_sizes_buckets) stats_sizes_hist[bucket]--;
	decl	(%rsi,%rax,4)	# *_22
.L580:
# items.c:948: }
	ret	
	.cfi_endproc
.LFE118:
	.size	item_stats_sizes_remove, .-item_stats_sizes_remove
	.section	.rodata.str1.1
.LC61:
	.string	"%d"
.LC62:
	.string	""
.LC63:
	.string	"disabled"
.LC64:
	.string	"sizes_status"
	.text
	.p2align 4
	.globl	item_stats_sizes
	.type	item_stats_sizes, @function
item_stats_sizes:
.LFB119:
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
	movq	%rdi, %rbp	# add_stats, add_stats
	subq	$32, %rsp	#,
	.cfi_def_cfa_offset 80
# items.c:957:     if (stats_sizes_hist != NULL) {
	movq	stats_sizes_hist(%rip), %rax	# stats_sizes_hist, pretmp_31
# items.c:956: void item_stats_sizes(ADD_STAT add_stats, void *c) {
	movq	%fs:40, %r13	# MEM[(<address-space-1> long unsigned int *)40B], c
	movq	%r13, 24(%rsp)	# c, D.13898
	movq	%rsi, %r13	# c, c
# items.c:957:     if (stats_sizes_hist != NULL) {
	testq	%rax, %rax	# pretmp_31
	je	.L582	#,
# items.c:959:         for (i = 0; i < stats_sizes_buckets; i++) {
	movl	stats_sizes_buckets(%rip), %edx	# stats_sizes_buckets, prephitmp_12
	xorl	%ebx, %ebx	# ivtmp.422
	testl	%edx, %edx	# prephitmp_12
	jle	.L584	#,
	.p2align 4
	.p2align 4
	.p2align 3
.L583:
# items.c:960:             if (stats_sizes_hist[i] != 0) {
	movl	(%rax,%rbx,4), %ecx	# *_5,
	testl	%ecx, %ecx	#
	jne	.L594	#,
# items.c:959:         for (i = 0; i < stats_sizes_buckets; i++) {
	incq	%rbx	# ivtmp.422
	cmpl	%ebx, %edx	# ivtmp.422, prephitmp_12
	jg	.L583	#,
.L584:
# items.c:970:     add_stats(NULL, 0, NULL, 0, c);
	movq	24(%rsp), %rax	# D.13898, tmp134
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp134
	jne	.L595	#,
# items.c:971: }
	addq	$32, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 48
# items.c:970:     add_stats(NULL, 0, NULL, 0, c);
	movq	%r13, %r8	# c,
	movq	%rbp, %rax	# add_stats, add_stats
	xorl	%ecx, %ecx	#
# items.c:971: }
	popq	%rbx	#
	.cfi_def_cfa_offset 40
# items.c:970:     add_stats(NULL, 0, NULL, 0, c);
	xorl	%edx, %edx	#
# items.c:971: }
	popq	%rbp	#
	.cfi_def_cfa_offset 32
# items.c:970:     add_stats(NULL, 0, NULL, 0, c);
	xorl	%esi, %esi	#
# items.c:971: }
	popq	%r12	#
	.cfi_def_cfa_offset 24
# items.c:970:     add_stats(NULL, 0, NULL, 0, c);
	xorl	%edi, %edi	#
# items.c:971: }
	popq	%r13	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
# items.c:970:     add_stats(NULL, 0, NULL, 0, c);
	jmp	*%rax	# add_stats
	.p2align 4
	.p2align 3
.L594:
	.cfi_restore_state
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:68:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	movl	%ebx, %r9d	# ivtmp.422, tmp136
	leaq	.LC61(%rip), %r8	#,
	movl	$12, %ecx	#,
	movl	$2, %edx	#,
	sall	$5, %r9d	#, tmp136
	movl	$12, %esi	#,
	leaq	12(%rsp), %rdi	#,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
# items.c:963:                 APPEND_STAT(key, "%u", stats_sizes_hist[i]);
	movq	stats_sizes_hist(%rip), %rax	# stats_sizes_hist, stats_sizes_hist
	movq	%r13, %rdx	# c,
	leaq	.LC43(%rip), %rcx	#,
	movq	%rbp, %rsi	# add_stats,
	leaq	12(%rsp), %rdi	#,
	movl	(%rax,%rbx,4), %r8d	# *_9,
	xorl	%eax, %eax	#
# items.c:959:         for (i = 0; i < stats_sizes_buckets; i++) {
	incq	%rbx	# ivtmp.422
# items.c:963:                 APPEND_STAT(key, "%u", stats_sizes_hist[i]);
	call	append_stat@PLT	#
# items.c:959:         for (i = 0; i < stats_sizes_buckets; i++) {
	movl	stats_sizes_buckets(%rip), %edx	# stats_sizes_buckets, prephitmp_12
	cmpl	%ebx, %edx	# ivtmp.422, prephitmp_12
	jle	.L584	#,
	movq	stats_sizes_hist(%rip), %rax	# stats_sizes_hist, pretmp_31
	jmp	.L583	#
	.p2align 4
	.p2align 3
.L582:
# items.c:967:         APPEND_STAT("sizes_status", "disabled", "");
	movq	%rdi, %rsi	# add_stats,
	leaq	.LC62(%rip), %r8	#,
	leaq	.LC63(%rip), %rcx	#,
	movq	%r13, %rdx	# c,
	leaq	.LC64(%rip), %rdi	#,
	xorl	%eax, %eax	#
	call	append_stat@PLT	#
	jmp	.L584	#
.L595:
# items.c:970:     add_stats(NULL, 0, NULL, 0, c);
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE119:
	.size	item_stats_sizes, .-item_stats_sizes
	.section	.text.unlikely
.LCOLDB65:
	.text
.LHOTB65:
	.p2align 4
	.globl	do_item_bump
	.type	do_item_bump, @function
do_item_bump:
.LFB121:
	.cfi_startproc
	endbr64	
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$32, %rsp	#,
	.cfi_def_cfa_offset 48
# items.c:1039:     if (settings.lru_segmented) {
	cmpb	$0, 136+settings(%rip)	#, settings.lru_segmented
# items.c:1040:         if ((it->it_flags & ITEM_ACTIVE) == 0) {
	movzwl	38(%rsi), %eax	# it_14(D)->it_flags, pretmp_72
# items.c:1039:     if (settings.lru_segmented) {
	je	.L597	#,
# items.c:1040:         if ((it->it_flags & ITEM_ACTIVE) == 0) {
	testb	$16, %al	#, pretmp_72
	jne	.L611	#,
# items.c:1041:             if ((it->it_flags & ITEM_FETCHED) == 0) {
	testb	$8, %al	#, pretmp_72
	je	.L613	#,
# items.c:1044:                 it->it_flags |= ITEM_ACTIVE;
	orl	$16, %eax	#, tmp152
	movw	%ax, 38(%rsi)	# tmp152, it_14(D)->it_flags
# items.c:1045:                 if (ITEM_lruid(it) != COLD_LRU) {
	movzbl	40(%rsi), %eax	# it_14(D)->slabs_clsid, _25
	andl	$-64, %eax	#, _25
	cmpb	$-128, %al	#, _25
	je	.L601	#,
# items.c:1046:                     it->time = current_time; // only need to bump time.
	movl	current_time(%rip), %eax	# current_time, current_time.86_8
	movl	%eax, 24(%rsi)	# current_time.86_8, it_14(D)->time
.L611:
# items.c:1057: }
	addq	$32, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4
	.p2align 3
.L597:
	.cfi_restore_state
# items.c:1054:         it->it_flags |= ITEM_FETCHED;
	movl	%eax, %edx	# pretmp_72, tmp159
	orl	$8, %edx	#, tmp159
	movw	%dx, 38(%rsi)	# tmp159, it_14(D)->it_flags
# items.c:567:     } else if (it->time < current_time - ITEM_UPDATE_INTERVAL) {
	movl	current_time(%rip), %edx	# current_time, current_time.17_44
	subl	$60, %edx	#, _45
# items.c:567:     } else if (it->time < current_time - ITEM_UPDATE_INTERVAL) {
	cmpl	%edx, 24(%rsi)	# _45, it_14(D)->time
	jnb	.L611	#,
# items.c:568:         assert((it->it_flags & ITEM_SLABBED) == 0);
	testb	$4, %al	#, pretmp_72
	jne	.L610	#,
# items.c:570:         if ((it->it_flags & ITEM_LINKED) != 0) {
	testb	$1, %al	#, pretmp_72
	je	.L611	#,
# items.c:571:             it->time = current_time;
	movl	current_time(%rip), %eax	# current_time, current_time.18_49
# items.c:480:     pthread_mutex_lock(&lru_locks[it->slabs_clsid]);
	leaq	lru_locks(%rip), %rbx	#, tmp205
	movq	%rsi, 8(%rsp)	# it, %sfp
# items.c:571:             it->time = current_time;
	movl	%eax, 24(%rsi)	# current_time.18_49, it_14(D)->time
# items.c:480:     pthread_mutex_lock(&lru_locks[it->slabs_clsid]);
	movzbl	40(%rsi), %eax	# it_14(D)->slabs_clsid, _92
	leaq	(%rax,%rax,4), %rax	#, _47
	leaq	(%rbx,%rax,8), %rdi	#, _85
	call	pthread_mutex_lock@PLT	#
# items.c:481:     do_item_unlink_q(it);
	movq	8(%rsp), %rdi	# %sfp,
	call	do_item_unlink_q	#
# items.c:482:     pthread_mutex_unlock(&lru_locks[it->slabs_clsid]);
	movq	8(%rsp), %rcx	# %sfp, it
	movzbl	40(%rcx), %eax	# it_14(D)->slabs_clsid, _48
	leaq	(%rax,%rax,4), %rax	#, _91
	leaq	(%rbx,%rax,8), %rdi	#, _88
	call	pthread_mutex_unlock@PLT	#
# items.c:435:     pthread_mutex_lock(&lru_locks[it->slabs_clsid]);
	movq	8(%rsp), %rcx	# %sfp, it
	movzbl	40(%rcx), %eax	# it_14(D)->slabs_clsid, _56
	leaq	(%rax,%rax,4), %rax	#, _116
	leaq	(%rbx,%rax,8), %rdi	#, _79
	call	pthread_mutex_lock@PLT	#
# items.c:436:     do_item_link_q(it);
	movq	8(%rsp), %rdi	# %sfp,
	call	do_item_link_q	#
# items.c:437:     pthread_mutex_unlock(&lru_locks[it->slabs_clsid]);
	movq	8(%rsp), %rcx	# %sfp, it
	movzbl	40(%rcx), %eax	# it_14(D)->slabs_clsid, _102
# items.c:1057: }
	addq	$32, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 16
# items.c:437:     pthread_mutex_unlock(&lru_locks[it->slabs_clsid]);
	leaq	(%rax,%rax,4), %rax	#, _90
	leaq	(%rbx,%rax,8), %rdi	#, _82
# items.c:1057: }
	popq	%rbx	#
	.cfi_def_cfa_offset 8
# items.c:437:     pthread_mutex_unlock(&lru_locks[it->slabs_clsid]);
	jmp	pthread_mutex_unlock@PLT	#
	.p2align 4
	.p2align 3
.L613:
	.cfi_restore_state
# items.c:1042:                 it->it_flags |= ITEM_FETCHED;
	orl	$8, %eax	#, tmp151
	movw	%ax, 38(%rsi)	# tmp151, it_14(D)->it_flags
# items.c:1057: }
	addq	$32, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4
	.p2align 3
.L601:
	.cfi_restore_state
# items.c:1047:                 } else if (!lru_bump_async(t->lru_bump_buf, it, hv)) {
	movq	7008(%rdi), %r8	# t_18(D)->lru_bump_buf, _9
# items.c:1288:     refcount_incr(it);
	incw	36(%rsi)	# it_14(D)->refcount
	movl	%edx, 28(%rsp)	# hv, %sfp
	movq	%rsi, 16(%rsp)	# it, %sfp
# items.c:1289:     pthread_mutex_lock(&b->mutex);
	leaq	16(%r8), %rbx	#, _28
	movq	%r8, 8(%rsp)	# _9, %sfp
	movq	%rbx, %rdi	# _28,
	call	pthread_mutex_lock@PLT	#
# items.c:1290:     lru_bump_entry *be = (lru_bump_entry *) bipbuf_request(b->buf, sizeof(lru_bump_entry));
	movq	8(%rsp), %r8	# %sfp, _9
	movl	$16, %esi	#,
	movq	56(%r8), %rdi	# MEM[(struct lru_bump_buf *)_9].buf, MEM[(struct lru_bump_buf *)_9].buf
	call	bipbuf_request@PLT	#
# items.c:1291:     if (be != NULL) {
	movq	8(%rsp), %r8	# %sfp, _9
	testq	%rax, %rax	# be
	movq	16(%rsp), %rcx	# %sfp, it
	je	.L602	#,
# items.c:1293:         be->hv = hv;
	movl	28(%rsp), %edx	# %sfp, hv
# items.c:1294:         if (bipbuf_push(b->buf, sizeof(lru_bump_entry)) == 0) {
	movq	56(%r8), %rdi	# MEM[(struct lru_bump_buf *)_9].buf, MEM[(struct lru_bump_buf *)_9].buf
# items.c:1292:         be->it = it;
	movq	%rcx, (%rax)	# it, be_30->it
# items.c:1294:         if (bipbuf_push(b->buf, sizeof(lru_bump_entry)) == 0) {
	movl	$16, %esi	#,
# items.c:1293:         be->hv = hv;
	movl	%edx, 8(%rax)	# hv, be_30->hv
# items.c:1294:         if (bipbuf_push(b->buf, sizeof(lru_bump_entry)) == 0) {
	call	bipbuf_push@PLT	#
# items.c:1294:         if (bipbuf_push(b->buf, sizeof(lru_bump_entry)) == 0) {
	testl	%eax, %eax	# _32
	movq	8(%rsp), %r8	# %sfp, _9
	movq	16(%rsp), %rcx	# %sfp, it
	je	.L602	#,
# items.c:1057: }
	addq	$32, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 16
# items.c:1305:     pthread_mutex_unlock(&b->mutex);
	movq	%rbx, %rdi	# _28,
# items.c:1057: }
	popq	%rbx	#
	.cfi_def_cfa_offset 8
# items.c:1305:     pthread_mutex_unlock(&b->mutex);
	jmp	pthread_mutex_unlock@PLT	#
	.p2align 4
	.p2align 3
.L602:
	.cfi_restore_state
# items.c:1300:         b->dropped++;
	movq	64(%r8), %rax	# MEM[(struct lru_bump_buf *)_9].dropped, tmp203
# items.c:1305:     pthread_mutex_unlock(&b->mutex);
	movq	%rbx, %rdi	# _28,
# items.c:1303:         refcount_decr(it);
	movq	%rcx, 8(%rsp)	# it, %sfp
# items.c:1300:         b->dropped++;
	incq	%rax	# _36
# items.c:1296:             b->dropped++;
	movq	%rax, 64(%r8)	# _36, MEM[(struct lru_bump_buf *)_9].dropped
# items.c:1303:         refcount_decr(it);
	decw	36(%rcx)	# it_14(D)->refcount
# items.c:1305:     pthread_mutex_unlock(&b->mutex);
	call	pthread_mutex_unlock@PLT	#
# items.c:1049:                     it->it_flags &= ~ITEM_ACTIVE;
	movq	8(%rsp), %rcx	# %sfp, it
	andw	$-17, 38(%rcx)	#, it_14(D)->it_flags
# items.c:1057: }
	jmp	.L611	#
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.type	do_item_bump.cold, @function
do_item_bump.cold:
.LFSB121:
.L610:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -16
# items.c:568:         assert((it->it_flags & ITEM_SLABBED) == 0);
	leaq	__PRETTY_FUNCTION__.8(%rip), %rcx	#,
	movl	$568, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC1(%rip), %rdi	#,
	call	__assert_fail@PLT	#
	.cfi_endproc
.LFE121:
	.text
	.size	do_item_bump, .-do_item_bump
	.section	.text.unlikely
	.size	do_item_bump.cold, .-do_item_bump.cold
.LCOLDE65:
	.text
.LHOTE65:
	.section	.rodata.str1.1
.LC66:
	.string	"FOUND KEY"
.LC67:
	.string	"NOT FOUND"
.LC68:
	.string	" -removed by flush"
.LC69:
	.string	" -removed by expire"
.LC70:
	.string	"> %s "
	.text
	.p2align 4
	.globl	do_item_get
	.type	do_item_get, @function
do_item_get:
.LFB120:
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
	movq	%rsi, %r14	# nkey, nkey
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %r13	# key, key
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 80
# items.c:974: item *do_item_get(const char *key, const size_t nkey, const uint32_t hv, LIBEVENT_THREAD *t, const bool do_update) {
	movl	%edx, %ebp	# hv, hv
	movq	%rcx, %r12	# t, t
	movl	%r8d, %r15d	# do_update, do_update
# items.c:975:     item *it = assoc_find(key, nkey, hv);
	call	assoc_find@PLT	#
	movq	%rax, %rbx	# <retval>, <retval>
# items.c:976:     if (it != NULL) {
	testq	%rax, %rax	# <retval>
	je	.L659	#,
# items.c:977:         refcount_incr(it);
	incw	36(%rax)	# it_45->refcount
# items.c:118:     rel_time_t oldest_live = settings.oldest_live;
	movl	36+settings(%rip), %eax	# settings.oldest_live, oldest_live
# items.c:119:     if (it->time <= oldest_live && oldest_live <= current_time)
	cmpl	24(%rbx), %eax	# it_45->time, oldest_live
	jb	.L618	#,
# items.c:119:     if (it->time <= oldest_live && oldest_live <= current_time)
	movl	current_time(%rip), %edx	# current_time, current_time.1_73
# items.c:119:     if (it->time <= oldest_live && oldest_live <= current_time)
	cmpl	%eax, %edx	# oldest_live, current_time.1_73
	jnb	.L660	#,
.L618:
# items.c:992:         } else if (it->exptime != 0 && it->exptime <= current_time) {
	movl	28(%rbx), %eax	# it_45->exptime, _7
# items.c:992:         } else if (it->exptime != 0 && it->exptime <= current_time) {
	testl	%eax, %eax	# _7
	je	.L620	#,
# items.c:992:         } else if (it->exptime != 0 && it->exptime <= current_time) {
	movl	current_time(%rip), %edx	# current_time, current_time.76_8
# items.c:992:         } else if (it->exptime != 0 && it->exptime <= current_time) {
	cmpl	%eax, %edx	# _7, current_time.76_8
	jnb	.L661	#,
.L620:
# items.c:1002:             if (do_update) {
	testb	%r15b, %r15b	# do_update
	jne	.L662	#,
.L657:
# items.c:1009:     if (settings.verbose > 2) {
	cmpl	$2, 32+settings(%rip)	#, settings.verbose
# items.c:982:         was_found = 1;
	movl	$1, 12(%rsp)	#, %sfp
# items.c:1009:     if (settings.verbose > 2) {
	jle	.L617	#,
# items.c:1010:         fprintf(stderr, "> %s ", was_found ? "FOUND KEY" : "NOT FOUND");
	leaq	.LC66(%rip), %rcx	#, iftmp.77_96
.L616:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:111:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	stderr(%rip), %rdi	# stderr,
	xorl	%eax, %eax	#
	leaq	.LC70(%rip), %rdx	#,
	movl	$2, %esi	#,
	call	__fprintf_chk@PLT	#
# items.c:1011:         for (int ii = 0; ii < nkey; ++ii) {
	testq	%r14, %r14	# nkey
	je	.L658	#,
.L634:
	movq	%r13, %r15	# key, ivtmp.441
	leaq	0(%r13,%r14), %rbp	#, _83
	.p2align 4
	.p2align 3
.L627:
# items.c:1012:             fprintf(stderr, "%c", key[ii]);
	movsbl	(%r15), %edi	# MEM[(const char *)_85], _17
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:111:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	stderr(%rip), %rsi	# stderr,
# items.c:1011:         for (int ii = 0; ii < nkey; ++ii) {
	incq	%r15	# ivtmp.441
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:111:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	call	fputc@PLT	#
# items.c:1011:         for (int ii = 0; ii < nkey; ++ii) {
	cmpq	%r15, %rbp	# ivtmp.441, _83
	jne	.L627	#,
# items.c:1014:         if (was_found == 2) {
	cmpl	$2, 12(%rsp)	#, %sfp
# items.c:1015:             fprintf(stderr, " -removed by flush");
	movq	stderr(%rip), %rsi	# stderr, stderr
	movq	%rsi, %rcx	# stderr, pretmp_95
# items.c:1014:         if (was_found == 2) {
	je	.L625	#,
# items.c:1016:         } else if (was_found == 3) {
	cmpl	$3, 12(%rsp)	#, %sfp
	je	.L633	#,
.L629:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:111:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movl	$10, %edi	#,
	call	fputc@PLT	#
.L617:
# items.c:1023:     LOGGER_LOG(t->l, LOG_FETCHERS, LOGGER_ITEM_GET, NULL, was_found, key,
	movq	7000(%r12), %rdi	# t_48(D)->l, myl
	testq	%rdi, %rdi	# myl
	je	.L663	#,
.L630:
# items.c:1023:     LOGGER_LOG(t->l, LOG_FETCHERS, LOGGER_ITEM_GET, NULL, was_found, key,
	testb	$4, 84(%rdi)	#, myl_31->eflags
	je	.L614	#,
# items.c:1023:     LOGGER_LOG(t->l, LOG_FETCHERS, LOGGER_ITEM_GET, NULL, was_found, key,
	movl	344(%r12), %ecx	# t_48(D)->cur_sfd, _25
	testq	%rbx, %rbx	# <retval>
	je	.L638	#,
# items.c:1023:     LOGGER_LOG(t->l, LOG_FETCHERS, LOGGER_ITEM_GET, NULL, was_found, key,
	movzbl	40(%rbx), %eax	# it_100->slabs_clsid, _27
# items.c:1023:     LOGGER_LOG(t->l, LOG_FETCHERS, LOGGER_ITEM_GET, NULL, was_found, key,
	movl	32(%rbx), %edx	# it_100->nbytes, iftmp.85_33
# items.c:1023:     LOGGER_LOG(t->l, LOG_FETCHERS, LOGGER_ITEM_GET, NULL, was_found, key,
	andb	$63, %al	#, iftmp.84_62
.L632:
# items.c:1023:     LOGGER_LOG(t->l, LOG_FETCHERS, LOGGER_ITEM_GET, NULL, was_found, key,
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 88
	movq	%r14, %r9	# nkey,
	movq	%r13, %r8	# key,
	movl	$2, %esi	#,
	pushq	%rcx	# _25
	.cfi_def_cfa_offset 96
	pushq	%rax	# iftmp.84_62
	.cfi_def_cfa_offset 104
	pushq	%rdx	# iftmp.85_33
	.cfi_def_cfa_offset 112
	xorl	%eax, %eax	#
	movl	44(%rsp), %ecx	# %sfp,
	xorl	%edx, %edx	#
	call	logger_log@PLT	#
	addq	$32, %rsp	#,
	.cfi_def_cfa_offset 80
.L614:
# items.c:1027: }
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbx, %rax	# <retval>,
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
.L662:
	.cfi_restore_state
# items.c:1003:                 do_item_bump(t, it, hv);
	movl	%ebp, %edx	# hv,
	movq	%rbx, %rsi	# <retval>,
	movq	%r12, %rdi	# t,
	call	do_item_bump	#
	jmp	.L657	#
	.p2align 4
	.p2align 3
.L638:
# items.c:1023:     LOGGER_LOG(t->l, LOG_FETCHERS, LOGGER_ITEM_GET, NULL, was_found, key,
	xorl	%eax, %eax	# iftmp.84_62
# items.c:1023:     LOGGER_LOG(t->l, LOG_FETCHERS, LOGGER_ITEM_GET, NULL, was_found, key,
	xorl	%edx, %edx	# iftmp.85_33
	jmp	.L632	#
	.p2align 4
	.p2align 3
.L660:
# items.c:984:             do_item_unlink(it, hv);
	movl	%ebp, %esi	# hv,
	movq	%rbx, %rdi	# <retval>,
	call	do_item_unlink	#
# items.c:985:             STORAGE_delete(t->storage, it);
	movq	6992(%r12), %rdi	# t_48(D)->storage, t_48(D)->storage
	movq	%rbx, %rsi	# <retval>,
	call	storage_delete@PLT	#
# items.c:986:             do_item_remove(it);
	movq	%rbx, %rdi	# <retval>,
	call	do_item_remove	#
# items.c:988:             pthread_mutex_lock(&t->stats.mutex);
	leaq	360(%r12), %rdi	#,
	call	pthread_mutex_lock@PLT	#
# items.c:989:             t->stats.get_flushed++;
	incq	424(%r12)	# t_48(D)->stats.get_flushed
# items.c:990:             pthread_mutex_unlock(&t->stats.mutex);
	leaq	360(%r12), %rdi	#,
	call	pthread_mutex_unlock@PLT	#
# items.c:1009:     if (settings.verbose > 2) {
	cmpl	$2, 32+settings(%rip)	#, settings.verbose
	jg	.L619	#,
# items.c:991:             was_found = 2;
	movl	$2, 12(%rsp)	#, %sfp
# items.c:987:             it = NULL;
	xorl	%ebx, %ebx	# <retval>
	jmp	.L617	#
	.p2align 4
	.p2align 3
.L661:
# items.c:993:             do_item_unlink(it, hv);
	movl	%ebp, %esi	# hv,
	movq	%rbx, %rdi	# <retval>,
	call	do_item_unlink	#
# items.c:994:             STORAGE_delete(t->storage, it);
	movq	6992(%r12), %rdi	# t_48(D)->storage, t_48(D)->storage
	movq	%rbx, %rsi	# <retval>,
	call	storage_delete@PLT	#
# items.c:995:             do_item_remove(it);
	movq	%rbx, %rdi	# <retval>,
	call	do_item_remove	#
# items.c:997:             pthread_mutex_lock(&t->stats.mutex);
	leaq	360(%r12), %rdi	#,
	call	pthread_mutex_lock@PLT	#
# items.c:998:             t->stats.get_expired++;
	incq	416(%r12)	# t_48(D)->stats.get_expired
# items.c:999:             pthread_mutex_unlock(&t->stats.mutex);
	leaq	360(%r12), %rdi	#,
	call	pthread_mutex_unlock@PLT	#
# items.c:1009:     if (settings.verbose > 2) {
	cmpl	$2, 32+settings(%rip)	#, settings.verbose
	jle	.L664	#,
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:111:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	stderr(%rip), %rdi	# stderr,
	leaq	.LC66(%rip), %rcx	#,
	leaq	.LC70(%rip), %rdx	#,
	movl	$2, %esi	#,
	xorl	%eax, %eax	#
# items.c:996:             it = NULL;
	xorl	%ebx, %ebx	# <retval>
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:111:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	call	__fprintf_chk@PLT	#
# items.c:1000:             was_found = 3;
	movl	$3, 12(%rsp)	#, %sfp
# items.c:1011:         for (int ii = 0; ii < nkey; ++ii) {
	testq	%r14, %r14	# nkey
	jne	.L634	#,
# items.c:1015:             fprintf(stderr, " -removed by flush");
	movq	stderr(%rip), %rcx	# stderr, pretmp_95
	.p2align 4
	.p2align 3
.L633:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:111:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movl	$19, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC69(%rip), %rdi	#,
	call	fwrite@PLT	#
	movl	$3, 12(%rsp)	#, %sfp
.L658:
	movq	stderr(%rip), %rsi	# stderr, stderr
	jmp	.L629	#
	.p2align 4
	.p2align 3
.L663:
# items.c:1023:     LOGGER_LOG(t->l, LOG_FETCHERS, LOGGER_ITEM_GET, NULL, was_found, key,
	movl	logger_key(%rip), %edi	# logger_key,
	call	pthread_getspecific@PLT	#
	movq	%rax, %rdi	# myl, myl
	jmp	.L630	#
	.p2align 4
	.p2align 3
.L659:
# items.c:1009:     if (settings.verbose > 2) {
	cmpl	$2, 32+settings(%rip)	#, settings.verbose
# items.c:979:     int was_found = 0;
	movl	$0, 12(%rsp)	#, %sfp
# items.c:1009:     if (settings.verbose > 2) {
	jle	.L617	#,
# items.c:1010:         fprintf(stderr, "> %s ", was_found ? "FOUND KEY" : "NOT FOUND");
	leaq	.LC67(%rip), %rcx	#, iftmp.77_96
	jmp	.L616	#
	.p2align 4
	.p2align 3
.L619:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:111:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	stderr(%rip), %rdi	# stderr,
	leaq	.LC66(%rip), %rcx	#,
	leaq	.LC70(%rip), %rdx	#,
	movl	$2, %esi	#,
	xorl	%eax, %eax	#
# items.c:987:             it = NULL;
	xorl	%ebx, %ebx	# <retval>
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:111:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	call	__fprintf_chk@PLT	#
# items.c:991:             was_found = 2;
	movl	$2, 12(%rsp)	#, %sfp
# items.c:1011:         for (int ii = 0; ii < nkey; ++ii) {
	testq	%r14, %r14	# nkey
	jne	.L634	#,
# items.c:1015:             fprintf(stderr, " -removed by flush");
	movq	stderr(%rip), %rcx	# stderr, pretmp_95
	.p2align 4
	.p2align 3
.L625:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:111:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movl	$1, %esi	#,
	movl	$18, %edx	#,
	leaq	.LC68(%rip), %rdi	#,
	call	fwrite@PLT	#
	movq	stderr(%rip), %rsi	# stderr, stderr
	movl	$2, 12(%rsp)	#, %sfp
	jmp	.L629	#
.L664:
# items.c:1000:             was_found = 3;
	movl	$3, 12(%rsp)	#, %sfp
# items.c:996:             it = NULL;
	xorl	%ebx, %ebx	# <retval>
	jmp	.L617	#
	.cfi_endproc
.LFE120:
	.size	do_item_get, .-do_item_get
	.p2align 4
	.globl	do_item_touch
	.type	do_item_touch, @function
do_item_touch:
.LFB122:
	.cfi_startproc
	endbr64	
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
# items.c:1060:                     const uint32_t hv, LIBEVENT_THREAD *t) {
	movl	%edx, %ebx	# exptime, exptime
	movl	%ecx, %edx	# hv, hv
	movq	%r8, %rcx	# t, t
# items.c:1061:     item *it = do_item_get(key, nkey, hv, t, DO_UPDATE);
	movl	$1, %r8d	#,
	call	do_item_get	#
# items.c:1062:     if (it != NULL) {
	testq	%rax, %rax	# <retval>
	je	.L665	#,
# items.c:1063:         it->exptime = exptime;
	movl	%ebx, 28(%rax)	# exptime, it_8->exptime
.L665:
# items.c:1066: }
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret	
	.cfi_endproc
.LFE122:
	.size	do_item_touch, .-do_item_touch
	.p2align 4
	.globl	lru_pull_tail
	.type	lru_pull_tail, @function
lru_pull_tail:
.LFB123:
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
	subq	$88, %rsp	#,
	.cfi_def_cfa_offset 144
# items.c:1078:     if (id == 0)
	testl	%edi, %edi	# orig_id
	jne	.L784	#,
.L672:
# items.c:1079:         return 0;
	movl	$0, 8(%rsp)	#, %sfp
.L671:
# items.c:1251: }
	movl	8(%rsp), %eax	# %sfp,
	addq	$88, %rsp	#,
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
.L784:
	.cfi_restore_state
	movl	%edi, %eax	# orig_id, orig_id
	movl	%esi, 16(%rsp)	# cur_lru, %sfp
	movl	%esi, %ebx	# cur_lru, cur_lru
	movl	%ecx, 28(%rsp)	# flags, %sfp
# items.c:1089:     id |= cur_lru;
	orl	%esi, %eax	# cur_lru, id
# items.c:1090:     pthread_mutex_lock(&lru_locks[id]);
	leaq	lru_locks(%rip), %rcx	#, tmp647
	movl	%edi, 76(%rsp)	# orig_id, %sfp
	movq	%r9, 64(%rsp)	# ret_it, %sfp
	movslq	%eax, %rsi	# id, id
	movl	%r8d, 72(%rsp)	# max_age, %sfp
	movq	%rdx, 56(%rsp)	# total_bytes, %sfp
	leaq	(%rsi,%rsi,4), %rax	#, _213
	movq	%rsi, 8(%rsp)	# id, %sfp
	leaq	(%rcx,%rax,8), %rax	#, _1
	movq	%rax, %rdi	# _1,
	movq	%rax, 40(%rsp)	# _1, %sfp
	call	pthread_mutex_lock@PLT	#
# items.c:1091:     search = tails[id];
	leaq	tails(%rip), %rax	#, tmp263
	movq	8(%rsp), %rsi	# %sfp, id
	movq	(%rax,%rsi,8), %r14	# tails[id_123], next_it
# items.c:1093:     for (; tries > 0 && search != NULL; tries--, search=next_it) {
	testq	%r14, %r14	# next_it
	je	.L673	#,
	testl	%ebx, %ebx	# cur_lru
	je	.L735	#,
# items.c:1114:             itemstats[id].lrutail_reflocked++;
	imulq	$168, %rsi, %rax	#, id, tmp601
	leaq	itemstats(%rip), %rbp	#, tmp600
# items.c:1081:     int tries = 5;
	movl	$5, %r12d	#, tries
# items.c:1077:     int removed = 0;
	movl	$0, 8(%rsp)	#, %sfp
# items.c:1156:                     limit = total_bytes * settings.warm_lru_pct / 100;
	movq	%r14, %r15	# next_it, next_it
	movq	$0, 32(%rsp)	#, %sfp
	movq	%rsi, 48(%rsp)	# id, %sfp
# items.c:1114:             itemstats[id].lrutail_reflocked++;
	addq	%rax, %rbp	# tmp601, tmp602
	jmp	.L696	#
	.p2align 4
	.p2align 3
.L675:
# items.c:1096:         if (search->nbytes == 0 && search->nkey == 0 && search->it_flags == 1) {
	movzwl	38(%r14), %eax	# search_246->it_flags, prephitmp_226
# items.c:1096:         if (search->nbytes == 0 && search->nkey == 0 && search->it_flags == 1) {
	testb	%sil, %sil	# pretmp_227
	jne	.L694	#,
# items.c:1096:         if (search->nbytes == 0 && search->nkey == 0 && search->it_flags == 1) {
	cmpw	$1, %ax	#, prephitmp_226
	je	.L785	#,
	.p2align 4
	.p2align 3
.L694:
# items.c:1105:         uint32_t hv = hash(ITEM_key(search), search->nkey);
	leaq	0(,%rax,4), %rax	#, _193
	andl	$8, %eax	#, _115
# items.c:1105:         uint32_t hv = hash(ITEM_key(search), search->nkey);
	leaq	48(%r14,%rax), %rdi	#, _113
	call	*hash(%rip)	# hash
# items.c:1108:         if ((hold_lock = item_trylock(hv)) == NULL)
	movl	%eax, %edi	# hv,
# items.c:1105:         uint32_t hv = hash(ITEM_key(search), search->nkey);
	movl	%eax, %ebx	#, hv
# items.c:1108:         if ((hold_lock = item_trylock(hv)) == NULL)
	call	item_trylock@PLT	#
	movq	%rax, %r13	# hold_lock, hold_lock
# items.c:1108:         if ((hold_lock = item_trylock(hv)) == NULL)
	testq	%rax, %rax	# hold_lock
	je	.L782	#,
# items.c:1111:         if (refcount_incr(search) != 2) {
	movzwl	36(%r14), %eax	# search_246->refcount, tmp650
	incl	%eax	# _94
# items.c:1111:         if (refcount_incr(search) != 2) {
	movw	%ax, 36(%r14)	# _94, search_246->refcount
	cmpw	$2, %ax	#, _94
	je	.L693	#,
# items.c:1117:             if (settings.tail_repair_time &&
	movl	180+settings(%rip), %eax	# settings.tail_repair_time, _348
# items.c:1114:             itemstats[id].lrutail_reflocked++;
	incq	80(%rbp)	# itemstats[id_123].lrutail_reflocked
# items.c:1117:             if (settings.tail_repair_time &&
	testl	%eax, %eax	# _348
	je	.L693	#,
# items.c:1118:                     search->time + settings.tail_repair_time < current_time) {
	addl	24(%r14), %eax	# search_246->time, _351
# items.c:1118:                     search->time + settings.tail_repair_time < current_time) {
	movl	current_time(%rip), %edx	# current_time, current_time.88_352
# items.c:1117:             if (settings.tail_repair_time &&
	cmpl	%edx, %eax	# current_time.88_352, _351
	jb	.L786	#,
.L693:
# items.c:1130:         if ((search->exptime != 0 && search->exptime < current_time)
	movl	28(%r14), %eax	# search_246->exptime, _89
# items.c:1130:         if ((search->exptime != 0 && search->exptime < current_time)
	testl	%eax, %eax	# _89
	je	.L681	#,
# items.c:1130:         if ((search->exptime != 0 && search->exptime < current_time)
	movl	current_time(%rip), %edx	# current_time, current_time.90_344
# items.c:1130:         if ((search->exptime != 0 && search->exptime < current_time)
	cmpl	%edx, %eax	# current_time.90_344, _89
	jb	.L691	#,
.L681:
# items.c:118:     rel_time_t oldest_live = settings.oldest_live;
	movl	36+settings(%rip), %edx	# settings.oldest_live, oldest_live
# items.c:119:     if (it->time <= oldest_live && oldest_live <= current_time)
	movl	24(%r14), %edi	# search_246->time, _78
# items.c:119:     if (it->time <= oldest_live && oldest_live <= current_time)
	cmpl	%edi, %edx	# _78, oldest_live
	jb	.L692	#,
# items.c:119:     if (it->time <= oldest_live && oldest_live <= current_time)
	movl	current_time(%rip), %esi	# current_time, current_time.1_343
# items.c:119:     if (it->time <= oldest_live && oldest_live <= current_time)
	cmpl	%edx, %esi	# oldest_live, current_time.1_343
	jnb	.L691	#,
.L692:
# items.c:1151:         switch (cur_lru) {
	movl	16(%rsp), %ecx	# %sfp, cur_lru
	cmpl	$128, %ecx	#, cur_lru
	je	.L685	#,
	cmpl	$192, %ecx	#, cur_lru
	je	.L686	#,
	cmpl	$64, %ecx	#, cur_lru
	jne	.L782	#,
# items.c:1155:                 if (limit == 0)
	cmpq	$0, 32(%rsp)	#, %sfp
	jne	.L690	#,
# items.c:1156:                     limit = total_bytes * settings.warm_lru_pct / 100;
	movslq	212+settings(%rip), %rdx	# settings.warm_lru_pct, _334
# items.c:1156:                     limit = total_bytes * settings.warm_lru_pct / 100;
	imulq	56(%rsp), %rdx	# %sfp, _335
# items.c:1156:                     limit = total_bytes * settings.warm_lru_pct / 100;
	movabsq	$2951479051793528259, %rax	#, tmp624
	shrq	$2, %rdx	#, tmp328
	mulq	%rdx	# tmp328
	shrq	$2, %rdx	#, tmp329
	movq	%rdx, 32(%rsp)	# tmp329, %sfp
.L690:
# items.c:1158:                 if ((search->it_flags & ITEM_ACTIVE) != 0) {
	movzwl	38(%r14), %eax	# search_246->it_flags, _73
# items.c:1158:                 if ((search->it_flags & ITEM_ACTIVE) != 0) {
	testb	$16, %al	#, _73
	je	.L779	#,
# items.c:1159:                     search->it_flags &= ~ITEM_ACTIVE;
	andl	$-17, %eax	#, tmp308
# items.c:1163:                         do_item_unlink_q(search);
	movq	%r14, %rdi	# search,
# items.c:1160:                     removed++;
	incl	8(%rsp)	# %sfp
# items.c:1159:                     search->it_flags &= ~ITEM_ACTIVE;
	movw	%ax, 38(%r14)	# tmp308, search_246->it_flags
# items.c:1162:                         itemstats[id].moves_within_lru++;
	incq	104(%rbp)	# itemstats[id_123].moves_within_lru
# items.c:1163:                         do_item_unlink_q(search);
	call	do_item_unlink_q	#
# items.c:1164:                         do_item_link_q(search);
	movq	%r14, %rdi	# search,
	call	do_item_link_q	#
# items.c:1165:                         do_item_remove(search);
	movq	%r14, %rdi	# search,
	call	do_item_remove	#
# items.c:1166:                         item_trylock_unlock(hold_lock);
	movq	%r13, %rdi	# hold_lock,
	call	item_trylock_unlock@PLT	#
# items.c:1093:     for (; tries > 0 && search != NULL; tries--, search=next_it) {
	decl	%r12d	# tries
	setne	%al	#, _311
	.p2align 4
	.p2align 3
.L678:
# items.c:1093:     for (; tries > 0 && search != NULL; tries--, search=next_it) {
	testq	%r15, %r15	# next_it
	je	.L698	#,
	testb	%al, %al	# _311
	je	.L698	#,
.L696:
	movq	%r15, %r14	# next_it, search
# items.c:1095:         next_it = search->prev;
	movq	8(%r15), %r15	# search_234->prev, next_it
# items.c:1096:         if (search->nbytes == 0 && search->nkey == 0 && search->it_flags == 1) {
	movl	32(%r14), %edi	# search_246->nbytes,
# items.c:1096:         if (search->nbytes == 0 && search->nkey == 0 && search->it_flags == 1) {
	movzbl	41(%r14), %esi	# search_246->nkey,
# items.c:1096:         if (search->nbytes == 0 && search->nkey == 0 && search->it_flags == 1) {
	testl	%edi, %edi	#
	je	.L675	#,
# items.c:1096:         if (search->nbytes == 0 && search->nkey == 0 && search->it_flags == 1) {
	movzwl	38(%r14), %eax	# search_246->it_flags, prephitmp_226
	jmp	.L694	#
	.p2align 4
	.p2align 3
.L691:
# items.c:1132:             itemstats[id].reclaimed++;
	incq	16(%rbp)	# itemstats[id_123].reclaimed
# items.c:1133:             if ((search->it_flags & ITEM_FETCHED) == 0) {
	testb	$8, 38(%r14)	#, search_246->it_flags
	jne	.L683	#,
# items.c:1134:                 itemstats[id].expired_unfetched++;
	incq	40(%rbp)	# itemstats[id_123].expired_unfetched
.L683:
# items.c:1137:             do_item_unlink_nolock(search, hv);
	movl	%ebx, %esi	# hv,
	movq	%r14, %rdi	# search,
	call	do_item_unlink_nolock	#
# items.c:1138:             STORAGE_delete(ext_storage, search);
	movq	%r14, %rsi	# search,
	movq	ext_storage(%rip), %rdi	# ext_storage,
	call	storage_delete@PLT	#
# items.c:1140:             do_item_remove(search);
	movq	%r14, %rdi	# search,
	call	do_item_remove	#
# items.c:1141:             item_trylock_unlock(hold_lock);
	movq	%r13, %rdi	# hold_lock,
	call	item_trylock_unlock@PLT	#
# items.c:1142:             removed++;
	incl	8(%rsp)	# %sfp
.L782:
# items.c:1093:     for (; tries > 0 && search != NULL; tries--, search=next_it) {
	decl	%r12d	# tries
	setne	%al	#, _311
	jmp	.L678	#
	.p2align 4
	.p2align 3
.L685:
	movl	28(%rsp), %ecx	# %sfp, flags
	movq	%r13, %r15	# hold_lock, hold_lock
	movq	48(%rsp), %rsi	# %sfp, id
	movq	%r14, %r13	# search, search
	movl	%ecx, %ebp	# flags, prephitmp_294
	andl	$4, %ebp	#, prephitmp_294
# items.c:1189:                 if (flags & LRU_PULL_EVICT) {
	andl	$1, %ecx	#, flags
	je	.L714	#,
# items.c:1190:                     if (settings.evict_to_free == 0) {
	movl	40+settings(%rip), %edx	# settings.evict_to_free,
	testl	%edx, %edx	#
	je	.L713	#,
# items.c:1195:                     itemstats[id].evicted_time = current_time - search->time;
	movl	current_time(%rip), %r10d	# current_time, current_time.93_55
# items.c:1194:                     itemstats[id].evicted++;
	imulq	$168, %rsi, %rdx	#, id, tmp491
	leaq	itemstats(%rip), %r8	#, tmp596
	addq	%r8, %rdx	# tmp596, tmp492
# items.c:1195:                     itemstats[id].evicted_time = current_time - search->time;
	subl	%edi, %r10d	# _78, tmp506
# items.c:1194:                     itemstats[id].evicted++;
	incq	(%rdx)	# itemstats[id_123].evicted
# items.c:1195:                     itemstats[id].evicted_time = current_time - search->time;
	movl	%r10d, 160(%rdx)	# tmp506, itemstats[id_123].evicted_time
# items.c:1196:                     if (search->exptime != 0)
	testl	%eax, %eax	# _89
	je	.L716	#,
# items.c:1197:                         itemstats[id].evicted_nonzero++;
	incq	8(%rdx)	# itemstats[id_123].evicted_nonzero
.L716:
# items.c:1198:                     if ((search->it_flags & ITEM_FETCHED) == 0) {
	movzwl	38(%r13), %eax	# search_246->it_flags, _59
# items.c:1198:                     if ((search->it_flags & ITEM_FETCHED) == 0) {
	testb	$8, %al	#, _59
	jne	.L717	#,
# items.c:1199:                         itemstats[id].evicted_unfetched++;
	imulq	$168, %rsi, %rdx	#, id, tmp524
	incq	48(%r8,%rdx)	# itemstats[id_123].evicted_unfetched
.L717:
# items.c:1201:                     if ((search->it_flags & ITEM_ACTIVE)) {
	testb	$16, %al	#, _59
	je	.L718	#,
# items.c:1202:                         itemstats[id].evicted_active++;
	imulq	$168, %rsi, %rsi	#, id, tmp539
	incq	56(%r8,%rsi)	# itemstats[id_123].evicted_active
.L718:
# items.c:1204:                     LOGGER_LOG(NULL, LOG_EVICTIONS, LOGGER_EVICTION, search);
	movl	logger_key(%rip), %edi	# logger_key,
	call	pthread_getspecific@PLT	#
# items.c:1204:                     LOGGER_LOG(NULL, LOG_EVICTIONS, LOGGER_EVICTION, search);
	testb	$64, 84(%rax)	#, myl_158->eflags
	jne	.L787	#,
.L719:
# items.c:1205:                     STORAGE_delete(ext_storage, search);
	movq	ext_storage(%rip), %rdi	# ext_storage,
	movq	%r13, %rsi	# search,
	call	storage_delete@PLT	#
# items.c:1206:                     do_item_unlink_nolock(search, hv);
	movl	%ebx, %esi	# hv,
	movq	%r13, %rdi	# search,
	call	do_item_unlink_nolock	#
# items.c:1232:     pthread_mutex_unlock(&lru_locks[id]);
	movq	40(%rsp), %rdi	# %sfp,
# items.c:1207:                     removed++;
	incl	8(%rsp)	# %sfp
# items.c:1208:                     if (settings.slab_automove == 2) {
	movl	140+settings(%rip), %ebx	# settings.slab_automove, _67
# items.c:1232:     pthread_mutex_unlock(&lru_locks[id]);
	call	pthread_mutex_unlock@PLT	#
# items.c:1240:         if ((flags & LRU_PULL_RETURN_ITEM) == 0) {
	testb	%bpl, %bpl	# prephitmp_294
	je	.L788	#,
.L721:
# items.c:1246:     if (do_slab_reassign) {
	cmpl	$2, %ebx	#, _67
	jne	.L671	#,
# items.c:1247:         slabs_reassign(settings.slab_rebal, -1, orig_id, SLABS_REASSIGN_ALLOW_EVICTIONS);
	movl	76(%rsp), %edx	# %sfp,
	movq	264+settings(%rip), %rdi	# settings.slab_rebal,
	movl	$1, %ecx	#,
	movl	$-1, %esi	#,
	call	slabs_reassign@PLT	#
	jmp	.L671	#
	.p2align 4
	.p2align 3
.L779:
	movq	32(%rsp), %rdx	# %sfp, limit
	movq	48(%rsp), %rsi	# %sfp, id
	movq	%r13, %r15	# hold_lock, hold_lock
	movq	%r14, %r13	# search, search
.L689:
	movzbl	28(%rsp), %ebp	# %sfp, prephitmp_294
# items.c:1174:                 } else if (sizes_bytes[id] > limit ||
	leaq	sizes_bytes(%rip), %rax	#, tmp470
	andl	$4, %ebp	#, prephitmp_294
# items.c:1174:                 } else if (sizes_bytes[id] > limit ||
	cmpq	(%rax,%rsi,8), %rdx	# sizes_bytes[id_123], limit
	jb	.L712	#,
# items.c:1175:                            current_time - search->time > max_age) {
	movl	current_time(%rip), %eax	# current_time, current_time.92_47
	subl	%edi, %eax	# _78, _48
# items.c:1174:                 } else if (sizes_bytes[id] > limit ||
	cmpl	%eax, 72(%rsp)	# _48, %sfp
	jnb	.L713	#,
.L712:
# items.c:1176:                     itemstats[id].moves_to_cold++;
	imulq	$168, %rsi, %rsi	#, id, tmp475
	leaq	itemstats(%rip), %rax	#, tmp473
# items.c:1178:                     do_item_unlink_q(search);
	movq	%r13, %rdi	# search,
# items.c:1176:                     itemstats[id].moves_to_cold++;
	incq	88(%rax,%rsi)	# itemstats[id_123].moves_to_cold
# items.c:1178:                     do_item_unlink_q(search);
	call	do_item_unlink_q	#
# items.c:1232:     pthread_mutex_unlock(&lru_locks[id]);
	movq	40(%rsp), %rdi	# %sfp,
# items.c:1180:                     removed++;
	incl	8(%rsp)	# %sfp
# items.c:1232:     pthread_mutex_unlock(&lru_locks[id]);
	call	pthread_mutex_unlock@PLT	#
	movl	$-128, %eax	#, prephitmp_238
.L711:
# items.c:1236:             it->slabs_clsid = ITEM_clsid(it);
	movzbl	40(%r13), %edx	# search_239->slabs_clsid, _77
# items.c:435:     pthread_mutex_lock(&lru_locks[it->slabs_clsid]);
	leaq	lru_locks(%rip), %rbx	#, tmp677
# items.c:1236:             it->slabs_clsid = ITEM_clsid(it);
	andl	$63, %edx	#, _77
# items.c:1237:             it->slabs_clsid |= move_to_lru;
	orl	%edx, %eax	# _77, _79
	movb	%al, 40(%r13)	# _79, search_239->slabs_clsid
# items.c:435:     pthread_mutex_lock(&lru_locks[it->slabs_clsid]);
	movzbl	%al, %eax	# _79, _292
	leaq	(%rax,%rax,4), %rax	#, _301
	leaq	(%rbx,%rax,8), %rdi	#, _206
	call	pthread_mutex_lock@PLT	#
# items.c:436:     do_item_link_q(it);
	movq	%r13, %rdi	# search,
	call	do_item_link_q	#
# items.c:437:     pthread_mutex_unlock(&lru_locks[it->slabs_clsid]);
	movzbl	40(%r13), %eax	# search_239->slabs_clsid, _300
	leaq	(%rax,%rax,4), %rax	#, _288
	leaq	(%rbx,%rax,8), %rdi	#, _209
	call	pthread_mutex_unlock@PLT	#
# items.c:1240:         if ((flags & LRU_PULL_RETURN_ITEM) == 0) {
	testb	%bpl, %bpl	# prephitmp_294
	jne	.L671	#,
	jmp	.L729	#
	.p2align 4
	.p2align 3
.L785:
# items.c:1098:             if (flags & LRU_PULL_CRAWL_BLOCKS) {
	testb	$2, 28(%rsp)	#, %sfp
	je	.L678	#,
.L673:
# items.c:1099:                 pthread_mutex_unlock(&lru_locks[id]);
	movq	40(%rsp), %rdi	# %sfp,
	call	pthread_mutex_unlock@PLT	#
# items.c:1100:                 return 0;
	jmp	.L672	#
	.p2align 4
	.p2align 3
.L714:
# items.c:1211:                 } else if (flags & LRU_PULL_RETURN_ITEM) {
	testb	%bpl, %bpl	# prephitmp_294
	jne	.L789	#,
# items.c:1215:                 } else if ((search->it_flags & ITEM_ACTIVE) != 0
	movzwl	38(%r14), %eax	# search_246->it_flags, _267
# items.c:1215:                 } else if ((search->it_flags & ITEM_ACTIVE) != 0
	testb	$16, %al	#, _267
	je	.L726	#,
# items.c:1216:                         && settings.lru_segmented) {
	cmpb	$0, 136+settings(%rip)	#, settings.lru_segmented
	jne	.L790	#,
.L726:
# items.c:1232:     pthread_mutex_unlock(&lru_locks[id]);
	movq	40(%rsp), %rdi	# %sfp,
	call	pthread_mutex_unlock@PLT	#
# items.c:1241:             do_item_remove(it);
	movq	%r13, %rdi	# search,
	call	do_item_remove	#
# items.c:1242:             item_trylock_unlock(hold_lock);
	movq	%r15, %rdi	# hold_lock,
	call	item_trylock_unlock@PLT	#
	jmp	.L671	#
	.p2align 4
	.p2align 3
.L786:
# items.c:1122:                 STORAGE_delete(ext_storage, search);
	movq	ext_storage(%rip), %rdi	# ext_storage,
# items.c:1119:                 itemstats[id].tailrepairs++;
	incq	32(%rbp)	# itemstats[id_123].tailrepairs
# items.c:1122:                 STORAGE_delete(ext_storage, search);
	movq	%r14, %rsi	# search,
# items.c:1120:                 search->refcount = 1;
	movw	$1, 36(%r14)	#, search_246->refcount
# items.c:1122:                 STORAGE_delete(ext_storage, search);
	call	storage_delete@PLT	#
# items.c:1123:                 do_item_unlink_nolock(search, hv);
	movl	%ebx, %esi	# hv,
	movq	%r14, %rdi	# search,
	call	do_item_unlink_nolock	#
# items.c:1124:                 item_trylock_unlock(hold_lock);
	movq	%r13, %rdi	# hold_lock,
	call	item_trylock_unlock@PLT	#
# items.c:1093:     for (; tries > 0 && search != NULL; tries--, search=next_it) {
	decl	%r12d	# tries
	setne	%al	#, _311
	jmp	.L678	#
	.p2align 4
	.p2align 3
.L789:
# items.c:1213:                     ret_it->it = it;
	movq	64(%rsp), %rax	# %sfp, ret_it
# items.c:1232:     pthread_mutex_unlock(&lru_locks[id]);
	movq	40(%rsp), %rdi	# %sfp,
# items.c:1213:                     ret_it->it = it;
	movq	%r14, (%rax)	# search, ret_it_148(D)->it
# items.c:1214:                     ret_it->hv = hv;
	movl	%ebx, 8(%rax)	# hv, ret_it_148(D)->hv
# items.c:1232:     pthread_mutex_unlock(&lru_locks[id]);
	call	pthread_mutex_unlock@PLT	#
	jmp	.L671	#
	.p2align 4
	.p2align 3
.L793:
# items.c:119:     if (it->time <= oldest_live && oldest_live <= current_time)
	movl	current_time(%rip), %ecx	# current_time, current_time.1_203
# items.c:119:     if (it->time <= oldest_live && oldest_live <= current_time)
	cmpl	%edx, %ecx	# oldest_live, current_time.1_203
	jb	.L707	#,
.L706:
# items.c:1132:             itemstats[id].reclaimed++;
	incq	16(%rbp)	# itemstats[id_123].reclaimed
# items.c:1133:             if ((search->it_flags & ITEM_FETCHED) == 0) {
	testb	$8, 38(%r13)	#, search_92->it_flags
	jne	.L708	#,
# items.c:1134:                 itemstats[id].expired_unfetched++;
	incq	40(%rbp)	# itemstats[id_123].expired_unfetched
.L708:
# items.c:1137:             do_item_unlink_nolock(search, hv);
	movl	%r15d, %esi	# hv,
	movq	%r13, %rdi	# search,
	movq	%rax, 16(%rsp)	# hold_lock, %sfp
	call	do_item_unlink_nolock	#
# items.c:1138:             STORAGE_delete(ext_storage, search);
	movq	%r13, %rsi	# search,
	movq	ext_storage(%rip), %rdi	# ext_storage,
	call	storage_delete@PLT	#
# items.c:1140:             do_item_remove(search);
	movq	%r13, %rdi	# search,
	call	do_item_remove	#
# items.c:1141:             item_trylock_unlock(hold_lock);
	movq	16(%rsp), %rdi	# %sfp,
	call	item_trylock_unlock@PLT	#
# items.c:1142:             removed++;
	incl	8(%rsp)	# %sfp
# items.c:1093:     for (; tries > 0 && search != NULL; tries--, search=next_it) {
	decl	%r12d	# tries
	setne	%al	#, _303
.L701:
# items.c:1093:     for (; tries > 0 && search != NULL; tries--, search=next_it) {
	testq	%r14, %r14	# next_it
	je	.L698	#,
	testb	%al, %al	# _303
	jne	.L674	#,
	.p2align 4
	.p2align 3
.L698:
# items.c:1232:     pthread_mutex_unlock(&lru_locks[id]);
	movq	40(%rsp), %rdi	# %sfp,
	call	pthread_mutex_unlock@PLT	#
	jmp	.L671	#
	.p2align 4
	.p2align 3
.L735:
# items.c:1132:             itemstats[id].reclaimed++;
	imulq	$168, %rsi, %rax	#, id, tmp605
	leaq	itemstats(%rip), %rbp	#, tmp604
# items.c:1077:     int removed = 0;
	movl	$0, 8(%rsp)	#, %sfp
# items.c:1081:     int tries = 5;
	movl	$5, %r12d	#, tries
# items.c:1132:             itemstats[id].reclaimed++;
	movq	%rsi, %rbx	# id, id
	addq	%rax, %rbp	# tmp605, tmp606
	.p2align 4
	.p2align 3
.L674:
	movq	%r14, %r13	# next_it, search
# items.c:1095:         next_it = search->prev;
	movq	8(%r14), %r14	# search_260->prev, next_it
# items.c:1096:         if (search->nbytes == 0 && search->nkey == 0 && search->it_flags == 1) {
	movl	32(%r13), %ecx	# search_92->nbytes,
# items.c:1096:         if (search->nbytes == 0 && search->nkey == 0 && search->it_flags == 1) {
	movzbl	41(%r13), %esi	# search_92->nkey,
# items.c:1096:         if (search->nbytes == 0 && search->nkey == 0 && search->it_flags == 1) {
	movzwl	38(%r13), %eax	# search_92->it_flags, prephitmp_223
# items.c:1096:         if (search->nbytes == 0 && search->nkey == 0 && search->it_flags == 1) {
	testl	%ecx, %ecx	#
	jne	.L700	#,
# items.c:1096:         if (search->nbytes == 0 && search->nkey == 0 && search->it_flags == 1) {
	testb	%sil, %sil	# pretmp_318
	jne	.L700	#,
# items.c:1096:         if (search->nbytes == 0 && search->nkey == 0 && search->it_flags == 1) {
	cmpw	$1, %ax	#, prephitmp_223
	je	.L791	#,
	.p2align 4
	.p2align 3
.L700:
# items.c:1105:         uint32_t hv = hash(ITEM_key(search), search->nkey);
	leaq	0(,%rax,4), %rax	#, _11
	andl	$8, %eax	#, _12
# items.c:1105:         uint32_t hv = hash(ITEM_key(search), search->nkey);
	leaq	48(%r13,%rax), %rdi	#, _13
	call	*hash(%rip)	# hash
# items.c:1108:         if ((hold_lock = item_trylock(hv)) == NULL)
	movl	%eax, %edi	# hv,
# items.c:1105:         uint32_t hv = hash(ITEM_key(search), search->nkey);
	movl	%eax, %r15d	#, hv
# items.c:1108:         if ((hold_lock = item_trylock(hv)) == NULL)
	call	item_trylock@PLT	#
# items.c:1108:         if ((hold_lock = item_trylock(hv)) == NULL)
	testq	%rax, %rax	# hold_lock
	je	.L703	#,
# items.c:1111:         if (refcount_incr(search) != 2) {
	movzwl	36(%r13), %ecx	# search_92->refcount, tmp660
	leal	1(%rcx), %edx	#, _15
# items.c:1111:         if (refcount_incr(search) != 2) {
	movw	%dx, 36(%r13)	# _15, search_92->refcount
	cmpw	$2, %dx	#, _15
	je	.L704	#,
# items.c:1117:             if (settings.tail_repair_time &&
	movl	180+settings(%rip), %edx	# settings.tail_repair_time, _18
# items.c:1114:             itemstats[id].lrutail_reflocked++;
	incq	80(%rbp)	# itemstats[id_123].lrutail_reflocked
# items.c:1117:             if (settings.tail_repair_time &&
	testl	%edx, %edx	# _18
	je	.L704	#,
# items.c:1118:                     search->time + settings.tail_repair_time < current_time) {
	addl	24(%r13), %edx	# search_92->time, _21
# items.c:1118:                     search->time + settings.tail_repair_time < current_time) {
	movl	current_time(%rip), %ecx	# current_time, current_time.88_22
# items.c:1117:             if (settings.tail_repair_time &&
	cmpl	%ecx, %edx	# current_time.88_22, _21
	jb	.L792	#,
.L704:
# items.c:1130:         if ((search->exptime != 0 && search->exptime < current_time)
	movl	28(%r13), %edx	# search_92->exptime, _26
# items.c:1130:         if ((search->exptime != 0 && search->exptime < current_time)
	testl	%edx, %edx	# _26
	je	.L705	#,
# items.c:1130:         if ((search->exptime != 0 && search->exptime < current_time)
	movl	current_time(%rip), %ecx	# current_time, current_time.90_27
# items.c:1130:         if ((search->exptime != 0 && search->exptime < current_time)
	cmpl	%ecx, %edx	# current_time.90_27, _26
	jb	.L706	#,
.L705:
# items.c:118:     rel_time_t oldest_live = settings.oldest_live;
	movl	36+settings(%rip), %edx	# settings.oldest_live, oldest_live
# items.c:119:     if (it->time <= oldest_live && oldest_live <= current_time)
	movl	24(%r13), %edi	# search_92->time, _78
# items.c:119:     if (it->time <= oldest_live && oldest_live <= current_time)
	cmpl	%edi, %edx	# _78, oldest_live
	jnb	.L793	#,
.L707:
# items.c:1153:                 limit = total_bytes * settings.hot_lru_pct / 100;
	movq	%rax, %r15	# hold_lock, hold_lock
	movslq	208+settings(%rip), %rax	# settings.hot_lru_pct, _35
# items.c:1153:                 limit = total_bytes * settings.hot_lru_pct / 100;
	imulq	56(%rsp), %rax	# %sfp, _36
# items.c:1153:                 limit = total_bytes * settings.hot_lru_pct / 100;
	movq	%rbx, %rsi	# id, id
# items.c:1155:                 if (limit == 0)
	cmpq	$99, %rax	#, _36
	jbe	.L709	#,
# items.c:1153:                 limit = total_bytes * settings.hot_lru_pct / 100;
	shrq	$2, %rax	#, tmp444
	movabsq	$2951479051793528259, %rdx	#, tmp446
	mulq	%rdx	# tmp446
	shrq	$2, %rdx	#, limit
.L710:
# items.c:1158:                 if ((search->it_flags & ITEM_ACTIVE) != 0) {
	movzwl	38(%r13), %eax	# search_92->it_flags, _40
# items.c:1158:                 if ((search->it_flags & ITEM_ACTIVE) != 0) {
	testb	$16, %al	#, _40
	je	.L689	#,
# items.c:1169:                         itemstats[id].moves_to_warm++;
	imulq	$168, %rsi, %rsi	#, id, tmp458
# items.c:1159:                     search->it_flags &= ~ITEM_ACTIVE;
	andl	$-17, %eax	#, tmp455
# items.c:1171:                         do_item_unlink_q(search);
	movq	%r13, %rdi	# search,
# items.c:1160:                     removed++;
	incl	8(%rsp)	# %sfp
# items.c:1159:                     search->it_flags &= ~ITEM_ACTIVE;
	movw	%ax, 38(%r13)	# tmp455, search_92->it_flags
# items.c:1169:                         itemstats[id].moves_to_warm++;
	leaq	itemstats(%rip), %rax	#, tmp456
	incq	96(%rax,%rsi)	# itemstats[id_123].moves_to_warm
# items.c:1171:                         do_item_unlink_q(search);
	call	do_item_unlink_q	#
# items.c:1232:     pthread_mutex_unlock(&lru_locks[id]);
	movq	40(%rsp), %rdi	# %sfp,
	call	pthread_mutex_unlock@PLT	#
	movzbl	28(%rsp), %ebp	# %sfp, prephitmp_294
	movl	$64, %eax	#, prephitmp_238
	andl	$4, %ebp	#, prephitmp_294
	jmp	.L711	#
	.p2align 4
	.p2align 3
.L703:
# items.c:1093:     for (; tries > 0 && search != NULL; tries--, search=next_it) {
	decl	%r12d	# tries
	setne	%al	#, _303
	jmp	.L701	#
	.p2align 4
	.p2align 3
.L709:
# items.c:1156:                     limit = total_bytes * settings.warm_lru_pct / 100;
	movslq	212+settings(%rip), %rdx	# settings.warm_lru_pct, _38
# items.c:1156:                     limit = total_bytes * settings.warm_lru_pct / 100;
	imulq	56(%rsp), %rdx	# %sfp, _39
# items.c:1156:                     limit = total_bytes * settings.warm_lru_pct / 100;
	movabsq	$2951479051793528259, %rax	#, tmp451
	shrq	$2, %rdx	#, tmp451
	mulq	%rdx	# tmp451
	shrq	$2, %rdx	#, limit
	jmp	.L710	#
	.p2align 4
	.p2align 3
.L791:
# items.c:1098:             if (flags & LRU_PULL_CRAWL_BLOCKS) {
	testb	$2, 28(%rsp)	#, %sfp
	jne	.L673	#,
	movl	$1, %eax	#, _303
	jmp	.L701	#
.L792:
# items.c:1122:                 STORAGE_delete(ext_storage, search);
	movq	ext_storage(%rip), %rdi	# ext_storage,
# items.c:1119:                 itemstats[id].tailrepairs++;
	incq	32(%rbp)	# itemstats[id_123].tailrepairs
# items.c:1122:                 STORAGE_delete(ext_storage, search);
	movq	%r13, %rsi	# search,
# items.c:1120:                 search->refcount = 1;
	movw	$1, 36(%r13)	#, search_92->refcount
	movq	%rax, 16(%rsp)	# hold_lock, %sfp
# items.c:1122:                 STORAGE_delete(ext_storage, search);
	call	storage_delete@PLT	#
# items.c:1123:                 do_item_unlink_nolock(search, hv);
	movl	%r15d, %esi	# hv,
	movq	%r13, %rdi	# search,
	call	do_item_unlink_nolock	#
# items.c:1124:                 item_trylock_unlock(hold_lock);
	movq	16(%rsp), %rdi	# %sfp,
	call	item_trylock_unlock@PLT	#
# items.c:1093:     for (; tries > 0 && search != NULL; tries--, search=next_it) {
	decl	%r12d	# tries
	setne	%al	#, _303
# items.c:1125:                 continue;
	jmp	.L701	#
.L787:
# items.c:1204:                     LOGGER_LOG(NULL, LOG_EVICTIONS, LOGGER_EVICTION, search);
	movq	%rax, %rdi	# myl,
	movq	%r13, %rdx	# search,
	movl	$1, %esi	#,
	xorl	%eax, %eax	#
	call	logger_log@PLT	#
	jmp	.L719	#
.L713:
# items.c:1232:     pthread_mutex_unlock(&lru_locks[id]);
	movq	40(%rsp), %rdi	# %sfp,
	call	pthread_mutex_unlock@PLT	#
# items.c:1240:         if ((flags & LRU_PULL_RETURN_ITEM) == 0) {
	testb	%bpl, %bpl	# prephitmp_294
	jne	.L671	#,
.L729:
# items.c:1241:             do_item_remove(it);
	movq	%r13, %rdi	# search,
	call	do_item_remove	#
# items.c:1242:             item_trylock_unlock(hold_lock);
	movq	%r15, %rdi	# hold_lock,
	call	item_trylock_unlock@PLT	#
	jmp	.L671	#
.L788:
# items.c:1241:             do_item_remove(it);
	movq	%r13, %rdi	# search,
	call	do_item_remove	#
# items.c:1242:             item_trylock_unlock(hold_lock);
	movq	%r15, %rdi	# hold_lock,
	call	item_trylock_unlock@PLT	#
	jmp	.L721	#
.L790:
# items.c:1217:                     itemstats[id].moves_to_warm++;
	imulq	$168, %rsi, %rsi	#, id, tmp560
	leaq	itemstats(%rip), %rdx	#, tmp558
# items.c:1218:                     search->it_flags &= ~ITEM_ACTIVE;
	andl	$-17, %eax	#, tmp572
# items.c:1220:                     do_item_unlink_q(search);
	movq	%r14, %rdi	# search,
# items.c:1217:                     itemstats[id].moves_to_warm++;
	incq	96(%rdx,%rsi)	# itemstats[id_123].moves_to_warm
# items.c:1218:                     search->it_flags &= ~ITEM_ACTIVE;
	movw	%ax, 38(%r14)	# tmp572, search_246->it_flags
# items.c:1220:                     do_item_unlink_q(search);
	call	do_item_unlink_q	#
# items.c:1232:     pthread_mutex_unlock(&lru_locks[id]);
	movq	40(%rsp), %rdi	# %sfp,
# items.c:1221:                     removed++;
	incl	8(%rsp)	# %sfp
# items.c:1232:     pthread_mutex_unlock(&lru_locks[id]);
	call	pthread_mutex_unlock@PLT	#
	movl	$64, %eax	#, prephitmp_238
	jmp	.L711	#
.L686:
	movq	40(%rsp), %rdi	# %sfp,
	movq	%r13, %r15	# hold_lock, hold_lock
	call	pthread_mutex_unlock@PLT	#
# items.c:1240:         if ((flags & LRU_PULL_RETURN_ITEM) == 0) {
	testb	$4, 28(%rsp)	#, %sfp
	jne	.L671	#,
# items.c:1241:             do_item_remove(it);
	movq	%r14, %rdi	# search,
	call	do_item_remove	#
# items.c:1242:             item_trylock_unlock(hold_lock);
	movq	%r15, %rdi	# hold_lock,
	call	item_trylock_unlock@PLT	#
	jmp	.L671	#
	.cfi_endproc
.LFE123:
	.size	lru_pull_tail, .-lru_pull_tail
	.section	.rodata.str1.1
.LC71:
	.string	"na"
.LC72:
	.string	"warm"
.LC73:
	.string	"hot"
.LC74:
	.string	"cold"
.LC75:
	.string	"temp"
	.section	.rodata.str1.8
	.align 8
.LC76:
	.string	"Failed to allocate crawler data for LRU maintainer thread\n"
	.align 8
.LC77:
	.string	"Failed to allocate logger for LRU maintainer thread\n"
	.align 8
.LC78:
	.string	"Starting LRU maintainer background thread\n"
	.align 8
.LC79:
	.string	"LRU maintainer thread stopping\n"
	.section	.text.unlikely
.LCOLDB82:
	.text
.LHOTB82:
	.p2align 4
	.type	lru_maintainer_thread, @function
lru_maintainer_thread:
.LFB131:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
# items.c:1552:     useconds_t next_juggles[MAX_NUMBER_OF_SLAB_CLASSES] = {0};
	vpxor	%xmm0, %xmm0, %xmm0	# tmp305
# items.c:1555:         calloc(1, sizeof(struct crawler_expired_data));
	movl	$137272, %esi	#,
	movl	$1, %edi	#,
# items.c:1547: static void *lru_maintainer_thread(void *arg) {
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	pushq	%r15	#
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	pushq	%r10	#
	pushq	%rbx	#
	subq	$960, %rsp	#,
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 10, -56
	.cfi_offset 3, -64
# items.c:1547: static void *lru_maintainer_thread(void *arg) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp302
	movq	%rax, -56(%rbp)	# tmp302, D.14139
	xorl	%eax, %eax	# tmp302
# items.c:1552:     useconds_t next_juggles[MAX_NUMBER_OF_SLAB_CLASSES] = {0};
	vmovdqu	%ymm0, -832(%rbp)	# tmp305, next_juggles
	vmovdqu	%ymm0, -800(%rbp)	# tmp305, next_juggles
	vmovdqu	%ymm0, -768(%rbp)	# tmp305, next_juggles
	vmovdqu	%ymm0, -736(%rbp)	# tmp305, next_juggles
	vmovdqu	%ymm0, -704(%rbp)	# tmp305, next_juggles
	vmovdqu	%ymm0, -672(%rbp)	# tmp305, next_juggles
	vmovdqu	%ymm0, -640(%rbp)	# tmp305, next_juggles
	vmovdqu	%ymm0, -608(%rbp)	# tmp305, next_juggles
# items.c:1553:     useconds_t backoff_juggles[MAX_NUMBER_OF_SLAB_CLASSES] = {0};
	vmovdqu	%ymm0, -576(%rbp)	# tmp305, backoff_juggles
	vmovdqu	%ymm0, -544(%rbp)	# tmp305, backoff_juggles
	vmovdqu	%ymm0, -512(%rbp)	# tmp305, backoff_juggles
	vmovdqu	%ymm0, -480(%rbp)	# tmp305, backoff_juggles
	vmovdqu	%ymm0, -448(%rbp)	# tmp305, backoff_juggles
	vmovdqu	%ymm0, -416(%rbp)	# tmp305, backoff_juggles
	vmovdqu	%ymm0, -384(%rbp)	# tmp305, backoff_juggles
	vmovdqu	%ymm0, -352(%rbp)	# tmp305, backoff_juggles
# items.c:1555:         calloc(1, sizeof(struct crawler_expired_data));
	vzeroupper
	call	calloc@PLT	#
	movq	%rax, -952(%rbp)	# cdata, %sfp
# items.c:1556:     if (cdata == NULL) {
	testq	%rax, %rax	# cdata
	je	.L960	#,
	movq	%rax, %rbx	# cdata, cdata
# items.c:1560:     pthread_mutex_init(&cdata->lock, NULL);
	xorl	%esi, %esi	#
	movq	%rax, %rdi	# cdata,
	call	pthread_mutex_init@PLT	#
# items.c:1561:     cdata->crawl_complete = true; // kick off the crawler.
	movb	$1, 137264(%rbx)	#, cdata_45->crawl_complete
# items.c:1562:     logger *l = logger_create();
	call	logger_create@PLT	#
	movq	%rax, -984(%rbp)	# l, %sfp
# items.c:1563:     if (l == NULL) {
	testq	%rax, %rax	# l
	je	.L961	#,
# items.c:1568:     pthread_mutex_lock(&lru_maintainer_lock);
	leaq	lru_maintainer_lock(%rip), %rdi	#,
	call	pthread_mutex_lock@PLT	#
# items.c:1569:     if (settings.verbose > 2)
	cmpl	$2, 32+settings(%rip)	#, settings.verbose
	jg	.L962	#,
.L797:
# items.c:1571:     while (do_run_lru_maintainer_thread) {
	movl	do_run_lru_maintainer_thread(%rip), %eax	# do_run_lru_maintainer_thread, do_run_lru_maintainer_thread.108_253
	testl	%eax, %eax	# do_run_lru_maintainer_thread.108_253
	je	.L798	#,
	vmovdqa	.LC80(%rip), %xmm4	#, tmp581
	leaq	-832(%rbp), %rax	#, tmp518
	xorl	%r13d, %r13d	# last_crawler_check
	movq	%rax, -928(%rbp)	# tmp518, %sfp
	vmovd	%xmm4, -912(%rbp)	# tmp581, %sfp
	vmovd	%xmm4, %ebx	# tmp581, to_sleep
.L871:
# items.c:1572:         pthread_mutex_unlock(&lru_maintainer_lock);
	leaq	lru_maintainer_lock(%rip), %rdi	#,
	call	pthread_mutex_unlock@PLT	#
# items.c:1573:         if (to_sleep)
	testl	%ebx, %ebx	# to_sleep
	jne	.L963	#,
.L799:
# items.c:1575:         pthread_mutex_lock(&lru_maintainer_lock);
	leaq	lru_maintainer_lock(%rip), %rdi	#,
	call	pthread_mutex_lock@PLT	#
# items.c:1577:         last_sleep = to_sleep > 1000 ? to_sleep : 1000;
	vmovdqa	.LC80(%rip), %xmm0	#, tmp591
	vpmaxud	-912(%rbp), %xmm0, %xmm5	# %sfp, tmp591, tmp582
	vmovd	%xmm5, -976(%rbp)	# tmp582, %sfp
	vmovd	%xmm5, -940(%rbp)	# tmp582, %sfp
# items.c:1580:         STATS_LOCK();
	call	STATS_LOCK@PLT	#
# items.c:1581:         stats.lru_maintainer_juggles++;
	incq	112+stats(%rip)	# stats.lru_maintainer_juggles
# items.c:1582:         STATS_UNLOCK();
	call	STATS_UNLOCK@PLT	#
	leaq	-572(%rbp), %rax	#, ivtmp.524
	movl	$1, %ecx	#, ivtmp.520
# items.c:1578:         to_sleep = MAX_LRU_MAINTAINER_SLEEP;
	vmovdqa	.LC81(%rip), %xmm0	#, tmp586
	movq	%rax, -920(%rbp)	# ivtmp.524, %sfp
	leaq	40+lru_locks(%rip), %rax	#, ivtmp.481
# items.c:1397:         if (tails[slabs_clsid|COLD_LRU]) {
	movl	%r13d, -996(%rbp)	# last_crawler_check, %sfp
	movq	%rax, -992(%rbp)	# ivtmp.481, %sfp
# items.c:1582:         STATS_UNLOCK();
	movq	%rax, -936(%rbp)	# ivtmp.481, %sfp
# items.c:1578:         to_sleep = MAX_LRU_MAINTAINER_SLEEP;
	vmovdqa	%xmm0, -912(%rbp)	# tmp586, %sfp
.L842:
# items.c:1586:             next_juggles[i] = next_juggles[i] > last_sleep ? next_juggles[i] - last_sleep : 0;
	movq	-928(%rbp), %rax	# %sfp, tmp518
	vmovd	(%rax,%rcx,4), %xmm0	# MEM[(unsigned int *)&next_juggles + ivtmp.520_179 * 4], tmp592
	vmovd	%xmm0, %eax	# tmp580, _8
# items.c:1586:             next_juggles[i] = next_juggles[i] > last_sleep ? next_juggles[i] - last_sleep : 0;
	cmpl	%eax, -940(%rbp)	# _8, %sfp
	jb	.L800	#,
# items.c:1378:     slabs_available_chunks(slabs_clsid, NULL,
	leaq	-840(%rbp), %rdx	#, tmp329
	xorl	%esi, %esi	#
	movl	%ecx, %edi	# i,
	movl	%ecx, %ebx	# ivtmp.520, i
	movq	%rcx, -856(%rbp)	# ivtmp.520, %sfp
# items.c:1375:     unsigned int chunks_perslab = 0;
	movl	$0, -840(%rbp)	#, chunks_perslab
# items.c:1378:     slabs_available_chunks(slabs_clsid, NULL,
	call	slabs_available_chunks@PLT	#
# items.c:1380:     if (settings.temp_lru) {
	movzbl	236+settings(%rip), %edx	# settings.temp_lru, _86
# items.c:1380:     if (settings.temp_lru) {
	movq	-856(%rbp), %rcx	# %sfp, ivtmp.520
	testb	%dl, %dl	# _86
	jne	.L801	#,
# items.c:1373:     int did_moves = 0;
	movl	$0, -872(%rbp)	#, %sfp
.L802:
# items.c:1395:     if (settings.lru_segmented) {
	cmpb	$0, 136+settings(%rip)	#, settings.lru_segmented
	jne	.L964	#,
.L877:
# items.c:1393:     rel_time_t warm_age = 0;
	movl	$0, -856(%rbp)	#, %sfp
# items.c:1392:     rel_time_t hot_age = 0;
	xorl	%r13d, %r13d	# hot_age
# items.c:1374:     uint64_t total_bytes = 0;
	xorl	%r12d, %r12d	# total_bytes
.L823:
	movl	-872(%rbp), %r15d	# %sfp, i
	movq	%rcx, -864(%rbp)	# ivtmp.520, %sfp
	leal	500(%r15), %r14d	#, _134
	jmp	.L833	#
	.p2align 4
	.p2align 3
.L966:
# items.c:1424:         if (settings.lru_segmented) {
	cmpb	$0, 136+settings(%rip)	#, settings.lru_segmented
	jne	.L958	#,
.L829:
# items.c:1429:         did_moves++;
	incl	%r15d	# i
# items.c:1418:     for (i = 0; i < 500; i++) {
	cmpl	%r14d, %r15d	# _134, i
	je	.L965	#,
.L833:
# items.c:1420:         if (lru_pull_tail(slabs_clsid, HOT_LRU, total_bytes, LRU_PULL_CRAWL_BLOCKS, hot_age, NULL) ||
	movl	%r13d, %ecx	# hot_age,
	movl	$2, %edx	#,
	movq	%r12, %rsi	# total_bytes,
	movl	%ebx, %edi	# i,
	call	lru_pull_tail.constprop.1	#
# items.c:1420:         if (lru_pull_tail(slabs_clsid, HOT_LRU, total_bytes, LRU_PULL_CRAWL_BLOCKS, hot_age, NULL) ||
	testl	%eax, %eax	# _115
	jne	.L966	#,
# items.c:1421:             lru_pull_tail(slabs_clsid, WARM_LRU, total_bytes, LRU_PULL_CRAWL_BLOCKS, warm_age, NULL)) {
	movl	-856(%rbp), %r8d	# %sfp,
	xorl	%r9d, %r9d	#
	movl	$2, %ecx	#,
	movq	%r12, %rdx	# total_bytes,
	movl	$64, %esi	#,
	movl	%ebx, %edi	# i,
	call	lru_pull_tail	#
# items.c:1420:         if (lru_pull_tail(slabs_clsid, HOT_LRU, total_bytes, LRU_PULL_CRAWL_BLOCKS, hot_age, NULL) ||
	testl	%eax, %eax	#
# items.c:1424:         if (settings.lru_segmented) {
	movzbl	136+settings(%rip), %eax	# settings.lru_segmented, pretmp_178
# items.c:1420:         if (lru_pull_tail(slabs_clsid, HOT_LRU, total_bytes, LRU_PULL_CRAWL_BLOCKS, hot_age, NULL) ||
	je	.L830	#,
# items.c:1424:         if (settings.lru_segmented) {
	testb	%al, %al	# pretmp_178
	je	.L829	#,
	.p2align 4
	.p2align 3
.L958:
# items.c:1425:             do_more += lru_pull_tail(slabs_clsid, COLD_LRU, total_bytes, LRU_PULL_CRAWL_BLOCKS, 0, NULL);
	movl	$2, %edx	#,
	movq	%r12, %rsi	# total_bytes,
	movl	%ebx, %edi	# i,
# items.c:1429:         did_moves++;
	incl	%r15d	# i
# items.c:1425:             do_more += lru_pull_tail(slabs_clsid, COLD_LRU, total_bytes, LRU_PULL_CRAWL_BLOCKS, 0, NULL);
	call	lru_pull_tail.constprop.0	#
# items.c:1418:     for (i = 0; i < 500; i++) {
	cmpl	%r14d, %r15d	# _134, i
	jne	.L833	#,
.L965:
# items.c:1597:                 if (backoff_juggles[i] != 0) {
	movq	-920(%rbp), %rax	# %sfp, ivtmp.524
	movq	-864(%rbp), %rcx	# %sfp, ivtmp.520
	vmovd	(%rax), %xmm0	# MEM[(unsigned int *)_15], tmp596
	vmovd	%xmm0, %eax	# tmp583, pretmp_177
.L835:
# items.c:1604:             } else if (backoff_juggles[i] > 0) {
	testl	%eax, %eax	# pretmp_177
	jne	.L839	#,
.L841:
# items.c:1611:             if (next_juggles[i] < to_sleep)
	vpxor	%xmm0, %xmm0, %xmm0	# tmp588
	vmovd	%xmm0, -912(%rbp)	# tmp588, %sfp
	vmovd	%xmm0, %ebx	# tmp588, to_sleep
	jmp	.L803	#
.L830:
# items.c:1424:         if (settings.lru_segmented) {
	testb	%al, %al	# pretmp_178
	jne	.L967	#,
.L832:
# items.c:1597:                 if (backoff_juggles[i] != 0) {
	movq	-920(%rbp), %rax	# %sfp, ivtmp.524
	movq	-864(%rbp), %rcx	# %sfp, ivtmp.520
	vmovd	(%rax), %xmm0	# MEM[(unsigned int *)_185], tmp593
	vmovd	%xmm0, %eax	# tmp583, pretmp_177
# items.c:1596:             if (did_moves == 0) {
	testl	%r15d, %r15d	# i
	jne	.L835	#,
# items.c:1597:                 if (backoff_juggles[i] != 0) {
	testl	%eax, %eax	# pretmp_177
	je	.L836	#,
# items.c:1598:                     backoff_juggles[i] += backoff_juggles[i] / 8;
	vpsrld	$3, %xmm0, %xmm1	#, tmp583, _12
# items.c:1598:                     backoff_juggles[i] += backoff_juggles[i] / 8;
	vpaddd	%xmm0, %xmm1, %xmm0	# tmp583, _12, tmp584
	vmovd	%xmm0, %eax	# tmp584, _212
# items.c:1602:                 if (backoff_juggles[i] > MAX_LRU_MAINTAINER_SLEEP)
	cmpl	$999999, %eax	#, _212
# items.c:1603:                     backoff_juggles[i] = MAX_LRU_MAINTAINER_SLEEP;
	movq	-920(%rbp), %rax	# %sfp, ivtmp.524
# items.c:1602:                 if (backoff_juggles[i] > MAX_LRU_MAINTAINER_SLEEP)
	jbe	.L968	#,
# items.c:1611:             if (next_juggles[i] < to_sleep)
	vmovdqa	.LC81(%rip), %xmm0	#, tmp594
# items.c:1603:                     backoff_juggles[i] = MAX_LRU_MAINTAINER_SLEEP;
	movl	$999999, (%rax)	#, MEM[(unsigned int *)_185]
# items.c:1611:             if (next_juggles[i] < to_sleep)
	vpminud	-912(%rbp), %xmm0, %xmm7	# %sfp, tmp594, tmp581
	vmovd	%xmm7, -912(%rbp)	# tmp581, %sfp
	vmovd	%xmm7, %ebx	# tmp581, to_sleep
.L803:
# items.c:1586:             next_juggles[i] = next_juggles[i] > last_sleep ? next_juggles[i] - last_sleep : 0;
	movq	-928(%rbp), %rax	# %sfp, tmp518
# items.c:1585:         for (i = POWER_SMALLEST; i < MAX_NUMBER_OF_SLAB_CLASSES; i++) {
	addq	$4, -920(%rbp)	#, %sfp
	addq	$40, -936(%rbp)	#, %sfp
# items.c:1586:             next_juggles[i] = next_juggles[i] > last_sleep ? next_juggles[i] - last_sleep : 0;
	vmovd	%xmm0, (%rax,%rcx,4)	# tmp584, MEM[(unsigned int *)&next_juggles + ivtmp.520_179 * 4]
# items.c:1585:         for (i = POWER_SMALLEST; i < MAX_NUMBER_OF_SLAB_CLASSES; i++) {
	incq	%rcx	# ivtmp.520
	cmpq	$64, %rcx	#, ivtmp.520
	jne	.L842	#,
# items.c:1616:         if (settings.lru_segmented && lru_maintainer_bumps() && to_sleep > 1000) {
	movzbl	136+settings(%rip), %eax	# settings.lru_segmented, _19
	movl	-996(%rbp), %r13d	# %sfp, last_crawler_check
	movb	%al, -856(%rbp)	# _19, %sfp
# items.c:1616:         if (settings.lru_segmented && lru_maintainer_bumps() && to_sleep > 1000) {
	testb	%al, %al	# _19
	jne	.L969	#,
.L845:
# items.c:1621:         if (settings.lru_crawler && last_crawler_check != current_time) {
	movzbl	134+settings(%rip), %eax	# settings.lru_crawler, _21
	movb	%al, -880(%rbp)	# _21, %sfp
# items.c:1621:         if (settings.lru_crawler && last_crawler_check != current_time) {
	testb	%al, %al	# _21
	je	.L856	#,
# items.c:1621:         if (settings.lru_crawler && last_crawler_check != current_time) {
	movl	current_time(%rip), %eax	# current_time, current_time.107_22
# items.c:1621:         if (settings.lru_crawler && last_crawler_check != current_time) {
	cmpl	%eax, %r13d	# current_time.107_22, last_crawler_check
	je	.L856	#,
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:59:   return __builtin___memset_chk (__dest, __ch, __len,
	leaq	-320(%rbp), %rax	#, tmp524
	vpxor	%xmm0, %xmm0, %xmm0	# tmp480
# items.c:1525:             if (sizes[i] > tocrawl_limit) {
	movl	%ebx, -888(%rbp)	# to_sleep, %sfp
# items.c:1454:     bool do_run = false;
	movb	$0, -864(%rbp)	#, %sfp
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:59:   return __builtin___memset_chk (__dest, __ch, __len,
	movq	%rax, -872(%rbp)	# tmp524, %sfp
	vmovdqu	%ymm0, -320(%rbp)	# tmp480, MEM <char[1:256]> [(void *)&todo]
	vmovdqu	%ymm0, -288(%rbp)	# tmp480, MEM <char[1:256]> [(void *)&todo]
	movl	$1, %r13d	#, ivtmp.471
	vmovdqu	%ymm0, -256(%rbp)	# tmp480, MEM <char[1:256]> [(void *)&todo]
	vmovdqu	%ymm0, -224(%rbp)	# tmp480, MEM <char[1:256]> [(void *)&todo]
	vmovdqu	%ymm0, -192(%rbp)	# tmp480, MEM <char[1:256]> [(void *)&todo]
# items.c:1525:             if (sizes[i] > tocrawl_limit) {
	leaq	4+next_crawls.3(%rip), %r14	#, ivtmp.479
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:59:   return __builtin___memset_chk (__dest, __ch, __len,
	vmovdqu	%ymm0, -160(%rbp)	# tmp480, MEM <char[1:256]> [(void *)&todo]
	vmovdqu	%ymm0, -128(%rbp)	# tmp480, MEM <char[1:256]> [(void *)&todo]
	vmovdqu	%ymm0, -96(%rbp)	# tmp480, MEM <char[1:256]> [(void *)&todo]
# items.c:1525:             if (sizes[i] > tocrawl_limit) {
	leaq	4+next_crawl_wait.4(%rip), %r15	#, ivtmp.487
# items.c:1455:     unsigned int tocrawl_limit = 0;
	movl	$0, -856(%rbp)	#, %sfp
	movq	-952(%rbp), %rax	# %sfp, cdata
# items.c:1525:             if (sizes[i] > tocrawl_limit) {
	movq	-992(%rbp), %rbx	# %sfp, ivtmp.481
	leaq	536(%rax), %r12	#, ivtmp.489
	vzeroupper
	jmp	.L868	#
.L867:
# items.c:1458:     for (i = POWER_SMALLEST; i < POWER_LARGEST; i++) {
	incq	%r13	# ivtmp.471
	addq	$4, %r14	#, ivtmp.479
	addq	$40, %rbx	#, ivtmp.481
	addq	$4, %r15	#, ivtmp.487
	addq	$536, %r12	#, ivtmp.489
	cmpq	$256, %r13	#, ivtmp.471
	je	.L970	#,
.L868:
# items.c:1461:         if (s->run_complete) {
	cmpb	$0, 568(%r12)	#, MEM[(_Bool *)_120 + 568B]
	jne	.L971	#,
.L857:
# items.c:1523:         if (current_time > next_crawls[i]) {
	movl	current_time(%rip), %eax	# current_time, current_time.117_344
# items.c:1523:         if (current_time > next_crawls[i]) {
	cmpl	%eax, (%r14)	# current_time.117_344, MEM[(unsigned int *)_39]
	jnb	.L867	#,
# items.c:1524:             pthread_mutex_lock(&lru_locks[i]);
	movq	%rbx, %rdi	# ivtmp.481,
	call	pthread_mutex_lock@PLT	#
# items.c:1525:             if (sizes[i] > tocrawl_limit) {
	leaq	sizes(%rip), %rax	#, tmp722
	movl	-856(%rbp), %edx	# %sfp, tocrawl_limit
# items.c:1528:             pthread_mutex_unlock(&lru_locks[i]);
	movq	%rbx, %rdi	# ivtmp.481,
# items.c:1525:             if (sizes[i] > tocrawl_limit) {
	movl	(%rax,%r13,4), %eax	# MEM[(unsigned int *)&sizes + ivtmp.471_190 * 4], tmp597
	cmpl	%eax, %edx	# tmp597, tocrawl_limit
	cmovnb	%edx, %eax	# tocrawl_limit,, tmp597
	movl	%eax, -856(%rbp)	# tmp597, %sfp
# items.c:1528:             pthread_mutex_unlock(&lru_locks[i]);
	call	pthread_mutex_unlock@PLT	#
# items.c:1529:             todo[i] = 1;
	movq	-872(%rbp), %rax	# %sfp, tmp524
	movb	$1, (%rax,%r13)	#, MEM[(unsigned char *)&todo + ivtmp.471_190 * 1]
# items.c:1531:             next_crawls[i] = current_time + 5; // minimum retry wait.
	movl	current_time(%rip), %eax	# current_time, current_time.118_349
	addl	$5, %eax	#, tmp501
	movl	%eax, (%r14)	# tmp501, MEM[(unsigned int *)_39]
# items.c:1530:             do_run = true;
	movzbl	-880(%rbp), %eax	# %sfp, _21
	movb	%al, -864(%rbp)	# _21, %sfp
	jmp	.L867	#
.L800:
# items.c:1586:             next_juggles[i] = next_juggles[i] > last_sleep ? next_juggles[i] - last_sleep : 0;
	vpsubd	-976(%rbp), %xmm0, %xmm0	# %sfp, tmp580, tmp584
# items.c:1590:                 if (next_juggles[i] < to_sleep)
	vpminud	-912(%rbp), %xmm0, %xmm2	# %sfp, tmp584, tmp581
	vmovd	%xmm2, -912(%rbp)	# tmp581, %sfp
	vmovd	%xmm2, %ebx	# tmp581, to_sleep
# items.c:1592:                 continue;
	jmp	.L803	#
.L967:
# items.c:1425:             do_more += lru_pull_tail(slabs_clsid, COLD_LRU, total_bytes, LRU_PULL_CRAWL_BLOCKS, 0, NULL);
	movl	$2, %edx	#,
	movq	%r12, %rsi	# total_bytes,
	movl	%ebx, %edi	# i,
	call	lru_pull_tail.constprop.0	#
# items.c:1427:         if (do_more == 0)
	testl	%eax, %eax	# _119
	jne	.L829	#,
	jmp	.L832	#
.L801:
# items.c:1089:     id |= cur_lru;
	movl	%ecx, %r10d	# ivtmp.520, id
# items.c:1090:     pthread_mutex_lock(&lru_locks[id]);
	leaq	lru_locks(%rip), %rdi	#, tmp667
# items.c:1382:         for (i = 0; i < 500; i++) {
	movl	$0, -872(%rbp)	#, %sfp
# items.c:1132:             itemstats[id].reclaimed++;
	movb	%dl, -880(%rbp)	# _86, %sfp
# items.c:1089:     id |= cur_lru;
	orb	$-64, %r10b	#, id
# items.c:1132:             itemstats[id].reclaimed++;
	movq	%rcx, -960(%rbp)	# ivtmp.520, %sfp
	movl	%ebx, -944(%rbp)	# i, %sfp
# items.c:1090:     pthread_mutex_lock(&lru_locks[id]);
	movslq	%r10d, %r10	# id, id
# items.c:1132:             itemstats[id].reclaimed++;
	imulq	$168, %r10, %r12	#, id, tmp562
# items.c:1090:     pthread_mutex_lock(&lru_locks[id]);
	leaq	(%r10,%r10,4), %rax	#, _37
# items.c:1132:             itemstats[id].reclaimed++;
	movq	%r10, -896(%rbp)	# id, %sfp
# items.c:1090:     pthread_mutex_lock(&lru_locks[id]);
	leaq	(%rdi,%rax,8), %rdi	#, _129
# items.c:1132:             itemstats[id].reclaimed++;
	leaq	itemstats(%rip), %rax	#, tmp668
	movq	%rdi, -888(%rbp)	# _129, %sfp
	addq	%rax, %r12	# tmp668, tmp563
	jmp	.L822	#
	.p2align 4
	.p2align 3
.L811:
# items.c:1232:     pthread_mutex_unlock(&lru_locks[id]);
	movq	-888(%rbp), %rdi	# %sfp,
	movq	%rcx, %r15	# hold_lock, hold_lock
	call	pthread_mutex_unlock@PLT	#
# items.c:540:     assert((it->it_flags & ITEM_SLABBED) == 0);
	testb	$4, 38(%rbx)	#, search_248->it_flags
	jne	.L972	#,
# items.c:541:     assert(it->refcount > 0);
	movzwl	36(%rbx), %eax	# search_248->refcount, _273
	testw	%ax, %ax	# _273
	je	.L820	#,
# items.c:543:     if (refcount_decr(it) == 0) {
	decl	%eax	# _274
# items.c:543:     if (refcount_decr(it) == 0) {
	movw	%ax, 36(%rbx)	# _274, search_248->refcount
	testw	%ax, %ax	# _274
	je	.L973	#,
.L821:
# items.c:1242:             item_trylock_unlock(hold_lock);
	movq	%r15, %rdi	# hold_lock,
	call	item_trylock_unlock@PLT	#
# items.c:1383:             if (lru_pull_tail(slabs_clsid, TEMP_LRU, 0, 0, 0, NULL) <= 0) {
	movl	-864(%rbp), %eax	# %sfp,
	testl	%eax, %eax	#
	je	.L952	#,
.L976:
# items.c:1386:                 did_moves++;
	incl	-872(%rbp)	# %sfp
# items.c:1382:         for (i = 0; i < 500; i++) {
	cmpl	$500, -872(%rbp)	#, %sfp
	je	.L952	#,
.L822:
# items.c:1090:     pthread_mutex_lock(&lru_locks[id]);
	movq	-888(%rbp), %rdi	# %sfp,
	call	pthread_mutex_lock@PLT	#
# items.c:1091:     search = tails[id];
	movq	-896(%rbp), %rdx	# %sfp, id
	leaq	tails(%rip), %rax	#, tmp669
	movq	(%rax,%rdx,8), %r14	# tails[id_128], next_it
# items.c:1093:     for (; tries > 0 && search != NULL; tries--, search=next_it) {
	testq	%r14, %r14	# next_it
	je	.L804	#,
# items.c:1081:     int tries = 5;
	movq	%r14, %r13	# next_it, next_it
# items.c:1077:     int removed = 0;
	movl	$0, -864(%rbp)	#, %sfp
# items.c:1081:     int tries = 5;
	movl	$5, %r14d	#, tries
	.p2align 4
	.p2align 3
.L816:
	movq	%r13, %rbx	# next_it, search
# items.c:1095:         next_it = search->prev;
	movq	8(%r13), %r13	# search_136->prev, next_it
# items.c:1096:         if (search->nbytes == 0 && search->nkey == 0 && search->it_flags == 1) {
	movl	32(%rbx), %edx	# search_248->nbytes,
# items.c:1096:         if (search->nbytes == 0 && search->nkey == 0 && search->it_flags == 1) {
	movzbl	41(%rbx), %esi	# search_248->nkey,
# items.c:1096:         if (search->nbytes == 0 && search->nkey == 0 && search->it_flags == 1) {
	movzwl	38(%rbx), %eax	# search_248->it_flags, pretmp_62
# items.c:1096:         if (search->nbytes == 0 && search->nkey == 0 && search->it_flags == 1) {
	testl	%edx, %edx	#
	jne	.L805	#,
# items.c:1096:         if (search->nbytes == 0 && search->nkey == 0 && search->it_flags == 1) {
	testb	%sil, %sil	# pretmp_63
	jne	.L805	#,
# items.c:1096:         if (search->nbytes == 0 && search->nkey == 0 && search->it_flags == 1) {
	cmpw	$1, %ax	#, pretmp_62
	je	.L876	#,
	.p2align 4
	.p2align 3
.L805:
# items.c:1105:         uint32_t hv = hash(ITEM_key(search), search->nkey);
	leaq	0(,%rax,4), %rax	#, _145
	andl	$8, %eax	#, _146
# items.c:1105:         uint32_t hv = hash(ITEM_key(search), search->nkey);
	leaq	48(%rbx,%rax), %rdi	#, _147
	call	*hash(%rip)	# hash
# items.c:1108:         if ((hold_lock = item_trylock(hv)) == NULL)
	movl	%eax, %edi	# hv,
# items.c:1105:         uint32_t hv = hash(ITEM_key(search), search->nkey);
	movl	%eax, %r15d	#, hv
# items.c:1108:         if ((hold_lock = item_trylock(hv)) == NULL)
	call	item_trylock@PLT	#
	movq	%rax, %rcx	#, hold_lock
# items.c:1108:         if ((hold_lock = item_trylock(hv)) == NULL)
	testq	%rax, %rax	# hold_lock
	je	.L957	#,
# items.c:1111:         if (refcount_incr(search) != 2) {
	movzwl	36(%rbx), %eax	# search_248->refcount, tmp671
	incl	%eax	# _151
# items.c:1111:         if (refcount_incr(search) != 2) {
	movw	%ax, 36(%rbx)	# _151, search_248->refcount
	cmpw	$2, %ax	#, _151
	je	.L808	#,
# items.c:1117:             if (settings.tail_repair_time &&
	movl	180+settings(%rip), %eax	# settings.tail_repair_time, _154
# items.c:1114:             itemstats[id].lrutail_reflocked++;
	incq	80(%r12)	# itemstats[id_128].lrutail_reflocked
# items.c:1117:             if (settings.tail_repair_time &&
	testl	%eax, %eax	# _154
	je	.L808	#,
# items.c:1118:                     search->time + settings.tail_repair_time < current_time) {
	addl	24(%rbx), %eax	# search_248->time, _157
# items.c:1118:                     search->time + settings.tail_repair_time < current_time) {
	movl	current_time(%rip), %esi	# current_time, current_time.88_158
# items.c:1117:             if (settings.tail_repair_time &&
	cmpl	%esi, %eax	# current_time.88_158, _157
	jb	.L974	#,
.L808:
# items.c:1130:         if ((search->exptime != 0 && search->exptime < current_time)
	movl	28(%rbx), %eax	# search_248->exptime, _162
# items.c:1130:         if ((search->exptime != 0 && search->exptime < current_time)
	testl	%eax, %eax	# _162
	je	.L809	#,
# items.c:1130:         if ((search->exptime != 0 && search->exptime < current_time)
	movl	current_time(%rip), %esi	# current_time, current_time.90_163
# items.c:1130:         if ((search->exptime != 0 && search->exptime < current_time)
	cmpl	%esi, %eax	# current_time.90_163, _162
	jb	.L810	#,
.L809:
# items.c:118:     rel_time_t oldest_live = settings.oldest_live;
	movl	36+settings(%rip), %eax	# settings.oldest_live, oldest_live
# items.c:119:     if (it->time <= oldest_live && oldest_live <= current_time)
	cmpl	24(%rbx), %eax	# search_248->time, oldest_live
	jb	.L811	#,
# items.c:119:     if (it->time <= oldest_live && oldest_live <= current_time)
	movl	current_time(%rip), %esi	# current_time, current_time.1_166
# items.c:119:     if (it->time <= oldest_live && oldest_live <= current_time)
	cmpl	%eax, %esi	# oldest_live, current_time.1_166
	jb	.L811	#,
.L810:
# items.c:1132:             itemstats[id].reclaimed++;
	incq	16(%r12)	# itemstats[id_128].reclaimed
# items.c:1133:             if ((search->it_flags & ITEM_FETCHED) == 0) {
	testb	$8, 38(%rbx)	#, search_248->it_flags
	jne	.L812	#,
# items.c:1134:                 itemstats[id].expired_unfetched++;
	incq	40(%r12)	# itemstats[id_128].expired_unfetched
.L812:
# items.c:1137:             do_item_unlink_nolock(search, hv);
	movl	%r15d, %esi	# hv,
	movq	%rbx, %rdi	# search,
	movq	%rcx, -856(%rbp)	# hold_lock, %sfp
	call	do_item_unlink_nolock	#
# items.c:1138:             STORAGE_delete(ext_storage, search);
	movq	%rbx, %rsi	# search,
	movq	ext_storage(%rip), %rdi	# ext_storage,
	call	storage_delete@PLT	#
# items.c:540:     assert((it->it_flags & ITEM_SLABBED) == 0);
	testb	$4, 38(%rbx)	#, search_248->it_flags
	jne	.L849	#,
# items.c:541:     assert(it->refcount > 0);
	movzwl	36(%rbx), %eax	# search_248->refcount, _263
	movq	-856(%rbp), %rcx	# %sfp, hold_lock
	testw	%ax, %ax	# _263
	je	.L820	#,
# items.c:543:     if (refcount_decr(it) == 0) {
	decl	%eax	# _264
# items.c:543:     if (refcount_decr(it) == 0) {
	movw	%ax, 36(%rbx)	# _264, search_248->refcount
	testw	%ax, %ax	# _264
	je	.L975	#,
.L815:
# items.c:1141:             item_trylock_unlock(hold_lock);
	movq	%rcx, %rdi	# hold_lock,
	call	item_trylock_unlock@PLT	#
# items.c:1142:             removed++;
	incl	-864(%rbp)	# %sfp
# items.c:1093:     for (; tries > 0 && search != NULL; tries--, search=next_it) {
	decl	%r14d	# tries
	setne	%al	#, prephitmp_259
.L806:
# items.c:1093:     for (; tries > 0 && search != NULL; tries--, search=next_it) {
	testq	%r13, %r13	# next_it
	je	.L818	#,
	testb	%al, %al	# prephitmp_259
	jne	.L816	#,
.L818:
# items.c:1232:     pthread_mutex_unlock(&lru_locks[id]);
	movq	-888(%rbp), %rdi	# %sfp,
	call	pthread_mutex_unlock@PLT	#
# items.c:1383:             if (lru_pull_tail(slabs_clsid, TEMP_LRU, 0, 0, 0, NULL) <= 0) {
	movl	-864(%rbp), %eax	# %sfp,
	testl	%eax, %eax	#
	jne	.L976	#,
.L952:
# items.c:1395:     if (settings.lru_segmented) {
	cmpb	$0, 136+settings(%rip)	#, settings.lru_segmented
	movq	-960(%rbp), %rcx	# %sfp, ivtmp.520
	movl	-944(%rbp), %ebx	# %sfp, i
	je	.L877	#,
.L964:
# items.c:1396:         pthread_mutex_lock(&lru_locks[slabs_clsid|COLD_LRU]);
	movl	%ebx, %r14d	# i, _91
# items.c:1396:         pthread_mutex_lock(&lru_locks[slabs_clsid|COLD_LRU]);
	leaq	lru_locks(%rip), %rdx	#, tmp680
	movq	%rcx, -864(%rbp)	# ivtmp.520, %sfp
# items.c:1391:     rel_time_t cold_age = 0;
	xorl	%r13d, %r13d	#
# items.c:1396:         pthread_mutex_lock(&lru_locks[slabs_clsid|COLD_LRU]);
	orb	$-128, %r14b	#, _91
# items.c:1396:         pthread_mutex_lock(&lru_locks[slabs_clsid|COLD_LRU]);
	movslq	%r14d, %r14	# _91, _91
	leaq	(%r14,%r14,4), %rax	#, _377
	leaq	(%rdx,%rax,8), %rdi	#, _92
	movq	%rdi, -856(%rbp)	# _92, %sfp
	call	pthread_mutex_lock@PLT	#
# items.c:1397:         if (tails[slabs_clsid|COLD_LRU]) {
	leaq	tails(%rip), %rax	#, tmp681
# items.c:1397:         if (tails[slabs_clsid|COLD_LRU]) {
	movq	-856(%rbp), %rdi	# %sfp, _92
# items.c:1397:         if (tails[slabs_clsid|COLD_LRU]) {
	movq	(%rax,%r14,8), %rax	# tails[_91], _93
# items.c:1397:         if (tails[slabs_clsid|COLD_LRU]) {
	movq	-864(%rbp), %rcx	# %sfp, ivtmp.520
	testq	%rax, %rax	# _93
	je	.L824	#,
# items.c:1398:             cold_age = current_time - tails[slabs_clsid|COLD_LRU]->time;
	movl	current_time(%rip), %r13d	# current_time, current_time.111_94
# items.c:1398:             cold_age = current_time - tails[slabs_clsid|COLD_LRU]->time;
	subl	24(%rax), %r13d	# _93->time,
.L824:
# items.c:1401:         total_bytes += sizes_bytes[slabs_clsid|COLD_LRU];
	leaq	sizes_bytes(%rip), %r12	#, tmp431
	movq	%rcx, -864(%rbp)	# ivtmp.520, %sfp
	movq	(%r12,%r14,8), %rsi	# sizes_bytes[_91], _97
	movq	%rsi, -896(%rbp)	# _97, %sfp
# items.c:1402:         pthread_mutex_unlock(&lru_locks[slabs_clsid|COLD_LRU]);
	call	pthread_mutex_unlock@PLT	#
# items.c:1404:         hot_age = cold_age * settings.hot_max_factor;
	leaq	settings(%rip), %rax	#, tmp683
	vxorpd	%xmm1, %xmm1, %xmm1	# tmp682
	vcvtsi2sdq	%r13, %xmm1, %xmm0	# cold_age, tmp682, tmp579
	vmulsd	216(%rax), %xmm0, %xmm1	# settings.hot_max_factor, _99, _101
# items.c:1405:         warm_age = cold_age * settings.warm_max_factor;
	vmulsd	224(%rax), %xmm0, %xmm0	# settings.warm_max_factor, _99, _104
# items.c:1408:         pthread_mutex_lock(&lru_locks[slabs_clsid|HOT_LRU]);
	movq	-936(%rbp), %r15	# %sfp, ivtmp.526
	movq	%r15, %rdi	# ivtmp.526,
# items.c:1404:         hot_age = cold_age * settings.hot_max_factor;
	vcvttsd2siq	%xmm1, %r13	# _101, hot_age
# items.c:1405:         warm_age = cold_age * settings.warm_max_factor;
	vcvttsd2siq	%xmm0, %rax	# _104, tmp685
	movq	%rax, -856(%rbp)	# tmp685, %sfp
# items.c:1408:         pthread_mutex_lock(&lru_locks[slabs_clsid|HOT_LRU]);
	call	pthread_mutex_lock@PLT	#
# items.c:1409:         total_bytes += sizes_bytes[slabs_clsid|HOT_LRU];
	movq	-864(%rbp), %rcx	# %sfp, ivtmp.520
# items.c:1410:         pthread_mutex_unlock(&lru_locks[slabs_clsid|HOT_LRU]);
	movq	%r15, %rdi	# ivtmp.526,
# items.c:1409:         total_bytes += sizes_bytes[slabs_clsid|HOT_LRU];
	movq	(%r12,%rcx,8), %r14	# MEM[(long unsigned int *)&sizes_bytes + ivtmp.520_179 * 8], _107
	movq	%rcx, -888(%rbp)	# ivtmp.520, %sfp
# items.c:1410:         pthread_mutex_unlock(&lru_locks[slabs_clsid|HOT_LRU]);
	call	pthread_mutex_unlock@PLT	#
# items.c:1412:         pthread_mutex_lock(&lru_locks[slabs_clsid|WARM_LRU]);
	movl	%ebx, %edx	# i, _109
	orl	$64, %edx	#, _109
# items.c:1412:         pthread_mutex_lock(&lru_locks[slabs_clsid|WARM_LRU]);
	movslq	%edx, %rdx	# _109, _122
	leaq	(%rdx,%rdx,4), %rax	#, _325
	movq	%rdx, -880(%rbp)	# _122, %sfp
	leaq	lru_locks(%rip), %rdx	#, tmp687
	leaq	(%rdx,%rax,8), %rdi	#, _110
	movq	%rdi, -864(%rbp)	# _110, %sfp
	call	pthread_mutex_lock@PLT	#
# items.c:1413:         total_bytes += sizes_bytes[slabs_clsid|WARM_LRU];
	movq	-880(%rbp), %rdx	# %sfp, _122
	movq	-896(%rbp), %rsi	# %sfp, _97
# items.c:1414:         pthread_mutex_unlock(&lru_locks[slabs_clsid|WARM_LRU]);
	movq	-864(%rbp), %rdi	# %sfp, _110
# items.c:1413:         total_bytes += sizes_bytes[slabs_clsid|WARM_LRU];
	addq	(%r12,%rdx,8), %rsi	# sizes_bytes[_109], _448
	leaq	(%rsi,%r14), %r12	#, total_bytes
# items.c:1414:         pthread_mutex_unlock(&lru_locks[slabs_clsid|WARM_LRU]);
	call	pthread_mutex_unlock@PLT	#
	movq	-888(%rbp), %rcx	# %sfp, ivtmp.520
	jmp	.L823	#
	.p2align 4
	.p2align 3
.L974:
# items.c:1122:                 STORAGE_delete(ext_storage, search);
	movq	ext_storage(%rip), %rdi	# ext_storage,
# items.c:1119:                 itemstats[id].tailrepairs++;
	incq	32(%r12)	# itemstats[id_128].tailrepairs
# items.c:1122:                 STORAGE_delete(ext_storage, search);
	movq	%rbx, %rsi	# search,
# items.c:1120:                 search->refcount = 1;
	movw	$1, 36(%rbx)	#, search_248->refcount
	movq	%rcx, -856(%rbp)	# hold_lock, %sfp
# items.c:1122:                 STORAGE_delete(ext_storage, search);
	call	storage_delete@PLT	#
# items.c:1123:                 do_item_unlink_nolock(search, hv);
	movq	%rbx, %rdi	# search,
	movl	%r15d, %esi	# hv,
	call	do_item_unlink_nolock	#
# items.c:1124:                 item_trylock_unlock(hold_lock);
	movq	-856(%rbp), %rdi	# %sfp,
	call	item_trylock_unlock@PLT	#
.L957:
# items.c:1093:     for (; tries > 0 && search != NULL; tries--, search=next_it) {
	decl	%r14d	# tries
	setne	%al	#, prephitmp_259
# items.c:1125:                 continue;
	jmp	.L806	#
	.p2align 4
	.p2align 3
.L876:
	movzbl	-880(%rbp), %eax	# %sfp, prephitmp_259
	jmp	.L806	#
	.p2align 4
	.p2align 3
.L975:
# items.c:544:         item_free(it);
	movq	%rbx, %rdi	# search,
	movq	%rcx, -856(%rbp)	# hold_lock, %sfp
	call	item_free	#
	movq	-856(%rbp), %rcx	# %sfp, hold_lock
	jmp	.L815	#
.L973:
	movq	%rbx, %rdi	# search,
	call	item_free	#
	jmp	.L821	#
.L839:
# items.c:1606:                 if (backoff_juggles[i] < MIN_LRU_MAINTAINER_SLEEP) {
	cmpl	$1999, %eax	#, pretmp_177
# items.c:1605:                 backoff_juggles[i] /= 2;
	vpsrld	$1, %xmm0, %xmm0	#, tmp583, tmp584
# items.c:1607:                     backoff_juggles[i] = 0;
	movq	-920(%rbp), %rax	# %sfp, ivtmp.524
# items.c:1606:                 if (backoff_juggles[i] < MIN_LRU_MAINTAINER_SLEEP) {
	jbe	.L840	#,
# items.c:1611:             if (next_juggles[i] < to_sleep)
	vpminud	-912(%rbp), %xmm0, %xmm5	# %sfp, tmp584, tmp581
# items.c:1605:                 backoff_juggles[i] /= 2;
	vmovd	%xmm0, (%rax)	# tmp584, MEM[(unsigned int *)_369]
# items.c:1611:             if (next_juggles[i] < to_sleep)
	vmovd	%xmm5, -912(%rbp)	# tmp581, %sfp
	vmovd	%xmm5, %ebx	# tmp581, to_sleep
	jmp	.L803	#
.L836:
	vmovdqa	.LC80(%rip), %xmm0	#, tmp595
	movq	-920(%rbp), %rax	# %sfp, ivtmp.524
	vpminud	-912(%rbp), %xmm0, %xmm6	# %sfp, tmp595, tmp581
	movl	$1000, (%rax)	#, MEM[(unsigned int *)_185]
	vmovd	%xmm6, -912(%rbp)	# tmp581, %sfp
	vmovd	%xmm6, %ebx	# tmp581, to_sleep
	jmp	.L803	#
.L804:
# items.c:1232:     pthread_mutex_unlock(&lru_locks[id]);
	movq	-960(%rbp), %rcx	# %sfp, ivtmp.520
	movq	-888(%rbp), %rdi	# %sfp, _129
	movl	-944(%rbp), %ebx	# %sfp, i
	movq	%rcx, -856(%rbp)	# ivtmp.520, %sfp
	call	pthread_mutex_unlock@PLT	#
	movq	-856(%rbp), %rcx	# %sfp, ivtmp.520
	jmp	.L802	#
.L971:
# items.c:1463:             pthread_mutex_lock(&cdata->lock);
	movq	-952(%rbp), %rdi	# %sfp,
	movl	%r13d, -896(%rbp)	# ivtmp.471, %sfp
	call	pthread_mutex_lock@PLT	#
# items.c:1466:             uint64_t possible_reclaims = s->seen - s->noexp;
	movq	552(%r12), %rsi	# MEM[(long unsigned int *)_120 + 552B], _301
# items.c:1471:             uint64_t low_watermark = (possible_reclaims / 100) + 1;
	movabsq	$2951479051793528259, %rax	#, tmp598
# items.c:1467:             uint64_t available_reclaims = 0;
	xorl	%r8d, %r8d	# available_reclaims
# items.c:1472:             rel_time_t since_run = current_time - s->end_time;
	movl	current_time(%rip), %r10d	# current_time, current_time.113_306
# items.c:1472:             rel_time_t since_run = current_time - s->end_time;
	movl	564(%r12), %edi	# MEM[(unsigned int *)_120 + 564B], _307
# items.c:1467:             uint64_t available_reclaims = 0;
	movl	-896(%rbp), %ecx	# %sfp, i
# items.c:1466:             uint64_t possible_reclaims = s->seen - s->noexp;
	movq	%rsi, %rdx	# _301, possible_reclaims_303
	subq	536(%r12), %rdx	# MEM[(long unsigned int *)_120 + 536B], possible_reclaims_303
# items.c:1471:             uint64_t low_watermark = (possible_reclaims / 100) + 1;
	shrq	$2, %rdx	#, tmp485
	mulq	%rdx	# tmp485
	shrq	$2, %rdx	#, _304
# items.c:1471:             uint64_t low_watermark = (possible_reclaims / 100) + 1;
	leaq	1(%rdx), %r9	#, low_watermark
# items.c:1472:             rel_time_t since_run = current_time - s->end_time;
	xorl	%edx, %edx	# ivtmp.462
	jmp	.L862	#
.L858:
# items.c:1474:             for (x = 0; x < 60; x++) {
	incq	%rdx	# ivtmp.462
	cmpq	$60, %rdx	#, ivtmp.462
	je	.L977	#,
.L862:
# items.c:1475:                 available_reclaims += s->histo[x];
	movq	40(%r12,%rdx,8), %rax	# MEM[(long unsigned int *)_120 + 40B + ivtmp.462_180 * 8], available_reclaims
	addq	%r8, %rax	# available_reclaims, available_reclaims
	movq	%rax, %r8	# available_reclaims_312, available_reclaims
# items.c:1476:                 if (available_reclaims > low_watermark) {
	cmpq	%rax, %r9	# available_reclaims, low_watermark
	jnb	.L858	#,
# items.c:1477:                     if (next_crawl_wait[i] < (x * 60)) {
	movl	(%r15), %r11d	# MEM[(unsigned int *)_16], pretmp_176
# items.c:1477:                     if (next_crawl_wait[i] < (x * 60)) {
	imull	$60, %edx, %edx	#, ivtmp.462, _314
# items.c:1477:                     if (next_crawl_wait[i] < (x * 60)) {
	cmpl	%edx, %r11d	# _314, pretmp_176
	jnb	.L859	#,
# items.c:1478:                         next_crawl_wait[i] += 60;
	addl	$60, %r11d	#, pretmp_176
	movl	%r11d, (%r15)	# pretmp_176, MEM[(unsigned int *)_16]
.L863:
# items.c:1494:             next_crawls[i] = current_time + next_crawl_wait[i] + 5;
	movl	current_time(%rip), %edx	# current_time, current_time.114_324
# items.c:1494:             next_crawls[i] = current_time + next_crawl_wait[i] + 5;
	leal	5(%r11,%rdx), %edx	#, _326
# items.c:1495:             switch (GET_LRU(i)) {
	movl	%ecx, %r11d	# i, _327
	andl	$192, %r11d	#, _327
# items.c:1494:             next_crawls[i] = current_time + next_crawl_wait[i] + 5;
	movl	%edx, (%r14)	# _326, MEM[(unsigned int *)_31]
# items.c:1495:             switch (GET_LRU(i)) {
	cmpl	$128, %r11d	#, _327
	je	.L880	#,
	jg	.L865	#,
# items.c:1500:                     lru_name = "warm";
	testl	%r11d, %r11d	# _327
# items.c:1495:             switch (GET_LRU(i)) {
	leaq	.LC73(%rip), %r8	#, lru_name
# items.c:1500:                     lru_name = "warm";
	leaq	.LC72(%rip), %r11	#, tmp717
	cmovne	%r11, %r8	# lru_name,, tmp717, lru_name
.L864:
# items.c:1509:             LOGGER_LOG(l, LOG_SYSEVENTS, LOGGER_CRAWLER_STATUS, NULL,
	movq	-984(%rbp), %r11	# %sfp, l
	testb	$2, 84(%r11)	#, l_49->eflags
	jne	.L978	#,
.L866:
# items.c:1521:             pthread_mutex_unlock(&cdata->lock);
	movq	-952(%rbp), %rdi	# %sfp,
# items.c:1520:             s->run_complete = false;
	movb	$0, 568(%r12)	#, MEM[(_Bool *)_120 + 568B]
# items.c:1521:             pthread_mutex_unlock(&cdata->lock);
	call	pthread_mutex_unlock@PLT	#
	jmp	.L857	#
.L840:
# items.c:1607:                     backoff_juggles[i] = 0;
	movl	$0, (%rax)	#, MEM[(unsigned int *)_369]
	jmp	.L841	#
.L978:
# items.c:1509:             LOGGER_LOG(l, LOG_SYSEVENTS, LOGGER_CRAWLER_STATUS, NULL,
	movl	current_time(%rip), %r11d	# current_time, current_time.116_339
	pushq	544(%r12)	# MEM[(long unsigned int *)_120 + 544B]
	pushq	%rsi	# _301
	movl	%edi, %esi	# _307, _337
	subl	560(%r12), %esi	# MEM[(unsigned int *)_120 + 560B], _337
	andb	$63, %cl	#, _341
	subl	%r11d, %edx	# current_time.116_339, _340
	pushq	%rsi	# _337
	pushq	%rdx	# _340
# items.c:1472:             rel_time_t since_run = current_time - s->end_time;
	movl	%r10d, %edx	# current_time.113_306, current_time.113_306
# items.c:1509:             LOGGER_LOG(l, LOG_SYSEVENTS, LOGGER_CRAWLER_STATUS, NULL,
	movl	$4, %esi	#,
# items.c:1472:             rel_time_t since_run = current_time - s->end_time;
	subl	%edi, %edx	# _307, current_time.113_306
# items.c:1509:             LOGGER_LOG(l, LOG_SYSEVENTS, LOGGER_CRAWLER_STATUS, NULL,
	movq	-984(%rbp), %rdi	# %sfp,
	pushq	%rdx	# since_run_308
	xorl	%edx, %edx	#
	pushq	%rax	# available_reclaims_312
	xorl	%eax, %eax	#
	call	logger_log@PLT	#
	addq	$48, %rsp	#,
	jmp	.L866	#
.L859:
# items.c:1479:                     } else if (next_crawl_wait[i] >= 60) {
	cmpl	$59, %r11d	#, pretmp_176
	jbe	.L863	#,
# items.c:1480:                         next_crawl_wait[i] -= 60;
	subl	$60, %r11d	#, pretmp_176
	movl	%r11d, (%r15)	# pretmp_176,* ivtmp.487
.L861:
# items.c:1490:             if (next_crawl_wait[i] > MAX_MAINTCRAWL_WAIT) {
	cmpl	$3600, %r11d	#, pretmp_176
	jbe	.L863	#,
# items.c:1491:                 next_crawl_wait[i] = MAX_MAINTCRAWL_WAIT;
	movl	$3600, (%r15)	#, MEM[(unsigned int *)_28]
	movl	$3600, %r11d	#, pretmp_176
	jmp	.L863	#
.L865:
# items.c:1462:             char *lru_name = "na";
	cmpl	$192, %r11d	#, _327
# items.c:1506:                     lru_name = "temp";
	leaq	.LC75(%rip), %r8	#, lru_name
# items.c:1462:             char *lru_name = "na";
	leaq	.LC71(%rip), %r11	#, tmp718
	cmovne	%r11, %r8	# lru_name,, tmp718, lru_name
	jmp	.L864	#
.L880:
# items.c:1503:                     lru_name = "cold";
	leaq	.LC74(%rip), %r8	#, lru_name
	jmp	.L864	#
.L977:
# items.c:1477:                     if (next_crawl_wait[i] < (x * 60)) {
	movl	(%r15), %r11d	# MEM[(unsigned int *)_14], pretmp_176
# items.c:1486:             if (available_reclaims == 0) {
	testq	%rax, %rax	# available_reclaims
	jne	.L861	#,
# items.c:1487:                 next_crawl_wait[i] += 60;
	addl	$60, %r11d	#, pretmp_176
	movl	%r11d, (%r15)	# pretmp_176,* ivtmp.487
	jmp	.L861	#
.L970:
# items.c:1534:     if (do_run) {
	cmpb	$0, -864(%rbp)	#, %sfp
	movl	-888(%rbp), %ebx	# %sfp, to_sleep
	je	.L869	#,
# items.c:1535:         if (settings.lru_crawler_tocrawl && settings.lru_crawler_tocrawl < tocrawl_limit) {
	movl	-856(%rbp), %ecx	# %sfp, tocrawl_limit
# items.c:1535:         if (settings.lru_crawler_tocrawl && settings.lru_crawler_tocrawl < tocrawl_limit) {
	movl	204+settings(%rip), %eax	# settings.lru_crawler_tocrawl, _353
# items.c:1538:         lru_crawler_start(todo, tocrawl_limit, CRAWLER_AUTOEXPIRE, cdata, NULL, 0);
	movq	-872(%rbp), %rdi	# %sfp,
# items.c:1535:         if (settings.lru_crawler_tocrawl && settings.lru_crawler_tocrawl < tocrawl_limit) {
	cmpl	%eax, %ecx	# _353, tocrawl_limit
	movl	%ecx, %edx	# tocrawl_limit, tmp539
	cmova	%eax, %edx	# tmp539,, _353, tmp539
	testl	%eax, %eax	# _353
	cmove	%ecx, %edx	# tmp539,, tocrawl_limit, tmp539
# items.c:1538:         lru_crawler_start(todo, tocrawl_limit, CRAWLER_AUTOEXPIRE, cdata, NULL, 0);
	movq	-952(%rbp), %rcx	# %sfp,
	xorl	%r9d, %r9d	#
	xorl	%r8d, %r8d	#
# items.c:1535:         if (settings.lru_crawler_tocrawl && settings.lru_crawler_tocrawl < tocrawl_limit) {
	movl	%edx, %esi	# tmp539, tocrawl_limit
# items.c:1538:         lru_crawler_start(todo, tocrawl_limit, CRAWLER_AUTOEXPIRE, cdata, NULL, 0);
	xorl	%edx, %edx	#
	call	lru_crawler_start@PLT	#
.L869:
# items.c:1623:             last_crawler_check = current_time;
	movl	current_time(%rip), %r13d	# current_time, last_crawler_check
.L856:
# items.c:1571:     while (do_run_lru_maintainer_thread) {
	movl	do_run_lru_maintainer_thread(%rip), %eax	# do_run_lru_maintainer_thread, do_run_lru_maintainer_thread.108_23
	testl	%eax, %eax	# do_run_lru_maintainer_thread.108_23
	jne	.L871	#,
.L798:
# items.c:1626:     pthread_mutex_unlock(&lru_maintainer_lock);
	leaq	lru_maintainer_lock(%rip), %rdi	#,
	call	pthread_mutex_unlock@PLT	#
# items.c:1628:     free(cdata);
	movq	-952(%rbp), %rdi	# %sfp,
	call	free@PLT	#
# items.c:1629:     if (settings.verbose > 2)
	cmpl	$2, 32+settings(%rip)	#, settings.verbose
	jg	.L979	#,
.L872:
# items.c:1633: }
	movq	-56(%rbp), %rax	# D.14139, tmp599
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp599
	jne	.L980	#,
	leaq	-48(%rbp), %rsp	#,
	xorl	%eax, %eax	#
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
.L969:
	.cfi_restore_state
# items.c:1321:     pthread_mutex_lock(&bump_buf_lock);
	leaq	bump_buf_lock(%rip), %rdi	#,
	call	pthread_mutex_lock@PLT	#
# items.c:1322:     for (b = bump_buf_head; b != NULL; b=b->next) {
	movq	bump_buf_head(%rip), %r12	# bump_buf_head, b
# items.c:1322:     for (b = bump_buf_head; b != NULL; b=b->next) {
	testq	%r12, %r12	# b
	je	.L846	#,
	leaq	-836(%rbp), %rax	#, tmp517
	movl	%ebx, -872(%rbp)	# to_sleep, %sfp
	xorl	%edx, %edx	# bumped
	movq	%rax, -864(%rbp)	# tmp517, %sfp
.L853:
# items.c:1323:         pthread_mutex_lock(&b->mutex);
	leaq	16(%r12), %r15	#, _277
	movb	%dl, -880(%rbp)	# bumped, %sfp
	movq	%r15, %rdi	# _277,
	call	pthread_mutex_lock@PLT	#
# items.c:1324:         be = (lru_bump_entry *) bipbuf_peek_all(b->buf, &size);
	movq	56(%r12), %rdi	# b_229->buf, b_229->buf
	movq	-864(%rbp), %rsi	# %sfp,
	call	bipbuf_peek_all@PLT	#
# items.c:1325:         pthread_mutex_unlock(&b->mutex);
	movq	%r15, %rdi	# _277,
# items.c:1324:         be = (lru_bump_entry *) bipbuf_peek_all(b->buf, &size);
	movq	%rax, %rbx	#, be
# items.c:1325:         pthread_mutex_unlock(&b->mutex);
	call	pthread_mutex_unlock@PLT	#
# items.c:1327:         if (be == NULL) {
	movzbl	-880(%rbp), %edx	# %sfp, bumped
	testq	%rbx, %rbx	# be
	je	.L847	#,
# items.c:1330:         todo = size;
	movl	-836(%rbp), %edx	# size, todo
# items.c:1333:         while (todo) {
	leal	(%rdx,%rbx), %r14d	#, _209
	testl	%edx, %edx	# todo
	jne	.L848	#,
	jmp	.L852	#
.L850:
# items.c:1337:             item_unlock(be->hv);
	movl	8(%rbx), %edi	# MEM[(unsigned int *)be_220 + 8B], MEM[(unsigned int *)be_220 + 8B]
# items.c:1338:             be++;
	addq	$16, %rbx	#, be
# items.c:1337:             item_unlock(be->hv);
	call	item_unlock@PLT	#
# items.c:1333:         while (todo) {
	cmpl	%ebx, %r14d	# be, _209
	je	.L852	#,
.L848:
# items.c:1334:             item_lock(be->hv);
	movl	8(%rbx), %edi	# MEM[(unsigned int *)be_220 + 8B], MEM[(unsigned int *)be_220 + 8B]
	call	item_lock@PLT	#
# items.c:1335:             do_item_update(be->it);
	movq	(%rbx), %rdi	# MEM[(struct item * *)be_220], MEM[(struct item * *)be_220]
	call	do_item_update	#
# items.c:1336:             do_item_remove(be->it);
	movq	(%rbx), %rdi	# MEM[(struct item * *)be_220], _284
# items.c:540:     assert((it->it_flags & ITEM_SLABBED) == 0);
	testb	$4, 38(%rdi)	#, _284->it_flags
	jne	.L849	#,
# items.c:541:     assert(it->refcount > 0);
	movzwl	36(%rdi), %eax	# _284->refcount, _296
	testw	%ax, %ax	# _296
	je	.L820	#,
# items.c:543:     if (refcount_decr(it) == 0) {
	decl	%eax	# _297
# items.c:543:     if (refcount_decr(it) == 0) {
	movw	%ax, 36(%rdi)	# _297, _284->refcount
	testw	%ax, %ax	# _297
	jne	.L850	#,
# items.c:544:         item_free(it);
	call	item_free	#
	jmp	.L850	#
.L852:
# items.c:1342:         pthread_mutex_lock(&b->mutex);
	movq	%r15, %rdi	# _277,
	call	pthread_mutex_lock@PLT	#
# items.c:1343:         be = (lru_bump_entry *) bipbuf_poll(b->buf, size);
	movq	56(%r12), %rdi	# b_229->buf, b_229->buf
	movl	-836(%rbp), %esi	# size,
	call	bipbuf_poll@PLT	#
# items.c:1344:         pthread_mutex_unlock(&b->mutex);
	movq	%r15, %rdi	# _277,
	call	pthread_mutex_unlock@PLT	#
# items.c:1331:         bumped = true;
	movzbl	-856(%rbp), %edx	# %sfp, bumped
.L847:
# items.c:1322:     for (b = bump_buf_head; b != NULL; b=b->next) {
	movq	8(%r12), %r12	# b_229->next, b
# items.c:1322:     for (b = bump_buf_head; b != NULL; b=b->next) {
	testq	%r12, %r12	# b
	jne	.L853	#,
	movl	-872(%rbp), %ebx	# %sfp, to_sleep
# items.c:1346:     pthread_mutex_unlock(&bump_buf_lock);
	leaq	bump_buf_lock(%rip), %rdi	#,
	movl	%edx, %r14d	# bumped, bumped
	call	pthread_mutex_unlock@PLT	#
# items.c:1616:         if (settings.lru_segmented && lru_maintainer_bumps() && to_sleep > 1000) {
	cmpl	$1000, %ebx	#, to_sleep
	jbe	.L845	#,
# items.c:1617:             to_sleep = 1000;
	testb	%r14b, %r14b	# bumped
	movl	$1000, %eax	#, tmp526
	cmovne	%eax, %ebx	# to_sleep,, tmp526, to_sleep
	vmovd	%ebx, %xmm4	# to_sleep, tmp707
	vmovdqa	%xmm4, -912(%rbp)	# tmp707, %sfp
	jmp	.L845	#
.L963:
# items.c:1574:             usleep(to_sleep);
	movl	%ebx, %edi	# to_sleep,
	call	usleep@PLT	#
	jmp	.L799	#
.L979:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:111:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	stderr(%rip), %rcx	# stderr,
	movl	$31, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC79(%rip), %rdi	#,
	call	fwrite@PLT	#
	jmp	.L872	#
.L846:
# items.c:1346:     pthread_mutex_unlock(&bump_buf_lock);
	leaq	bump_buf_lock(%rip), %rdi	#,
	call	pthread_mutex_unlock@PLT	#
	jmp	.L845	#
.L962:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:111:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	stderr(%rip), %rcx	# stderr,
	movl	$42, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC78(%rip), %rdi	#,
	call	fwrite@PLT	#
	jmp	.L797	#
.L960:
	movq	stderr(%rip), %rcx	# stderr,
	movl	$58, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC76(%rip), %rdi	#,
	call	fwrite@PLT	#
# items.c:1558:         abort();
	call	abort@PLT	#
.L980:
# items.c:1633: }
	call	__stack_chk_fail@PLT	#
.L968:
# items.c:1611:             if (next_juggles[i] < to_sleep)
	vpminud	-912(%rbp), %xmm0, %xmm6	# %sfp, tmp584, tmp581
	vmovd	%xmm0, (%rax)	# tmp584, MEM[(unsigned int *)_185]
	vmovd	%xmm6, -912(%rbp)	# tmp581, %sfp
	vmovd	%xmm6, %ebx	# tmp581, to_sleep
	jmp	.L803	#
.L961:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:111:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	stderr(%rip), %rcx	# stderr,
	movl	$52, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC77(%rip), %rdi	#,
	call	fwrite@PLT	#
# items.c:1565:         abort();
	call	abort@PLT	#
.L972:
	jmp	.L849	#
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.type	lru_maintainer_thread.cold, @function
lru_maintainer_thread.cold:
.LFSB131:
.L849:
	.cfi_def_cfa 6, 16
	.cfi_offset 3, -64
	.cfi_offset 6, -16
	.cfi_offset 10, -56
	.cfi_offset 12, -48
	.cfi_offset 13, -40
	.cfi_offset 14, -32
	.cfi_offset 15, -24
# items.c:540:     assert((it->it_flags & ITEM_SLABBED) == 0);
	leaq	__PRETTY_FUNCTION__.9(%rip), %rcx	#,
	movl	$540, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC1(%rip), %rdi	#,
	call	__assert_fail@PLT	#
.L820:
	call	do_item_remove.part.0	#
	.cfi_endproc
.LFE131:
	.text
	.size	lru_maintainer_thread, .-lru_maintainer_thread
	.section	.text.unlikely
	.size	lru_maintainer_thread.cold, .-lru_maintainer_thread.cold
.LCOLDE82:
	.text
.LHOTE82:
	.section	.rodata.str1.1
.LC83:
	.string	"b != bump_buf_head"
	.section	.text.unlikely
.LCOLDB84:
	.text
.LHOTB84:
	.p2align 4
	.globl	item_lru_bump_buf_create
	.type	item_lru_bump_buf_create, @function
item_lru_bump_buf_create:
.LFB125:
	.cfi_startproc
	endbr64	
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
# items.c:1269:     lru_bump_buf *b = calloc(1, sizeof(lru_bump_buf));
	movl	$72, %esi	#,
	movl	$1, %edi	#,
	call	calloc@PLT	#
# items.c:1270:     if (b == NULL) {
	testq	%rax, %rax	# <retval>
	je	.L982	#,
# items.c:1274:     b->buf = bipbuf_new(sizeof(lru_bump_entry) * LRU_BUMP_BUF_SIZE);
	movl	$131072, %edi	#,
	movq	%rax, %rbx	# <retval>, <retval>
	call	bipbuf_new@PLT	#
# items.c:1274:     b->buf = bipbuf_new(sizeof(lru_bump_entry) * LRU_BUMP_BUF_SIZE);
	movq	%rax, 56(%rbx)	# _1, b_8->buf
# items.c:1275:     if (b->buf == NULL) {
	testq	%rax, %rax	# _1
	je	.L996	#,
# items.c:1280:     pthread_mutex_init(&b->mutex, NULL);
	leaq	16(%rbx), %rdi	#, _3
	xorl	%esi, %esi	#
	call	pthread_mutex_init@PLT	#
# items.c:1256:     pthread_mutex_lock(&bump_buf_lock);
	leaq	bump_buf_lock(%rip), %rdi	#,
	call	pthread_mutex_lock@PLT	#
# items.c:1257:     assert(b != bump_buf_head);
	movq	bump_buf_head(%rip), %rax	# bump_buf_head, bump_buf_head.96_14
	cmpq	%rax, %rbx	# bump_buf_head.96_14, <retval>
	je	.L994	#,
# items.c:1259:     b->prev = 0;
	movq	$0, (%rbx)	#, b_8->prev
# items.c:1260:     b->next = bump_buf_head;
	movq	%rax, 8(%rbx)	# bump_buf_head.96_14, b_8->next
# items.c:1261:     if (b->next) b->next->prev = b;
	testq	%rax, %rax	# bump_buf_head.96_14
	je	.L986	#,
# items.c:1261:     if (b->next) b->next->prev = b;
	movq	%rbx, (%rax)	# <retval>, MEM[(struct _lru_bump_buf *)bump_buf_head.96_14].prev
.L986:
# items.c:1263:     if (bump_buf_tail == 0) bump_buf_tail = b;
	cmpq	$0, bump_buf_tail(%rip)	#, bump_buf_tail
# items.c:1262:     bump_buf_head = b;
	movq	%rbx, bump_buf_head(%rip)	# <retval>, bump_buf_head
# items.c:1263:     if (bump_buf_tail == 0) bump_buf_tail = b;
	je	.L997	#,
.L987:
# items.c:1264:     pthread_mutex_unlock(&bump_buf_lock);
	leaq	bump_buf_lock(%rip), %rdi	#,
	call	pthread_mutex_unlock@PLT	#
.L981:
# items.c:1284: }
	movq	%rbx, %rax	# <retval>,
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4
	.p2align 3
.L997:
	.cfi_restore_state
# items.c:1263:     if (bump_buf_tail == 0) bump_buf_tail = b;
	movq	%rbx, bump_buf_tail(%rip)	# <retval>, bump_buf_tail
	jmp	.L987	#
	.p2align 4
	.p2align 3
.L996:
# items.c:1276:         free(b);
	movq	%rbx, %rdi	# <retval>,
	call	free@PLT	#
.L982:
# items.c:1271:         return NULL;
	xorl	%ebx, %ebx	# <retval>
	jmp	.L981	#
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.type	item_lru_bump_buf_create.cold, @function
item_lru_bump_buf_create.cold:
.LFSB125:
.L994:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
# items.c:1257:     assert(b != bump_buf_head);
	leaq	__PRETTY_FUNCTION__.5(%rip), %rcx	#,
	movl	$1257, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC83(%rip), %rdi	#,
	call	__assert_fail@PLT	#
	.cfi_endproc
.LFE125:
	.text
	.size	item_lru_bump_buf_create, .-item_lru_bump_buf_create
	.section	.text.unlikely
	.size	item_lru_bump_buf_create.cold, .-item_lru_bump_buf_create.cold
.LCOLDE84:
	.text
.LHOTE84:
	.section	.rodata.str1.8
	.align 8
.LC85:
	.string	"Failed to stop LRU maintainer thread: %s\n"
	.text
	.p2align 4
	.globl	stop_lru_maintainer_thread
	.type	stop_lru_maintainer_thread, @function
stop_lru_maintainer_thread:
.LFB132:
	.cfi_startproc
	endbr64	
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
# items.c:1637:     pthread_mutex_lock(&lru_maintainer_lock);
	leaq	lru_maintainer_lock(%rip), %rdi	#,
	call	pthread_mutex_lock@PLT	#
# items.c:1640:     pthread_mutex_unlock(&lru_maintainer_lock);
	leaq	lru_maintainer_lock(%rip), %rdi	#,
# items.c:1639:     do_run_lru_maintainer_thread = 0;
	movl	$0, do_run_lru_maintainer_thread(%rip)	#, do_run_lru_maintainer_thread
# items.c:1640:     pthread_mutex_unlock(&lru_maintainer_lock);
	call	pthread_mutex_unlock@PLT	#
# items.c:1641:     if ((ret = pthread_join(lru_maintainer_tid, NULL)) != 0) {
	xorl	%esi, %esi	#
	movq	lru_maintainer_tid(%rip), %rdi	# lru_maintainer_tid,
	call	pthread_join@PLT	#
# items.c:1641:     if ((ret = pthread_join(lru_maintainer_tid, NULL)) != 0) {
	testl	%eax, %eax	# <retval>
	jne	.L1002	#,
# items.c:1645:     settings.lru_maintainer_thread = false;
	movb	$0, 135+settings(%rip)	#, settings.lru_maintainer_thread
.L998:
# items.c:1647: }
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret	
.L1002:
	.cfi_restore_state
# items.c:1642:         fprintf(stderr, "Failed to stop LRU maintainer thread: %s\n", strerror(ret));
	movl	%eax, %edi	# <retval>,
	call	strerror@PLT	#
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:111:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	stderr(%rip), %rdi	# stderr,
	leaq	.LC85(%rip), %rdx	#,
	movl	$2, %esi	#,
	movq	%rax, %rcx	# _2,
	xorl	%eax, %eax	#
	call	__fprintf_chk@PLT	#
# items.c:1643:         return -1;
	movl	$-1, %eax	#, <retval>
	jmp	.L998	#
	.cfi_endproc
.LFE132:
	.size	stop_lru_maintainer_thread, .-stop_lru_maintainer_thread
	.section	.rodata.str1.8
	.align 8
.LC86:
	.string	"Can't create LRU maintainer thread: %s\n"
	.section	.rodata.str1.1
.LC87:
	.string	"mc-lrumaint"
	.text
	.p2align 4
	.globl	start_lru_maintainer_thread
	.type	start_lru_maintainer_thread, @function
start_lru_maintainer_thread:
.LFB133:
	.cfi_startproc
	endbr64	
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
# items.c:1649: int start_lru_maintainer_thread(void *arg) {
	movq	%rdi, %rbx	# arg, arg
# items.c:1652:     pthread_mutex_lock(&lru_maintainer_lock);
	leaq	lru_maintainer_lock(%rip), %rdi	#,
	call	pthread_mutex_lock@PLT	#
# items.c:1655:     if ((ret = pthread_create(&lru_maintainer_tid, NULL,
	movq	%rbx, %rcx	# arg,
	leaq	lru_maintainer_thread(%rip), %rdx	#,
	xorl	%esi, %esi	#
	leaq	lru_maintainer_tid(%rip), %rdi	#,
# items.c:1653:     do_run_lru_maintainer_thread = 1;
	movl	$1, do_run_lru_maintainer_thread(%rip)	#, do_run_lru_maintainer_thread
# items.c:1654:     settings.lru_maintainer_thread = true;
	movb	$1, 135+settings(%rip)	#, settings.lru_maintainer_thread
# items.c:1655:     if ((ret = pthread_create(&lru_maintainer_tid, NULL,
	call	pthread_create@PLT	#
	movl	%eax, %ebx	# <retval>, <retval>
# items.c:1655:     if ((ret = pthread_create(&lru_maintainer_tid, NULL,
	testl	%eax, %eax	# <retval>
	jne	.L1007	#,
# items.c:1662:     thread_setname(lru_maintainer_tid, "mc-lrumaint");
	movq	lru_maintainer_tid(%rip), %rdi	# lru_maintainer_tid,
	leaq	.LC87(%rip), %rsi	#,
	call	thread_setname@PLT	#
# items.c:1663:     pthread_mutex_unlock(&lru_maintainer_lock);
	leaq	lru_maintainer_lock(%rip), %rdi	#,
	call	pthread_mutex_unlock@PLT	#
.L1003:
# items.c:1666: }
	movl	%ebx, %eax	# <retval>,
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4
	.p2align 3
.L1007:
	.cfi_restore_state
# items.c:1657:         fprintf(stderr, "Can't create LRU maintainer thread: %s\n",
	movl	%eax, %edi	# <retval>,
# items.c:1660:         return -1;
	movl	$-1, %ebx	#, <retval>
# items.c:1657:         fprintf(stderr, "Can't create LRU maintainer thread: %s\n",
	call	strerror@PLT	#
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:111:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	stderr(%rip), %rdi	# stderr,
	leaq	.LC86(%rip), %rdx	#,
	movl	$2, %esi	#,
	movq	%rax, %rcx	# _1,
	xorl	%eax, %eax	#
	call	__fprintf_chk@PLT	#
# items.c:1659:         pthread_mutex_unlock(&lru_maintainer_lock);
	leaq	lru_maintainer_lock(%rip), %rdi	#,
	call	pthread_mutex_unlock@PLT	#
# items.c:1660:         return -1;
	jmp	.L1003	#
	.cfi_endproc
.LFE133:
	.size	start_lru_maintainer_thread, .-start_lru_maintainer_thread
	.p2align 4
	.globl	lru_maintainer_pause
	.type	lru_maintainer_pause, @function
lru_maintainer_pause:
.LFB134:
	.cfi_startproc
	endbr64	
# items.c:1670:     pthread_mutex_lock(&lru_maintainer_lock);
	leaq	lru_maintainer_lock(%rip), %rdi	#,
	jmp	pthread_mutex_lock@PLT	#
	.cfi_endproc
.LFE134:
	.size	lru_maintainer_pause, .-lru_maintainer_pause
	.p2align 4
	.globl	lru_maintainer_resume
	.type	lru_maintainer_resume, @function
lru_maintainer_resume:
.LFB135:
	.cfi_startproc
	endbr64	
# items.c:1674:     pthread_mutex_unlock(&lru_maintainer_lock);
	leaq	lru_maintainer_lock(%rip), %rdi	#,
	jmp	pthread_mutex_unlock@PLT	#
	.cfi_endproc
.LFE135:
	.size	lru_maintainer_resume, .-lru_maintainer_resume
	.section	.rodata.str1.1
.LC88:
	.string	"it->it_flags == 1"
.LC89:
	.string	"it->nbytes == 0"
.LC90:
	.string	"it != *tail"
.LC91:
	.string	"it->prev->next == 0"
	.section	.text.unlikely
.LCOLDB92:
	.text
.LHOTB92:
	.p2align 4
	.globl	do_item_linktail_q
	.type	do_item_linktail_q, @function
do_item_linktail_q:
.LFB136:
	.cfi_startproc
	endbr64	
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
# items.c:1680:     assert(it->it_flags == 1);
	cmpw	$1, 38(%rdi)	#, it_12(D)->it_flags
	jne	.L1021	#,
# items.c:1681:     assert(it->nbytes == 0);
	movl	32(%rdi), %eax	# it_12(D)->nbytes,
	testl	%eax, %eax	#
	jne	.L1022	#,
# items.c:1686:     assert(it != *tail);
	movzbl	40(%rdi), %eax	# it_12(D)->slabs_clsid, _4
	leaq	tails(%rip), %rsi	#, tmp134
	movq	(%rsi,%rax,8), %rdx	# MEM <struct item *[256]> [(struct item * *)&tails][_4], _5
	cmpq	%rdi, %rdx	# it, _5
	je	.L1023	#,
# items.c:1687:     assert((*head && *tail) || (*head == 0 && *tail == 0));
	leaq	heads(%rip), %rcx	#, tmp135
	cmpq	$0, (%rcx,%rax,8)	#, MEM <struct item *[256]> [(struct item * *)&heads][_4]
	je	.L1014	#,
# items.c:1687:     assert((*head && *tail) || (*head == 0 && *tail == 0));
	testq	%rdx, %rdx	# _5
	je	.L1027	#,
# items.c:1689:     it->next = 0;
	movq	$0, (%rdi)	#, it_12(D)->next
# items.c:1691:         assert(it->prev->next == 0);
	cmpq	$0, (%rdx)	#, MEM[(struct _stritem *)_5].next
# items.c:1688:     it->prev = *tail;
	movq	%rdx, 8(%rdi)	# _5, it_12(D)->prev
# items.c:1691:         assert(it->prev->next == 0);
	jne	.L1024	#,
# items.c:1692:         it->prev->next = it;
	movq	%rdi, (%rdx)	# it, MEM[(struct _stritem *)_5].next
# items.c:1695:     if (*head == 0) *head = it;
	cmpq	$0, (%rcx,%rax,8)	#, MEM <struct item *[256]> [(struct item * *)&heads][_4]
# items.c:1694:     *tail = it;
	movq	%rdi, (%rsi,%rax,8)	# it, MEM <struct item *[256]> [(struct item * *)&tails][_4]
# items.c:1695:     if (*head == 0) *head = it;
	je	.L1028	#,
.L1025:
# items.c:1697: }
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4
	.p2align 3
.L1027:
	.cfi_restore_state
	jmp	.L1016	#
	.p2align 4
	.p2align 3
.L1014:
# items.c:1687:     assert((*head && *tail) || (*head == 0 && *tail == 0));
	testq	%rdx, %rdx	# _5
	jne	.L1016	#,
# items.c:1689:     it->next = 0;
	vpxor	%xmm0, %xmm0, %xmm0	# tmp123
# items.c:1694:     *tail = it;
	movq	%rdi, (%rsi,%rax,8)	# it, MEM <struct item *[256]> [(struct item * *)&tails][_4]
# items.c:1689:     it->next = 0;
	vmovdqu	%xmm0, (%rdi)	# tmp123, MEM <vector(2) long unsigned int> [(struct _stritem * *)it_12(D)]
# items.c:1695:     if (*head == 0) *head = it;
	cmpq	$0, (%rcx,%rax,8)	#, MEM <struct item *[256]> [(struct item * *)&heads][_4]
	jne	.L1025	#,
.L1028:
# items.c:1695:     if (*head == 0) *head = it;
	movq	%rdi, (%rcx,%rax,8)	# it, MEM <struct item *[256]> [(struct item * *)&heads][_4]
# items.c:1697: }
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 8
	ret	
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.type	do_item_linktail_q.cold, @function
do_item_linktail_q.cold:
.LFSB136:
.L1016:
	.cfi_def_cfa_offset 16
# items.c:1687:     assert((*head && *tail) || (*head == 0 && *tail == 0));
	leaq	__PRETTY_FUNCTION__.2(%rip), %rcx	#,
	movl	$1687, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC3(%rip), %rdi	#,
	call	__assert_fail@PLT	#
.L1023:
# items.c:1686:     assert(it != *tail);
	leaq	__PRETTY_FUNCTION__.2(%rip), %rcx	#,
	movl	$1686, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC90(%rip), %rdi	#,
	call	__assert_fail@PLT	#
.L1024:
# items.c:1691:         assert(it->prev->next == 0);
	leaq	__PRETTY_FUNCTION__.2(%rip), %rcx	#,
	movl	$1691, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC91(%rip), %rdi	#,
	call	__assert_fail@PLT	#
.L1022:
# items.c:1681:     assert(it->nbytes == 0);
	leaq	__PRETTY_FUNCTION__.2(%rip), %rcx	#,
	movl	$1681, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC89(%rip), %rdi	#,
	call	__assert_fail@PLT	#
.L1021:
# items.c:1680:     assert(it->it_flags == 1);
	leaq	__PRETTY_FUNCTION__.2(%rip), %rcx	#,
	movl	$1680, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC88(%rip), %rdi	#,
	call	__assert_fail@PLT	#
	.cfi_endproc
.LFE136:
	.text
	.size	do_item_linktail_q, .-do_item_linktail_q
	.section	.text.unlikely
	.size	do_item_linktail_q.cold, .-do_item_linktail_q.cold
.LCOLDE92:
	.text
.LHOTE92:
	.section	.text.unlikely
.LCOLDB93:
	.text
.LHOTB93:
	.p2align 4
	.globl	do_item_unlinktail_q
	.type	do_item_unlinktail_q, @function
do_item_unlinktail_q:
.LFB137:
	.cfi_startproc
	endbr64	
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
# items.c:1704:     if (*head == it) {
	movzbl	40(%rdi), %ecx	# it_17(D)->slabs_clsid, _2
	leaq	heads(%rip), %rax	#, tmp107
# items.c:1704:     if (*head == it) {
	cmpq	%rdi, (%rax,%rcx,8)	# it, MEM <struct item *[256]> [(struct item * *)&heads][_2]
	je	.L1050	#,
# items.c:1708:     if (*tail == it) {
	leaq	tails(%rip), %rsi	#, tmp114
# items.c:1709:         assert(it->next == 0);
	movq	(%rdi), %rdx	# it_17(D)->next, pretmp_32
# items.c:1708:     if (*tail == it) {
	cmpq	%rdi, (%rsi,%rcx,8)	# it, MEM <struct item *[256]> [(struct item * *)&tails][_2]
	je	.L1051	#,
.L1032:
# items.c:1712:     assert(it->next != it);
	cmpq	%rdx, %rdi	# pretmp_32, it
	je	.L1047	#,
# items.c:1710:         *tail = it->prev;
	movq	8(%rdi), %rax	# it_17(D)->prev, pretmp_30
# items.c:1713:     assert(it->prev != it);
	cmpq	%rdi, %rax	# it, pretmp_30
	je	.L1035	#,
# items.c:1715:     if (it->next) it->next->prev = it->prev;
	testq	%rdx, %rdx	# pretmp_32
	je	.L1034	#,
# items.c:1715:     if (it->next) it->next->prev = it->prev;
	movq	%rax, 8(%rdx)	# pretmp_30, pretmp_32->prev
# items.c:1716:     if (it->prev) it->prev->next = it->next;
	movq	8(%rdi), %rax	# it_17(D)->prev, pretmp_30
.L1034:
# items.c:1716:     if (it->prev) it->prev->next = it->next;
	testq	%rax, %rax	# pretmp_30
	je	.L1048	#,
# items.c:1716:     if (it->prev) it->prev->next = it->next;
	movq	%rdx, (%rax)	# pretmp_32, prephitmp_31->next
.L1048:
# items.c:1718: }
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4
	.p2align 3
.L1050:
	.cfi_restore_state
# items.c:1705:         assert(it->prev == 0);
	cmpq	$0, 8(%rdi)	#, it_17(D)->prev
	jne	.L1045	#,
# items.c:1706:         *head = it->next;
	movq	(%rdi), %rdx	# it_17(D)->next, _5
# items.c:1708:     if (*tail == it) {
	leaq	tails(%rip), %rsi	#, tmp114
# items.c:1706:         *head = it->next;
	movq	%rdx, (%rax,%rcx,8)	# _5, MEM <struct item *[256]> [(struct item * *)&heads][_2]
# items.c:1709:         assert(it->next == 0);
	movq	(%rdi), %rdx	# it_17(D)->next, pretmp_32
# items.c:1708:     if (*tail == it) {
	cmpq	%rdi, (%rsi,%rcx,8)	# it, MEM <struct item *[256]> [(struct item * *)&tails][_2]
	jne	.L1032	#,
.L1051:
# items.c:1709:         assert(it->next == 0);
	testq	%rdx, %rdx	# pretmp_32
	jne	.L1046	#,
# items.c:1710:         *tail = it->prev;
	movq	8(%rdi), %rax	# it_17(D)->prev, pretmp_30
# items.c:1710:         *tail = it->prev;
	movq	%rax, (%rsi,%rcx,8)	# pretmp_30, MEM <struct item *[256]> [(struct item * *)&tails][_2]
# items.c:1713:     assert(it->prev != it);
	cmpq	%rdi, %rax	# it, pretmp_30
	jne	.L1034	#,
	jmp	.L1035	#
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.type	do_item_unlinktail_q.cold, @function
do_item_unlinktail_q.cold:
.LFSB137:
.L1045:
	.cfi_def_cfa_offset 16
# items.c:1705:         assert(it->prev == 0);
	leaq	__PRETTY_FUNCTION__.1(%rip), %rcx	#,
	movl	$1705, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC5(%rip), %rdi	#,
	call	__assert_fail@PLT	#
.L1046:
# items.c:1709:         assert(it->next == 0);
	leaq	__PRETTY_FUNCTION__.1(%rip), %rcx	#,
	movl	$1709, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC6(%rip), %rdi	#,
	call	__assert_fail@PLT	#
.L1035:
# items.c:1713:     assert(it->prev != it);
	leaq	__PRETTY_FUNCTION__.1(%rip), %rcx	#,
	movl	$1713, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC8(%rip), %rdi	#,
	call	__assert_fail@PLT	#
.L1047:
# items.c:1712:     assert(it->next != it);
	leaq	__PRETTY_FUNCTION__.1(%rip), %rcx	#,
	movl	$1712, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC7(%rip), %rdi	#,
	call	__assert_fail@PLT	#
	.cfi_endproc
.LFE137:
	.text
	.size	do_item_unlinktail_q, .-do_item_unlinktail_q
	.section	.text.unlikely
	.size	do_item_unlinktail_q.cold, .-do_item_unlinktail_q.cold
.LCOLDE93:
	.text
.LHOTE93:
	.section	.rodata.str1.1
.LC94:
	.string	"*head == it"
.LC95:
	.string	"it->next->prev == it"
.LC96:
	.string	"it->prev->next == it"
	.section	.text.unlikely
.LCOLDB97:
	.text
.LHOTB97:
	.p2align 4
	.globl	do_item_crawl_q
	.type	do_item_crawl_q, @function
do_item_crawl_q:
.LFB138:
	.cfi_startproc
	endbr64	
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
# items.c:1724:     assert(it->it_flags == 1);
	cmpw	$1, 38(%rdi)	#, it_29(D)->it_flags
	jne	.L1072	#,
# items.c:1725:     assert(it->nbytes == 0);
	movl	32(%rdi), %eax	# it_29(D)->nbytes,
	testl	%eax, %eax	#
	jne	.L1073	#,
# items.c:1730:     if (it->prev == 0) {
	movq	8(%rdi), %rax	# it_29(D)->prev, <retval>
# items.c:1726:     head = &heads[it->slabs_clsid];
	movzbl	40(%rdi), %edx	# it_29(D)->slabs_clsid,
# items.c:1730:     if (it->prev == 0) {
	testq	%rax, %rax	# <retval>
	je	.L1081	#,
# items.c:1742:     assert(it->prev != it);
	cmpq	%rdi, %rax	# it, <retval>
	je	.L1076	#,
# items.c:1744:         if (*head == it->prev) {
	leaq	heads(%rip), %rcx	#, tmp136
# items.c:1744:         if (*head == it->prev) {
	cmpq	(%rcx,%rdx,8), %rax	# MEM <struct item *[256]> [(struct item * *)&heads][_4], <retval>
	je	.L1082	#,
# items.c:1748:         if (*tail == it) {
	leaq	tails(%rip), %rax	#, tmp140
# items.c:1748:         if (*tail == it) {
	cmpq	%rdi, (%rax,%rdx,8)	# it, MEM <struct item *[256]> [(struct item * *)&tails][_4]
	je	.L1083	#,
.L1061:
# items.c:1752:         assert(it->next != it);
	movq	(%rdi), %rdx	# it_29(D)->next, _12
	cmpq	%rdi, %rdx	# it, _12
	je	.L1077	#,
# items.c:1750:             *tail = it->prev;
	movq	8(%rdi), %rax	# it_29(D)->prev, <retval>
# items.c:1753:         if (it->next) {
	testq	%rdx, %rdx	# _12
	je	.L1063	#,
# items.c:1754:             assert(it->prev->next == it);
	cmpq	%rdi, (%rax)	# it, pretmp_51->next
	jne	.L1078	#,
# items.c:1755:             it->prev->next = it->next;
	movq	%rdx, (%rax)	# _12, pretmp_51->next
# items.c:1756:             it->next->prev = it->prev;
	movq	%rax, 8(%rdx)	# <retval>, _12->prev
# items.c:1762:         it->next = it->prev;
	movq	8(%rdi), %rax	# it_29(D)->prev, <retval>
.L1065:
# items.c:1762:         it->next = it->prev;
	vmovq	%rax, %xmm1	# <retval>, <retval>
	vpinsrq	$1, 8(%rax), %xmm1, %xmm0	# prephitmp_26->prev, <retval>, _15
	vmovdqu	%xmm0, (%rdi)	# _15, MEM <vector(2) long unsigned int> [(struct _stritem * *)it_29(D)]
# items.c:1764:         it->next->prev = it;
	movq	%rdi, 8(%rax)	# it, prephitmp_26->prev
# items.c:1766:         if (it->prev) {
	movq	8(%rdi), %rdx	# it_29(D)->prev, _18
# items.c:1766:         if (it->prev) {
	testq	%rdx, %rdx	# _18
	je	.L1084	#,
# items.c:1767:             it->prev->next = it;
	movq	%rdi, (%rdx)	# it, _18->next
# items.c:1770:     assert(it->next != it);
	movq	(%rdi), %rax	# it_29(D)->next, <retval>
	cmpq	%rdi, %rax	# it, <retval>
	je	.L1068	#,
# items.c:1771:     assert(it->prev != it);
	cmpq	%rdi, %rdx	# it, _18
	je	.L1079	#,
.L1052:
# items.c:1774: }
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4
	.p2align 3
.L1083:
	.cfi_restore_state
# items.c:1750:             *tail = it->prev;
	movq	8(%rdi), %rcx	# it_29(D)->prev, it_29(D)->prev
	movq	%rcx, (%rax,%rdx,8)	# it_29(D)->prev, MEM <struct item *[256]> [(struct item * *)&tails][_4]
	jmp	.L1061	#
	.p2align 4
	.p2align 3
.L1063:
# items.c:1759:             it->prev->next = 0;
	movq	$0, (%rax)	#, pretmp_51->next
	jmp	.L1065	#
	.p2align 4
	.p2align 3
.L1082:
# items.c:1748:         if (*tail == it) {
	leaq	tails(%rip), %rax	#, tmp140
# items.c:1746:             *head = it;
	movq	%rdi, (%rcx,%rdx,8)	# it, MEM <struct item *[256]> [(struct item * *)&heads][_4]
# items.c:1748:         if (*tail == it) {
	cmpq	%rdi, (%rax,%rdx,8)	# it, MEM <struct item *[256]> [(struct item * *)&tails][_4]
	jne	.L1061	#,
	jmp	.L1083	#
	.p2align 4
	.p2align 3
.L1081:
# items.c:1731:         assert(*head == it);
	leaq	heads(%rip), %rsi	#, tmp123
	cmpq	%rdi, (%rsi,%rdx,8)	# it, MEM <struct item *[256]> [(struct item * *)&heads][_4]
	jne	.L1074	#,
# items.c:1732:         if (it->next) {
	movq	(%rdi), %rcx	# it_29(D)->next, _7
# items.c:1732:         if (it->next) {
	testq	%rcx, %rcx	# _7
	je	.L1052	#,
# items.c:1733:             *head = it->next;
	movq	%rcx, (%rsi,%rdx,8)	# _7, MEM <struct item *[256]> [(struct item * *)&heads][_4]
# items.c:1734:             assert(it->next->prev == it);
	cmpq	%rdi, 8(%rcx)	# it, _7->prev
	jne	.L1075	#,
# items.c:1735:             it->next->prev = 0;
	movq	$0, 8(%rcx)	#, _7->prev
# items.c:1774: }
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4
	.p2align 3
.L1084:
	.cfi_restore_state
# items.c:1770:     assert(it->next != it);
	cmpq	%rdi, %rax	# it, <retval>
	je	.L1068	#,
# items.c:1774: }
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 8
	ret	
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.type	do_item_crawl_q.cold, @function
do_item_crawl_q.cold:
.LFSB138:
.L1078:
	.cfi_def_cfa_offset 16
# items.c:1754:             assert(it->prev->next == it);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rcx	#,
	movl	$1754, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC96(%rip), %rdi	#,
	call	__assert_fail@PLT	#
.L1068:
# items.c:1770:     assert(it->next != it);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rcx	#,
	movl	$1770, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC7(%rip), %rdi	#,
	call	__assert_fail@PLT	#
.L1079:
# items.c:1771:     assert(it->prev != it);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rcx	#,
	movl	$1771, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC8(%rip), %rdi	#,
	call	__assert_fail@PLT	#
.L1074:
# items.c:1731:         assert(*head == it);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rcx	#,
	movl	$1731, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC94(%rip), %rdi	#,
	call	__assert_fail@PLT	#
.L1075:
# items.c:1734:             assert(it->next->prev == it);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rcx	#,
	movl	$1734, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC95(%rip), %rdi	#,
	call	__assert_fail@PLT	#
.L1073:
# items.c:1725:     assert(it->nbytes == 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rcx	#,
	movl	$1725, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC89(%rip), %rdi	#,
	call	__assert_fail@PLT	#
.L1077:
# items.c:1752:         assert(it->next != it);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rcx	#,
	movl	$1752, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC7(%rip), %rdi	#,
	call	__assert_fail@PLT	#
.L1072:
# items.c:1724:     assert(it->it_flags == 1);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rcx	#,
	movl	$1724, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC88(%rip), %rdi	#,
	call	__assert_fail@PLT	#
.L1076:
# items.c:1742:     assert(it->prev != it);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rcx	#,
	movl	$1742, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC8(%rip), %rdi	#,
	call	__assert_fail@PLT	#
	.cfi_endproc
.LFE138:
	.text
	.size	do_item_crawl_q, .-do_item_crawl_q
	.section	.text.unlikely
	.size	do_item_crawl_q.cold, .-do_item_crawl_q.cold
.LCOLDE97:
	.text
.LHOTE97:
	.section	.rodata
	.align 16
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 16
__PRETTY_FUNCTION__.0:
	.string	"do_item_crawl_q"
	.align 16
	.type	__PRETTY_FUNCTION__.1, @object
	.size	__PRETTY_FUNCTION__.1, 21
__PRETTY_FUNCTION__.1:
	.string	"do_item_unlinktail_q"
	.align 16
	.type	__PRETTY_FUNCTION__.2, @object
	.size	__PRETTY_FUNCTION__.2, 19
__PRETTY_FUNCTION__.2:
	.string	"do_item_linktail_q"
	.local	next_crawls.3
	.comm	next_crawls.3,1024,32
	.local	next_crawl_wait.4
	.comm	next_crawl_wait.4,1024,32
	.align 16
	.type	__PRETTY_FUNCTION__.5, @object
	.size	__PRETTY_FUNCTION__.5, 20
__PRETTY_FUNCTION__.5:
	.string	"lru_bump_buf_link_q"
	.align 8
	.type	__PRETTY_FUNCTION__.6, @object
	.size	__PRETTY_FUNCTION__.6, 15
__PRETTY_FUNCTION__.6:
	.string	"item_cachedump"
	.align 16
	.type	__PRETTY_FUNCTION__.7, @object
	.size	__PRETTY_FUNCTION__.7, 16
__PRETTY_FUNCTION__.7:
	.string	"do_item_replace"
	.align 8
	.type	__PRETTY_FUNCTION__.8, @object
	.size	__PRETTY_FUNCTION__.8, 15
__PRETTY_FUNCTION__.8:
	.string	"do_item_update"
	.align 8
	.type	__PRETTY_FUNCTION__.9, @object
	.size	__PRETTY_FUNCTION__.9, 15
__PRETTY_FUNCTION__.9:
	.string	"do_item_remove"
	.align 16
	.type	__PRETTY_FUNCTION__.10, @object
	.size	__PRETTY_FUNCTION__.10, 17
__PRETTY_FUNCTION__.10:
	.string	"do_item_unlink_q"
	.align 8
	.type	__PRETTY_FUNCTION__.11, @object
	.size	__PRETTY_FUNCTION__.11, 15
__PRETTY_FUNCTION__.11:
	.string	"do_item_link_q"
	.align 8
	.type	__PRETTY_FUNCTION__.12, @object
	.size	__PRETTY_FUNCTION__.12, 13
__PRETTY_FUNCTION__.12:
	.string	"do_item_link"
	.align 8
	.type	__PRETTY_FUNCTION__.13, @object
	.size	__PRETTY_FUNCTION__.13, 10
__PRETTY_FUNCTION__.13:
	.string	"item_free"
	.align 8
	.type	__PRETTY_FUNCTION__.14, @object
	.size	__PRETTY_FUNCTION__.14, 14
__PRETTY_FUNCTION__.14:
	.string	"do_item_alloc"
	.local	lru_maintainer_tid
	.comm	lru_maintainer_tid,8,8
	.local	bump_buf_lock
	.comm	bump_buf_lock,40,32
	.local	bump_buf_tail
	.comm	bump_buf_tail,8,8
	.local	bump_buf_head
	.comm	bump_buf_head,8,8
	.local	cas_id_lock
	.comm	cas_id_lock,40,32
	.local	lru_maintainer_lock
	.comm	lru_maintainer_lock,40,32
	.local	do_run_lru_maintainer_thread
	.comm	do_run_lru_maintainer_thread,4,4
	.data
	.align 8
	.type	cas_id, @object
	.size	cas_id, 8
cas_id:
	.quad	1
	.local	stats_sizes_buckets
	.comm	stats_sizes_buckets,4,4
	.local	stats_sizes_hist
	.comm	stats_sizes_hist,8,8
	.local	sizes_bytes
	.comm	sizes_bytes,2048,32
	.local	sizes
	.comm	sizes,1024,32
	.local	itemstats
	.comm	itemstats,43008,32
	.local	tails
	.comm	tails,2048,32
	.local	heads
	.comm	heads,2048,32
	.section	.rodata
	.align 16
	.type	lru_type_map, @object
	.size	lru_type_map, 16
lru_type_map:
	.long	0
	.long	64
	.long	128
	.long	192
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC80:
	.long	1000
	.long	0
	.long	0
	.long	0
	.align 16
.LC81:
	.long	999999
	.long	0
	.long	0
	.long	0
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
