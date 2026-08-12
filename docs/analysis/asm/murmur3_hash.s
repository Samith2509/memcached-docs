	.file	"murmur3_hash.c"
# GNU C23 (Ubuntu 15.2.0-16ubuntu1) version 15.2.0 (x86_64-linux-gnu)
#	compiled by GNU C version 15.2.0, GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.3.1, isl version isl-0.27-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -D_FORTIFY_SOURCE=3 -march=znver3 -mmmx -mpopcnt -msse -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mavx -mavx2 -msse4a -mno-fma4 -mno-xop -mfma -mno-avx512f -mbmi -mbmi2 -maes -mpclmul -mno-avx512vl -mno-avx512bw -mno-avx512dq -mno-avx512cd -mno-avx512vbmi -mno-avx512ifma -mno-avx512vpopcntdq -mno-avx512vbmi2 -mno-gfni -mvpclmulqdq -mno-avx512vnni -mno-avx512bitalg -mno-avx512bf16 -mno-avx512vp2intersect -mno-3dnow -madx -mabm -mno-cldemote -mclflushopt -mclwb -mclzero -mcx16 -mno-enqcmd -mf16c -mfsgsbase -mfxsr -mno-hle -msahf -mno-lwp -mlzcnt -mmovbe -mno-movdir64b -mno-movdiri -mno-mwaitx -mno-pconfig -mno-pku -mprfchw -mno-ptwrite -mrdpid -mrdrnd -mrdseed -mno-rtm -mno-serialize -mno-sgx -msha -mshstk -mno-tbm -mno-tsxldtrk -mvaes -mno-waitpkg -mno-wbnoinvd -mxsave -mxsavec -mxsaveopt -mxsaves -mno-amx-tile -mno-amx-int8 -mno-amx-bf16 -mno-uintr -mno-hreset -mno-kl -mno-widekl -mno-avxvnni -mno-avx512fp16 -mno-avxifma -mno-avxvnniint8 -mno-avxneconvert -mno-cmpccxadd -mno-amx-fp16 -mno-prefetchi -mno-raoint -mno-amx-complex -mno-avxvnniint16 -mno-sm3 -mno-sha512 -mno-sm4 -mno-apxf -mno-usermsr -mno-avx10.2 -mno-amx-avx512 -mno-amx-tf32 -mno-amx-transpose -mno-amx-fp8 -mno-movrs -mno-amx-movrs --param=l1-cache-size=32 --param=l1-cache-line-size=64 --param=l2-cache-size=512 -mtune=znver3 -O3 -ftree-vectorize -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection -fzero-init-padding-bits=all
	.text
	.p2align 4
	.globl	MurmurHash3_x86_32
	.type	MurmurHash3_x86_32, @function
MurmurHash3_x86_32:
.LFB3:
	.cfi_startproc
	endbr64	
# murmur3_hash.c:74:   const int nblocks = length / 4;
	movq	%rsi, %rax	# length, _1
# murmur3_hash.c:72: {
	movq	%rdi, %r8	# key, key
	movq	%rsi, %rdi	# length, length
# murmur3_hash.c:74:   const int nblocks = length / 4;
	shrq	$2, %rax	#, _1
# murmur3_hash.c:84:   const uint32_t * blocks = (const uint32_t *)(data + nblocks*4);
	leal	0(,%rax,4), %r9d	#, _2
	movslq	%r9d, %r9	# _2, _3
# murmur3_hash.c:86:   for(int i = -nblocks; i; i++)
	testl	%eax, %eax	# _1
	je	.L8	#,
# murmur3_hash.c:86:   for(int i = -nblocks; i; i++)
	movl	%eax, %edx	# _1, i_23
	cltq
# murmur3_hash.c:76:   uint32_t h1 = 0;
	xorl	%ecx, %ecx	# h1
# murmur3_hash.c:86:   for(int i = -nblocks; i; i++)
	negl	%edx	# i_23
	leaq	(%r8,%rax,4), %rsi	#, _160
	movslq	%edx, %rdx	# i_23, ivtmp.10
	.p2align 6
	.p2align 4
	.p2align 3
.L3:
# murmur3_hash.c:90:     k1 *= c1;
	imull	$-862048943, (%rsi,%rdx,4), %eax	#, MEM[(const uint32_t *)_160 + ivtmp.10_154 * 4], k1_35
# murmur3_hash.c:86:   for(int i = -nblocks; i; i++)
	incq	%rdx	# ivtmp.10
# murmur3_hash.c:35:   return (x << r) | (x >> (32 - r));
	rorx	$17, %eax, %eax	#, k1_35, _50
# murmur3_hash.c:92:     k1 *= c2;
	imull	$461845907, %eax, %eax	#, _50, k1_37
# murmur3_hash.c:94:     h1 ^= k1;
	xorl	%ecx, %eax	# h1, h1_38
# murmur3_hash.c:35:   return (x << r) | (x >> (32 - r));
	rorx	$19, %eax, %eax	#, h1_38, _49
# murmur3_hash.c:96:     h1 = h1*5+0xe6546b64;
	leal	-430675100(%rax,%rax,4), %ecx	#, h1
# murmur3_hash.c:86:   for(int i = -nblocks; i; i++)
	testl	%edx, %edx	# ivtmp.10
	jne	.L3	#,
.L2:
# murmur3_hash.c:106:   switch(length & 3)
	movq	%rdi, %rax	# length, _5
# murmur3_hash.c:102:   const uint8_t * tail = (const uint8_t*)(data + nblocks*4);
	addq	%r9, %r8	# _3, tail
# murmur3_hash.c:106:   switch(length & 3)
	andl	$3, %eax	#, _5
# murmur3_hash.c:106:   switch(length & 3)
	cmpq	$2, %rax	#, _5
	je	.L9	#,
	cmpq	$3, %rax	#, _5
	je	.L5	#,
	cmpq	$1, %rax	#, _5
	jne	.L7	#,
	xorl	%edx, %edx	# k1
.L6:
# murmur3_hash.c:110:   case 1: k1 ^= tail[0];
	movzbl	(%r8), %eax	# *tail_25, _13
# murmur3_hash.c:110:   case 1: k1 ^= tail[0];
	xorl	%edx, %eax	# k1, k1
# murmur3_hash.c:111:           k1 *= c1; k1 = ROTL32(k1,15); k1 *= c2; h1 ^= k1;
	imull	$-862048943, %eax, %eax	#, k1, k1_28
# murmur3_hash.c:35:   return (x << r) | (x >> (32 - r));
	rorx	$17, %eax, %eax	#, k1_28, _51
# murmur3_hash.c:111:           k1 *= c1; k1 = ROTL32(k1,15); k1 *= c2; h1 ^= k1;
	imull	$461845907, %eax, %eax	#, _51, k1_30
# murmur3_hash.c:111:           k1 *= c1; k1 = ROTL32(k1,15); k1 *= c2; h1 ^= k1;
	xorl	%eax, %ecx	# k1_30, h1
.L7:
# murmur3_hash.c:117:   h1 ^= length;
	xorl	%edi, %ecx	# length, h1
# murmur3_hash.c:58:   h ^= h >> 16;
	movl	%ecx, %eax	# h1, _34
	shrl	$16, %eax	#, _34
# murmur3_hash.c:58:   h ^= h >> 16;
	xorl	%ecx, %eax	# h1, h
# murmur3_hash.c:59:   h *= 0x85ebca6b;
	imull	$-2048144789, %eax, %eax	#, h, h
# murmur3_hash.c:60:   h ^= h >> 13;
	movl	%eax, %edx	# h, _44
	shrl	$13, %edx	#, _44
# murmur3_hash.c:60:   h ^= h >> 13;
	xorl	%edx, %eax	# _44, h
# murmur3_hash.c:61:   h *= 0xc2b2ae35;
	imull	$-1028477387, %eax, %eax	#, h, h
# murmur3_hash.c:62:   h ^= h >> 16;
	movl	%eax, %edx	# h, _47
	shrl	$16, %edx	#, _47
# murmur3_hash.c:62:   h ^= h >> 16;
	xorl	%edx, %eax	# _47, h_48
# murmur3_hash.c:123: }
	ret	
	.p2align 4
	.p2align 3
.L5:
# murmur3_hash.c:108:   case 3: k1 ^= tail[2] << 16;
	movzbl	2(%r8), %eax	# MEM[(const uint8_t *)tail_25 + 2B], _7
	sall	$16, %eax	#, _8
.L4:
# murmur3_hash.c:109:   case 2: k1 ^= tail[1] << 8;
	movzbl	1(%r8), %edx	# MEM[(const uint8_t *)tail_25 + 1B], _10
	sall	$8, %edx	#, _11
# murmur3_hash.c:109:   case 2: k1 ^= tail[1] << 8;
	xorl	%eax, %edx	# _8, k1
	jmp	.L6	#
	.p2align 4
	.p2align 3
.L9:
# murmur3_hash.c:106:   switch(length & 3)
	xorl	%eax, %eax	# _8
	jmp	.L4	#
	.p2align 4
	.p2align 3
.L8:
# murmur3_hash.c:76:   uint32_t h1 = 0;
	xorl	%ecx, %ecx	# h1
	jmp	.L2	#
	.cfi_endproc
.LFE3:
	.size	MurmurHash3_x86_32, .-MurmurHash3_x86_32
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
