	.file	"cache.c"
# GNU C23 (Ubuntu 15.2.0-16ubuntu1) version 15.2.0 (x86_64-linux-gnu)
#	compiled by GNU C version 15.2.0, GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.3.1, isl version isl-0.27-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -D_FORTIFY_SOURCE=3 -march=znver3 -mmmx -mpopcnt -msse -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mavx -mavx2 -msse4a -mno-fma4 -mno-xop -mfma -mno-avx512f -mbmi -mbmi2 -maes -mpclmul -mno-avx512vl -mno-avx512bw -mno-avx512dq -mno-avx512cd -mno-avx512vbmi -mno-avx512ifma -mno-avx512vpopcntdq -mno-avx512vbmi2 -mno-gfni -mvpclmulqdq -mno-avx512vnni -mno-avx512bitalg -mno-avx512bf16 -mno-avx512vp2intersect -mno-3dnow -madx -mabm -mno-cldemote -mclflushopt -mclwb -mclzero -mcx16 -mno-enqcmd -mf16c -mfsgsbase -mfxsr -mno-hle -msahf -mno-lwp -mlzcnt -mmovbe -mno-movdir64b -mno-movdiri -mno-mwaitx -mno-pconfig -mno-pku -mprfchw -mno-ptwrite -mrdpid -mrdrnd -mrdseed -mno-rtm -mno-serialize -mno-sgx -msha -mshstk -mno-tbm -mno-tsxldtrk -mvaes -mno-waitpkg -mno-wbnoinvd -mxsave -mxsavec -mxsaveopt -mxsaves -mno-amx-tile -mno-amx-int8 -mno-amx-bf16 -mno-uintr -mno-hreset -mno-kl -mno-widekl -mno-avxvnni -mno-avx512fp16 -mno-avxifma -mno-avxvnniint8 -mno-avxneconvert -mno-cmpccxadd -mno-amx-fp16 -mno-prefetchi -mno-raoint -mno-amx-complex -mno-avxvnniint16 -mno-sm3 -mno-sha512 -mno-sm4 -mno-apxf -mno-usermsr -mno-avx10.2 -mno-amx-avx512 -mno-amx-tf32 -mno-amx-transpose -mno-amx-fp8 -mno-movrs -mno-amx-movrs --param=l1-cache-size=32 --param=l1-cache-line-size=64 --param=l2-cache-size=512 -mtune=znver3 -O3 -ftree-vectorize -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection -fzero-init-padding-bits=all
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"cache.c"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"ret->bufsize >= sizeof(struct cache_free_s)"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB2:
	.text
.LHOTB2:
	.p2align 4
	.globl	cache_create
	.type	cache_create, @function
cache_create:
.LFB32:
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
	movq	%rdi, %r12	# name, name
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
# cache.c:19:     cache_t* ret = calloc(1, sizeof(cache_t));
	movl	$1, %edi	#,
# cache.c:18: cache_t* cache_create(const char *name, size_t bufsize, size_t align) {
	movq	%rsi, %rbp	# bufsize, bufsize
# cache.c:19:     cache_t* ret = calloc(1, sizeof(cache_t));
	movl	$88, %esi	#,
# cache.c:18: cache_t* cache_create(const char *name, size_t bufsize, size_t align) {
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 48
# cache.c:19:     cache_t* ret = calloc(1, sizeof(cache_t));
	call	calloc@PLT	#
# cache.c:20:     char* nm = strdup(name);
	movq	%r12, %rdi	# name,
# cache.c:19:     cache_t* ret = calloc(1, sizeof(cache_t));
	movq	%rax, %rbx	#, tmp123
	movq	%rax, %r13	# tmp123, <retval>
# cache.c:20:     char* nm = strdup(name);
	call	strdup@PLT	#
	movq	%rax, %r12	#, tmp124
# cache.c:21:     if (ret == NULL || nm == NULL ||
	testq	%rbx, %rbx	# tmp123
	je	.L5	#,
	testq	%rax, %rax	# tmp124
	je	.L5	#,
# cache.c:22:         pthread_mutex_init(&ret->mutex, NULL) == -1) {
	xorl	%esi, %esi	#
	movq	%rbx, %rdi	# tmp123,
	call	pthread_mutex_init@PLT	#
# cache.c:21:     if (ret == NULL || nm == NULL ||
	cmpl	$-1, %eax	#, _5
	je	.L5	#,
# cache.c:29:     STAILQ_INIT(&ret->head);
	leaq	48(%rbx), %rax	#, tmp116
# cache.c:28:     ret->name = nm;
	movq	%r12, 40(%rbx)	# tmp124, ret_13->name
# cache.c:29:     STAILQ_INIT(&ret->head);
	movq	$0, 48(%rbx)	#, ret_13->head.stqh_first
	movq	%rax, 56(%rbx)	# tmp116, ret_13->head.stqh_last
# cache.c:32:     ret->bufsize = bufsize + 2 * sizeof(redzone_pattern);
	leaq	16(%rbp), %rax	#, _7
# cache.c:32:     ret->bufsize = bufsize + 2 * sizeof(redzone_pattern);
	movq	%rax, 64(%rbx)	# _7, ret_13->bufsize
# cache.c:36:     assert(ret->bufsize >= sizeof(struct cache_free_s));
	cmpq	$7, %rax	#, _7
	jbe	.L9	#,
.L1:
# cache.c:39: }
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movq	%r13, %rax	# <retval>,
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
.L5:
	.cfi_restore_state
# cache.c:23:         free(ret);
	movq	%rbx, %rdi	# tmp123,
# cache.c:25:         return NULL;
	xorl	%r13d, %r13d	# <retval>
# cache.c:23:         free(ret);
	call	free@PLT	#
# cache.c:24:         free(nm);
	movq	%r12, %rdi	# tmp124,
	call	free@PLT	#
# cache.c:25:         return NULL;
	jmp	.L1	#
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.type	cache_create.cold, @function
cache_create.cold:
.LFSB32:
.L9:
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -40
	.cfi_offset 6, -32
	.cfi_offset 12, -24
	.cfi_offset 13, -16
# cache.c:36:     assert(ret->bufsize >= sizeof(struct cache_free_s));
	leaq	__PRETTY_FUNCTION__.0(%rip), %rcx	#,
	movl	$36, %edx	#,
	leaq	.LC0(%rip), %rsi	#,
	leaq	.LC1(%rip), %rdi	#,
	call	__assert_fail@PLT	#
	.cfi_endproc
.LFE32:
	.text
	.size	cache_create, .-cache_create
	.section	.text.unlikely
	.size	cache_create.cold, .-cache_create.cold
.LCOLDE2:
	.text
.LHOTE2:
	.p2align 4
	.globl	cache_set_limit
	.type	cache_set_limit, @function
cache_set_limit:
.LFB33:
	.cfi_startproc
	endbr64	
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	%esi, %ebx	# limit, limit
	subq	$16, %rsp	#,
	.cfi_def_cfa_offset 32
# cache.c:42:     pthread_mutex_lock(&cache->mutex);
	movq	%rdi, 8(%rsp)	# cache, %sfp
	call	pthread_mutex_lock@PLT	#
# cache.c:43:     cache->limit = limit;
	movq	8(%rsp), %rdi	# %sfp, cache
	movl	%ebx, 84(%rdi)	# limit, cache_2(D)->limit
# cache.c:45: }
	addq	$16, %rsp	#,
	.cfi_def_cfa_offset 16
	popq	%rbx	#
	.cfi_def_cfa_offset 8
# cache.c:44:     pthread_mutex_unlock(&cache->mutex);
	jmp	pthread_mutex_unlock@PLT	#
	.cfi_endproc
.LFE33:
	.size	cache_set_limit, .-cache_set_limit
	.p2align 4
	.globl	cache_destroy
	.type	cache_destroy, @function
cache_destroy:
.LFB35:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# cache, cache
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 32
# cache.c:57:     while (!STAILQ_EMPTY(&cache->head)) {
	movq	48(%rdi), %rdi	# cache_9(D)->head.stqh_first, _3
# cache.c:57:     while (!STAILQ_EMPTY(&cache->head)) {
	testq	%rdi, %rdi	# _3
	je	.L15	#,
# cache.c:59:         STAILQ_REMOVE_HEAD(&cache->head, c_next);
	leaq	48(%rbx), %rbp	#, tmp106
	.p2align 4
	.p2align 3
.L18:
# cache.c:59:         STAILQ_REMOVE_HEAD(&cache->head, c_next);
	movq	(%rdi), %rax	# _18->c_next.stqe_next, _1
	movq	%rax, 48(%rbx)	# _1, cache_9(D)->head.stqh_first
	testq	%rax, %rax	# _1
	je	.L26	#,
# cache.c:60:         free(o);
	call	free@PLT	#
# cache.c:57:     while (!STAILQ_EMPTY(&cache->head)) {
	movq	48(%rbx), %rdi	# cache_9(D)->head.stqh_first, _3
# cache.c:57:     while (!STAILQ_EMPTY(&cache->head)) {
	testq	%rdi, %rdi	# _3
	jne	.L18	#,
.L15:
# cache.c:62:     free(cache->name);
	movq	40(%rbx), %rdi	# cache_9(D)->name, cache_9(D)->name
	call	free@PLT	#
# cache.c:63:     pthread_mutex_destroy(&cache->mutex);
	movq	%rbx, %rdi	# cache,
	call	pthread_mutex_destroy@PLT	#
# cache.c:65: }
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
# cache.c:64:     free(cache);
	movq	%rbx, %rdi	# cache,
# cache.c:65: }
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
# cache.c:64:     free(cache);
	jmp	free@PLT	#
	.p2align 4
	.p2align 3
.L26:
	.cfi_restore_state
# cache.c:59:         STAILQ_REMOVE_HEAD(&cache->head, c_next);
	movq	%rbp, 56(%rbx)	# tmp106, cache_9(D)->head.stqh_last
# cache.c:60:         free(o);
	call	free@PLT	#
# cache.c:57:     while (!STAILQ_EMPTY(&cache->head)) {
	movq	48(%rbx), %rdi	# cache_9(D)->head.stqh_first, _3
# cache.c:57:     while (!STAILQ_EMPTY(&cache->head)) {
	testq	%rdi, %rdi	# _3
	jne	.L18	#,
	jmp	.L15	#
	.cfi_endproc
.LFE35:
	.size	cache_destroy, .-cache_destroy
	.p2align 4
	.globl	cache_alloc
	.type	cache_alloc, @function
cache_alloc:
.LFB36:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# cache, cache
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 32
# cache.c:69:     pthread_mutex_lock(&cache->mutex);
	call	pthread_mutex_lock@PLT	#
# cache.c:78:     if (cache->freecurr > 0) {
	movl	80(%rbx), %edx	# cache_2(D)->freecurr, _8
# cache.c:78:     if (cache->freecurr > 0) {
	testl	%edx, %edx	# _8
	jle	.L28	#,
# cache.c:79:         ret = STAILQ_FIRST(&cache->head);
	movq	48(%rbx), %rax	# cache_2(D)->head.stqh_first, ret
# cache.c:80:         STAILQ_REMOVE_HEAD(&cache->head, c_next);
	movq	(%rax), %rcx	# MEM[(struct cache_free_s *)ret_9].c_next.stqe_next, _10
	movq	%rcx, 48(%rbx)	# _10, cache_2(D)->head.stqh_first
	testq	%rcx, %rcx	# _10
	je	.L41	#,
.L29:
# cache.c:82:         cache->freecurr--;
	decl	%edx	# tmp115
# cache.c:50:     return pre + 1;
	leaq	8(%rax), %rbp	#, <retval>
# cache.c:82:         cache->freecurr--;
	movl	%edx, 80(%rbx)	# tmp115, cache_2(D)->freecurr
.L30:
# cache.c:98:         *pre = redzone_pattern;
	movabsq	$-2401053089206444307, %rsi	#, tmp127
	movq	%rsi, (%rax)	# tmp127, MEM[(uint64_t *)ret_21]
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movq	64(%rbx), %rdx	# cache_2(D)->bufsize, cache_2(D)->bufsize
	movq	%rsi, -8(%rax,%rdx)	# tmp128, MEM <long unsigned int> [(char * {ref-all})_24]
.L32:
# cache.c:71:     pthread_mutex_unlock(&cache->mutex);
	movq	%rbx, %rdi	# cache,
	call	pthread_mutex_unlock@PLT	#
# cache.c:73: }
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movq	%rbp, %rax	# <retval>,
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4
	.p2align 3
.L28:
	.cfi_restore_state
# cache.c:83:     } else if (cache->limit == 0 || cache->total < cache->limit) {
	movl	84(%rbx), %eax	# cache_2(D)->limit, _14
# cache.c:83:     } else if (cache->limit == 0 || cache->total < cache->limit) {
	testl	%eax, %eax	# _14
	je	.L31	#,
# cache.c:83:     } else if (cache->limit == 0 || cache->total < cache->limit) {
	cmpl	76(%rbx), %eax	# cache_2(D)->total, _14
	jle	.L33	#,
.L31:
# cache.c:84:         object = ret = malloc(cache->bufsize);
	movq	64(%rbx), %rdi	# cache_2(D)->bufsize, cache_2(D)->bufsize
	call	malloc@PLT	#
# cache.c:85:         if (ret != NULL) {
	testq	%rax, %rax	# ret
	je	.L33	#,
# cache.c:88:             cache->total++;
	incl	76(%rbx)	# cache_2(D)->total
# cache.c:50:     return pre + 1;
	leaq	8(%rax), %rbp	#, <retval>
	jmp	.L30	#
	.p2align 4
	.p2align 3
.L41:
# cache.c:80:         STAILQ_REMOVE_HEAD(&cache->head, c_next);
	leaq	48(%rbx), %rcx	#, tmp114
	movq	%rcx, 56(%rbx)	# tmp114, cache_2(D)->head.stqh_last
	jmp	.L29	#
	.p2align 4
	.p2align 3
.L33:
# cache.c:91:         object = NULL;
	xorl	%ebp, %ebp	# <retval>
	jmp	.L32	#
	.cfi_endproc
.LFE36:
	.size	cache_alloc, .-cache_alloc
	.p2align 4
	.globl	do_cache_alloc
	.type	do_cache_alloc, @function
do_cache_alloc:
.LFB37:
	.cfi_startproc
	endbr64	
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 32
# cache.c:78:     if (cache->freecurr > 0) {
	movl	80(%rdi), %ecx	# cache_15(D)->freecurr, _1
# cache.c:75: void* do_cache_alloc(cache_t *cache) {
	movq	%rdi, %rdx	# cache, cache
# cache.c:78:     if (cache->freecurr > 0) {
	testl	%ecx, %ecx	# _1
	jle	.L43	#,
# cache.c:79:         ret = STAILQ_FIRST(&cache->head);
	movq	48(%rdi), %rax	# cache_15(D)->head.stqh_first, ret
# cache.c:80:         STAILQ_REMOVE_HEAD(&cache->head, c_next);
	movq	(%rax), %rsi	# MEM[(struct cache_free_s *)ret_22].c_next.stqe_next, _2
	movq	%rsi, 48(%rdi)	# _2, cache_15(D)->head.stqh_first
	testq	%rsi, %rsi	# _2
	je	.L56	#,
.L44:
# cache.c:82:         cache->freecurr--;
	decl	%ecx	# tmp114
# cache.c:50:     return pre + 1;
	leaq	8(%rax), %rsi	#, <retval>
# cache.c:82:         cache->freecurr--;
	movl	%ecx, 80(%rdx)	# tmp114, cache_15(D)->freecurr
.L45:
# cache.c:98:         *pre = redzone_pattern;
	movabsq	$-2401053089206444307, %rdi	#, tmp126
	movq	%rdi, (%rax)	# tmp126, MEM[(uint64_t *)ret_31]
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movq	64(%rdx), %rdx	# cache_15(D)->bufsize, cache_15(D)->bufsize
	movq	%rdi, -8(%rax,%rdx)	# tmp127, MEM <long unsigned int> [(char * {ref-all})_11]
.L42:
# cache.c:106: }
	movq	%rsi, %rax	# <retval>,
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4
	.p2align 3
.L43:
	.cfi_restore_state
# cache.c:83:     } else if (cache->limit == 0 || cache->total < cache->limit) {
	movl	84(%rdi), %eax	# cache_15(D)->limit, _5
# cache.c:83:     } else if (cache->limit == 0 || cache->total < cache->limit) {
	testl	%eax, %eax	# _5
	je	.L46	#,
# cache.c:83:     } else if (cache->limit == 0 || cache->total < cache->limit) {
	cmpl	76(%rdi), %eax	# cache_15(D)->total, _5
	jle	.L48	#,
.L46:
# cache.c:84:         object = ret = malloc(cache->bufsize);
	movq	64(%rdx), %rdi	# cache_15(D)->bufsize, cache_15(D)->bufsize
	movq	%rdx, 8(%rsp)	# cache, %sfp
	call	malloc@PLT	#
# cache.c:85:         if (ret != NULL) {
	testq	%rax, %rax	# ret
	je	.L48	#,
# cache.c:88:             cache->total++;
	movq	8(%rsp), %rdx	# %sfp, cache
# cache.c:50:     return pre + 1;
	leaq	8(%rax), %rsi	#, <retval>
# cache.c:88:             cache->total++;
	incl	76(%rdx)	# cache_15(D)->total
	jmp	.L45	#
	.p2align 4
	.p2align 3
.L56:
# cache.c:80:         STAILQ_REMOVE_HEAD(&cache->head, c_next);
	leaq	48(%rdi), %rsi	#, tmp113
	movq	%rsi, 56(%rdi)	# tmp113, cache_15(D)->head.stqh_last
	jmp	.L44	#
	.p2align 4
	.p2align 3
.L48:
# cache.c:91:         object = NULL;
	xorl	%esi, %esi	# <retval>
	jmp	.L42	#
	.cfi_endproc
.LFE37:
	.size	do_cache_alloc, .-do_cache_alloc
	.p2align 4
	.globl	cache_free
	.type	cache_free, @function
cache_free:
.LFB38:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	movq	%rdi, %rbx	# cache, cache
	movq	%rsi, %rbp	# ptr, ptr
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 32
# cache.c:109:     pthread_mutex_lock(&cache->mutex);
	call	pthread_mutex_lock@PLT	#
# cache.c:117:     if (memcmp(((char*)ptr) + cache->bufsize - (2 * sizeof(redzone_pattern)),
	movq	64(%rbx), %rdx	# cache_2(D)->bufsize, cache_2(D)->bufsize
# cache.c:117:     if (memcmp(((char*)ptr) + cache->bufsize - (2 * sizeof(redzone_pattern)),
	movabsq	$-2401053089206444307, %rax	#, tmp115
	cmpq	%rax, -16(%rbp,%rdx)	# tmp115, MEM <unsigned long> [(char * {ref-all})_10]
	jne	.L67	#,
# cache.c:125:     if (*pre != redzone_pattern) {
	cmpq	%rax, -8(%rbp)	# tmp115, MEM[(uint64_t *)ptr_5(D) + -8B]
	jne	.L68	#,
# cache.c:132:     if (cache->limit != 0 && cache->limit < cache->total) {
	movl	84(%rbx), %eax	# cache_2(D)->limit, _14
# cache.c:124:     --pre;
	leaq	-8(%rbp), %rdi	#, pre
# cache.c:132:     if (cache->limit != 0 && cache->limit < cache->total) {
	testl	%eax, %eax	# _14
	jne	.L69	#,
.L61:
# cache.c:136:         STAILQ_INSERT_HEAD(&cache->head, (struct cache_free_s *)ptr, c_next);
	movq	48(%rbx), %rax	# cache_2(D)->head.stqh_first, _18
	movq	%rax, -8(%rbp)	# _18, MEM[(struct cache_free_s *)ptr_5(D) + -8B].c_next.stqe_next
	testq	%rax, %rax	# _18
	je	.L70	#,
.L62:
# cache.c:137:         cache->freecurr++;
	incl	80(%rbx)	# cache_2(D)->freecurr
# cache.c:136:         STAILQ_INSERT_HEAD(&cache->head, (struct cache_free_s *)ptr, c_next);
	movq	%rdi, 48(%rbx)	# pre, cache_2(D)->head.stqh_first
.L59:
# cache.c:112: }
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
# cache.c:111:     pthread_mutex_unlock(&cache->mutex);
	movq	%rbx, %rdi	# cache,
# cache.c:112: }
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
# cache.c:111:     pthread_mutex_unlock(&cache->mutex);
	jmp	pthread_mutex_unlock@PLT	#
	.p2align 4
	.p2align 3
.L69:
	.cfi_restore_state
# cache.c:132:     if (cache->limit != 0 && cache->limit < cache->total) {
	cmpl	76(%rbx), %eax	# cache_2(D)->total, _14
	jge	.L61	#,
# cache.c:133:         free(ptr);
	call	free@PLT	#
# cache.c:134:         cache->total--;
	decl	76(%rbx)	# cache_2(D)->total
	jmp	.L59	#
	.p2align 4
	.p2align 3
.L68:
# cache.c:126:         raise(SIGABRT);
	movl	$6, %edi	#,
	call	raise@PLT	#
# cache.c:127:         cache_error = -1;
	movl	$-1, cache_error(%rip)	#, cache_error
# cache.c:112: }
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
# cache.c:111:     pthread_mutex_unlock(&cache->mutex);
	movq	%rbx, %rdi	# cache,
# cache.c:112: }
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
# cache.c:111:     pthread_mutex_unlock(&cache->mutex);
	jmp	pthread_mutex_unlock@PLT	#
	.p2align 4
	.p2align 3
.L67:
	.cfi_restore_state
# cache.c:119:         raise(SIGABRT);
	movl	$6, %edi	#,
	call	raise@PLT	#
# cache.c:120:         cache_error = 1;
	movl	$1, cache_error(%rip)	#, cache_error
# cache.c:112: }
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
# cache.c:111:     pthread_mutex_unlock(&cache->mutex);
	movq	%rbx, %rdi	# cache,
# cache.c:112: }
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
# cache.c:111:     pthread_mutex_unlock(&cache->mutex);
	jmp	pthread_mutex_unlock@PLT	#
	.p2align 4
	.p2align 3
.L70:
	.cfi_restore_state
# cache.c:136:         STAILQ_INSERT_HEAD(&cache->head, (struct cache_free_s *)ptr, c_next);
	movq	%rdi, 56(%rbx)	# pre, cache_2(D)->head.stqh_last
	jmp	.L62	#
	.cfi_endproc
.LFE38:
	.size	cache_free, .-cache_free
	.p2align 4
	.globl	do_cache_free
	.type	do_cache_free, @function
do_cache_free:
.LFB39:
	.cfi_startproc
	endbr64	
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 32
# cache.c:117:     if (memcmp(((char*)ptr) + cache->bufsize - (2 * sizeof(redzone_pattern)),
	movq	64(%rdi), %rcx	# cache_18(D)->bufsize, cache_18(D)->bufsize
# cache.c:117:     if (memcmp(((char*)ptr) + cache->bufsize - (2 * sizeof(redzone_pattern)),
	movabsq	$-2401053089206444307, %rdx	#, tmp114
	cmpq	%rdx, -16(%rsi,%rcx)	# tmp114, MEM <unsigned long> [(char * {ref-all})_3]
	jne	.L82	#,
# cache.c:125:     if (*pre != redzone_pattern) {
	cmpq	%rdx, -8(%rsi)	# tmp114, MEM[(uint64_t *)ptr_19(D) + -8B]
	jne	.L83	#,
	movq	%rdi, %rax	# cache, cache
# cache.c:124:     --pre;
	leaq	-8(%rsi), %rdi	#, pre
# cache.c:132:     if (cache->limit != 0 && cache->limit < cache->total) {
	movl	84(%rax), %edx	# cache_18(D)->limit, _6
# cache.c:132:     if (cache->limit != 0 && cache->limit < cache->total) {
	testl	%edx, %edx	# _6
	jne	.L84	#,
.L75:
# cache.c:136:         STAILQ_INSERT_HEAD(&cache->head, (struct cache_free_s *)ptr, c_next);
	movq	48(%rax), %rdx	# cache_18(D)->head.stqh_first, _11
	movq	%rdx, -8(%rsi)	# _11, MEM[(struct cache_free_s *)ptr_19(D) + -8B].c_next.stqe_next
	testq	%rdx, %rdx	# _11
	je	.L85	#,
.L76:
# cache.c:137:         cache->freecurr++;
	incl	80(%rax)	# cache_18(D)->freecurr
# cache.c:136:         STAILQ_INSERT_HEAD(&cache->head, (struct cache_free_s *)ptr, c_next);
	movq	%rdi, 48(%rax)	# pre, cache_18(D)->head.stqh_first
.L80:
# cache.c:139: }
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4
	.p2align 3
.L84:
	.cfi_restore_state
# cache.c:132:     if (cache->limit != 0 && cache->limit < cache->total) {
	cmpl	76(%rax), %edx	# cache_18(D)->total, _6
	jge	.L75	#,
	movq	%rax, 8(%rsp)	# cache, %sfp
# cache.c:133:         free(ptr);
	call	free@PLT	#
# cache.c:134:         cache->total--;
	movq	8(%rsp), %rax	# %sfp, cache
	decl	76(%rax)	# cache_18(D)->total
	jmp	.L80	#
	.p2align 4
	.p2align 3
.L83:
# cache.c:126:         raise(SIGABRT);
	movl	$6, %edi	#,
	call	raise@PLT	#
# cache.c:127:         cache_error = -1;
	movl	$-1, cache_error(%rip)	#, cache_error
# cache.c:139: }
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4
	.p2align 3
.L82:
	.cfi_restore_state
# cache.c:119:         raise(SIGABRT);
	movl	$6, %edi	#,
	call	raise@PLT	#
# cache.c:120:         cache_error = 1;
	movl	$1, cache_error(%rip)	#, cache_error
# cache.c:139: }
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4
	.p2align 3
.L85:
	.cfi_restore_state
# cache.c:136:         STAILQ_INSERT_HEAD(&cache->head, (struct cache_free_s *)ptr, c_next);
	movq	%rdi, 56(%rax)	# pre, cache_18(D)->head.stqh_last
	jmp	.L76	#
	.cfi_endproc
.LFE39:
	.size	do_cache_free, .-do_cache_free
	.section	.rodata
	.align 8
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 13
__PRETTY_FUNCTION__.0:
	.string	"cache_create"
	.globl	cache_error
	.bss
	.align 4
	.type	cache_error, @object
	.size	cache_error, 4
cache_error:
	.zero	4
	.globl	redzone_pattern
	.section	.rodata
	.align 8
	.type	redzone_pattern, @object
	.size	redzone_pattern, 8
redzone_pattern:
	.quad	-2401053089206444307
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
