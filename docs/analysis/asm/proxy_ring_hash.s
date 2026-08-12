	.file	"proxy_ring_hash.c"
# GNU C23 (Ubuntu 15.2.0-16ubuntu1) version 15.2.0 (x86_64-linux-gnu)
#	compiled by GNU C version 15.2.0, GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.3.1, isl version isl-0.27-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -D_FORTIFY_SOURCE=3 -march=znver3 -mmmx -mpopcnt -msse -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mavx -mavx2 -msse4a -mno-fma4 -mno-xop -mfma -mno-avx512f -mbmi -mbmi2 -maes -mpclmul -mno-avx512vl -mno-avx512bw -mno-avx512dq -mno-avx512cd -mno-avx512vbmi -mno-avx512ifma -mno-avx512vpopcntdq -mno-avx512vbmi2 -mno-gfni -mvpclmulqdq -mno-avx512vnni -mno-avx512bitalg -mno-avx512bf16 -mno-avx512vp2intersect -mno-3dnow -madx -mabm -mno-cldemote -mclflushopt -mclwb -mclzero -mcx16 -mno-enqcmd -mf16c -mfsgsbase -mfxsr -mno-hle -msahf -mno-lwp -mlzcnt -mmovbe -mno-movdir64b -mno-movdiri -mno-mwaitx -mno-pconfig -mno-pku -mprfchw -mno-ptwrite -mrdpid -mrdrnd -mrdseed -mno-rtm -mno-serialize -mno-sgx -msha -mshstk -mno-tbm -mno-tsxldtrk -mvaes -mno-waitpkg -mno-wbnoinvd -mxsave -mxsavec -mxsaveopt -mxsaves -mno-amx-tile -mno-amx-int8 -mno-amx-bf16 -mno-uintr -mno-hreset -mno-kl -mno-widekl -mno-avxvnni -mno-avx512fp16 -mno-avxifma -mno-avxvnniint8 -mno-avxneconvert -mno-cmpccxadd -mno-amx-fp16 -mno-prefetchi -mno-raoint -mno-amx-complex -mno-avxvnniint16 -mno-sm3 -mno-sha512 -mno-sm4 -mno-apxf -mno-usermsr -mno-avx10.2 -mno-amx-avx512 -mno-amx-tf32 -mno-amx-transpose -mno-amx-fp8 -mno-movrs -mno-amx-movrs --param=l1-cache-size=32 --param=l1-cache-line-size=64 --param=l2-cache-size=512 -mtune=znver3 -O3 -ftree-vectorize -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection -fzero-init-padding-bits=all
	.text
	.p2align 4
	.type	ketama_compare, @function
ketama_compare:
.LFB7467:
	.cfi_startproc
	endbr64	
# proxy_ring_hash.c:67:     return (a->point < b->point) ? -1 : ((a->point > b->point) ? 1 : 0);
	movl	(%rdi), %edx	# MEM[(const struct cpoint *)p1_5(D)].point, _1
# proxy_ring_hash.c:67:     return (a->point < b->point) ? -1 : ((a->point > b->point) ? 1 : 0);
	movl	(%rsi), %ecx	# MEM[(const struct cpoint *)p2_6(D)].point, _2
# proxy_ring_hash.c:67:     return (a->point < b->point) ? -1 : ((a->point > b->point) ? 1 : 0);
	movl	$-1, %eax	#, <retval>
# proxy_ring_hash.c:67:     return (a->point < b->point) ? -1 : ((a->point > b->point) ? 1 : 0);
	cmpl	%ecx, %edx	# _2, _1
	jb	.L1	#,
# proxy_ring_hash.c:67:     return (a->point < b->point) ? -1 : ((a->point > b->point) ? 1 : 0);
	xorl	%eax, %eax	# <retval>
	cmpl	%edx, %ecx	# _1, _2
	setb	%al	#, <retval>
.L1:
# proxy_ring_hash.c:68: }
	ret	
	.cfi_endproc
.LFE7467:
	.size	ketama_compare, .-ketama_compare
	.p2align 4
	.type	ketama_get_server, @function
ketama_get_server:
.LFB7469:
	.cfi_startproc
	endbr64	
# proxy_ring_hash.c:92:     int highp = kt->total_buckets;
	movl	16(%rsi), %r11d	# MEM[(struct ketama_t *)ctx_17(D)].total_buckets, _1
# proxy_ring_hash.c:89: static uint32_t ketama_get_server(uint64_t hash, void *ctx) {
	movq	%rsi, %r10	# ctx, ctx
# proxy_ring_hash.c:93:     int lowp = 0, midp;
	xorl	%ecx, %ecx	# lowp
# proxy_ring_hash.c:92:     int highp = kt->total_buckets;
	movl	%r11d, %esi	# _1, highp
	jmp	.L13	#
	.p2align 4
	.p2align 3
.L24:
# proxy_ring_hash.c:108:         if ( h <= midval && h > midval1 )
	cmpl	%edi, %r9d	# hash, midval1
	jb	.L23	#,
# proxy_ring_hash.c:111:         if ( midval < h )
	cmpl	%edi, %edx	# hash, midval
	jb	.L22	#,
# proxy_ring_hash.c:114:             highp = midp - 1;
	leal	-1(%rax), %esi	#, highp
# proxy_ring_hash.c:116:         if ( lowp > highp )
	cmpl	%ecx, %esi	# lowp, highp
	jl	.L12	#,
.L13:
# proxy_ring_hash.c:100:         midp = (int)( ( lowp+highp ) / 2 );
	leal	(%rsi,%rcx), %edx	#, _2
# proxy_ring_hash.c:100:         midp = (int)( ( lowp+highp ) / 2 );
	movl	%edx, %eax	# _2, tmp117
	shrl	$31, %eax	#, tmp117
	addl	%edx, %eax	# _2, tmp118
	sarl	%eax	# midp_22
# proxy_ring_hash.c:102:         if ( midp == kt->total_buckets )
	cmpl	%eax, %r11d	# midp_22, _1
	je	.L12	#,
# proxy_ring_hash.c:105:         midval = kt->continuum[midp].point;
	movslq	%eax, %r8	# midp_22, midp
# proxy_ring_hash.c:106:         midval1 = midp == 0 ? 0 : kt->continuum[midp-1].point;
	xorl	%r9d, %r9d	# midval1
# proxy_ring_hash.c:105:         midval = kt->continuum[midp].point;
	movl	20(%r10,%r8,8), %edx	# MEM[(struct ketama_t *)ctx_17(D)].continuum[midp_22].point, midval
# proxy_ring_hash.c:106:         midval1 = midp == 0 ? 0 : kt->continuum[midp-1].point;
	testl	%eax, %eax	# midp_22
	je	.L8	#,
# proxy_ring_hash.c:106:         midval1 = midp == 0 ? 0 : kt->continuum[midp-1].point;
	leal	-1(%rax), %r9d	#, _5
# proxy_ring_hash.c:106:         midval1 = midp == 0 ? 0 : kt->continuum[midp-1].point;
	movslq	%r9d, %r9	# _5, _5
	movl	20(%r10,%r9,8), %r9d	# MEM[(struct ketama_t *)ctx_17(D)].continuum[_5].point, midval1
.L8:
# proxy_ring_hash.c:108:         if ( h <= midval && h > midval1 )
	cmpl	%edi, %edx	# hash, midval
	jnb	.L24	#,
.L22:
# proxy_ring_hash.c:112:             lowp = midp + 1;
	leal	1(%rax), %ecx	#, lowp
# proxy_ring_hash.c:116:         if ( lowp > highp )
	cmpl	%ecx, %esi	# lowp, highp
	jge	.L13	#,
.L12:
# proxy_ring_hash.c:103:             return kt->continuum[0].id-1; // if at the end, roll back to zeroth
	movl	24(%r10), %eax	# MEM[(struct ketama_t *)ctx_17(D)].continuum[0].id, MEM[(struct ketama_t *)ctx_17(D)].continuum[0].id
	decl	%eax	# <retval>
	ret	
	.p2align 4
	.p2align 3
.L23:
# proxy_ring_hash.c:109:             return kt->continuum[midp].id-1;
	movl	24(%r10,%r8,8), %eax	# MEM[(struct ketama_t *)ctx_17(D)].continuum[midp_22].id, MEM[(struct ketama_t *)ctx_17(D)].continuum[midp_22].id
	decl	%eax	# <retval>
# proxy_ring_hash.c:119: }
	ret	
	.cfi_endproc
.LFE7469:
	.size	ketama_get_server, .-ketama_get_server
	.p2align 4
	.type	ketama_key_hasher, @function
ketama_key_hasher:
.LFB7468:
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
	movq	%rdi, %r12	# key, key
	addq	$-128, %rsp	#,
	.cfi_def_cfa_offset 160
# proxy_ring_hash.c:70: static uint64_t ketama_key_hasher(const void *key, size_t len, uint64_t seed) {
	movq	%fs:40, %rbp	# MEM[(<address-space-1> long unsigned int *)40B], len
	movq	%rbp, 120(%rsp)	# len, D.54351
	movq	%rsi, %rbp	# len, len
# proxy_ring_hash.c:76:     md5_init(&md5state);
	movq	%rsp, %rdi	#,
	call	md5_init@PLT	#
# proxy_ring_hash.c:77:     md5_append(&md5state, (unsigned char *)key, len);
	movq	%r12, %rsi	# key,
	movq	%rsp, %rdi	#,
	movl	%ebp, %edx	# len, len
	call	md5_append@PLT	#
# proxy_ring_hash.c:78:     md5_finish(&md5state, digest);
	leaq	96(%rsp), %rsi	#, tmp109
	movq	%rsp, %rdi	#,
	call	md5_finish@PLT	#
# proxy_ring_hash.c:85:     return h;
	movl	96(%rsp), %eax	# MEM <unsigned int> [(unsigned char *)&digest], <retval>
# proxy_ring_hash.c:86: }
	movq	120(%rsp), %rdx	# D.54351, tmp115
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp115
	jne	.L28	#,
	subq	$-128, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 32
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret	
.L28:
	.cfi_restore_state
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE7468:
	.size	ketama_key_hasher, .-ketama_key_hasher
	.p2align 4
	.type	XXH3_hashLong_64b_default.constprop.0, @function
XXH3_hashLong_64b_default.constprop.0:
.LFB7476:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
# xxhash.h:4227:     size_t const nb_blocks = (len - 1) / block_len;
	leaq	-1(%rsi), %r10	#, _2
# xxhash.h:4326: XXH3_hashLong_64b_default(const void* XXH_RESTRICT input, size_t len,
	movq	%rdi, %r11	# input, input
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
# xxhash.h:4233:     for (n = 0; n < nb_blocks; n++) {
	movq	%r10, %r9	# _2, nb_blocks
# xxhash.h:4326: XXH3_hashLong_64b_default(const void* XXH_RESTRICT input, size_t len,
	andq	$-32, %rsp	#,
	subq	$96, %rsp	#,
# xxhash.h:4233:     for (n = 0; n < nb_blocks; n++) {
	shrq	$10, %r9	#, nb_blocks
# xxhash.h:4326: XXH3_hashLong_64b_default(const void* XXH_RESTRICT input, size_t len,
	movq	%fs:40, %r8	# MEM[(<address-space-1> long unsigned int *)40B], len
	movq	%r8, 88(%rsp)	# len, D.54447
	movq	%rsi, %r8	# len, len
# xxhash.h:4233:     for (n = 0; n < nb_blocks; n++) {
	je	.L30	#,
	vmovdqa	.LC0(%rip), %ymm2	#, acc__lsm.74
	vmovdqa	.LC1(%rip), %ymm3	#, acc__lsm.73
# /usr/lib/gcc/x86_64-linux-gnu/15/include/avx2intrin.h:569:   return (__m256i)__builtin_ia32_pmuludq256 ((__v8si)__A, (__v8si)__B);
	movl	$-1640531535, %eax	#, tmp287
	salq	$10, %r9	#, nb_blocks
	vmovdqa	.LC2(%rip), %ymm7	#, tmp361
	vmovdqa	.LC4(%rip), %ymm6	#, tmp362
	vmovd	%eax, %xmm5	# tmp287, tmp286
# xxhash.h:4233:     for (n = 0; n < nb_blocks; n++) {
	xorl	%esi, %esi	# ivtmp.119
	leaq	384(%rdi), %rdi	#, _134
	leaq	160+XXH3_kSecret(%rip), %rcx	#, _82
# /usr/lib/gcc/x86_64-linux-gnu/15/include/avx2intrin.h:569:   return (__m256i)__builtin_ia32_pmuludq256 ((__v8si)__A, (__v8si)__B);
	vpbroadcastd	%xmm5, %ymm5	# tmp286, tmp286
	.p2align 4
	.p2align 3
.L32:
	leaq	(%rdi,%rsi), %rdx	#, ivtmp.107
	leaq	32+XXH3_kSecret(%rip), %rax	#, ivtmp.111
	.p2align 4
	.p2align 3
.L31:
# /usr/lib/gcc/x86_64-linux-gnu/15/include/avxintrin.h:873:   return *__P;
	vmovdqu	-384(%rdx), %ymm1	# MEM[(const __m256i_u * {ref-all})_11 + -384B], MEM[(const __m256i_u * {ref-all})_11 + -384B]
# xxhash.h:4209:     for (n = 0; n < nbStripes; n++ ) {
	addq	$8, %rax	#, ivtmp.111
# xxhash.h:4211:         XXH_PREFETCH(in + XXH_PREFETCH_DIST);
	prefetcht0	(%rdx)	# ivtmp.107
# xxhash.h:4209:     for (n = 0; n < nbStripes; n++ ) {
	addq	$64, %rdx	#, ivtmp.107
# /usr/lib/gcc/x86_64-linux-gnu/15/include/avx2intrin.h:915:   return (__m256i) ((__v4du)__A ^ (__v4du)__B);
	vpxor	-40(%rax), %ymm1, %ymm0	# MEM[(const __m256i_u * {ref-all})_84 + -32B], MEM[(const __m256i_u * {ref-all})_11 + -384B], _330
# /usr/lib/gcc/x86_64-linux-gnu/15/include/avx2intrin.h:599:   return (__m256i)__builtin_ia32_pshufd256 ((__v8si)__A, __mask);
	vpshufd	$78, %ymm1, %ymm1	#, MEM[(const __m256i_u * {ref-all})_11 + -384B], tmp270
	vpshufd	$49, %ymm0, %ymm4	#, _330, tmp268
# /usr/lib/gcc/x86_64-linux-gnu/15/include/avx2intrin.h:569:   return (__m256i)__builtin_ia32_pmuludq256 ((__v8si)__A, (__v8si)__B);
	vpmuludq	%ymm4, %ymm0, %ymm0	# tmp268, _330, tmp269
# /usr/lib/gcc/x86_64-linux-gnu/15/include/avx2intrin.h:128:   return (__m256i) ((__v4du)__A + (__v4du)__B);
	vpaddq	%ymm1, %ymm0, %ymm0	# tmp270, tmp269, _177
# /usr/lib/gcc/x86_64-linux-gnu/15/include/avxintrin.h:873:   return *__P;
	vmovdqu	-416(%rdx), %ymm1	# MEM[(const __m256i_u * {ref-all})_11 + -352B], MEM[(const __m256i_u * {ref-all})_11 + -352B]
# /usr/lib/gcc/x86_64-linux-gnu/15/include/avx2intrin.h:128:   return (__m256i) ((__v4du)__A + (__v4du)__B);
	vpaddq	%ymm3, %ymm0, %ymm3	# acc__lsm.73, _177, acc__lsm.73
# /usr/lib/gcc/x86_64-linux-gnu/15/include/avx2intrin.h:915:   return (__m256i) ((__v4du)__A ^ (__v4du)__B);
	vpxor	-8(%rax), %ymm1, %ymm0	# MEM[(const __m256i_u * {ref-all})_84], MEM[(const __m256i_u * {ref-all})_11 + -352B], _356
# /usr/lib/gcc/x86_64-linux-gnu/15/include/avx2intrin.h:599:   return (__m256i)__builtin_ia32_pshufd256 ((__v8si)__A, __mask);
	vpshufd	$78, %ymm1, %ymm1	#, MEM[(const __m256i_u * {ref-all})_11 + -352B], tmp277
	vpshufd	$49, %ymm0, %ymm4	#, _356, tmp275
# /usr/lib/gcc/x86_64-linux-gnu/15/include/avx2intrin.h:569:   return (__m256i)__builtin_ia32_pmuludq256 ((__v8si)__A, (__v8si)__B);
	vpmuludq	%ymm4, %ymm0, %ymm0	# tmp275, _356, tmp276
# /usr/lib/gcc/x86_64-linux-gnu/15/include/avx2intrin.h:128:   return (__m256i) ((__v4du)__A + (__v4du)__B);
	vpaddq	%ymm1, %ymm0, %ymm0	# tmp277, tmp276, _174
	vpaddq	%ymm2, %ymm0, %ymm2	# acc__lsm.74, _174, acc__lsm.74
# xxhash.h:4209:     for (n = 0; n < nbStripes; n++ ) {
	cmpq	%rax, %rcx	# ivtmp.111, _82
	jne	.L31	#,
# /usr/lib/gcc/x86_64-linux-gnu/15/include/avx2intrin.h:789:   return (__m256i)__builtin_ia32_psrlqi256 ((__v4di)__A, __B);
	vpsrlq	$47, %ymm3, %ymm0	#, acc__lsm.73, tmp279
# /usr/lib/gcc/x86_64-linux-gnu/15/include/avx2intrin.h:915:   return (__m256i) ((__v4du)__A ^ (__v4du)__B);
	vpxor	%ymm7, %ymm3, %ymm3	# tmp361, acc__lsm.73, _65
# xxhash.h:4233:     for (n = 0; n < nb_blocks; n++) {
	addq	$1024, %rsi	#, ivtmp.119
# /usr/lib/gcc/x86_64-linux-gnu/15/include/avx2intrin.h:915:   return (__m256i) ((__v4du)__A ^ (__v4du)__B);
	vpxor	%ymm0, %ymm3, %ymm3	# tmp279, _65, _284
# /usr/lib/gcc/x86_64-linux-gnu/15/include/avx2intrin.h:599:   return (__m256i)__builtin_ia32_pshufd256 ((__v8si)__A, __mask);
	vpshufd	$49, %ymm3, %ymm0	#, _284, tmp283
# /usr/lib/gcc/x86_64-linux-gnu/15/include/avx2intrin.h:569:   return (__m256i)__builtin_ia32_pmuludq256 ((__v8si)__A, (__v8si)__B);
	vpmuludq	%ymm5, %ymm3, %ymm3	# tmp286, _284, tmp284
	vpmuludq	%ymm5, %ymm0, %ymm0	# tmp286, tmp283, tmp288
# /usr/lib/gcc/x86_64-linux-gnu/15/include/avx2intrin.h:698:   return (__m256i)__builtin_ia32_psllqi256 ((__v4di)__A, __B);
	vpsllq	$32, %ymm0, %ymm0	#, tmp288, tmp292
# /usr/lib/gcc/x86_64-linux-gnu/15/include/avx2intrin.h:128:   return (__m256i) ((__v4du)__A + (__v4du)__B);
	vpaddq	%ymm0, %ymm3, %ymm3	# tmp292, tmp284, acc__lsm.73
# /usr/lib/gcc/x86_64-linux-gnu/15/include/avx2intrin.h:789:   return (__m256i)__builtin_ia32_psrlqi256 ((__v4di)__A, __B);
	vpsrlq	$47, %ymm2, %ymm0	#, acc__lsm.74, tmp293
# /usr/lib/gcc/x86_64-linux-gnu/15/include/avx2intrin.h:915:   return (__m256i) ((__v4du)__A ^ (__v4du)__B);
	vpxor	%ymm6, %ymm2, %ymm2	# tmp362, acc__lsm.74, _125
	vpxor	%ymm0, %ymm2, %ymm2	# tmp293, _125, _308
# /usr/lib/gcc/x86_64-linux-gnu/15/include/avx2intrin.h:599:   return (__m256i)__builtin_ia32_pshufd256 ((__v8si)__A, __mask);
	vpshufd	$49, %ymm2, %ymm0	#, _308, tmp297
# /usr/lib/gcc/x86_64-linux-gnu/15/include/avx2intrin.h:569:   return (__m256i)__builtin_ia32_pmuludq256 ((__v8si)__A, (__v8si)__B);
	vpmuludq	%ymm5, %ymm2, %ymm2	# tmp286, _308, tmp298
	vpmuludq	%ymm5, %ymm0, %ymm0	# tmp286, tmp297, tmp302
# /usr/lib/gcc/x86_64-linux-gnu/15/include/avx2intrin.h:698:   return (__m256i)__builtin_ia32_psllqi256 ((__v4di)__A, __B);
	vpsllq	$32, %ymm0, %ymm0	#, tmp302, tmp306
# /usr/lib/gcc/x86_64-linux-gnu/15/include/avx2intrin.h:128:   return (__m256i) ((__v4du)__A + (__v4du)__B);
	vpaddq	%ymm0, %ymm2, %ymm2	# tmp306, tmp298, acc__lsm.74
# xxhash.h:4233:     for (n = 0; n < nb_blocks; n++) {
	cmpq	%rsi, %r9	# ivtmp.119, nb_blocks
	jne	.L32	#,
# xxhash.h:4240:     {   size_t const nbStripes = ((len - 1) - (block_len * nb_blocks)) / XXH_STRIPE_LEN;
	subq	%r9, %r10	# nb_blocks, _63
# xxhash.h:4209:     for (n = 0; n < nbStripes; n++ ) {
	shrq	$6, %r10	#, nbStripes
	je	.L35	#,
.L34:
	salq	$6, %r10	#, _103
	leaq	(%rdi,%r9), %rax	#, ivtmp.94
	leaq	XXH3_kSecret(%rip), %rdx	#, ivtmp.96
	leaq	(%r10,%r9), %rcx	#, _135
	addq	%rcx, %rdi	# _135, _101
	.p2align 4
	.p2align 3
.L36:
# /usr/lib/gcc/x86_64-linux-gnu/15/include/avxintrin.h:873:   return *__P;
	vmovdqu	-384(%rax), %ymm1	# MEM[(const __m256i_u * {ref-all})_69 + -384B], MEM[(const __m256i_u * {ref-all})_69 + -384B]
# xxhash.h:4211:         XXH_PREFETCH(in + XXH_PREFETCH_DIST);
	prefetcht0	(%rax)	# ivtmp.94
# xxhash.h:4209:     for (n = 0; n < nbStripes; n++ ) {
	addq	$64, %rax	#, ivtmp.94
	addq	$8, %rdx	#, ivtmp.96
# /usr/lib/gcc/x86_64-linux-gnu/15/include/avx2intrin.h:915:   return (__m256i) ((__v4du)__A ^ (__v4du)__B);
	vpxor	-8(%rdx), %ymm1, %ymm0	# MEM[(const __m256i_u * {ref-all})_106], MEM[(const __m256i_u * {ref-all})_69 + -384B], _230
# /usr/lib/gcc/x86_64-linux-gnu/15/include/avx2intrin.h:599:   return (__m256i)__builtin_ia32_pshufd256 ((__v8si)__A, __mask);
	vpshufd	$78, %ymm1, %ymm1	#, MEM[(const __m256i_u * {ref-all})_69 + -384B], tmp315
	vpshufd	$49, %ymm0, %ymm4	#, _230, tmp313
# /usr/lib/gcc/x86_64-linux-gnu/15/include/avx2intrin.h:569:   return (__m256i)__builtin_ia32_pmuludq256 ((__v8si)__A, (__v8si)__B);
	vpmuludq	%ymm4, %ymm0, %ymm0	# tmp313, _230, tmp314
# /usr/lib/gcc/x86_64-linux-gnu/15/include/avx2intrin.h:128:   return (__m256i) ((__v4du)__A + (__v4du)__B);
	vpaddq	%ymm1, %ymm0, %ymm0	# tmp315, tmp314, _6
# /usr/lib/gcc/x86_64-linux-gnu/15/include/avxintrin.h:873:   return *__P;
	vmovdqu	-416(%rax), %ymm1	# MEM[(const __m256i_u * {ref-all})_69 + -352B], MEM[(const __m256i_u * {ref-all})_69 + -352B]
# /usr/lib/gcc/x86_64-linux-gnu/15/include/avx2intrin.h:128:   return (__m256i) ((__v4du)__A + (__v4du)__B);
	vpaddq	%ymm3, %ymm0, %ymm3	# acc__lsm.73, _6, acc__lsm.73
# /usr/lib/gcc/x86_64-linux-gnu/15/include/avx2intrin.h:915:   return (__m256i) ((__v4du)__A ^ (__v4du)__B);
	vpxor	24(%rdx), %ymm1, %ymm0	# MEM[(const __m256i_u * {ref-all})_106 + 32B], MEM[(const __m256i_u * {ref-all})_69 + -352B], _256
# /usr/lib/gcc/x86_64-linux-gnu/15/include/avx2intrin.h:599:   return (__m256i)__builtin_ia32_pshufd256 ((__v8si)__A, __mask);
	vpshufd	$78, %ymm1, %ymm1	#, MEM[(const __m256i_u * {ref-all})_69 + -352B], tmp322
	vpshufd	$49, %ymm0, %ymm4	#, _256, tmp320
# /usr/lib/gcc/x86_64-linux-gnu/15/include/avx2intrin.h:569:   return (__m256i)__builtin_ia32_pmuludq256 ((__v8si)__A, (__v8si)__B);
	vpmuludq	%ymm4, %ymm0, %ymm0	# tmp320, _256, tmp321
# /usr/lib/gcc/x86_64-linux-gnu/15/include/avx2intrin.h:128:   return (__m256i) ((__v4du)__A + (__v4du)__B);
	vpaddq	%ymm1, %ymm0, %ymm0	# tmp322, tmp321, _144
	vpaddq	%ymm2, %ymm0, %ymm2	# acc__lsm.74, _144, acc__lsm.74
# xxhash.h:4209:     for (n = 0; n < nbStripes; n++ ) {
	cmpq	%rax, %rdi	# ivtmp.94, _101
	jne	.L36	#,
.L35:
# /usr/lib/gcc/x86_64-linux-gnu/15/include/avxintrin.h:873:   return *__P;
	vmovdqu	-64(%r11,%r8), %ymm1	# *_172, *_172
# xxhash.h:4304:     return XXH3_mergeAccs(acc, (const xxh_u8*)secret + XXH_SECRET_MERGEACCS_START, (xxh_u64)len * XXH_PRIME64_1);
	movq	%r8, %rdi	# len, len
	movabsq	$-7046029288634856825, %rax	#, tmp340
	movq	%rsp, %rcx	#, ivtmp.84
# /usr/lib/gcc/x86_64-linux-gnu/15/include/avx2intrin.h:915:   return (__m256i) ((__v4du)__A ^ (__v4du)__B);
	vpxor	.LC5(%rip), %ymm1, %ymm0	#, *_172, _178
# xxhash.h:4304:     return XXH3_mergeAccs(acc, (const xxh_u8*)secret + XXH_SECRET_MERGEACCS_START, (xxh_u64)len * XXH_PRIME64_1);
	imulq	%rax, %rdi	# tmp340, len
	leaq	XXH3_kSecret(%rip), %rsi	#, ivtmp.86
# /usr/lib/gcc/x86_64-linux-gnu/15/include/avx2intrin.h:599:   return (__m256i)__builtin_ia32_pshufd256 ((__v8si)__A, __mask);
	vpshufd	$78, %ymm1, %ymm1	#, *_172, tmp329
	vpshufd	$49, %ymm0, %ymm4	#, _178, tmp327
# /usr/lib/gcc/x86_64-linux-gnu/15/include/avx2intrin.h:569:   return (__m256i)__builtin_ia32_pmuludq256 ((__v8si)__A, (__v8si)__B);
	vpmuludq	%ymm4, %ymm0, %ymm0	# tmp327, _178, tmp328
# /usr/lib/gcc/x86_64-linux-gnu/15/include/avx2intrin.h:128:   return (__m256i) ((__v4du)__A + (__v4du)__B);
	vpaddq	%ymm1, %ymm0, %ymm0	# tmp329, tmp328, _161
# /usr/lib/gcc/x86_64-linux-gnu/15/include/avxintrin.h:873:   return *__P;
	vmovdqu	-32(%r11,%r8), %ymm1	# *_198, *_198
	leaq	64(%rsp), %r8	#, _118
# /usr/lib/gcc/x86_64-linux-gnu/15/include/avx2intrin.h:128:   return (__m256i) ((__v4du)__A + (__v4du)__B);
	vpaddq	%ymm3, %ymm0, %ymm0	# acc__lsm.73, _161, _190
# xxhash.h:3708:             xacc[i] = _mm256_add_epi64(product, sum);
	vmovdqa	%ymm0, (%rsp)	# _190, MEM[(__m256i * {ref-all})&acc]
# /usr/lib/gcc/x86_64-linux-gnu/15/include/avx2intrin.h:915:   return (__m256i) ((__v4du)__A ^ (__v4du)__B);
	vpxor	.LC6(%rip), %ymm1, %ymm0	#, *_198, _204
# /usr/lib/gcc/x86_64-linux-gnu/15/include/avx2intrin.h:599:   return (__m256i)__builtin_ia32_pshufd256 ((__v8si)__A, __mask);
	vpshufd	$78, %ymm1, %ymm1	#, *_198, tmp337
	vpshufd	$49, %ymm0, %ymm3	#, _204, tmp335
# /usr/lib/gcc/x86_64-linux-gnu/15/include/avx2intrin.h:569:   return (__m256i)__builtin_ia32_pmuludq256 ((__v8si)__A, (__v8si)__B);
	vpmuludq	%ymm3, %ymm0, %ymm0	# tmp335, _204, tmp336
# /usr/lib/gcc/x86_64-linux-gnu/15/include/avx2intrin.h:128:   return (__m256i) ((__v4du)__A + (__v4du)__B);
	vpaddq	%ymm1, %ymm0, %ymm0	# tmp337, tmp336, _276
	vpaddq	%ymm2, %ymm0, %ymm0	# acc__lsm.74, _276, _216
# xxhash.h:3708:             xacc[i] = _mm256_add_epi64(product, sum);
	vmovdqa	%ymm0, 32(%rsp)	# _216, MEM[(__m256i * {ref-all})&acc + 32B]
.L37:
# xxhash.h:4254:     return XXH3_mul128_fold64(
	movq	(%rcx), %rax	# MEM[(const xxh_u64 *)_117], MEM[(const xxh_u64 *)_117]
# xxhash.h:4265:     for (i = 0; i < 4; i++) {
	addq	$16, %rcx	#, ivtmp.84
	addq	$16, %rsi	#, ivtmp.86
# xxhash.h:4254:     return XXH3_mul128_fold64(
	xorq	-5(%rsi), %rax	# MEM <unsigned long> [(char * {ref-all})_116 + 11B], _153
	movq	-8(%rcx), %rdx	# MEM[(const xxh_u64 *)_117 + 8B], MEM[(const xxh_u64 *)_117 + 8B]
	xorq	3(%rsi), %rdx	# MEM <unsigned long> [(char * {ref-all})_116 + 19B], _150
# xxhash.h:3230:     return product.low64 ^ product.high64;
	mulx	%rax, %rax, %r11	# _153, _160, product
	xorq	%r11, %rax	# product, _160
# xxhash.h:4266:         result64 += XXH3_mix2Accs(acc+2*i, secret + 16*i);
	addq	%rax, %rdi	# _160, result64
# xxhash.h:4265:     for (i = 0; i < 4; i++) {
	cmpq	%rcx, %r8	# ivtmp.84, _118
	jne	.L37	#,
# xxhash.h:3237:     return v64 ^ (v64 >> shift);
	movq	%rdi, %rdx	# result64, _164
# xxhash.h:3247:     h64 *= 0x165667919E3779F9ULL;
	movabsq	$1609587791953885689, %rax	#, tmp351
# xxhash.h:3237:     return v64 ^ (v64 >> shift);
	shrq	$37, %rdx	#, _164
# xxhash.h:3237:     return v64 ^ (v64 >> shift);
	xorq	%rdi, %rdx	# result64, _165
# xxhash.h:3247:     h64 *= 0x165667919E3779F9ULL;
	imulq	%rax, %rdx	# tmp351, h64
# xxhash.h:3237:     return v64 ^ (v64 >> shift);
	movq	%rdx, %rax	# h64, _167
	shrq	$32, %rax	#, _167
# xxhash.h:3237:     return v64 ^ (v64 >> shift);
	xorq	%rdx, %rax	# h64, _168
# xxhash.h:4331: }
	movq	88(%rsp), %rdx	# D.54447, tmp365
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp365
	jne	.L48	#,
	vzeroupper
	leave	
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret	
.L30:
	.cfi_restore_state
# xxhash.h:4240:     {   size_t const nbStripes = ((len - 1) - (block_len * nb_blocks)) / XXH_STRIPE_LEN;
	vmovdqa	.LC1(%rip), %ymm3	#, acc__lsm.73
	vmovdqa	.LC0(%rip), %ymm2	#, acc__lsm.74
	shrq	$6, %r10	#, nbStripes
	leaq	384(%rdi), %rdi	#, _134
	jmp	.L34	#
.L48:
# xxhash.h:4331: }
	vzeroupper
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE7476:
	.size	XXH3_hashLong_64b_default.constprop.0, .-XXH3_hashLong_64b_default.constprop.0
	.p2align 4
	.type	XXH3_len_129to240_64b.constprop.0, @function
XXH3_len_129to240_64b.constprop.0:
.LFB7478:
	.cfi_startproc
# xxhash.h:3467:     {   xxh_u64 acc = len * XXH_PRIME64_1;
	movabsq	$-7046029288634856825, %r9	#, tmp170
# xxhash.h:3468:         int const nbRounds = (int)len / 16;
	movl	%esi, %r10d	# len, nbRounds
	leaq	XXH3_kSecret(%rip), %rax	#, ivtmp.144
# xxhash.h:3457: XXH3_len_129to240_64b(const xxh_u8* XXH_RESTRICT input, size_t len,
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
# xxhash.h:3467:     {   xxh_u64 acc = len * XXH_PRIME64_1;
	imulq	%rsi, %r9	# len, acc
# xxhash.h:3457: XXH3_len_129to240_64b(const xxh_u8* XXH_RESTRICT input, size_t len,
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rdi, %rcx	# input, input
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
# xxhash.h:3457: XXH3_len_129to240_64b(const xxh_u8* XXH_RESTRICT input, size_t len,
	movq	%rsi, %r8	# len, len
# xxhash.h:3468:         int const nbRounds = (int)len / 16;
	sarl	$4, %r10d	#, nbRounds
	leaq	8(%rdi), %rbx	#, ivtmp.145
	leaq	128(%rax), %r11	#, _150
	.p2align 6
	.p2align 4
	.p2align 3
.L50:
# xxhash.h:3418:         return XXH3_mul128_fold64(
	movq	-8(%rbx), %rsi	# MEM <unsigned long> [(char * {ref-all})_153 + -8B], MEM <unsigned long> [(char * {ref-all})_153 + -8B]
	xorq	(%rax), %rsi	# MEM <unsigned long> [(char * {ref-all})_148], _18
# xxhash.h:3470:         for (i=0; i<8; i++) {
	addq	$16, %rax	#, ivtmp.144
	addq	$16, %rbx	#, ivtmp.145
# xxhash.h:3418:         return XXH3_mul128_fold64(
	movq	-16(%rbx), %rdi	# MEM <unsigned long> [(char * {ref-all})_153], MEM <unsigned long> [(char * {ref-all})_153]
	xorq	-8(%rax), %rdi	# MEM <unsigned long> [(char * {ref-all})_148 + 8B], _15
# xxhash.h:3129:     __uint128_t const product = (__uint128_t)lhs * (__uint128_t)rhs;
	movq	%rsi, %rdx	# _18, _18
# xxhash.h:3230:     return product.low64 ^ product.high64;
	mulx	%rdi, %rsi, %r15	# _15, _25, product
	xorq	%r15, %rsi	# product, _25
# xxhash.h:3471:             acc += XXH3_mix16B(input+(16*i), secret+(16*i), seed);
	addq	%rsi, %r9	# _25, acc
# xxhash.h:3470:         for (i=0; i<8; i++) {
	cmpq	%rax, %r11	# ivtmp.144, _150
	jne	.L50	#,
# xxhash.h:3237:     return v64 ^ (v64 >> shift);
	movq	%r9, %rax	# acc, _29
# xxhash.h:3247:     h64 *= 0x165667919E3779F9ULL;
	movabsq	$1609587791953885689, %rdx	#, tmp181
# xxhash.h:3237:     return v64 ^ (v64 >> shift);
	shrq	$37, %rax	#, _29
# xxhash.h:3237:     return v64 ^ (v64 >> shift);
	xorq	%r9, %rax	# acc, _30
# xxhash.h:3247:     h64 *= 0x165667919E3779F9ULL;
	imulq	%rdx, %rax	# tmp181, h64
# xxhash.h:3237:     return v64 ^ (v64 >> shift);
	movq	%rax, %r9	# h64, _32
	shrq	$32, %r9	#, _32
# xxhash.h:3237:     return v64 ^ (v64 >> shift);
	xorq	%rax, %r9	# h64, acc
# xxhash.h:3500:         for (i=8 ; i < nbRounds; i++) {
	cmpl	$8, %r10d	#, nbRounds
	je	.L51	#,
	subl	$8, %r10d	#, _162
	leaq	3+XXH3_kSecret(%rip), %r11	#, tmp215
	xorl	%eax, %eax	# ivtmp.136
	salq	$4, %r10	#, _161
	leaq	8(%r11), %rbx	#, tmp216
	.p2align 6
	.p2align 4
	.p2align 3
.L52:
# xxhash.h:3418:         return XXH3_mul128_fold64(
	movq	128(%rcx,%rax), %rsi	# MEM <unsigned long> [(char * {ref-all})input_9(D) + 128B + ivtmp.136_167 * 1], MEM <unsigned long> [(char * {ref-all})input_9(D) + 128B + ivtmp.136_167 * 1]
	movq	136(%rcx,%rax), %rdx	# MEM <unsigned long> [(char * {ref-all})input_9(D) + 136B + ivtmp.136_167 * 1], MEM <unsigned long> [(char * {ref-all})input_9(D) + 136B + ivtmp.136_167 * 1]
	xorq	(%r11,%rax), %rsi	# MEM <unsigned long> [(char * {ref-all})&XXH3_kSecret + 3B + ivtmp.136_167 * 1], _49
	xorq	(%rbx,%rax), %rdx	# MEM <unsigned long> [(char * {ref-all})&XXH3_kSecret + 11B + ivtmp.136_167 * 1], _46
# xxhash.h:3500:         for (i=8 ; i < nbRounds; i++) {
	addq	$16, %rax	#, ivtmp.136
# xxhash.h:3132:     r128.high64 = (xxh_u64)(product >> 64);
	mulx	%rsi, %rsi, %rdx	# _49, product, _54
# xxhash.h:3230:     return product.low64 ^ product.high64;
	xorq	%rsi, %rdx	# product, _56
# xxhash.h:3501:             acc += XXH3_mix16B(input+(16*i), secret+(16*(i-8)) + XXH3_MIDSIZE_STARTOFFSET, seed);
	addq	%rdx, %r9	# _56, acc
# xxhash.h:3500:         for (i=8 ; i < nbRounds; i++) {
	cmpq	%rax, %r10	# ivtmp.136, _161
	jne	.L52	#,
.L51:
# xxhash.h:3504:         acc += XXH3_mix16B(input + len - 16, secret + XXH3_SECRET_SIZE_MIN - XXH3_MIDSIZE_LASTOFFSET, seed);
	leaq	-16(%rcx,%r8), %rdx	#, _61
# xxhash.h:3418:         return XXH3_mul128_fold64(
	movabsq	$8320639771003045937, %rcx	#, tmp197
	movabsq	$-1453760514566526364, %rax	#, tmp200
# xxhash.h:3507: }
	popq	%rbx	#
	.cfi_def_cfa_offset 24
# xxhash.h:3418:         return XXH3_mul128_fold64(
	xorq	(%rdx), %rcx	# MEM <unsigned long> [(char * {ref-all})_61], _69
	xorq	8(%rdx), %rax	# MEM <unsigned long> [(char * {ref-all})_61 + 8B], _66
# xxhash.h:3507: }
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
# xxhash.h:3129:     __uint128_t const product = (__uint128_t)lhs * (__uint128_t)rhs;
	movq	%rcx, %rdx	# _69, _69
# xxhash.h:3132:     r128.high64 = (xxh_u64)(product >> 64);
	mulx	%rax, %rcx, %rax	# _66, product, _74
# xxhash.h:3230:     return product.low64 ^ product.high64;
	xorq	%rcx, %rax	# product, _76
# xxhash.h:3504:         acc += XXH3_mix16B(input + len - 16, secret + XXH3_SECRET_SIZE_MIN - XXH3_MIDSIZE_LASTOFFSET, seed);
	addq	%r9, %rax	# acc, acc
# xxhash.h:3237:     return v64 ^ (v64 >> shift);
	movq	%rax, %rdx	# acc, _78
	shrq	$37, %rdx	#, _78
# xxhash.h:3237:     return v64 ^ (v64 >> shift);
	xorq	%rax, %rdx	# acc, _79
# xxhash.h:3247:     h64 *= 0x165667919E3779F9ULL;
	movabsq	$1609587791953885689, %rax	#, tmp206
	imulq	%rax, %rdx	# tmp206, h64
# xxhash.h:3237:     return v64 ^ (v64 >> shift);
	movq	%rdx, %rax	# h64, _81
	shrq	$32, %rax	#, _81
# xxhash.h:3237:     return v64 ^ (v64 >> shift);
	xorq	%rdx, %rax	# h64, _82
# xxhash.h:3507: }
	ret	
	.cfi_endproc
.LFE7478:
	.size	XXH3_len_129to240_64b.constprop.0, .-XXH3_len_129to240_64b.constprop.0
	.p2align 4
	.type	XXH_INLINE_XXH3_64bits, @function
XXH_INLINE_XXH3_64bits:
.LFB7422:
	.cfi_startproc
# xxhash.h:4391:     if (len <= 16)
	cmpq	$16, %rsi	#, len
	jbe	.L75	#,
# xxhash.h:4393:     if (len <= 128)
	cmpq	$128, %rsi	#, len
	jbe	.L76	#,
# xxhash.h:4395:     if (len <= XXH3_MIDSIZE_MAX)
	cmpq	$240, %rsi	#, len
	jbe	.L77	#,
# xxhash.h:4397:     return f_hashLong(input, len, seed64, (const xxh_u8*)secret, secretLen);
	jmp	XXH3_hashLong_64b_default.constprop.0	#
	.p2align 4
	.p2align 3
.L76:
# xxhash.h:4405: {
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
# xxhash.h:3434:     {   xxh_u64 acc = len * XXH_PRIME64_1;
	movabsq	$-7046029288634856825, %rbx	#, tmp327
	imulq	%rsi, %rbx	# len, tmp327
# xxhash.h:3435:         if (len > 32) {
	cmpq	$32, %rsi	#, len
	jbe	.L65	#,
# xxhash.h:3436:             if (len > 64) {
	cmpq	$64, %rsi	#, len
	jbe	.L66	#,
# xxhash.h:3437:                 if (len > 96) {
	cmpq	$96, %rsi	#, len
	ja	.L78	#,
.L67:
# xxhash.h:3418:         return XXH3_mul128_fold64(
	movabsq	$-3818837453329782724, %r10	#, tmp346
	xorq	32(%rdi), %r10	# MEM <unsigned long> [(char * {ref-all})input_2(D) + 32B], _107
	movabsq	$-6688317018830679928, %rax	#, tmp349
	xorq	40(%rdi), %rax	# MEM <unsigned long> [(char * {ref-all})input_2(D) + 40B], _106
# xxhash.h:3442:                 acc += XXH3_mix16B(input+len-48, secret+80, seed);
	leaq	-48(%rdi,%rsi), %rcx	#, _118
# xxhash.h:3418:         return XXH3_mul128_fold64(
	movabsq	$5690594596133299313, %r8	#, tmp353
	xorq	(%rcx), %r8	# MEM <unsigned long> [(char * {ref-all})_118], _122
# xxhash.h:3129:     __uint128_t const product = (__uint128_t)lhs * (__uint128_t)rhs;
	movq	%r10, %rdx	# _107, _107
	mulx	%rax, %r10, %r11	# _106, product, product
# xxhash.h:3418:         return XXH3_mul128_fold64(
	movabsq	$-2833645246901970632, %rax	#, tmp356
	xorq	8(%rcx), %rax	# MEM <unsigned long> [(char * {ref-all})_118 + 8B], _121
# xxhash.h:3129:     __uint128_t const product = (__uint128_t)lhs * (__uint128_t)rhs;
	movq	%r8, %rdx	# _122, _122
	mulx	%rax, %r8, %r9	# _121, product, product
# xxhash.h:3132:     r128.high64 = (xxh_u64)(product >> 64);
	movq	%r11, %rax	# product, _112
	movq	%r9, %rcx	# product, _127
# xxhash.h:3230:     return product.low64 ^ product.high64;
	xorq	%r10, %rax	# product, _114
	xorq	%r8, %rcx	# product, _129
# xxhash.h:3442:                 acc += XXH3_mix16B(input+len-48, secret+80, seed);
	addq	%rcx, %rax	# _129, _193
	addq	%rax, %rbx	# _193, acc
.L66:
# xxhash.h:3418:         return XXH3_mul128_fold64(
	movabsq	$8711581037947681227, %r10	#, tmp364
	xorq	16(%rdi), %r10	# MEM <unsigned long> [(char * {ref-all})input_2(D) + 16B], _134
	movabsq	$2410270004345854594, %rax	#, tmp367
	xorq	24(%rdi), %rax	# MEM <unsigned long> [(char * {ref-all})input_2(D) + 24B], _133
# xxhash.h:3445:             acc += XXH3_mix16B(input+len-32, secret+48, seed);
	leaq	-32(%rdi,%rsi), %rcx	#, _145
# xxhash.h:3418:         return XXH3_mul128_fold64(
	movabsq	$-8204357891075471176, %r8	#, tmp371
	xorq	(%rcx), %r8	# MEM <unsigned long> [(char * {ref-all})_145], _149
# xxhash.h:3129:     __uint128_t const product = (__uint128_t)lhs * (__uint128_t)rhs;
	movq	%r10, %rdx	# _134, _134
	mulx	%rax, %r10, %r11	# _133, product, product
# xxhash.h:3418:         return XXH3_mul128_fold64(
	movabsq	$5487137525590930912, %rax	#, tmp374
	xorq	8(%rcx), %rax	# MEM <unsigned long> [(char * {ref-all})_145 + 8B], _148
# xxhash.h:3129:     __uint128_t const product = (__uint128_t)lhs * (__uint128_t)rhs;
	movq	%r8, %rdx	# _149, _149
	mulx	%rax, %r8, %r9	# _148, product, product
# xxhash.h:3132:     r128.high64 = (xxh_u64)(product >> 64);
	movq	%r11, %rax	# product, _139
	movq	%r9, %rcx	# product, _154
# xxhash.h:3230:     return product.low64 ^ product.high64;
	xorq	%r10, %rax	# product, _141
	xorq	%r8, %rcx	# product, _156
# xxhash.h:3445:             acc += XXH3_mix16B(input+len-32, secret+48, seed);
	addq	%rcx, %rax	# _156, _7
	addq	%rax, %rbx	# _7, acc
.L65:
# xxhash.h:3418:         return XXH3_mul128_fold64(
	movabsq	$-4734510112055689544, %r8	#, tmp382
	xorq	(%rdi), %r8	# MEM <unsigned long> [(char * {ref-all})input_2(D)], _161
	movabsq	$2066345149520216444, %rax	#, tmp385
	xorq	8(%rdi), %rax	# MEM <unsigned long> [(char * {ref-all})input_2(D) + 8B], _160
# xxhash.h:3448:         acc += XXH3_mix16B(input+len-16, secret+16, seed);
	leaq	-16(%rdi,%rsi), %rcx	#, _172
# xxhash.h:3418:         return XXH3_mul128_fold64(
	movabsq	$-2623469361688619810, %rsi	#, tmp389
	xorq	(%rcx), %rsi	# MEM <unsigned long> [(char * {ref-all})_172], _176
# xxhash.h:3129:     __uint128_t const product = (__uint128_t)lhs * (__uint128_t)rhs;
	movq	%r8, %rdx	# _161, _161
	mulx	%rax, %r8, %r9	# _160, product, product
# xxhash.h:3418:         return XXH3_mul128_fold64(
	movabsq	$2262974939099578482, %rax	#, tmp392
	xorq	8(%rcx), %rax	# MEM <unsigned long> [(char * {ref-all})_172 + 8B], _175
# xxhash.h:3129:     __uint128_t const product = (__uint128_t)lhs * (__uint128_t)rhs;
	movq	%rsi, %rdx	# _176, _176
	mulx	%rax, %rsi, %rdi	# _175, product, product
# xxhash.h:3132:     r128.high64 = (xxh_u64)(product >> 64);
	movq	%r9, %rax	# product, _166
	movq	%rdi, %rcx	# product, _181
# xxhash.h:3230:     return product.low64 ^ product.high64;
	xorq	%r8, %rax	# product, _168
	xorq	%rsi, %rcx	# product, _183
# xxhash.h:3448:         acc += XXH3_mix16B(input+len-16, secret+16, seed);
	addq	%rcx, %rax	# _183, _6
	addq	%rbx, %rax	# acc, acc
# xxhash.h:4407: }
	popq	%rbx	#
	.cfi_def_cfa_offset 8
# xxhash.h:3237:     return v64 ^ (v64 >> shift);
	movq	%rax, %rdx	# acc, _185
	shrq	$37, %rdx	#, _185
# xxhash.h:3237:     return v64 ^ (v64 >> shift);
	xorq	%rax, %rdx	# acc, _186
# xxhash.h:3247:     h64 *= 0x165667919E3779F9ULL;
	movabsq	$1609587791953885689, %rax	#, tmp401
	imulq	%rax, %rdx	# tmp401, h64
# xxhash.h:3237:     return v64 ^ (v64 >> shift);
	movq	%rdx, %rax	# h64, _188
	shrq	$32, %rax	#, _188
# xxhash.h:3237:     return v64 ^ (v64 >> shift);
	xorq	%rdx, %rax	# h64, <retval>
# xxhash.h:4407: }
	ret	
	.p2align 4
	.p2align 3
.L75:
	.cfi_restore 3
# xxhash.h:3360:     {   if (XXH_likely(len >  8)) return XXH3_len_9to16_64b(input, len, secret, seed);
	cmpq	$8, %rsi	#, len
	jbe	.L61	#,
# xxhash.h:3347:         xxh_u64 const input_lo = XXH_readLE64(input)           ^ bitflip1;
	movabsq	$7458650908927343033, %r8	#, tmp289
# xxhash.h:3348:         xxh_u64 const input_hi = XXH_readLE64(input + len - 8) ^ bitflip2;
	movabsq	$-5812251307325107654, %rdx	#, tmp290
# xxhash.h:3347:         xxh_u64 const input_lo = XXH_readLE64(input)           ^ bitflip1;
	xorq	(%rdi), %r8	# MEM <unsigned long> [(char * {ref-all})input_2(D)], input_lo
# xxhash.h:3348:         xxh_u64 const input_hi = XXH_readLE64(input + len - 8) ^ bitflip2;
	xorq	-8(%rdi,%rsi), %rdx	# MEM <unsigned long> [(char * {ref-all})_11], input_hi
# xxhash.h:3350:                           + XXH_swap64(input_lo) + input_hi
	movq	%r8, %rcx	# input_lo, _14
# xxhash.h:3132:     r128.high64 = (xxh_u64)(product >> 64);
	mulx	%r8, %r8, %rax	# input_lo, product, _21
# xxhash.h:3349:         xxh_u64 const acc = len
	addq	%rsi, %rdx	# len, _287
# xxhash.h:3350:                           + XXH_swap64(input_lo) + input_hi
	bswap	%rcx		# _14
# xxhash.h:3230:     return product.low64 ^ product.high64;
	xorq	%r8, %rax	# product, _23
# xxhash.h:3349:         xxh_u64 const acc = len
	addq	%rcx, %rax	# _14, _288
	addq	%rdx, %rax	# _287, acc
# xxhash.h:3237:     return v64 ^ (v64 >> shift);
	movq	%rax, %rdx	# acc, _25
	shrq	$37, %rdx	#, _25
# xxhash.h:3237:     return v64 ^ (v64 >> shift);
	xorq	%rax, %rdx	# acc, _26
# xxhash.h:3247:     h64 *= 0x165667919E3779F9ULL;
	movabsq	$1609587791953885689, %rax	#, tmp299
	imulq	%rax, %rdx	# tmp299, h64
# xxhash.h:3237:     return v64 ^ (v64 >> shift);
	movq	%rdx, %rax	# h64, _28
	shrq	$32, %rax	#, _28
# xxhash.h:3237:     return v64 ^ (v64 >> shift);
	xorq	%rdx, %rax	# h64, <retval>
# xxhash.h:3360:     {   if (XXH_likely(len >  8)) return XXH3_len_9to16_64b(input, len, secret, seed);
	ret	
	.p2align 4
	.p2align 3
.L77:
# xxhash.h:4396:         return XXH3_len_129to240_64b((const xxh_u8*)input, len, (const xxh_u8*)secret, secretLen, seed64);
	jmp	XXH3_len_129to240_64b.constprop.0	#
	.p2align 4
	.p2align 3
.L78:
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
# xxhash.h:3418:         return XXH3_mul128_fold64(
	movabsq	$4554437623014685352, %r8	#, tmp329
	xorq	48(%rdi), %r8	# MEM <unsigned long> [(char * {ref-all})input_2(D) + 48B], _81
	movabsq	$2111919702937427193, %rax	#, tmp332
	xorq	56(%rdi), %rax	# MEM <unsigned long> [(char * {ref-all})input_2(D) + 56B], _80
# xxhash.h:3129:     __uint128_t const product = (__uint128_t)lhs * (__uint128_t)rhs;
	movq	%r8, %rdx	# _81, _81
# xxhash.h:3132:     r128.high64 = (xxh_u64)(product >> 64);
	mulx	%rax, %r8, %rcx	# _80, product, _86
# xxhash.h:3418:         return XXH3_mul128_fold64(
	movabsq	$3556072174620004746, %rax	#, tmp338
	movabsq	$7238261902898274248, %rdx	#, tmp341
# xxhash.h:3230:     return product.low64 ^ product.high64;
	xorq	%r8, %rcx	# product, _88
# xxhash.h:3439:                     acc += XXH3_mix16B(input+len-64, secret+112, seed);
	leaq	-64(%rdi,%rsi), %r8	#, _91
# xxhash.h:3418:         return XXH3_mul128_fold64(
	xorq	(%r8), %rax	# MEM <unsigned long> [(char * {ref-all})_91], _95
	xorq	8(%r8), %rdx	# MEM <unsigned long> [(char * {ref-all})_91 + 8B], _94
# xxhash.h:3438:                     acc += XXH3_mix16B(input+48, secret+96, seed);
	addq	%rbx, %rcx	# acc, acc
# xxhash.h:3132:     r128.high64 = (xxh_u64)(product >> 64);
	mulx	%rax, %r9, %rdx	# _95, product, _100
# xxhash.h:3230:     return product.low64 ^ product.high64;
	xorq	%r9, %rdx	# product, _102
# xxhash.h:3439:                     acc += XXH3_mix16B(input+len-64, secret+112, seed);
	leaq	(%rdx,%rcx), %rbx	#, acc
	jmp	.L67	#
	.p2align 4
	.p2align 3
.L61:
	.cfi_def_cfa_offset 8
	.cfi_restore 3
# xxhash.h:3361:         if (XXH_likely(len >= 4)) return XXH3_len_4to8_64b(input, len, secret, seed);
	cmpq	$3, %rsi	#, len
	jbe	.L63	#,
# xxhash.h:3333:         xxh_u64 const input64 = input2 + (((xxh_u64)input1) << 32);
	movl	(%rdi), %eax	# MEM <unsigned int> [(char * {ref-all})input_2(D)], _38
# xxhash.h:3333:         xxh_u64 const input64 = input2 + (((xxh_u64)input1) << 32);
	movl	-4(%rdi,%rsi), %edx	# MEM <unsigned int> [(char * {ref-all})_35], _37
# xxhash.h:3333:         xxh_u64 const input64 = input2 + (((xxh_u64)input1) << 32);
	salq	$32, %rax	#, _39
# xxhash.h:3333:         xxh_u64 const input64 = input2 + (((xxh_u64)input1) << 32);
	addq	%rax, %rdx	# _39, input64_40
# xxhash.h:3334:         xxh_u64 const keyed = input64 ^ bitflip;
	movabsq	$-4090762196417718878, %rax	#, tmp305
	xorq	%rax, %rdx	# tmp305, keyed
# xxhash.h:3260:     h64 ^= XXH_rotl64(h64, 49) ^ XXH_rotl64(h64, 24);
	rorx	$40, %rdx, %rcx	#, keyed, _43
# xxhash.h:3260:     h64 ^= XXH_rotl64(h64, 49) ^ XXH_rotl64(h64, 24);
	rorx	$15, %rdx, %rax	#, keyed, _42
# xxhash.h:3260:     h64 ^= XXH_rotl64(h64, 49) ^ XXH_rotl64(h64, 24);
	xorq	%rcx, %rax	# _43, _44
# xxhash.h:3261:     h64 *= 0x9FB21C651E98DF25ULL;
	movabsq	$-6939452855193903323, %rcx	#, tmp309
# xxhash.h:3260:     h64 ^= XXH_rotl64(h64, 49) ^ XXH_rotl64(h64, 24);
	xorq	%rdx, %rax	# keyed, h64
# xxhash.h:3261:     h64 *= 0x9FB21C651E98DF25ULL;
	imulq	%rcx, %rax	# tmp309, h64
# xxhash.h:3262:     h64 ^= (h64 >> 35) + len ;
	movq	%rax, %rdx	# h64, _47
	shrq	$35, %rdx	#, _47
# xxhash.h:3262:     h64 ^= (h64 >> 35) + len ;
	addq	%rsi, %rdx	# len, _48
# xxhash.h:3262:     h64 ^= (h64 >> 35) + len ;
	xorq	%rdx, %rax	# _48, h64
# xxhash.h:3263:     h64 *= 0x9FB21C651E98DF25ULL;
	imulq	%rcx, %rax	# tmp309, h64
	movq	%rax, %rdx	# h64, h64
# xxhash.h:3237:     return v64 ^ (v64 >> shift);
	shrq	$28, %rax	#, _51
# xxhash.h:3237:     return v64 ^ (v64 >> shift);
	xorq	%rdx, %rax	# h64, <retval>
# xxhash.h:3361:         if (XXH_likely(len >= 4)) return XXH3_len_4to8_64b(input, len, secret, seed);
	ret	
.L63:
# xxhash.h:3363:         return XXH64_avalanche(seed ^ (XXH_readLE64(secret+56) ^ XXH_readLE64(secret+64)));
	movabsq	$3244421341483603138, %rax	#, <retval>
# xxhash.h:3362:         if (len) return XXH3_len_1to3_64b(input, len, secret, seed);
	testq	%rsi, %rsi	# len
	jne	.L79	#,
# xxhash.h:4407: }
	ret	
.L79:
# xxhash.h:3315:         xxh_u32 const combined = ((xxh_u32)c1 << 16) | ((xxh_u32)c2  << 24)
	movzbl	(%rdi), %edx	# MEM[(const xxh_u8 *)input_2(D)], _60
# xxhash.h:3316:                                | ((xxh_u32)c3 <<  0) | ((xxh_u32)len << 8);
	movzbl	-1(%rdi,%rsi), %eax	# *_58, _65
# xxhash.h:3315:         xxh_u32 const combined = ((xxh_u32)c1 << 16) | ((xxh_u32)c2  << 24)
	sall	$16, %edx	#, _61
# xxhash.h:3315:         xxh_u32 const combined = ((xxh_u32)c1 << 16) | ((xxh_u32)c2  << 24)
	orl	%edx, %eax	# _61, _289
# xxhash.h:3313:         xxh_u8  const c2 = input[len >> 1];
	movq	%rsi, %rdx	# len, _54
# xxhash.h:3316:                                | ((xxh_u32)c3 <<  0) | ((xxh_u32)len << 8);
	sall	$8, %esi	#, _68
# xxhash.h:3313:         xxh_u8  const c2 = input[len >> 1];
	shrq	%rdx	# _54
# xxhash.h:3315:         xxh_u32 const combined = ((xxh_u32)c1 << 16) | ((xxh_u32)c2  << 24)
	movzbl	(%rdi,%rdx), %edx	# *_55, _62
# xxhash.h:3315:         xxh_u32 const combined = ((xxh_u32)c1 << 16) | ((xxh_u32)c2  << 24)
	sall	$24, %edx	#, _63
# xxhash.h:3315:         xxh_u32 const combined = ((xxh_u32)c1 << 16) | ((xxh_u32)c2  << 24)
	orl	%esi, %edx	# _68, _290
	orl	%edx, %eax	# _290, combined_69
# xxhash.h:2303:     h64 *= XXH_PRIME64_2;
	movabsq	$-4417276706812531889, %rdx	#, tmp325
# xxhash.h:3318:         xxh_u64 const keyed = (xxh_u64)combined ^ bitflip;
	xorl	$-2027464037, %eax	#, keyed_70
# xxhash.h:2303:     h64 *= XXH_PRIME64_2;
	imulq	%rdx, %rax	# tmp325, h64
# xxhash.h:2304:     h64 ^= h64 >> 29;
	movq	%rax, %rdx	# h64, _72
	shrq	$29, %rdx	#, _72
# xxhash.h:2304:     h64 ^= h64 >> 29;
	xorq	%rdx, %rax	# _72, h64
# xxhash.h:2305:     h64 *= XXH_PRIME64_3;
	movabsq	$1609587929392839161, %rdx	#, tmp326
	imulq	%rdx, %rax	# tmp326, h64
# xxhash.h:2306:     h64 ^= h64 >> 32;
	movq	%rax, %rdx	# h64, _75
	shrq	$32, %rdx	#, _75
# xxhash.h:2306:     h64 ^= h64 >> 32;
	xorq	%rdx, %rax	# _75, <retval>
# xxhash.h:3362:         if (len) return XXH3_len_1to3_64b(input, len, secret, seed);
	ret	
	.cfi_endproc
.LFE7422:
	.size	XXH_INLINE_XXH3_64bits, .-XXH_INLINE_XXH3_64bits
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC7:
	.string	"omode"
.LC8:
	.string	"default"
.LC9:
	.string	"ketama"
.LC10:
	.string	"twemproxy"
.LC11:
	.string	"evcache"
.LC12:
	.string	"ring_hash: bad omode argument"
.LC13:
	.string	"obuckets"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC14:
	.string	"ring_hash: option argument must be a positive integer"
	.section	.rodata.str1.1
.LC15:
	.string	"id"
.LC16:
	.string	"addr"
.LC17:
	.string	"port"
.LC18:
	.string	"%s:%s-%d"
.LC19:
	.string	"11211"
.LC20:
	.string	"%s-%d"
.LC21:
	.string	"%s/%s:%s-%d"
	.text
	.p2align 4
	.type	ketama_new, @function
ketama_new:
.LFB7474:
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
# proxy_ring_hash.c:251:     luaL_checktype(L, 1, LUA_TTABLE);
	movl	$1, %esi	#,
# proxy_ring_hash.c:244: static int ketama_new(lua_State *L) {
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx	# L, L
	subq	$248, %rsp	#,
	.cfi_def_cfa_offset 304
# proxy_ring_hash.c:244: static int ketama_new(lua_State *L) {
	movq	%rdi, 48(%rsp)	# L, %sfp
# proxy_ring_hash.c:251:     luaL_checktype(L, 1, LUA_TTABLE);
	movq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B],
	movq	%rdx, 232(%rsp)	#, D.54626
	movl	$5, %edx	#,
	call	luaL_checktype@PLT	#
# proxy_ring_hash.c:254:     lua_Unsigned total = lua_rawlen(L, 1);
	movq	%rbx, %rdi	# L,
	movl	$1, %esi	#,
	call	lua_rawlen@PLT	#
# proxy_ring_hash.c:257:     int argc = lua_gettop(L);
	movq	%rbx, %rdi	# L,
# proxy_ring_hash.c:254:     lua_Unsigned total = lua_rawlen(L, 1);
	movq	%rax, %rbp	#, total
# proxy_ring_hash.c:257:     int argc = lua_gettop(L);
	call	lua_gettop@PLT	#
# proxy_ring_hash.c:258:     if (argc > 1) {
	cmpl	$1, %eax	#, argc
	jg	.L128	#,
	movq	$40, 32(%rsp)	#, %sfp
	movl	$160, %ebx	#, prephitmp_212
	movl	$160, %r12d	#, prephitmp_214
# proxy_ring_hash.c:248:     int makemode = 0;
	movl	$0, 72(%rsp)	#, %sfp
# proxy_ring_hash.c:245:     lua_Integer bucket_size = DEFAULT_BUCKET_SIZE;
	movq	$160, 56(%rsp)	#, %sfp
.L81:
# proxy_ring_hash.c:291:     ketama_t *kt = lua_newuserdatauv(L, size, 0);
	movq	48(%rsp), %r15	# %sfp, L
# proxy_ring_hash.c:290:     size_t size = sizeof(ketama_t) + sizeof(cpoint) * (total * bucket_size);
	movq	%r12, %rax	# prephitmp_214, prephitmp_214
# proxy_ring_hash.c:293:     kt->total_buckets = bucket_size * total;
	imull	%ebp, %ebx	# total, _13
# proxy_ring_hash.c:291:     ketama_t *kt = lua_newuserdatauv(L, size, 0);
	xorl	%edx, %edx	#
# proxy_ring_hash.c:290:     size_t size = sizeof(ketama_t) + sizeof(cpoint) * (total * bucket_size);
	imulq	%rbp, %rax	# total, prephitmp_214
# proxy_ring_hash.c:291:     ketama_t *kt = lua_newuserdatauv(L, size, 0);
	movq	%r15, %rdi	# L,
# proxy_ring_hash.c:290:     size_t size = sizeof(ketama_t) + sizeof(cpoint) * (total * bucket_size);
	leaq	24(,%rax,8), %rsi	#, size_58
# proxy_ring_hash.c:291:     ketama_t *kt = lua_newuserdatauv(L, size, 0);
	call	lua_newuserdatauv@PLT	#
# proxy_ring_hash.c:297:     lua_pushnil(L); // start the pool iterator
	movq	%r15, %rdi	# L,
# proxy_ring_hash.c:293:     kt->total_buckets = bucket_size * total;
	movl	%ebx, 16(%rax)	# _13, kt_60->total_buckets
# proxy_ring_hash.c:291:     ketama_t *kt = lua_newuserdatauv(L, size, 0);
	movq	%rax, %r12	#, kt
# proxy_ring_hash.c:297:     lua_pushnil(L); // start the pool iterator
	call	lua_pushnil@PLT	#
# proxy_ring_hash.c:296:     unsigned int cont = 0;
	movl	$0, 44(%rsp)	#, %sfp
	movq	32(%rsp), %rax	# %sfp, prephitmp_155
	leal	-4(,%rax,4), %edx	#, _359
	testq	%rax, %rax	# prephitmp_155
	movl	$0, %eax	#, tmp260
	cmovg	%edx, %eax	# _359,, tmp260
	movl	%eax, 76(%rsp)	# tmp260, %sfp
	.p2align 4
	.p2align 3
.L89:
# proxy_ring_hash.c:298:     while (lua_next(L, 1) != 0) {
	movq	48(%rsp), %rdi	# %sfp,
	movl	$1, %esi	#,
	call	lua_next@PLT	#
# proxy_ring_hash.c:298:     while (lua_next(L, 1) != 0) {
	testl	%eax, %eax	# _18
	je	.L129	#,
# proxy_ring_hash.c:304:         lua_getfield(L, -1, "id");
	movq	48(%rsp), %rbx	# %sfp, L
	leaq	.LC15(%rip), %rdx	#,
	movl	$-1, %esi	#,
	movq	%rbx, %rdi	# L,
	call	lua_getfield@PLT	#
# proxy_ring_hash.c:305:         lua_Integer id = lua_tointeger(L, -1);
	xorl	%edx, %edx	#
	movl	$-1, %esi	#,
	movq	%rbx, %rdi	# L,
	call	lua_tointegerx@PLT	#
# proxy_ring_hash.c:306:         lua_pop(L, 1);
	movl	$-2, %esi	#,
	movq	%rbx, %rdi	# L,
# proxy_ring_hash.c:305:         lua_Integer id = lua_tointeger(L, -1);
	movq	%rax, %r14	#, id
# proxy_ring_hash.c:306:         lua_pop(L, 1);
	call	lua_settop@PLT	#
# proxy_ring_hash.c:309:         lua_getfield(L, -1, "addr");
	leaq	.LC16(%rip), %rdx	#,
	movl	$-1, %esi	#,
	movq	%rbx, %rdi	# L,
	call	lua_getfield@PLT	#
# proxy_ring_hash.c:310:         parts[0] = lua_tolstring(L, -1, &partlens[0]);
	leaq	96(%rsp), %rdx	#, tmp263
	movl	$-1, %esi	#,
	movq	%rbx, %rdi	# L,
	call	lua_tolstring@PLT	#
# proxy_ring_hash.c:311:         lua_pop(L, 1);
	movl	$-2, %esi	#,
	movq	%rbx, %rdi	# L,
# proxy_ring_hash.c:310:         parts[0] = lua_tolstring(L, -1, &partlens[0]);
	movq	%rax, 16(%rsp)	# _14, %sfp
# proxy_ring_hash.c:311:         lua_pop(L, 1);
	call	lua_settop@PLT	#
# proxy_ring_hash.c:312:         lua_getfield(L, -1, "port");
	leaq	.LC17(%rip), %rdx	#,
	movl	$-1, %esi	#,
	movq	%rbx, %rdi	# L,
	call	lua_getfield@PLT	#
# proxy_ring_hash.c:313:         parts[1] = lua_tolstring(L, -1, &partlens[1]);
	leaq	104(%rsp), %rdx	#, tmp266
	movl	$-1, %esi	#,
	movq	%rbx, %rdi	# L,
	call	lua_tolstring@PLT	#
# proxy_ring_hash.c:314:         lua_pop(L, 1);
	movl	$-2, %esi	#,
	movq	%rbx, %rdi	# L,
# proxy_ring_hash.c:313:         parts[1] = lua_tolstring(L, -1, &partlens[1]);
	movq	%rax, 8(%rsp)	# _15, %sfp
# proxy_ring_hash.c:314:         lua_pop(L, 1);
	call	lua_settop@PLT	#
# proxy_ring_hash.c:318:             hashstring_size += partlens[x];
	movq	96(%rsp), %rax	# partlens[0], _601
# proxy_ring_hash.c:318:             hashstring_size += partlens[x];
	movq	104(%rsp), %rbp	# partlens[1], hashstring_size
# proxy_ring_hash.c:325:         switch (makemode) {
	movl	72(%rsp), %ecx	# %sfp, makemode
# proxy_ring_hash.c:323:         hashstring_size += 16;
	leaq	16(%rbp,%rax), %rbp	#, hashstring_size
# proxy_ring_hash.c:325:         switch (makemode) {
	cmpl	$2, %ecx	#, makemode
	je	.L90	#,
	cmpl	$3, %ecx	#, makemode
	je	.L91	#,
# proxy_ring_hash.c:132:     char *hashstring = malloc(hashstring_size);
	movq	%rbp, %rdi	# hashstring_size,
# proxy_ring_hash.c:325:         switch (makemode) {
	cmpl	$1, %ecx	#, makemode
	je	.L92	#,
# proxy_ring_hash.c:132:     char *hashstring = malloc(hashstring_size);
	call	malloc@PLT	#
# proxy_ring_hash.c:134:     for (int k = 0; k < bucket_size; k++) {
	cmpq	$0, 56(%rsp)	#, %sfp
# proxy_ring_hash.c:132:     char *hashstring = malloc(hashstring_size);
	movq	%rax, %r15	#, hashstring
# proxy_ring_hash.c:134:     for (int k = 0; k < bucket_size; k++) {
	jle	.L93	#,
# proxy_ring_hash.c:137:         kt->continuum[*cont].id = id;
	xorl	%r13d, %r13d	# ivtmp.196
	.p2align 4
	.p2align 3
.L94:
	movl	44(%rsp), %eax	# %sfp, cont
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:68:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	pushq	%r13	# ivtmp.196
	.cfi_def_cfa_offset 312
	leaq	.LC18(%rip), %r8	#,
	movq	%rbp, %rcx	# hashstring_size,
	pushq	16(%rsp)	# %sfp
	.cfi_def_cfa_offset 320
	movq	32(%rsp), %r9	# %sfp,
	movl	$2, %edx	#,
	movq	%rbp, %rsi	# hashstring_size,
	movq	%r15, %rdi	# hashstring,
# proxy_ring_hash.c:136:         kt->continuum[*cont].point = (unsigned int) XXH3_64bits(hashstring, len);
	leal	(%rax,%r13), %ebx	#, cont
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:68:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
# proxy_ring_hash.c:136:         kt->continuum[*cont].point = (unsigned int) XXH3_64bits(hashstring, len);
	movq	%r15, %rdi	# hashstring,
# proxy_ring_hash.c:135:         size_t len = snprintf(hashstring, hashstring_size, "%s:%s-%d", parts[0], parts[1], k);
	movslq	%eax, %rsi	# _99, len_100
# proxy_ring_hash.c:136:         kt->continuum[*cont].point = (unsigned int) XXH3_64bits(hashstring, len);
	call	XXH_INLINE_XXH3_64bits	#
# proxy_ring_hash.c:136:         kt->continuum[*cont].point = (unsigned int) XXH3_64bits(hashstring, len);
	vmovd	%eax, %xmm1	# _101, tmp456
	movq	%r13, %rax	# ivtmp.196, ivtmp.196
# proxy_ring_hash.c:134:     for (int k = 0; k < bucket_size; k++) {
	incq	%r13	# ivtmp.196
# proxy_ring_hash.c:136:         kt->continuum[*cont].point = (unsigned int) XXH3_64bits(hashstring, len);
	vpinsrd	$1, %r14d, %xmm1, %xmm0	# id, tmp456, _446
	vmovq	%xmm0, 20(%r12,%rbx,8)	# _446, MEM <vector(2) unsigned int> [(unsigned int *)vectp.176_447]
# proxy_ring_hash.c:134:     for (int k = 0; k < bucket_size; k++) {
	popq	%r9	#
	.cfi_def_cfa_offset 312
	popq	%r10	#
	.cfi_def_cfa_offset 304
	cmpq	%r13, 56(%rsp)	# ivtmp.196, %sfp
	jne	.L94	#,
	movl	44(%rsp), %edx	# %sfp, cont
	leal	1(%rdx,%rax), %eax	#, cont
	movl	%eax, 44(%rsp)	# cont, %sfp
.L93:
# proxy_ring_hash.c:141:     free(hashstring);
	movq	%r15, %rdi	# hashstring,
	call	free@PLT	#
.L95:
# proxy_ring_hash.c:343:         lua_pop(L, 1); // remove value, leave key for next iteration.
	movq	48(%rsp), %rdi	# %sfp,
	movl	$-2, %esi	#,
	call	lua_settop@PLT	#
	jmp	.L89	#
	.p2align 4
	.p2align 3
.L92:
# proxy_ring_hash.c:146:     char *hashstring = malloc(hashstring_size);
	call	malloc@PLT	#
# proxy_ring_hash.c:148:     for (int k = 0; k < bucket_size / 4; k++) {
	cmpq	$3, 56(%rsp)	#, %sfp
# proxy_ring_hash.c:146:     char *hashstring = malloc(hashstring_size);
	movq	%rax, %rdi	#, hashstring
# proxy_ring_hash.c:148:     for (int k = 0; k < bucket_size / 4; k++) {
	jle	.L126	#,
# proxy_ring_hash.c:137:         kt->continuum[*cont].id = id;
	movl	44(%rsp), %r13d	# %sfp, cont
	leaq	208(%rsp), %rax	#, tmp376
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:68:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	movq	%rbp, 64(%rsp)	# hashstring_size, %sfp
# proxy_ring_hash.c:137:         kt->continuum[*cont].id = id;
	xorl	%r15d, %r15d	# ivtmp.202
	leaq	112(%rsp), %rbx	#, tmp375
	movq	%rax, 24(%rsp)	# tmp376, %sfp
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:68:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	movq	%rdi, %rbp	# hashstring, hashstring
	.p2align 4
	.p2align 3
.L97:
	pushq	%r15	# ivtmp.202
	.cfi_def_cfa_offset 312
	leaq	.LC18(%rip), %r8	#,
	movl	$2, %edx	#,
	movq	%rbp, %rdi	# hashstring,
	pushq	16(%rsp)	# %sfp
	.cfi_def_cfa_offset 320
	movq	80(%rsp), %rcx	# %sfp, hashstring_size
	xorl	%eax, %eax	#
# proxy_ring_hash.c:148:     for (int k = 0; k < bucket_size / 4; k++) {
	incq	%r15	# ivtmp.202
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:68:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	movq	32(%rsp), %r9	# %sfp,
	movq	%rcx, %rsi	# hashstring_size,
	call	__snprintf_chk@PLT	#
# proxy_ring_hash.c:58:     md5_init( &md5state );
	movq	%rbx, %rdi	# tmp375,
	call	md5_init@PLT	#
# proxy_ring_hash.c:59:     md5_append( &md5state, (unsigned char *)inString, strlen( inString ) );
	movq	%rbp, %rdi	# hashstring,
	call	strlen@PLT	#
# proxy_ring_hash.c:59:     md5_append( &md5state, (unsigned char *)inString, strlen( inString ) );
	movq	%rbp, %rsi	# hashstring,
	movq	%rbx, %rdi	# tmp375,
	movl	%eax, %edx	# tmp405, _144
	call	md5_append@PLT	#
# proxy_ring_hash.c:60:     md5_finish( &md5state, md5pword );
	movq	40(%rsp), %rsi	# %sfp,
	movq	%rbx, %rdi	# tmp375,
	call	md5_finish@PLT	#
# proxy_ring_hash.c:162:             kt->continuum[*cont].point = ( digest[3+h*4] << 24 )
	vmovd	224(%rsp), %xmm2	# MEM <unsigned int> [(unsigned char *)_311], tmp462
	movl	%r13d, %eax	# cont, cont
	vpinsrd	$1, %r14d, %xmm2, %xmm0	# id, tmp462, _421
	vmovq	%xmm0, 20(%r12,%rax,8)	# _421, MEM <vector(2) unsigned int> [(unsigned int *)vectp.168_422]
	vmovd	228(%rsp), %xmm3	# MEM <unsigned int> [(unsigned char *)_311 + 4B], tmp463
	leal	1(%r13), %eax	#, _408
	vpinsrd	$1, %r14d, %xmm3, %xmm0	# id, tmp463, _425
	vmovq	%xmm0, 20(%r12,%rax,8)	# _425, MEM <vector(2) unsigned int> [(unsigned int *)vectp.170_426]
	vmovd	232(%rsp), %xmm4	# MEM <unsigned int> [(unsigned char *)_311 + 8B], tmp464
	leal	2(%r13), %eax	#, _435
	vpinsrd	$1, %r14d, %xmm4, %xmm0	# id, tmp464, _429
	vmovq	%xmm0, 20(%r12,%rax,8)	# _429, MEM <vector(2) unsigned int> [(unsigned int *)vectp.172_143]
	vmovd	236(%rsp), %xmm5	# MEM <unsigned int> [(unsigned char *)_311 + 12B], tmp465
	leal	3(%r13), %eax	#, _462
# proxy_ring_hash.c:167:             (*cont)++;
	addl	$4, %r13d	#, cont
# proxy_ring_hash.c:162:             kt->continuum[*cont].point = ( digest[3+h*4] << 24 )
	vpinsrd	$1, %r14d, %xmm5, %xmm0	# id, tmp465, _442
	vmovq	%xmm0, 20(%r12,%rax,8)	# _442, MEM <vector(2) unsigned int> [(unsigned int *)vectp.174_443]
# proxy_ring_hash.c:148:     for (int k = 0; k < bucket_size / 4; k++) {
	popq	%rdi	#
	.cfi_def_cfa_offset 312
	popq	%r8	#
	.cfi_def_cfa_offset 304
	cmpq	%r15, 32(%rsp)	# ivtmp.202, %sfp
	jg	.L97	#,
.L127:
	movl	44(%rsp), %edx	# %sfp, cont
	movl	76(%rsp), %eax	# %sfp, _151
	movq	%rbp, %rdi	# hashstring, hashstring
	leal	4(%rax,%rdx), %eax	#, cont
	movl	%eax, 44(%rsp)	# cont, %sfp
.L126:
# proxy_ring_hash.c:239:     free(hashstring);
	call	free@PLT	#
# proxy_ring_hash.c:240: }
	jmp	.L95	#
	.p2align 4
	.p2align 3
.L91:
# proxy_ring_hash.c:338:                 hashstring_size += partlens[0];
	addq	%rbp, %rax	# hashstring_size, hashstring_size
# proxy_ring_hash.c:214:     char *hashstring = malloc(hashstring_size);
	movq	%rax, %rdi	# hashstring_size,
# proxy_ring_hash.c:338:                 hashstring_size += partlens[0];
	movq	%rax, 64(%rsp)	# hashstring_size, %sfp
# proxy_ring_hash.c:214:     char *hashstring = malloc(hashstring_size);
	call	malloc@PLT	#
# proxy_ring_hash.c:216:     for (int k = 0; k < bucket_size / 4; k++) {
	cmpq	$3, 56(%rsp)	#, %sfp
# proxy_ring_hash.c:214:     char *hashstring = malloc(hashstring_size);
	movq	%rax, %rbp	#, hashstring
# proxy_ring_hash.c:216:     for (int k = 0; k < bucket_size / 4; k++) {
	jle	.L102	#,
# proxy_ring_hash.c:137:         kt->continuum[*cont].id = id;
	movl	44(%rsp), %r13d	# %sfp, cont
	leaq	208(%rsp), %rax	#, tmp376
	xorl	%r15d, %r15d	# ivtmp.186
	leaq	112(%rsp), %rbx	#, tmp375
	movq	%rax, 24(%rsp)	# tmp376, %sfp
	.p2align 4
	.p2align 3
.L103:
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:68:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 312
	leaq	.LC21(%rip), %r8	#,
	movl	$2, %edx	#,
	movq	%rbp, %rdi	# hashstring,
	pushq	%r15	# ivtmp.186
	.cfi_def_cfa_offset 320
	pushq	24(%rsp)	# %sfp
	.cfi_def_cfa_offset 328
	xorl	%eax, %eax	#
# proxy_ring_hash.c:216:     for (int k = 0; k < bucket_size / 4; k++) {
	incq	%r15	# ivtmp.186
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:68:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	movq	40(%rsp), %r9	# %sfp, _14
	pushq	%r9	# _14
	.cfi_def_cfa_offset 336
	movq	96(%rsp), %rcx	# %sfp, hashstring_size
	movq	%rcx, %rsi	# hashstring_size,
	call	__snprintf_chk@PLT	#
# proxy_ring_hash.c:58:     md5_init( &md5state );
	addq	$32, %rsp	#,
	.cfi_def_cfa_offset 304
	movq	%rbx, %rdi	# tmp375,
	call	md5_init@PLT	#
# proxy_ring_hash.c:59:     md5_append( &md5state, (unsigned char *)inString, strlen( inString ) );
	movq	%rbp, %rdi	# hashstring,
	call	strlen@PLT	#
# proxy_ring_hash.c:59:     md5_append( &md5state, (unsigned char *)inString, strlen( inString ) );
	movq	%rbp, %rsi	# hashstring,
	movq	%rbx, %rdi	# tmp375,
	movl	%eax, %edx	# tmp410, _219
	call	md5_append@PLT	#
# proxy_ring_hash.c:60:     md5_finish( &md5state, md5pword );
	movq	24(%rsp), %rsi	# %sfp,
	movq	%rbx, %rdi	# tmp375,
	call	md5_finish@PLT	#
# proxy_ring_hash.c:229:             kt->continuum[*cont].point = ( digest[3+h*4] << 24 )
	vmovd	208(%rsp), %xmm3	# MEM <unsigned int> [(unsigned char *)_311], tmp483
	movl	%r13d, %eax	# cont, cont
	vpinsrd	$1, %r14d, %xmm3, %xmm0	# id, tmp483, _449
	vmovq	%xmm0, 20(%r12,%rax,8)	# _449, MEM <vector(2) unsigned int> [(unsigned int *)vectp.178_451]
	vmovd	212(%rsp), %xmm4	# MEM <unsigned int> [(unsigned char *)_311 + 4B], tmp484
	leal	1(%r13), %eax	#, _291
	vpinsrd	$1, %r14d, %xmm4, %xmm0	# id, tmp484, _453
	vmovq	%xmm0, 20(%r12,%rax,8)	# _453, MEM <vector(2) unsigned int> [(unsigned int *)vectp.180_455]
	vmovd	216(%rsp), %xmm5	# MEM <unsigned int> [(unsigned char *)_311 + 8B], tmp485
	leal	2(%r13), %eax	#, _321
	vpinsrd	$1, %r14d, %xmm5, %xmm0	# id, tmp485, _182
	vmovq	%xmm0, 20(%r12,%rax,8)	# _182, MEM <vector(2) unsigned int> [(unsigned int *)vectp.182_484]
	vmovd	220(%rsp), %xmm6	# MEM <unsigned int> [(unsigned char *)_311 + 12B], tmp486
	leal	3(%r13), %eax	#, _351
# proxy_ring_hash.c:234:             (*cont)++;
	addl	$4, %r13d	#, cont
# proxy_ring_hash.c:229:             kt->continuum[*cont].point = ( digest[3+h*4] << 24 )
	vpinsrd	$1, %r14d, %xmm6, %xmm0	# id, tmp486, _470
	vmovq	%xmm0, 20(%r12,%rax,8)	# _470, MEM <vector(2) unsigned int> [(unsigned int *)vectp.184_471]
# proxy_ring_hash.c:216:     for (int k = 0; k < bucket_size / 4; k++) {
	cmpq	%r15, 32(%rsp)	# ivtmp.186, %sfp
	jg	.L103	#,
	movl	44(%rsp), %edx	# %sfp, cont
	movl	76(%rsp), %eax	# %sfp, _151
	leal	4(%rax,%rdx), %eax	#, cont
	movl	%eax, 44(%rsp)	# cont, %sfp
.L102:
# proxy_ring_hash.c:239:     free(hashstring);
	movq	%rbp, %rdi	# hashstring,
	jmp	.L126	#
	.p2align 4
	.p2align 3
.L90:
# proxy_ring_hash.c:177:     char *hashstring = malloc(hashstring_size);
	movq	%rbp, %rdi	# hashstring_size,
	call	malloc@PLT	#
# proxy_ring_hash.c:179:     for (int k = 0; k < bucket_size / 4; k++) {
	cmpq	$3, 56(%rsp)	#, %sfp
# proxy_ring_hash.c:177:     char *hashstring = malloc(hashstring_size);
	movq	%rax, %rdi	#, hashstring
# proxy_ring_hash.c:179:     for (int k = 0; k < bucket_size / 4; k++) {
	jle	.L126	#,
	leaq	208(%rsp), %rax	#, tmp376
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:68:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	movq	%rbp, 64(%rsp)	# hashstring_size, %sfp
# proxy_ring_hash.c:137:         kt->continuum[*cont].id = id;
	movl	44(%rsp), %r13d	# %sfp, cont
	xorl	%r15d, %r15d	# ivtmp.212
	leaq	112(%rsp), %rbx	#, tmp375
	movq	%rax, 24(%rsp)	# tmp376, %sfp
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:68:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	movq	%rdi, %rbp	# hashstring, hashstring
	jmp	.L101	#
	.p2align 4
	.p2align 3
.L130:
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 312
	leaq	.LC20(%rip), %r8	#,
	movl	$2, %edx	#,
	movq	%rbp, %rdi	# hashstring,
	pushq	%r15	# ivtmp.212
	.cfi_def_cfa_offset 320
	movq	80(%rsp), %rcx	# %sfp, hashstring_size
	movq	32(%rsp), %r9	# %sfp,
	movq	%rcx, %rsi	# hashstring_size,
	call	__snprintf_chk@PLT	#
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:68:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	popq	%rcx	#
	.cfi_def_cfa_offset 312
	popq	%rsi	#
	.cfi_def_cfa_offset 304
.L100:
# proxy_ring_hash.c:58:     md5_init( &md5state );
	movq	%rbx, %rdi	# tmp375,
# proxy_ring_hash.c:179:     for (int k = 0; k < bucket_size / 4; k++) {
	incq	%r15	# ivtmp.212
# proxy_ring_hash.c:58:     md5_init( &md5state );
	call	md5_init@PLT	#
# proxy_ring_hash.c:59:     md5_append( &md5state, (unsigned char *)inString, strlen( inString ) );
	movq	%rbp, %rdi	# hashstring,
	call	strlen@PLT	#
# proxy_ring_hash.c:59:     md5_append( &md5state, (unsigned char *)inString, strlen( inString ) );
	movq	%rbp, %rsi	# hashstring,
	movq	%rbx, %rdi	# tmp375,
	movl	%eax, %edx	# tmp408, _183
	call	md5_append@PLT	#
# proxy_ring_hash.c:60:     md5_finish( &md5state, md5pword );
	movq	24(%rsp), %rsi	# %sfp,
	movq	%rbx, %rdi	# tmp375,
	call	md5_finish@PLT	#
# proxy_ring_hash.c:199:             kt->continuum[*cont].point = ( digest[3+h*4] << 24 )
	vmovd	208(%rsp), %xmm6	# MEM <unsigned int> [(unsigned char *)_311], tmp472
	movl	%r13d, %eax	# cont, cont
	vpinsrd	$1, %r14d, %xmm6, %xmm0	# id, tmp472, _397
	vmovq	%xmm0, 20(%r12,%rax,8)	# _397, MEM <vector(2) unsigned int> [(unsigned int *)vectp.160_398]
	vmovd	212(%rsp), %xmm7	# MEM <unsigned int> [(unsigned char *)_311 + 4B], tmp473
	leal	1(%r13), %eax	#, _516
	vpinsrd	$1, %r14d, %xmm7, %xmm0	# id, tmp473, _401
	vmovq	%xmm0, 20(%r12,%rax,8)	# _401, MEM <vector(2) unsigned int> [(unsigned int *)vectp.162_402]
	vmovd	216(%rsp), %xmm1	# MEM <unsigned int> [(unsigned char *)_311 + 8B], tmp474
	leal	2(%r13), %eax	#, _543
	vpinsrd	$1, %r14d, %xmm1, %xmm0	# id, tmp474, _430
	vmovq	%xmm0, 20(%r12,%rax,8)	# _430, MEM <vector(2) unsigned int> [(unsigned int *)vectp.164_415]
	vmovd	220(%rsp), %xmm2	# MEM <unsigned int> [(unsigned char *)_311 + 12B], tmp475
	leal	3(%r13), %eax	#, _570
# proxy_ring_hash.c:204:             (*cont)++;
	addl	$4, %r13d	#, cont
# proxy_ring_hash.c:199:             kt->continuum[*cont].point = ( digest[3+h*4] << 24 )
	vpinsrd	$1, %r14d, %xmm2, %xmm0	# id, tmp475, _417
	vmovq	%xmm0, 20(%r12,%rax,8)	# _417, MEM <vector(2) unsigned int> [(unsigned int *)vectp.166_419]
# proxy_ring_hash.c:179:     for (int k = 0; k < bucket_size / 4; k++) {
	cmpq	%r15, 32(%rsp)	# ivtmp.212, %sfp
	jle	.L127	#,
.L101:
# proxy_ring_hash.c:183:         if (strcmp(parts[1], "11211") == 0) {
	movq	8(%rsp), %rdi	# %sfp,
	leaq	.LC19(%rip), %rsi	#,
	call	strcmp@PLT	#
# proxy_ring_hash.c:183:         if (strcmp(parts[1], "11211") == 0) {
	testl	%eax, %eax	# _148
	je	.L130	#,
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:68:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	pushq	%r15	# ivtmp.212
	.cfi_def_cfa_offset 312
	pushq	16(%rsp)	# %sfp
	.cfi_def_cfa_offset 320
	movl	$2, %edx	#,
	leaq	.LC18(%rip), %r8	#,
	movq	80(%rsp), %rcx	# %sfp, hashstring_size
	movq	%rbp, %rdi	# hashstring,
	xorl	%eax, %eax	#
	movq	32(%rsp), %r9	# %sfp,
	movq	%rcx, %rsi	# hashstring_size,
	call	__snprintf_chk@PLT	#
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:68:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	popq	%rax	#
	.cfi_def_cfa_offset 312
	popq	%rdx	#
	.cfi_def_cfa_offset 304
	jmp	.L100	#
	.p2align 4
	.p2align 3
.L129:
# proxy_ring_hash.c:347:     qsort( &kt->continuum, cont, sizeof(cpoint), ketama_compare);
	movl	44(%rsp), %esi	# %sfp, _20
# proxy_ring_hash.c:347:     qsort( &kt->continuum, cont, sizeof(cpoint), ketama_compare);
	leaq	20(%r12), %rdi	#, _21
# proxy_ring_hash.c:347:     qsort( &kt->continuum, cont, sizeof(cpoint), ketama_compare);
	leaq	ketama_compare(%rip), %rcx	#,
	movl	$8, %edx	#,
	call	qsort@PLT	#
# proxy_ring_hash.c:354:     lua_pushlightuserdata(L, &kt->phc);
	movq	48(%rsp), %rdi	# %sfp,
# proxy_ring_hash.c:351:     kt->phc.selector_func = ketama_get_server;
	leaq	ketama_get_server(%rip), %rax	#, tmp492
# proxy_ring_hash.c:350:     kt->phc.ctx = kt;
	movq	%r12, 8(%r12)	# kt, kt_60->phc.ctx
# proxy_ring_hash.c:351:     kt->phc.selector_func = ketama_get_server;
	movq	%rax, (%r12)	# tmp492, kt_60->phc.selector_func
# proxy_ring_hash.c:354:     lua_pushlightuserdata(L, &kt->phc);
	movq	%r12, %rsi	# kt,
	call	lua_pushlightuserdata@PLT	#
# proxy_ring_hash.c:357: }
	movq	232(%rsp), %rax	# D.54626, tmp412
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp412
	jne	.L131	#,
	addq	$248, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	$2, %eax	#,
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
.L128:
	.cfi_restore_state
# proxy_ring_hash.c:259:         luaL_checktype(L, 2, LUA_TTABLE);
	movl	$5, %edx	#,
	movl	$2, %esi	#,
	movq	%rbx, %rdi	# L,
	call	luaL_checktype@PLT	#
# proxy_ring_hash.c:260:         if (lua_getfield(L, 2, "omode") != LUA_TNIL) {
	leaq	.LC7(%rip), %rdx	#,
	movl	$2, %esi	#,
	movq	%rbx, %rdi	# L,
	call	lua_getfield@PLT	#
# proxy_ring_hash.c:260:         if (lua_getfield(L, 2, "omode") != LUA_TNIL) {
	testl	%eax, %eax	# _1
	jne	.L132	#,
.L83:
# proxy_ring_hash.c:248:     int makemode = 0;
	movl	$0, 72(%rsp)	#, %sfp
.L85:
# proxy_ring_hash.c:276:         lua_pop(L, 1); // pops the nil or mode
	movq	48(%rsp), %rbx	# %sfp, L
	movl	$-2, %esi	#,
	movq	%rbx, %rdi	# L,
	call	lua_settop@PLT	#
# proxy_ring_hash.c:278:         if (lua_getfield(L, 2, "obuckets") != LUA_TNIL) {
	leaq	.LC13(%rip), %rdx	#,
	movl	$2, %esi	#,
	movq	%rbx, %rdi	# L,
	call	lua_getfield@PLT	#
# proxy_ring_hash.c:278:         if (lua_getfield(L, 2, "obuckets") != LUA_TNIL) {
	testl	%eax, %eax	# _6
	jne	.L133	#,
	movq	$40, 32(%rsp)	#, %sfp
	movl	$160, %ebx	#, prephitmp_212
	movl	$160, %r12d	#, prephitmp_214
# proxy_ring_hash.c:245:     lua_Integer bucket_size = DEFAULT_BUCKET_SIZE;
	movq	$160, 56(%rsp)	#, %sfp
.L86:
# proxy_ring_hash.c:286:         lua_pop(L, 1);
	movl	$-2, %esi	#,
	movq	48(%rsp), %rdi	# %sfp,
	call	lua_settop@PLT	#
	jmp	.L81	#
.L132:
# proxy_ring_hash.c:261:             luaL_checktype(L, -1, LUA_TSTRING);
	movq	48(%rsp), %rbx	# %sfp, L
	movl	$4, %edx	#,
	movl	$-1, %esi	#,
	movq	%rbx, %rdi	# L,
	call	luaL_checktype@PLT	#
# proxy_ring_hash.c:262:             const char *mode = lua_tostring(L, -1);
	movq	%rbx, %rdi	# L,
	xorl	%edx, %edx	#
	movl	$-1, %esi	#,
	call	lua_tolstring@PLT	#
# proxy_ring_hash.c:263:             if (strcmp(mode, "default") == 0) {
	leaq	.LC8(%rip), %rsi	#,
	movq	%rax, %rdi	# mode,
# proxy_ring_hash.c:262:             const char *mode = lua_tostring(L, -1);
	movq	%rax, %rbx	#, mode
# proxy_ring_hash.c:263:             if (strcmp(mode, "default") == 0) {
	call	strcmp@PLT	#
# proxy_ring_hash.c:263:             if (strcmp(mode, "default") == 0) {
	testl	%eax, %eax	# _2
	je	.L83	#,
# proxy_ring_hash.c:265:             } else if (strcmp(mode, "ketama") == 0) {
	leaq	.LC9(%rip), %rsi	#,
	movq	%rbx, %rdi	# mode,
	call	strcmp@PLT	#
# proxy_ring_hash.c:266:                 makemode = MODE_KETAMA;
	movl	$1, 72(%rsp)	#, %sfp
# proxy_ring_hash.c:265:             } else if (strcmp(mode, "ketama") == 0) {
	testl	%eax, %eax	# _3
	je	.L85	#,
# proxy_ring_hash.c:267:             } else if (strcmp(mode, "twemproxy") == 0) {
	leaq	.LC10(%rip), %rsi	#,
	movq	%rbx, %rdi	# mode,
	call	strcmp@PLT	#
# proxy_ring_hash.c:268:                 makemode = MODE_TWEMPROXY;
	movl	$2, 72(%rsp)	#, %sfp
# proxy_ring_hash.c:267:             } else if (strcmp(mode, "twemproxy") == 0) {
	testl	%eax, %eax	# _4
	je	.L85	#,
# proxy_ring_hash.c:269:             } else if (strcmp(mode, "evcache") == 0) {
	leaq	.LC11(%rip), %rsi	#,
	movq	%rbx, %rdi	# mode,
	call	strcmp@PLT	#
# proxy_ring_hash.c:270:                 makemode = MODE_EVCACHE;
	movl	$3, 72(%rsp)	#, %sfp
# proxy_ring_hash.c:269:             } else if (strcmp(mode, "evcache") == 0) {
	testl	%eax, %eax	# _5
	je	.L85	#,
# proxy_ring_hash.c:272:                 lua_pushstring(L, "ring_hash: bad omode argument");
	movq	48(%rsp), %rbx	# %sfp, L
	leaq	.LC12(%rip), %rsi	#,
	movq	%rbx, %rdi	# L,
	call	lua_pushstring@PLT	#
# proxy_ring_hash.c:273:                 lua_error(L);
	movq	%rbx, %rdi	# L,
	call	lua_error@PLT	#
	jmp	.L83	#
	.p2align 4
	.p2align 3
.L133:
# proxy_ring_hash.c:280:           bucket_size = lua_tointegerx(L, -1, &success);
	movq	48(%rsp), %rdi	# %sfp,
	leaq	92(%rsp), %rdx	#, tmp245
	movl	$-1, %esi	#,
# proxy_ring_hash.c:279:           int success = 0;
	movl	$0, 92(%rsp)	#, success
# proxy_ring_hash.c:280:           bucket_size = lua_tointegerx(L, -1, &success);
	call	lua_tointegerx@PLT	#
# proxy_ring_hash.c:281:           if (!success || bucket_size < 1) {
	movl	92(%rsp), %r11d	# success,
# proxy_ring_hash.c:280:           bucket_size = lua_tointegerx(L, -1, &success);
	movq	%rax, 56(%rsp)	# bucket_size, %sfp
# proxy_ring_hash.c:281:           if (!success || bucket_size < 1) {
	testl	%r11d, %r11d	#
	je	.L111	#,
	testq	%rax, %rax	# bucket_size
	jle	.L111	#,
.L87:
# proxy_ring_hash.c:290:     size_t size = sizeof(ketama_t) + sizeof(cpoint) * (total * bucket_size);
	movq	56(%rsp), %rdx	# %sfp, bucket_size
# proxy_ring_hash.c:179:     for (int k = 0; k < bucket_size / 4; k++) {
	testq	%rdx, %rdx	# bucket_size
	leaq	3(%rdx), %rax	#, tmp252
# proxy_ring_hash.c:290:     size_t size = sizeof(ketama_t) + sizeof(cpoint) * (total * bucket_size);
	movq	%rdx, %r12	# bucket_size, prephitmp_214
# proxy_ring_hash.c:293:     kt->total_buckets = bucket_size * total;
	movl	%edx, %ebx	# bucket_size, prephitmp_212
# proxy_ring_hash.c:179:     for (int k = 0; k < bucket_size / 4; k++) {
	cmovns	%rdx, %rax	# tmp252,, bucket_size, bucket_size
	sarq	$2, %rax	#, bucket_size
	movq	%rax, 32(%rsp)	# bucket_size, %sfp
	jmp	.L86	#
.L111:
# proxy_ring_hash.c:282:               lua_pushstring(L, "ring_hash: option argument must be a positive integer");
	movq	48(%rsp), %rbx	# %sfp, L
	leaq	.LC14(%rip), %rsi	#,
	movq	%rbx, %rdi	# L,
	call	lua_pushstring@PLT	#
# proxy_ring_hash.c:283:               lua_error(L);
	movq	%rbx, %rdi	# L,
	call	lua_error@PLT	#
	jmp	.L87	#
.L131:
# proxy_ring_hash.c:357: }
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE7474:
	.size	ketama_new, .-ketama_new
	.section	.rodata.str1.1
.LC22:
	.string	"new"
.LC24:
	.string	"hash"
	.text
	.p2align 4
	.globl	mcplib_open_dist_ring_hash
	.type	mcplib_open_dist_ring_hash, @function
mcplib_open_dist_ring_hash:
.LFB7475:
	.cfi_startproc
	endbr64	
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
# proxy_ring_hash.c:360:     const struct luaL_Reg ketama_f[] = {
	leaq	.LC22(%rip), %rax	#, tmp113
# proxy_ring_hash.c:365:     luaL_newlib(L, ketama_f);
	movl	$136, %esi	#,
# proxy_ring_hash.c:359: int mcplib_open_dist_ring_hash(lua_State *L) {
	subq	$48, %rsp	#,
	.cfi_def_cfa_offset 64
# proxy_ring_hash.c:365:     luaL_newlib(L, ketama_f);
	vmovsd	.LC23(%rip), %xmm0	#,
# proxy_ring_hash.c:359: int mcplib_open_dist_ring_hash(lua_State *L) {
	movq	%fs:40, %rbx	# MEM[(<address-space-1> long unsigned int *)40B], L
	movq	%rbx, 40(%rsp)	# L, D.54646
	movq	%rdi, %rbx	# L, L
# proxy_ring_hash.c:360:     const struct luaL_Reg ketama_f[] = {
	movq	%rax, (%rsp)	# tmp113, ketama_f[0].name
	leaq	ketama_new(%rip), %rax	#, tmp114
	movq	$0, 16(%rsp)	#, ketama_f[1].name
	movq	$0, 24(%rsp)	#, ketama_f[1].func
	movq	%rax, 8(%rsp)	# tmp114, ketama_f[0].func
# proxy_ring_hash.c:365:     luaL_newlib(L, ketama_f);
	call	luaL_checkversion_@PLT	#
# proxy_ring_hash.c:365:     luaL_newlib(L, ketama_f);
	xorl	%esi, %esi	#
	movl	$1, %edx	#,
	movq	%rbx, %rdi	# L,
	call	lua_createtable@PLT	#
# proxy_ring_hash.c:365:     luaL_newlib(L, ketama_f);
	xorl	%edx, %edx	#
	movq	%rsp, %rsi	#, tmp105
	movq	%rbx, %rdi	# L,
	call	luaL_setfuncs@PLT	#
# proxy_ring_hash.c:366:     lua_pushlightuserdata(L, &ketama_key_hash);
	leaq	ketama_key_hash(%rip), %rsi	#,
	movq	%rbx, %rdi	# L,
	call	lua_pushlightuserdata@PLT	#
# proxy_ring_hash.c:367:     lua_setfield(L, -2, "hash");
	leaq	.LC24(%rip), %rdx	#,
	movl	$-2, %esi	#,
	movq	%rbx, %rdi	# L,
	call	lua_setfield@PLT	#
# proxy_ring_hash.c:370: }
	movq	40(%rsp), %rax	# D.54646, tmp111
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp111
	jne	.L137	#,
	addq	$48, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	$1, %eax	#,
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret	
.L137:
	.cfi_restore_state
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE7475:
	.size	mcplib_open_dist_ring_hash, .-mcplib_open_dist_ring_hash
	.section	.data.rel.local,"aw"
	.align 8
	.type	ketama_key_hash, @object
	.size	ketama_key_hash, 8
ketama_key_hash:
# func:
	.quad	ketama_key_hasher
	.section	.rodata
	.align 64
	.type	XXH3_kSecret, @object
	.size	XXH3_kSecret, 192
XXH3_kSecret:
	.base64	"uP5sOSOkS758AYEs9yGtHN7UbemDkJfbckCkpLezZx/LeeZOzMDleIJa0H3M/3IhuAhGdPdDJI7gNZDmgTomTDwoUruRwwDLiNBlixtTLqNxZEiXog35TjgZ70ap3qzYqPp2P+OcND/53LvHxwtPHYpR4EvNtFkxyJ9+ydl4c2TqxayDNNPrw8WBoP/6E2PrFw3dUbfw2knTFlUmKdRonisWvlh9R6H8j/i40XrQMc5FyzqPlRYEKK/X+8q7S0B+"
	.section	.rodata.cst32,"aM",@progbits,32
	.align 32
.LC0:
	.quad	-8796714831421723037
	.quad	2246822519
	.quad	2870177450012600261
	.quad	2654435761
	.align 32
.LC1:
	.quad	3266489917
	.quad	-7046029288634856825
	.quad	-4417276706812531889
	.quad	1609587929392839161
	.align 32
.LC2:
	.quad	-4329134394285701654
	.quad	-1485321483350670907
	.quad	5321830579834785047
	.quad	-7032137544937171245
	.align 32
.LC4:
	.quad	-242834301215959509
	.quad	-3588858202114426737
	.quad	2883454493032893253
	.quad	9097354517224871855
	.align 32
.LC5:
	.quad	-1556992608276218209
	.quad	-4196251135427498811
	.quad	1723580219865931905
	.quad	-3221803331004277491
	.align 32
.LC6:
	.quad	3143064850383918358
	.quad	-8071399103737053674
	.quad	5030012605302946040
	.quad	-5825401622958753077
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC23:
	.long	0
	.long	1082097664
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
