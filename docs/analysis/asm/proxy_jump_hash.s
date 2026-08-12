	.file	"proxy_jump_hash.c"
# GNU C23 (Ubuntu 15.2.0-16ubuntu1) version 15.2.0 (x86_64-linux-gnu)
#	compiled by GNU C version 15.2.0, GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.3.1, isl version isl-0.27-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -D_FORTIFY_SOURCE=3 -march=znver3 -mmmx -mpopcnt -msse -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mavx -mavx2 -msse4a -mno-fma4 -mno-xop -mfma -mno-avx512f -mbmi -mbmi2 -maes -mpclmul -mno-avx512vl -mno-avx512bw -mno-avx512dq -mno-avx512cd -mno-avx512vbmi -mno-avx512ifma -mno-avx512vpopcntdq -mno-avx512vbmi2 -mno-gfni -mvpclmulqdq -mno-avx512vnni -mno-avx512bitalg -mno-avx512bf16 -mno-avx512vp2intersect -mno-3dnow -madx -mabm -mno-cldemote -mclflushopt -mclwb -mclzero -mcx16 -mno-enqcmd -mf16c -mfsgsbase -mfxsr -mno-hle -msahf -mno-lwp -mlzcnt -mmovbe -mno-movdir64b -mno-movdiri -mno-mwaitx -mno-pconfig -mno-pku -mprfchw -mno-ptwrite -mrdpid -mrdrnd -mrdseed -mno-rtm -mno-serialize -mno-sgx -msha -mshstk -mno-tbm -mno-tsxldtrk -mvaes -mno-waitpkg -mno-wbnoinvd -mxsave -mxsavec -mxsaveopt -mxsaves -mno-amx-tile -mno-amx-int8 -mno-amx-bf16 -mno-uintr -mno-hreset -mno-kl -mno-widekl -mno-avxvnni -mno-avx512fp16 -mno-avxifma -mno-avxvnniint8 -mno-avxneconvert -mno-cmpccxadd -mno-amx-fp16 -mno-prefetchi -mno-raoint -mno-amx-complex -mno-avxvnniint16 -mno-sm3 -mno-sha512 -mno-sm4 -mno-apxf -mno-usermsr -mno-avx10.2 -mno-amx-avx512 -mno-amx-tf32 -mno-amx-transpose -mno-amx-fp8 -mno-movrs -mno-amx-movrs --param=l1-cache-size=32 --param=l1-cache-line-size=64 --param=l2-cache-size=512 -mtune=znver3 -O3 -ftree-vectorize -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection -fzero-init-padding-bits=all
	.text
	.p2align 4
	.type	mcplib_dist_jump_hash_get_server, @function
mcplib_dist_jump_hash_get_server:
.LFB7466:
	.cfi_startproc
	endbr64	
# proxy_jump_hash.c:14:     while (j < jh->buckets) {
	movl	16(%rsi), %ecx	# MEM[(struct mcplib_jump_hash_t *)ctx_14(D)].buckets,
# proxy_jump_hash.c:14:     while (j < jh->buckets) {
	testl	%ecx, %ecx	# _24
	je	.L4	#,
	vmovsd	.LC0(%rip), %xmm3	#, tmp123
	vxorps	%xmm2, %xmm2, %xmm2	# tmp126
# proxy_jump_hash.c:13:     int64_t b = -1, j = 0;
	xorl	%edx, %edx	# j
# proxy_jump_hash.c:16:         hash = hash * 2862933555777941757ULL + 1;
	movabsq	$2862933555777941757, %rsi	#, tmp114
	.p2align 6
	.p2align 4
	.p2align 3
.L3:
	imulq	%rsi, %rdi	# tmp114, _1
# proxy_jump_hash.c:16:         hash = hash * 2862933555777941757ULL + 1;
	incq	%rdi	# hash
# proxy_jump_hash.c:17:         j = (b + 1) * ((double)(1LL << 31) / (double)((hash >> 33) + 1));
	movq	%rdi, %rax	# hash, _4
	shrq	$33, %rax	#, _4
# proxy_jump_hash.c:17:         j = (b + 1) * ((double)(1LL << 31) / (double)((hash >> 33) + 1));
	incq	%rax	# _5
# proxy_jump_hash.c:17:         j = (b + 1) * ((double)(1LL << 31) / (double)((hash >> 33) + 1));
	vcvtsi2sdq	%rax, %xmm2, %xmm0	# _5, tmp126, tmp127
# proxy_jump_hash.c:17:         j = (b + 1) * ((double)(1LL << 31) / (double)((hash >> 33) + 1));
	vdivsd	%xmm0, %xmm3, %xmm0	# _6, tmp123, _7
# proxy_jump_hash.c:17:         j = (b + 1) * ((double)(1LL << 31) / (double)((hash >> 33) + 1));
	leaq	1(%rdx), %rax	#, _2
# proxy_jump_hash.c:17:         j = (b + 1) * ((double)(1LL << 31) / (double)((hash >> 33) + 1));
	vcvtsi2sdq	%rax, %xmm2, %xmm1	# _2, tmp126, tmp128
	movq	%rdx, %rax	# j, j
	vmulsd	%xmm1, %xmm0, %xmm0	# _3, _7, _8
# proxy_jump_hash.c:17:         j = (b + 1) * ((double)(1LL << 31) / (double)((hash >> 33) + 1));
	vcvttsd2siq	%xmm0, %rdx	# _8, j
# proxy_jump_hash.c:14:     while (j < jh->buckets) {
	cmpq	%rcx, %rdx	# _25, j
	jl	.L3	#,
	ret	
	.p2align 4
	.p2align 3
.L4:
	movl	$-1, %eax	#, <retval>
# proxy_jump_hash.c:20: }
	ret	
	.cfi_endproc
.LFE7466:
	.size	mcplib_dist_jump_hash_get_server, .-mcplib_dist_jump_hash_get_server
	.p2align 4
	.type	mcplib_dist_jump_hash_new, @function
mcplib_dist_jump_hash_new:
.LFB7467:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx	#
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
# proxy_jump_hash.c:24:     luaL_checktype(L, 1, LUA_TTABLE);
	movl	$5, %edx	#,
# proxy_jump_hash.c:23: static int mcplib_dist_jump_hash_new(lua_State *L) {
	movq	%rdi, %rbx	# L, L
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 32
# proxy_jump_hash.c:24:     luaL_checktype(L, 1, LUA_TTABLE);
	movl	$1, %esi	#,
	call	luaL_checktype@PLT	#
# proxy_jump_hash.c:25:     lua_Unsigned buckets = lua_rawlen(L, 1);
	movq	%rbx, %rdi	# L,
	movl	$1, %esi	#,
	call	lua_rawlen@PLT	#
# proxy_jump_hash.c:27:     mcplib_jump_hash_t *jh = lua_newuserdatauv(L, sizeof(mcplib_jump_hash_t), 0);
	movq	%rbx, %rdi	# L,
	xorl	%edx, %edx	#
	movl	$24, %esi	#,
# proxy_jump_hash.c:25:     lua_Unsigned buckets = lua_rawlen(L, 1);
	movq	%rax, %rbp	#, buckets
# proxy_jump_hash.c:27:     mcplib_jump_hash_t *jh = lua_newuserdatauv(L, sizeof(mcplib_jump_hash_t), 0);
	call	lua_newuserdatauv@PLT	#
# proxy_jump_hash.c:34:     jh->phc.selector_func = mcplib_dist_jump_hash_get_server;
	leaq	mcplib_dist_jump_hash_get_server(%rip), %rcx	#, tmp110
# proxy_jump_hash.c:36:     lua_pushlightuserdata(L, &jh->phc);
	movq	%rbx, %rdi	# L,
# proxy_jump_hash.c:32:     jh->buckets = buckets;
	movl	%ebp, 16(%rax)	# buckets, jh_9->buckets
# proxy_jump_hash.c:33:     jh->phc.ctx = jh;
	movq	%rax, 8(%rax)	# jh, jh_9->phc.ctx
# proxy_jump_hash.c:34:     jh->phc.selector_func = mcplib_dist_jump_hash_get_server;
	movq	%rcx, (%rax)	# tmp110, jh_9->phc.selector_func
# proxy_jump_hash.c:36:     lua_pushlightuserdata(L, &jh->phc);
	movq	%rax, %rsi	# jh,
	call	lua_pushlightuserdata@PLT	#
# proxy_jump_hash.c:40: }
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 24
	movl	$2, %eax	#,
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret	
	.cfi_endproc
.LFE7467:
	.size	mcplib_dist_jump_hash_new, .-mcplib_dist_jump_hash_new
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"new"
	.text
	.p2align 4
	.globl	mcplib_open_dist_jump_hash
	.type	mcplib_open_dist_jump_hash, @function
mcplib_open_dist_jump_hash:
.LFB7468:
	.cfi_startproc
	endbr64	
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
# proxy_jump_hash.c:43:     const struct luaL_Reg jump_f[] = {
	leaq	.LC1(%rip), %rax	#, tmp111
# proxy_jump_hash.c:48:     luaL_newlib(L, jump_f);
	movl	$136, %esi	#,
# proxy_jump_hash.c:42: int mcplib_open_dist_jump_hash(lua_State *L) {
	subq	$48, %rsp	#,
	.cfi_def_cfa_offset 64
# proxy_jump_hash.c:48:     luaL_newlib(L, jump_f);
	vmovsd	.LC2(%rip), %xmm0	#,
# proxy_jump_hash.c:42: int mcplib_open_dist_jump_hash(lua_State *L) {
	movq	%fs:40, %rbx	# MEM[(<address-space-1> long unsigned int *)40B], L
	movq	%rbx, 40(%rsp)	# L, D.53526
	movq	%rdi, %rbx	# L, L
# proxy_jump_hash.c:43:     const struct luaL_Reg jump_f[] = {
	movq	%rax, (%rsp)	# tmp111, jump_f[0].name
	leaq	mcplib_dist_jump_hash_new(%rip), %rax	#, tmp112
	movq	$0, 16(%rsp)	#, jump_f[1].name
	movq	$0, 24(%rsp)	#, jump_f[1].func
	movq	%rax, 8(%rsp)	# tmp112, jump_f[0].func
# proxy_jump_hash.c:48:     luaL_newlib(L, jump_f);
	call	luaL_checkversion_@PLT	#
# proxy_jump_hash.c:48:     luaL_newlib(L, jump_f);
	xorl	%esi, %esi	#
	movl	$1, %edx	#,
	movq	%rbx, %rdi	# L,
	call	lua_createtable@PLT	#
# proxy_jump_hash.c:48:     luaL_newlib(L, jump_f);
	xorl	%edx, %edx	#
	movq	%rsp, %rsi	#, tmp105
	movq	%rbx, %rdi	# L,
	call	luaL_setfuncs@PLT	#
# proxy_jump_hash.c:51: }
	movq	40(%rsp), %rax	# D.53526, tmp109
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp109
	jne	.L12	#,
	addq	$48, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	$1, %eax	#,
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret	
.L12:
	.cfi_restore_state
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE7468:
	.size	mcplib_open_dist_jump_hash, .-mcplib_open_dist_jump_hash
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC0:
	.long	0
	.long	1105199104
	.align 8
.LC2:
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
