	.file	"assoc.c"
# GNU C23 (Ubuntu 15.2.0-16ubuntu1) version 15.2.0 (x86_64-linux-gnu)
#	compiled by GNU C version 15.2.0, GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.3.1, isl version isl-0.27-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -D_FORTIFY_SOURCE=3 -march=znver3 -mmmx -mpopcnt -msse -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mavx -mavx2 -msse4a -mno-fma4 -mno-xop -mfma -mno-avx512f -mbmi -mbmi2 -maes -mpclmul -mno-avx512vl -mno-avx512bw -mno-avx512dq -mno-avx512cd -mno-avx512vbmi -mno-avx512ifma -mno-avx512vpopcntdq -mno-avx512vbmi2 -mno-gfni -mvpclmulqdq -mno-avx512vnni -mno-avx512bitalg -mno-avx512bf16 -mno-avx512vp2intersect -mno-3dnow -madx -mabm -mno-cldemote -mclflushopt -mclwb -mclzero -mcx16 -mno-enqcmd -mf16c -mfsgsbase -mfxsr -mno-hle -msahf -mno-lwp -mlzcnt -mmovbe -mno-movdir64b -mno-movdiri -mno-mwaitx -mno-pconfig -mno-pku -mprfchw -mno-ptwrite -mrdpid -mrdrnd -mrdseed -mno-rtm -mno-serialize -mno-sgx -msha -mshstk -mno-tbm -mno-tsxldtrk -mvaes -mno-waitpkg -mno-wbnoinvd -mxsave -mxsavec -mxsaveopt -mxsaves -mno-amx-tile -mno-amx-int8 -mno-amx-bf16 -mno-uintr -mno-hreset -mno-kl -mno-widekl -mno-avxvnni -mno-avx512fp16 -mno-avxifma -mno-avxvnniint8 -mno-avxneconvert -mno-cmpccxadd -mno-amx-fp16 -mno-prefetchi -mno-raoint -mno-amx-complex -mno-avxvnniint16 -mno-sm3 -mno-sha512 -mno-sm4 -mno-apxf -mno-usermsr -mno-avx10.2 -mno-amx-avx512 -mno-amx-tf32 -mno-amx-transpose -mno-amx-fp8 -mno-movrs -mno-amx-movrs --param=l1-cache-size=32 --param=l1-cache-line-size=64 --param=l2-cache-size=512 -mtune=znver3 -O3 -ftree-vectorize -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection -fzero-init-padding-bits=all
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Hash table expansion done\n"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC1:
	.string	"Hash table expansion starting\n"
	.text
	.p2align 4
	.type	assoc_maintenance_thread, @function
assoc_maintenance_thread:
.LFB91:
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
# assoc.c:199:     mutex_lock(&maintenance_lock);
	leaq	maintenance_lock(%rip), %rdi	#,
# assoc.c:197: static void *assoc_maintenance_thread(void *arg) {
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
# assoc.c:231:                         if (settings.verbose > 1)
	leaq	settings(%rip), %r14	#, tmp218
# assoc.c:197: static void *assoc_maintenance_thread(void *arg) {
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 64
# assoc.c:199:     mutex_lock(&maintenance_lock);
	call	pthread_mutex_lock@PLT	#
	.p2align 4
	.p2align 3
.L13:
# assoc.c:224:                     if (expand_bucket == hashsize(hashpower - 1)) {
	movl	$1, %r13d	#, tmp220
	.p2align 4
	.p2align 3
.L14:
# assoc.c:200:     while (do_run_maintenance_thread) {
	movl	do_run_maintenance_thread(%rip), %eax	# do_run_maintenance_thread, do_run_maintenance_thread.51_46
	testl	%eax, %eax	# do_run_maintenance_thread.51_46
	je	.L19	#,
# assoc.c:204:         for (ii = 0; ii < hash_bulk_move && expanding; ++ii) {
	movl	hash_bulk_move(%rip), %eax	# hash_bulk_move,
# assoc.c:204:         for (ii = 0; ii < hash_bulk_move && expanding; ++ii) {
	xorl	%ebp, %ebp	# ii
# assoc.c:204:         for (ii = 0; ii < hash_bulk_move && expanding; ++ii) {
	testl	%eax, %eax	#
	jle	.L10	#,
	.p2align 4
	.p2align 3
.L20:
# assoc.c:204:         for (ii = 0; ii < hash_bulk_move && expanding; ++ii) {
	cmpb	$0, expanding(%rip)	#, expanding
	je	.L15	#,
# assoc.c:213:             if ((item_lock = item_trylock(expand_bucket))) {
	movl	expand_bucket(%rip), %edi	# expand_bucket,
	call	item_trylock@PLT	#
	movq	%rax, %r12	#, item_lock
# assoc.c:213:             if ((item_lock = item_trylock(expand_bucket))) {
	testq	%rax, %rax	# item_lock
	je	.L3	#,
# assoc.c:214:                     for (it = old_hashtable[expand_bucket]; NULL != it; it = next) {
	movq	old_hashtable(%rip), %rdi	# old_hashtable, pretmp_130
	movq	expand_bucket(%rip), %rax	# expand_bucket, pretmp_132
	leaq	(%rdi,%rax,8), %rcx	#, _136
# assoc.c:214:                     for (it = old_hashtable[expand_bucket]; NULL != it; it = next) {
	movq	(%rcx), %r15	# *_6, next
# assoc.c:214:                     for (it = old_hashtable[expand_bucket]; NULL != it; it = next) {
	testq	%r15, %r15	# next
	je	.L4	#,
	.p2align 4
	.p2align 3
.L5:
	movq	%r15, %rbx	# next, it
# assoc.c:215:                         next = it->h_next;
	movq	16(%r15), %r15	# it_78->h_next, next
# assoc.c:216:                         bucket = hash(ITEM_key(it), it->nkey) & hashmask(hashpower);
	movzwl	38(%rbx), %eax	# it_49->it_flags, _12
# assoc.c:216:                         bucket = hash(ITEM_key(it), it->nkey) & hashmask(hashpower);
	movzbl	41(%rbx), %esi	# it_49->nkey, _9
# assoc.c:216:                         bucket = hash(ITEM_key(it), it->nkey) & hashmask(hashpower);
	salq	$2, %rax	#, _13
	andl	$8, %eax	#, _14
# assoc.c:216:                         bucket = hash(ITEM_key(it), it->nkey) & hashmask(hashpower);
	leaq	48(%rbx,%rax), %rdi	#, _15
	call	*hash(%rip)	# hash
# assoc.c:216:                         bucket = hash(ITEM_key(it), it->nkey) & hashmask(hashpower);
	movl	hashpower(%rip), %edx	# hashpower, hashpower.36_18
# assoc.c:217:                         it->h_next = primary_hashtable[bucket];
	movq	primary_hashtable(%rip), %rcx	# primary_hashtable, primary_hashtable
# assoc.c:216:                         bucket = hash(ITEM_key(it), it->nkey) & hashmask(hashpower);
	movl	%eax, %eax	# _16, _17
# assoc.c:216:                         bucket = hash(ITEM_key(it), it->nkey) & hashmask(hashpower);
	bzhi	%rdx, %rax, %rax	# hashpower.36_18, _17, bucket_71
# assoc.c:217:                         it->h_next = primary_hashtable[bucket];
	leaq	(%rcx,%rax,8), %rax	#, _23
	movq	(%rax), %rcx	# *_23, _24
# assoc.c:217:                         it->h_next = primary_hashtable[bucket];
	movq	%rcx, 16(%rbx)	# _24, it_49->h_next
# assoc.c:218:                         primary_hashtable[bucket] = it;
	movq	%rbx, (%rax)	# it, *_23
# assoc.c:214:                     for (it = old_hashtable[expand_bucket]; NULL != it; it = next) {
	testq	%r15, %r15	# next
	jne	.L5	#,
# assoc.c:221:                     old_hashtable[expand_bucket] = NULL;
	movq	old_hashtable(%rip), %rdi	# old_hashtable, pretmp_130
	movq	expand_bucket(%rip), %rax	# expand_bucket, pretmp_132
	leaq	(%rdi,%rax,8), %rcx	#, _136
.L6:
# assoc.c:224:                     if (expand_bucket == hashsize(hashpower - 1)) {
	decl	%edx	# _32
# assoc.c:223:                     expand_bucket++;
	incq	%rax	# _30
# assoc.c:221:                     old_hashtable[expand_bucket] = NULL;
	movq	$0, (%rcx)	#, *prephitmp_137
# assoc.c:224:                     if (expand_bucket == hashsize(hashpower - 1)) {
	shlx	%rdx, %r13, %rdx	# _32, tmp220, _33
# assoc.c:223:                     expand_bucket++;
	movq	%rax, expand_bucket(%rip)	# _30, expand_bucket
# assoc.c:224:                     if (expand_bucket == hashsize(hashpower - 1)) {
	cmpq	%rdx, %rax	# _33, _30
	je	.L27	#,
.L8:
# assoc.c:240:                 item_trylock_unlock(item_lock);
	movq	%r12, %rdi	# item_lock,
	call	item_trylock_unlock@PLT	#
.L9:
# assoc.c:204:         for (ii = 0; ii < hash_bulk_move && expanding; ++ii) {
	incl	%ebp	# ii
# assoc.c:204:         for (ii = 0; ii < hash_bulk_move && expanding; ++ii) {
	cmpl	%ebp, hash_bulk_move(%rip)	# ii, hash_bulk_move
	jg	.L20	#,
.L10:
# assoc.c:245:         if (!expanding) {
	cmpb	$0, expanding(%rip)	#, expanding
	jne	.L14	#,
	.p2align 4
	.p2align 3
.L15:
# assoc.c:247:             pthread_cond_wait(&maintenance_cond, &maintenance_lock);
	leaq	maintenance_lock(%rip), %rsi	#,
	leaq	maintenance_cond(%rip), %rdi	#,
	call	pthread_cond_wait@PLT	#
# assoc.c:255:             if (do_run_maintenance_thread) {
	movl	do_run_maintenance_thread(%rip), %eax	# do_run_maintenance_thread, do_run_maintenance_thread.50_45
# assoc.c:255:             if (do_run_maintenance_thread) {
	testl	%eax, %eax	# do_run_maintenance_thread.50_45
	je	.L13	#,
# assoc.c:256:                 pause_threads(PAUSE_ALL_THREADS);
	movl	$1, %edi	#,
	call	pause_threads@PLT	#
# assoc.c:125:     primary_hashtable = calloc(hashsize(hashpower + 1), sizeof(void *));
	movl	hashpower(%rip), %eax	# hashpower, tmp230
	movl	$1, %edi	#, tmp198
# assoc.c:125:     primary_hashtable = calloc(hashsize(hashpower + 1), sizeof(void *));
	movl	$8, %esi	#,
# assoc.c:123:     old_hashtable = primary_hashtable;
	movq	primary_hashtable(%rip), %rbp	# primary_hashtable, primary_hashtable.52_81
# assoc.c:125:     primary_hashtable = calloc(hashsize(hashpower + 1), sizeof(void *));
	leal	1(%rax), %ebx	#, _83
	shlx	%rbx, %rdi, %rdi	# _83, tmp198, _84
# assoc.c:123:     old_hashtable = primary_hashtable;
	movq	%rbp, old_hashtable(%rip)	# primary_hashtable.52_81, old_hashtable
# assoc.c:125:     primary_hashtable = calloc(hashsize(hashpower + 1), sizeof(void *));
	call	calloc@PLT	#
# assoc.c:125:     primary_hashtable = calloc(hashsize(hashpower + 1), sizeof(void *));
	movq	%rax, primary_hashtable(%rip)	# tmp227, primary_hashtable
# assoc.c:126:     if (primary_hashtable) {
	testq	%rax, %rax	# tmp227
	je	.L16	#,
# assoc.c:127:         if (settings.verbose > 1)
	cmpl	$1, 32+settings(%rip)	#, settings.verbose
	jg	.L28	#,
.L17:
# assoc.c:129:         hashpower++;
	movl	%ebx, hashpower(%rip)	# _83, hashpower
# assoc.c:130:         expanding = true;
	movb	$1, expanding(%rip)	#, expanding
# assoc.c:131:         expand_bucket = 0;
	movq	$0, expand_bucket(%rip)	#, expand_bucket
# assoc.c:132:         STATS_LOCK();
	call	STATS_LOCK@PLT	#
# assoc.c:134:         stats_state.hash_bytes += hashsize(hashpower) * sizeof(void *);
	movl	$8, %eax	#, tmp208
# assoc.c:135:         stats_state.hash_is_expanding = true;
	movb	$1, 52+stats_state(%rip)	#, stats_state.hash_is_expanding
# assoc.c:133:         stats_state.hash_power_level = hashpower;
	movl	hashpower(%rip), %edx	# hashpower, hashpower.57_90
# assoc.c:134:         stats_state.hash_bytes += hashsize(hashpower) * sizeof(void *);
	shlx	%rdx, %rax, %rax	# hashpower.57_90, tmp208, _92
# assoc.c:133:         stats_state.hash_power_level = hashpower;
	movl	%edx, 44+stats_state(%rip)	# hashpower.57_90, stats_state.hash_power_level
# assoc.c:134:         stats_state.hash_bytes += hashsize(hashpower) * sizeof(void *);
	addq	%rax, 24+stats_state(%rip)	# _92, stats_state.hash_bytes
# assoc.c:136:         STATS_UNLOCK();
	call	STATS_UNLOCK@PLT	#
.L18:
# assoc.c:258:                 pause_threads(RESUME_ALL_THREADS);
	movl	$2, %edi	#,
	call	pause_threads@PLT	#
	jmp	.L13	#
	.p2align 4
	.p2align 3
.L3:
# assoc.c:236:                 usleep(10*1000 - 1);
	movl	$9999, %edi	#,
	call	usleep@PLT	#
	jmp	.L9	#
	.p2align 4
	.p2align 3
.L27:
# assoc.c:225:                         expanding = false;
	movb	$0, expanding(%rip)	#, expanding
# assoc.c:226:                         free(old_hashtable);
	call	free@PLT	#
# assoc.c:227:                         STATS_LOCK();
	call	STATS_LOCK@PLT	#
# assoc.c:229:                         stats_state.hash_is_expanding = false;
	movb	$0, 52+stats_state(%rip)	#, stats_state.hash_is_expanding
# assoc.c:228:                         stats_state.hash_bytes -= hashsize(hashpower - 1) * sizeof(void *);
	movl	hashpower(%rip), %eax	# hashpower, tmp229
	leal	-1(%rax), %edx	#, _36
# assoc.c:228:                         stats_state.hash_bytes -= hashsize(hashpower - 1) * sizeof(void *);
	movl	$8, %eax	#, tmp185
	shlx	%rdx, %rax, %rax	# _36, tmp185, _37
# assoc.c:228:                         stats_state.hash_bytes -= hashsize(hashpower - 1) * sizeof(void *);
	subq	%rax, 24+stats_state(%rip)	# _37, stats_state.hash_bytes
# assoc.c:230:                         STATS_UNLOCK();
	call	STATS_UNLOCK@PLT	#
# assoc.c:231:                         if (settings.verbose > 1)
	cmpl	$1, 32(%r14)	#, settings.verbose
	jle	.L8	#,
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:111:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	stderr(%rip), %rcx	# stderr,
	movl	$26, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC0(%rip), %rdi	#,
	call	fwrite@PLT	#
	jmp	.L8	#
	.p2align 4
	.p2align 3
.L4:
# assoc.c:224:                     if (expand_bucket == hashsize(hashpower - 1)) {
	movl	hashpower(%rip), %edx	# hashpower, hashpower.36_18
	jmp	.L6	#
.L19:
# assoc.c:262:     mutex_unlock(&maintenance_lock);
	leaq	maintenance_lock(%rip), %rdi	#,
	call	pthread_mutex_unlock@PLT	#
# assoc.c:264: }
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax	#
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
.L16:
	.cfi_restore_state
# assoc.c:138:         primary_hashtable = old_hashtable;
	movq	%rbp, primary_hashtable(%rip)	# primary_hashtable.52_81, primary_hashtable
	jmp	.L18	#
	.p2align 4
	.p2align 3
.L28:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:111:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	stderr(%rip), %rcx	# stderr,
	movl	$30, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC1(%rip), %rdi	#,
	call	fwrite@PLT	#
# assoc.c:129:         hashpower++;
	movl	hashpower(%rip), %eax	# hashpower, tmp231
	leal	1(%rax), %ebx	#, _83
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:111:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	jmp	.L17	#
	.cfi_endproc
.LFE91:
	.size	assoc_maintenance_thread, .-assoc_maintenance_thread
	.section	.rodata.str1.1
.LC2:
	.string	"Failed to init hashtable.\n"
	.text
	.p2align 4
	.globl	assoc_init
	.type	assoc_init, @function
assoc_init:
.LFB84:
	.cfi_startproc
	endbr64	
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
# assoc.c:56:     if (hashtable_init) {
	testl	%edi, %edi	# hashtable_init
	jne	.L30	#,
# assoc.c:59:     primary_hashtable = calloc(hashsize(hashpower), sizeof(void *));
	movl	hashpower(%rip), %edi	# hashpower, pretmp_21
.L31:
# assoc.c:59:     primary_hashtable = calloc(hashsize(hashpower), sizeof(void *));
	movl	$1, %eax	#, tmp106
# assoc.c:59:     primary_hashtable = calloc(hashsize(hashpower), sizeof(void *));
	movl	$8, %esi	#,
# assoc.c:59:     primary_hashtable = calloc(hashsize(hashpower), sizeof(void *));
	shlx	%rdi, %rax, %rdi	# pretmp_21, tmp106, _3
# assoc.c:59:     primary_hashtable = calloc(hashsize(hashpower), sizeof(void *));
	call	calloc@PLT	#
# assoc.c:59:     primary_hashtable = calloc(hashsize(hashpower), sizeof(void *));
	movq	%rax, primary_hashtable(%rip)	# tmp115, primary_hashtable
# assoc.c:60:     if (! primary_hashtable) {
	testq	%rax, %rax	# tmp115
	je	.L34	#,
# assoc.c:64:     STATS_LOCK();
	call	STATS_LOCK@PLT	#
# assoc.c:66:     stats_state.hash_bytes = hashsize(hashpower) * sizeof(void *);
	movl	$8, %eax	#, tmp112
# assoc.c:65:     stats_state.hash_power_level = hashpower;
	movl	hashpower(%rip), %edx	# hashpower, hashpower.4_6
# assoc.c:66:     stats_state.hash_bytes = hashsize(hashpower) * sizeof(void *);
	shlx	%rdx, %rax, %rax	# hashpower.4_6, tmp112, tmp113
# assoc.c:65:     stats_state.hash_power_level = hashpower;
	movl	%edx, 44+stats_state(%rip)	# hashpower.4_6, stats_state.hash_power_level
# assoc.c:66:     stats_state.hash_bytes = hashsize(hashpower) * sizeof(void *);
	movq	%rax, 24+stats_state(%rip)	# tmp113, stats_state.hash_bytes
# assoc.c:68: }
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
# assoc.c:67:     STATS_UNLOCK();
	jmp	STATS_UNLOCK@PLT	#
	.p2align 4
	.p2align 3
.L30:
	.cfi_restore_state
# assoc.c:57:         hashpower = hashtable_init;
	movl	%edi, hashpower(%rip)	# pretmp_21, hashpower
	jmp	.L31	#
.L34:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:111:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	stderr(%rip), %rcx	# stderr,
	leaq	.LC2(%rip), %rdi	#,
	movl	$26, %edx	#,
	movl	$1, %esi	#,
	call	fwrite@PLT	#
# assoc.c:62:         exit(EXIT_FAILURE);
	movl	$1, %edi	#,
	call	exit@PLT	#
	.cfi_endproc
.LFE84:
	.size	assoc_init, .-assoc_init
	.p2align 4
	.globl	assoc_find
	.type	assoc_find, @function
assoc_find:
.LFB85:
	.cfi_startproc
	endbr64	
# assoc.c:74:     if (expanding &&
	cmpb	$0, expanding(%rip)	#, expanding
# assoc.c:75:         (oldbucket = (hv & hashmask(hashpower - 1))) >= expand_bucket)
	movl	hashpower(%rip), %eax	# hashpower, pretmp_61
# assoc.c:70: item *assoc_find(const char *key, const size_t nkey, const uint32_t hv) {
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
# assoc.c:75:         (oldbucket = (hv & hashmask(hashpower - 1))) >= expand_bucket)
	movl	%edx, %edx	# hv, _60
# assoc.c:70: item *assoc_find(const char *key, const size_t nkey, const uint32_t hv) {
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rsi, %r12	# nkey, nkey
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
# assoc.c:70: item *assoc_find(const char *key, const size_t nkey, const uint32_t hv) {
	movq	%rdi, %rbp	# key, key
# assoc.c:74:     if (expanding &&
	je	.L36	#,
# assoc.c:75:         (oldbucket = (hv & hashmask(hashpower - 1))) >= expand_bucket)
	leal	-1(%rax), %ecx	#, _4
# assoc.c:75:         (oldbucket = (hv & hashmask(hashpower - 1))) >= expand_bucket)
	bzhi	%rcx, %rdx, %rcx	# _4, _60, oldbucket
# assoc.c:74:     if (expanding &&
	cmpq	expand_bucket(%rip), %rcx	# expand_bucket, oldbucket
	jnb	.L48	#,
.L36:
# assoc.c:79:         it = primary_hashtable[hv & hashmask(hashpower)];
	bzhi	%rax, %rdx, %rdx	# pretmp_61, _60, _16
# assoc.c:79:         it = primary_hashtable[hv & hashmask(hashpower)];
	movq	primary_hashtable(%rip), %rax	# primary_hashtable, primary_hashtable
	movq	(%rax,%rdx,8), %rbx	# *_18, <retval>
	jmp	.L47	#
	.p2align 5
	.p2align 4
	.p2align 3
.L40:
# assoc.c:91:         it = it->h_next;
	movq	16(%rbx), %rbx	# it_40->h_next, <retval>
.L47:
# assoc.c:86:     while (it) {
	testq	%rbx, %rbx	# <retval>
	je	.L35	#,
# assoc.c:87:         if ((nkey == it->nkey) && (memcmp(key, ITEM_key(it), nkey) == 0)) {
	movzbl	41(%rbx), %eax	# it_40->nkey, _20
# assoc.c:87:         if ((nkey == it->nkey) && (memcmp(key, ITEM_key(it), nkey) == 0)) {
	cmpq	%r12, %rax	# nkey, _20
	jne	.L40	#,
# assoc.c:87:         if ((nkey == it->nkey) && (memcmp(key, ITEM_key(it), nkey) == 0)) {
	movzwl	38(%rbx), %eax	# it_40->it_flags, _23
# assoc.c:87:         if ((nkey == it->nkey) && (memcmp(key, ITEM_key(it), nkey) == 0)) {
	movq	%r12, %rdx	# nkey,
	movq	%rbp, %rdi	# key,
# assoc.c:87:         if ((nkey == it->nkey) && (memcmp(key, ITEM_key(it), nkey) == 0)) {
	salq	$2, %rax	#, _24
	andl	$8, %eax	#, _25
# assoc.c:87:         if ((nkey == it->nkey) && (memcmp(key, ITEM_key(it), nkey) == 0)) {
	leaq	48(%rbx,%rax), %rsi	#, _26
	call	memcmp@PLT	#
# assoc.c:87:         if ((nkey == it->nkey) && (memcmp(key, ITEM_key(it), nkey) == 0)) {
	testl	%eax, %eax	# tmp155
	jne	.L40	#,
.L35:
# assoc.c:98: }
	movq	%rbx, %rax	# <retval>,
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4
	.p2align 3
.L48:
	.cfi_restore_state
# assoc.c:77:         it = old_hashtable[oldbucket];
	movq	old_hashtable(%rip), %rax	# old_hashtable, old_hashtable
	movq	(%rax,%rcx,8), %rbx	# *_10, <retval>
	jmp	.L47	#
	.cfi_endproc
.LFE85:
	.size	assoc_find, .-assoc_find
	.p2align 4
	.globl	assoc_start_expand
	.type	assoc_start_expand, @function
assoc_start_expand:
.LFB88:
	.cfi_startproc
	endbr64	
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
# assoc.c:143: void assoc_start_expand(uint64_t curr_items) {
	movq	%rdi, %rbx	# curr_items, curr_items
# assoc.c:144:     if (pthread_mutex_trylock(&maintenance_lock) == 0) {
	leaq	maintenance_lock(%rip), %rdi	#,
	call	pthread_mutex_trylock@PLT	#
# assoc.c:144:     if (pthread_mutex_trylock(&maintenance_lock) == 0) {
	testl	%eax, %eax	# _1
	jne	.L58	#,
# assoc.c:145:         if (curr_items > (hashsize(hashpower) * 3) / 2 && hashpower < HASHPOWER_MAX) {
	movl	hashpower(%rip), %edx	# hashpower, hashpower.12_2
	movl	$3, %eax	#, tmp108
	shlx	%rdx, %rax, %rax	# hashpower.12_2, tmp108, _3
# assoc.c:145:         if (curr_items > (hashsize(hashpower) * 3) / 2 && hashpower < HASHPOWER_MAX) {
	shrq	%rax	# _4
# assoc.c:145:         if (curr_items > (hashsize(hashpower) * 3) / 2 && hashpower < HASHPOWER_MAX) {
	cmpq	%rbx, %rax	# curr_items, _4
	jnb	.L51	#,
	cmpl	$31, %edx	#, hashpower.12_2
	jbe	.L60	#,
.L51:
# assoc.c:150: }
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 8
# assoc.c:148:         pthread_mutex_unlock(&maintenance_lock);
	leaq	maintenance_lock(%rip), %rdi	#,
	jmp	pthread_mutex_unlock@PLT	#
	.p2align 4
	.p2align 3
.L58:
	.cfi_restore_state
# assoc.c:150: }
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4
	.p2align 3
.L60:
	.cfi_restore_state
# assoc.c:146:             pthread_cond_signal(&maintenance_cond);
	leaq	maintenance_cond(%rip), %rdi	#,
	call	pthread_cond_signal@PLT	#
	jmp	.L51	#
	.cfi_endproc
.LFE88:
	.size	assoc_start_expand, .-assoc_start_expand
	.p2align 4
	.globl	assoc_insert
	.type	assoc_insert, @function
assoc_insert:
.LFB89:
	.cfi_startproc
	endbr64	
# assoc.c:158:     if (expanding &&
	cmpb	$0, expanding(%rip)	#, expanding
# assoc.c:159:         (oldbucket = (hv & hashmask(hashpower - 1))) >= expand_bucket)
	movl	hashpower(%rip), %eax	# hashpower, pretmp_45
# assoc.c:159:         (oldbucket = (hv & hashmask(hashpower - 1))) >= expand_bucket)
	movl	%esi, %esi	# hv, _44
# assoc.c:158:     if (expanding &&
	je	.L62	#,
# assoc.c:159:         (oldbucket = (hv & hashmask(hashpower - 1))) >= expand_bucket)
	leal	-1(%rax), %edx	#, _4
# assoc.c:159:         (oldbucket = (hv & hashmask(hashpower - 1))) >= expand_bucket)
	bzhi	%rdx, %rsi, %rdx	# _4, _44, oldbucket
# assoc.c:158:     if (expanding &&
	cmpq	expand_bucket(%rip), %rdx	# expand_bucket, oldbucket
	jnb	.L64	#,
.L62:
# assoc.c:164:         it->h_next = primary_hashtable[hv & hashmask(hashpower)];
	bzhi	%rax, %rsi, %rsi	# pretmp_45, _44, _17
# assoc.c:164:         it->h_next = primary_hashtable[hv & hashmask(hashpower)];
	movq	primary_hashtable(%rip), %rax	# primary_hashtable, primary_hashtable
	movq	(%rax,%rsi,8), %rdx	# *_19, _20
# assoc.c:164:         it->h_next = primary_hashtable[hv & hashmask(hashpower)];
	movq	%rdx, 16(%rdi)	# _20, it_25(D)->h_next
# assoc.c:165:         primary_hashtable[hv & hashmask(hashpower)] = it;
	movq	%rdi, (%rax,%rsi,8)	# it, *_19
# assoc.c:170: }
	movl	$1, %eax	#,
	ret	
	.p2align 4
	.p2align 3
.L64:
# assoc.c:161:         it->h_next = old_hashtable[oldbucket];
	movq	old_hashtable(%rip), %rax	# old_hashtable, old_hashtable
	leaq	(%rax,%rdx,8), %rax	#, _10
	movq	(%rax), %rdx	# *_10, _11
# assoc.c:161:         it->h_next = old_hashtable[oldbucket];
	movq	%rdx, 16(%rdi)	# _11, it_25(D)->h_next
# assoc.c:162:         old_hashtable[oldbucket] = it;
	movq	%rdi, (%rax)	# it, *_10
# assoc.c:170: }
	movl	$1, %eax	#,
	ret	
	.cfi_endproc
.LFE89:
	.size	assoc_insert, .-assoc_insert
	.section	.rodata.str1.1
.LC3:
	.string	"assoc.c"
.LC4:
	.string	"*before != 0"
	.text
	.p2align 4
	.globl	assoc_delete
	.type	assoc_delete, @function
assoc_delete:
.LFB90:
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
	movq	%rsi, %r12	# nkey, nkey
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdi, %rbp	# key, key
# assoc.c:108:         (oldbucket = (hv & hashmask(hashpower - 1))) >= expand_bucket)
	movl	%edx, %edx	# hv, _69
# assoc.c:172: void assoc_delete(const char *key, const size_t nkey, const uint32_t hv) {
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 48
# assoc.c:107:     if (expanding &&
	cmpb	$0, expanding(%rip)	#, expanding
# assoc.c:108:         (oldbucket = (hv & hashmask(hashpower - 1))) >= expand_bucket)
	movl	hashpower(%rip), %eax	# hashpower, pretmp_70
# assoc.c:107:     if (expanding &&
	je	.L66	#,
# assoc.c:108:         (oldbucket = (hv & hashmask(hashpower - 1))) >= expand_bucket)
	leal	-1(%rax), %ecx	#, _14
# assoc.c:108:         (oldbucket = (hv & hashmask(hashpower - 1))) >= expand_bucket)
	bzhi	%rcx, %rdx, %rcx	# _14, _69, oldbucket
# assoc.c:107:     if (expanding &&
	cmpq	expand_bucket(%rip), %rcx	# expand_bucket, oldbucket
	jnb	.L78	#,
.L66:
# assoc.c:112:         pos = &primary_hashtable[hv & hashmask(hashpower)];
	bzhi	%rax, %rdx, %rdx	# pretmp_70, _69, _27
# assoc.c:112:         pos = &primary_hashtable[hv & hashmask(hashpower)];
	movq	primary_hashtable(%rip), %rax	# primary_hashtable, primary_hashtable
	leaq	(%rax,%rdx,8), %r13	#, pos
.L67:
# assoc.c:115:     while (*pos && ((nkey != (*pos)->nkey) || memcmp(key, ITEM_key(*pos), nkey))) {
	movq	0(%r13), %rbx	# *pos_42, _30
# assoc.c:115:     while (*pos && ((nkey != (*pos)->nkey) || memcmp(key, ITEM_key(*pos), nkey))) {
	testq	%rbx, %rbx	# _30
	jne	.L68	#,
	jmp	.L69	#
	.p2align 5
	.p2align 4
	.p2align 3
.L70:
# assoc.c:116:         pos = &(*pos)->h_next;
	leaq	16(%rbx), %r13	#, pos
# assoc.c:115:     while (*pos && ((nkey != (*pos)->nkey) || memcmp(key, ITEM_key(*pos), nkey))) {
	movq	16(%rbx), %rbx	# MEM[(struct item * *)_44 + 16B], _30
# assoc.c:115:     while (*pos && ((nkey != (*pos)->nkey) || memcmp(key, ITEM_key(*pos), nkey))) {
	testq	%rbx, %rbx	# _30
	je	.L69	#,
.L68:
# assoc.c:115:     while (*pos && ((nkey != (*pos)->nkey) || memcmp(key, ITEM_key(*pos), nkey))) {
	movzbl	41(%rbx), %eax	# _44->nkey, _34
# assoc.c:115:     while (*pos && ((nkey != (*pos)->nkey) || memcmp(key, ITEM_key(*pos), nkey))) {
	cmpq	%rax, %r12	# _34, nkey
	jne	.L70	#,
# assoc.c:115:     while (*pos && ((nkey != (*pos)->nkey) || memcmp(key, ITEM_key(*pos), nkey))) {
	movzwl	38(%rbx), %eax	# _44->it_flags, _37
# assoc.c:115:     while (*pos && ((nkey != (*pos)->nkey) || memcmp(key, ITEM_key(*pos), nkey))) {
	movq	%r12, %rdx	# nkey,
	movq	%rbp, %rdi	# key,
# assoc.c:115:     while (*pos && ((nkey != (*pos)->nkey) || memcmp(key, ITEM_key(*pos), nkey))) {
	salq	$2, %rax	#, _38
	andl	$8, %eax	#, _39
# assoc.c:115:     while (*pos && ((nkey != (*pos)->nkey) || memcmp(key, ITEM_key(*pos), nkey))) {
	leaq	48(%rbx,%rax), %rsi	#, _40
	call	memcmp@PLT	#
# assoc.c:115:     while (*pos && ((nkey != (*pos)->nkey) || memcmp(key, ITEM_key(*pos), nkey))) {
	testl	%eax, %eax	# tmp159
	jne	.L70	#,
# assoc.c:181:         nxt = (*before)->h_next;
	movq	16(%rbx), %rax	# _44->h_next, nxt
# assoc.c:182:         (*before)->h_next = 0;   /* probably pointless, but whatever. */
	movq	$0, 16(%rbx)	#, _44->h_next
# assoc.c:183:         *before = nxt;
	movq	%rax, 0(%r13)	# nxt, *pos_45
# assoc.c:189: }
	addq	$8, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 40
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
.L78:
	.cfi_restore_state
# assoc.c:110:         pos = &old_hashtable[oldbucket];
	movq	old_hashtable(%rip), %rax	# old_hashtable, old_hashtable
	leaq	(%rax,%rcx,8), %r13	#, pos
	jmp	.L67	#
.L69:
# assoc.c:188:     assert(*before != 0);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rcx	#,
	movl	$188, %edx	#,
	leaq	.LC3(%rip), %rsi	#,
	leaq	.LC4(%rip), %rdi	#,
	call	__assert_fail@PLT	#
	.cfi_endproc
.LFE90:
	.size	assoc_delete, .-assoc_delete
	.section	.rodata.str1.1
.LC5:
	.string	"MEMCACHED_HASH_BULK_MOVE"
.LC6:
	.string	"Can't create thread: %s\n"
.LC7:
	.string	"mc-assocmaint"
	.text
	.p2align 4
	.globl	start_assoc_maintenance_thread
	.type	start_assoc_maintenance_thread, @function
start_assoc_maintenance_thread:
.LFB92:
	.cfi_startproc
	endbr64	
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
# assoc.c:270:     char *env = getenv("MEMCACHED_HASH_BULK_MOVE");
	leaq	.LC5(%rip), %rdi	#,
	call	getenv@PLT	#
# assoc.c:271:     if (env != NULL) {
	testq	%rax, %rax	# env
	je	.L81	#,
# /usr/include/stdlib.h:487:   return (int) strtol (__nptr, (char **) NULL, 10);
	movl	$10, %edx	#,
	xorl	%esi, %esi	#
	movq	%rax, %rdi	# env,
	call	__isoc23_strtol@PLT	#
# assoc.c:272:         hash_bulk_move = atoi(env);
	movl	$1, %edx	#, tmp114
	testl	%eax, %eax	# _16
	cmove	%edx, %eax	# _16,, tmp114, tmp113
	movl	%eax, hash_bulk_move(%rip)	# tmp113, hash_bulk_move
.L81:
# assoc.c:278:     if ((ret = pthread_create(&maintenance_tid, NULL,
	xorl	%ecx, %ecx	#
	leaq	assoc_maintenance_thread(%rip), %rdx	#,
	xorl	%esi, %esi	#
	leaq	maintenance_tid(%rip), %rdi	#,
	call	pthread_create@PLT	#
	movl	%eax, %ebx	# <retval>, <retval>
# assoc.c:278:     if ((ret = pthread_create(&maintenance_tid, NULL,
	testl	%eax, %eax	# <retval>
	jne	.L87	#,
# assoc.c:283:     thread_setname(maintenance_tid, "mc-assocmaint");
	movq	maintenance_tid(%rip), %rdi	# maintenance_tid,
	leaq	.LC7(%rip), %rsi	#,
	call	thread_setname@PLT	#
.L79:
# assoc.c:285: }
	movl	%ebx, %eax	# <retval>,
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4
	.p2align 3
.L87:
	.cfi_restore_state
# assoc.c:280:         fprintf(stderr, "Can't create thread: %s\n", strerror(ret));
	movl	%eax, %edi	# <retval>,
# assoc.c:281:         return -1;
	movl	$-1, %ebx	#, <retval>
# assoc.c:280:         fprintf(stderr, "Can't create thread: %s\n", strerror(ret));
	call	strerror@PLT	#
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:111:   return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
	movq	stderr(%rip), %rdi	# stderr,
	leaq	.LC6(%rip), %rdx	#,
	movl	$2, %esi	#,
	movq	%rax, %rcx	# _1,
	xorl	%eax, %eax	#
	call	__fprintf_chk@PLT	#
# assoc.c:281:         return -1;
	jmp	.L79	#
	.cfi_endproc
.LFE92:
	.size	start_assoc_maintenance_thread, .-start_assoc_maintenance_thread
	.p2align 4
	.globl	stop_assoc_maintenance_thread
	.type	stop_assoc_maintenance_thread, @function
stop_assoc_maintenance_thread:
.LFB93:
	.cfi_startproc
	endbr64	
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
# assoc.c:288:     mutex_lock(&maintenance_lock);
	leaq	maintenance_lock(%rip), %rdi	#,
	call	pthread_mutex_lock@PLT	#
# assoc.c:290:     pthread_cond_signal(&maintenance_cond);
	leaq	maintenance_cond(%rip), %rdi	#,
# assoc.c:289:     do_run_maintenance_thread = 0;
	movl	$0, do_run_maintenance_thread(%rip)	#, do_run_maintenance_thread
# assoc.c:290:     pthread_cond_signal(&maintenance_cond);
	call	pthread_cond_signal@PLT	#
# assoc.c:291:     mutex_unlock(&maintenance_lock);
	leaq	maintenance_lock(%rip), %rdi	#,
	call	pthread_mutex_unlock@PLT	#
# assoc.c:294:     pthread_join(maintenance_tid, NULL);
	movq	maintenance_tid(%rip), %rdi	# maintenance_tid,
	xorl	%esi, %esi	#
# assoc.c:295: }
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 8
# assoc.c:294:     pthread_join(maintenance_tid, NULL);
	jmp	pthread_join@PLT	#
	.cfi_endproc
.LFE93:
	.size	stop_assoc_maintenance_thread, .-stop_assoc_maintenance_thread
	.p2align 4
	.globl	assoc_get_iterator
	.type	assoc_get_iterator, @function
assoc_get_iterator:
.LFB94:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
# assoc.c:305:     struct assoc_iterator *iter = calloc(1, sizeof(struct assoc_iterator));
	movl	$32, %esi	#,
	movl	$1, %edi	#,
# assoc.c:304: void *assoc_get_iterator(void) {
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 32
# assoc.c:305:     struct assoc_iterator *iter = calloc(1, sizeof(struct assoc_iterator));
	call	calloc@PLT	#
# assoc.c:306:     if (iter == NULL) {
	testq	%rax, %rax	# tmp103
	je	.L91	#,
# assoc.c:310:     if (mutex_trylock(&maintenance_lock) == 0) {
	leaq	maintenance_lock(%rip), %rdi	#,
	movq	%rax, %rbx	#, tmp103
	movq	%rax, %rbp	# tmp103, <retval>
	call	pthread_mutex_trylock@PLT	#
# assoc.c:310:     if (mutex_trylock(&maintenance_lock) == 0) {
	testl	%eax, %eax	# _1
	jne	.L100	#,
.L90:
# assoc.c:316: }
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
.L100:
	.cfi_restore_state
# assoc.c:313:         free(iter);
	movq	%rbx, %rdi	# tmp103,
	call	free@PLT	#
.L91:
# assoc.c:307:         return NULL;
	xorl	%ebp, %ebp	# <retval>
	jmp	.L90	#
	.cfi_endproc
.LFE94:
	.size	assoc_get_iterator, .-assoc_get_iterator
	.p2align 4
	.globl	assoc_iterate
	.type	assoc_iterate, @function
assoc_iterate:
.LFB95:
	.cfi_startproc
	endbr64	
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 32
# assoc.c:322:     if (iter->bucket_locked) {
	movzbl	24(%rdi), %edx	# MEM[(struct assoc_iterator *)iterp_25(D)].bucket_locked, <retval>
# assoc.c:318: bool assoc_iterate(void *iterp, item **it) {
	movq	%rdi, %rax	# iterp, iterp
# assoc.c:320:     *it = NULL;
	movq	$0, (%rsi)	#, *it_27(D)
# assoc.c:322:     if (iter->bucket_locked) {
	testb	%dl, %dl	# <retval>
	jne	.L108	#,
# assoc.c:339:     if (iter->bucket != hashsize(hashpower)) {
	movl	hashpower(%rip), %r8d	# hashpower, hashpower
# assoc.c:339:     if (iter->bucket != hashsize(hashpower)) {
	movq	(%rdi), %rdi	# MEM[(struct assoc_iterator *)iterp_25(D)].bucket, _8
# assoc.c:339:     if (iter->bucket != hashsize(hashpower)) {
	movl	$1, %ecx	#, tmp129
	shlx	%r8, %rcx, %rcx	# hashpower, tmp129, _10
# assoc.c:339:     if (iter->bucket != hashsize(hashpower)) {
	cmpq	%rcx, %rdi	# _10, _8
	je	.L101	#,
# assoc.c:341:         item_lock(iter->bucket);
	movq	%rax, (%rsp)	# iterp, %sfp
	movq	%rsi, 8(%rsp)	# it, %sfp
	call	item_lock@PLT	#
# assoc.c:342:         iter->bucket_locked = true;
	movq	(%rsp), %rax	# %sfp, iterp
# assoc.c:344:         iter->it = primary_hashtable[iter->bucket];
	movq	primary_hashtable(%rip), %rdx	# primary_hashtable, primary_hashtable
# assoc.c:344:         iter->it = primary_hashtable[iter->bucket];
	movq	(%rax), %rdi	# MEM[(struct assoc_iterator *)iterp_25(D)].bucket, _13
# assoc.c:342:         iter->bucket_locked = true;
	movb	$1, 24(%rax)	#, MEM[(struct assoc_iterator *)iterp_25(D)].bucket_locked
# assoc.c:344:         iter->it = primary_hashtable[iter->bucket];
	movq	(%rdx,%rdi,8), %rdx	# *_15, _16
# assoc.c:344:         iter->it = primary_hashtable[iter->bucket];
	movq	%rdx, 8(%rax)	# _16, MEM[(struct assoc_iterator *)iterp_25(D)].it
# assoc.c:345:         if (iter->it != NULL) {
	testq	%rdx, %rdx	# _16
	je	.L106	#,
# assoc.c:347:             iter->next = iter->it->h_next;
	movq	16(%rdx), %rcx	# _16->h_next, _16->h_next
# assoc.c:348:             *it = iter->it;
	movq	8(%rsp), %rsi	# %sfp, it
# assoc.c:347:             iter->next = iter->it->h_next;
	movq	%rcx, 16(%rax)	# _16->h_next, MEM[(struct assoc_iterator *)iterp_25(D)].next
# assoc.c:348:             *it = iter->it;
	movq	%rdx, (%rsi)	# _16, *it_27(D)
.L104:
# assoc.c:335:         return true;
	movl	$1, %edx	#, <retval>
.L101:
# assoc.c:360: }
	movl	%edx, %eax	# <retval>,
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4
	.p2align 3
.L108:
	.cfi_restore_state
# assoc.c:323:         if (iter->next != NULL) {
	movq	16(%rdi), %rdx	# MEM[(struct assoc_iterator *)iterp_25(D)].next, _2
# assoc.c:323:         if (iter->next != NULL) {
	testq	%rdx, %rdx	# _2
	je	.L103	#,
# assoc.c:324:             iter->it = iter->next;
	vmovq	%rdx, %xmm1	# _2, _2
	vpinsrq	$1, 16(%rdx), %xmm1, %xmm0	# _2->h_next, _2, _44
	vmovdqu	%xmm0, 8(%rdi)	# _44, MEM <vector(2) long unsigned int> [(struct item * *)iterp_25(D) + 8B]
# assoc.c:326:             *it = iter->it;
	movq	%rdx, (%rsi)	# _2, *it_27(D)
	jmp	.L104	#
	.p2align 4
	.p2align 3
.L106:
	movq	%rax, (%rsp)	# iterp, %sfp
# assoc.c:351:             item_unlock(iter->bucket);
	call	item_unlock@PLT	#
# assoc.c:352:             iter->bucket_locked = false;
	movq	(%rsp), %rax	# %sfp, iterp
# assoc.c:353:             iter->bucket++;
	incq	(%rax)	# MEM[(struct assoc_iterator *)iterp_25(D)].bucket
# assoc.c:352:             iter->bucket_locked = false;
	movb	$0, 24(%rax)	#, MEM[(struct assoc_iterator *)iterp_25(D)].bucket_locked
	jmp	.L104	#
	.p2align 4
	.p2align 3
.L103:
# assoc.c:329:             item_unlock(iter->bucket);
	movl	(%rdi), %edi	# MEM[(struct assoc_iterator *)iterp_25(D)].bucket, MEM[(struct assoc_iterator *)iterp_25(D)].bucket
	movq	%rsi, 8(%rsp)	# it, %sfp
	movq	%rax, (%rsp)	# iterp, %sfp
	call	item_unlock@PLT	#
# assoc.c:331:             iter->bucket++;
	movq	(%rsp), %rax	# %sfp, iterp
# assoc.c:333:             *it = NULL;
	movq	8(%rsp), %rsi	# %sfp, it
# assoc.c:331:             iter->bucket++;
	incq	(%rax)	# MEM[(struct assoc_iterator *)iterp_25(D)].bucket
# assoc.c:332:             iter->bucket_locked = false;
	movb	$0, 24(%rax)	#, MEM[(struct assoc_iterator *)iterp_25(D)].bucket_locked
# assoc.c:333:             *it = NULL;
	movq	$0, (%rsi)	#, *it_27(D)
	jmp	.L104	#
	.cfi_endproc
.LFE95:
	.size	assoc_iterate, .-assoc_iterate
	.p2align 4
	.globl	assoc_iterate_final
	.type	assoc_iterate_final, @function
assoc_iterate_final:
.LFB96:
	.cfi_startproc
	endbr64	
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
# assoc.c:364:     if (iter->bucket_locked) {
	cmpb	$0, 24(%rdi)	#, MEM[(struct assoc_iterator *)iterp_5(D)].bucket_locked
# assoc.c:362: void assoc_iterate_final(void *iterp) {
	movq	%rdi, %rbx	# iterp, iterp
# assoc.c:364:     if (iter->bucket_locked) {
	jne	.L112	#,
.L110:
# assoc.c:367:     mutex_unlock(&maintenance_lock);
	leaq	maintenance_lock(%rip), %rdi	#,
	call	pthread_mutex_unlock@PLT	#
# assoc.c:368:     free(iter);
	movq	%rbx, %rdi	# iterp,
# assoc.c:369: }
	popq	%rbx	#
	.cfi_remember_state
	.cfi_def_cfa_offset 8
# assoc.c:368:     free(iter);
	jmp	free@PLT	#
	.p2align 4
	.p2align 3
.L112:
	.cfi_restore_state
# assoc.c:365:         item_unlock(iter->bucket);
	movl	(%rdi), %edi	# MEM[(struct assoc_iterator *)iterp_5(D)].bucket, MEM[(struct assoc_iterator *)iterp_5(D)].bucket
	call	item_unlock@PLT	#
	jmp	.L110	#
	.cfi_endproc
.LFE96:
	.size	assoc_iterate_final, .-assoc_iterate_final
	.section	.rodata
	.align 8
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 13
__PRETTY_FUNCTION__.0:
	.string	"assoc_delete"
	.local	maintenance_tid
	.comm	maintenance_tid,8,8
	.globl	hash_bulk_move
	.data
	.align 4
	.type	hash_bulk_move, @object
	.size	hash_bulk_move, 4
hash_bulk_move:
	.long	1
	.align 4
	.type	do_run_maintenance_thread, @object
	.size	do_run_maintenance_thread, 4
do_run_maintenance_thread:
	.long	1
	.local	expand_bucket
	.comm	expand_bucket,8,8
	.local	expanding
	.comm	expanding,1,1
	.local	old_hashtable
	.comm	old_hashtable,8,8
	.local	primary_hashtable
	.comm	primary_hashtable,8,8
	.globl	hashpower
	.align 4
	.type	hashpower, @object
	.size	hashpower, 4
hashpower:
	.long	16
	.local	maintenance_lock
	.comm	maintenance_lock,40,32
	.local	maintenance_cond
	.comm	maintenance_cond,48,32
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
