	.file	"itoa_ljust.c"
# GNU C23 (Ubuntu 15.2.0-16ubuntu1) version 15.2.0 (x86_64-linux-gnu)
#	compiled by GNU C version 15.2.0, GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.3.1, isl version isl-0.27-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -D_FORTIFY_SOURCE=3 -march=znver3 -mmmx -mpopcnt -msse -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mavx -mavx2 -msse4a -mno-fma4 -mno-xop -mfma -mno-avx512f -mbmi -mbmi2 -maes -mpclmul -mno-avx512vl -mno-avx512bw -mno-avx512dq -mno-avx512cd -mno-avx512vbmi -mno-avx512ifma -mno-avx512vpopcntdq -mno-avx512vbmi2 -mno-gfni -mvpclmulqdq -mno-avx512vnni -mno-avx512bitalg -mno-avx512bf16 -mno-avx512vp2intersect -mno-3dnow -madx -mabm -mno-cldemote -mclflushopt -mclwb -mclzero -mcx16 -mno-enqcmd -mf16c -mfsgsbase -mfxsr -mno-hle -msahf -mno-lwp -mlzcnt -mmovbe -mno-movdir64b -mno-movdiri -mno-mwaitx -mno-pconfig -mno-pku -mprfchw -mno-ptwrite -mrdpid -mrdrnd -mrdseed -mno-rtm -mno-serialize -mno-sgx -msha -mshstk -mno-tbm -mno-tsxldtrk -mvaes -mno-waitpkg -mno-wbnoinvd -mxsave -mxsavec -mxsaveopt -mxsaves -mno-amx-tile -mno-amx-int8 -mno-amx-bf16 -mno-uintr -mno-hreset -mno-kl -mno-widekl -mno-avxvnni -mno-avx512fp16 -mno-avxifma -mno-avxvnniint8 -mno-avxneconvert -mno-cmpccxadd -mno-amx-fp16 -mno-prefetchi -mno-raoint -mno-amx-complex -mno-avxvnniint16 -mno-sm3 -mno-sha512 -mno-sm4 -mno-apxf -mno-usermsr -mno-avx10.2 -mno-amx-avx512 -mno-amx-tf32 -mno-amx-transpose -mno-amx-fp8 -mno-movrs -mno-amx-movrs --param=l1-cache-size=32 --param=l1-cache-line-size=64 --param=l2-cache-size=512 -mtune=znver3 -O3 -ftree-vectorize -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection -fzero-init-padding-bits=all
	.text
	.p2align 4
	.globl	itoa_u32
	.type	itoa_u32, @function
itoa_u32:
.LFB19:
	.cfi_startproc
	endbr64	
# itoa_ljust.c:109: char* itoa_u32(uint32_t u, char* p) {
	movl	%edi, %edx	# u, u
	movq	%rsi, %rax	# p, p
# itoa_ljust.c:111:          if (u >=100000000) n = digits(u, 100000000, &d, &p, 10);
	cmpl	$99999999, %edi	#, u
	jbe	.L2	#,
# itoa_ljust.c:94:     case 10: d  = u / 100000000; p = out2( d, p );
	movl	%edi, %ecx	# u, u
	imulq	$1441151881, %rcx, %rcx	#, u, tmp147
	shrq	$57, %rcx	#, _321
# itoa_ljust.c:84:     if (u < k*10) {
	cmpl	$999999999, %edi	#, u
	jbe	.L3	#,
# itoa_ljust.c:74:     memcpy(p, &((uint16_t *)lut)[d], 2);
	movl	%ecx, %edi	# _321, _132
# itoa_ljust.c:74:     memcpy(p, &((uint16_t *)lut)[d], 2);
	leaq	lut(%rip), %rsi	#, tmp204
# itoa_ljust.c:75:     return p + 2;
	addq	$2, %rax	#, p
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movzwl	(%rsi,%rdi,2), %edi	# MEM <char[1:2]> [(void *)_134], MEM <char[1:2]> [(void *)_134]
	movw	%di, -2(%rax)	# MEM <char[1:2]> [(void *)_134], MEM <char[1:2]> [(void *)p_216(D)]
.L4:
# itoa_ljust.c:95:     case  9: u -= d * 100000000;
	imull	$100000000, %ecx, %ecx	#, _321, _90
# itoa_ljust.c:95:     case  9: u -= d * 100000000;
	subl	%ecx, %edx	# _90, u
.L14:
# itoa_ljust.c:96:     case  8: d  = u /   1000000; p = out2( d, p );
	movl	%edx, %ecx	# u, u
# itoa_ljust.c:75:     return p + 2;
	addq	$2, %rax	#, p
# itoa_ljust.c:96:     case  8: d  = u /   1000000; p = out2( d, p );
	imulq	$1125899907, %rcx, %rcx	#, u, tmp171
# itoa_ljust.c:96:     case  8: d  = u /   1000000; p = out2( d, p );
	shrq	$50, %rcx	#, d
# itoa_ljust.c:74:     memcpy(p, &((uint16_t *)lut)[d], 2);
	movl	%ecx, %edi	# d, _137
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movzwl	(%rsi,%rdi,2), %edi	# MEM <char[1:2]> [(void *)_139], MEM <char[1:2]> [(void *)_139]
	movw	%di, -2(%rax)	# MEM <char[1:2]> [(void *)_139], MEM <char[1:2]> [(void *)p_96]
.L15:
# itoa_ljust.c:97:     case  7: u -= d *   1000000;
	imull	$1000000, %ecx, %ecx	#, d, _99
# itoa_ljust.c:97:     case  7: u -= d *   1000000;
	subl	%ecx, %edx	# _99, u
.L12:
# itoa_ljust.c:98:     case  6: d  = u /     10000; p = out2( d, p );
	movl	$3518437209, %edi	#, tmp181
	movl	%edx, %ecx	# u, u
# itoa_ljust.c:75:     return p + 2;
	addq	$2, %rax	#, p
# itoa_ljust.c:98:     case  6: d  = u /     10000; p = out2( d, p );
	imulq	%rdi, %rcx	# tmp181, tmp180
# itoa_ljust.c:98:     case  6: d  = u /     10000; p = out2( d, p );
	shrq	$45, %rcx	#, d
# itoa_ljust.c:74:     memcpy(p, &((uint16_t *)lut)[d], 2);
	movl	%ecx, %edi	# d, _142
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movzwl	(%rsi,%rdi,2), %edi	# MEM <char[1:2]> [(void *)_144], MEM <char[1:2]> [(void *)_144]
	movw	%di, -2(%rax)	# MEM <char[1:2]> [(void *)_144], MEM <char[1:2]> [(void *)p_106]
.L13:
# itoa_ljust.c:99:     case  5: u -= d *     10000;
	imull	$10000, %ecx, %ecx	#, d, _109
# itoa_ljust.c:99:     case  5: u -= d *     10000;
	subl	%ecx, %edx	# _109, u
.L9:
# itoa_ljust.c:100:     case  4: d  = u /       100; p = out2( d, p );
	movl	%edx, %ecx	# u, u
# itoa_ljust.c:75:     return p + 2;
	addq	$2, %rax	#, p
# itoa_ljust.c:100:     case  4: d  = u /       100; p = out2( d, p );
	imulq	$1374389535, %rcx, %rcx	#, u, tmp190
# itoa_ljust.c:100:     case  4: d  = u /       100; p = out2( d, p );
	shrq	$37, %rcx	#, d
# itoa_ljust.c:74:     memcpy(p, &((uint16_t *)lut)[d], 2);
	movl	%ecx, %edi	# d, _147
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movzwl	(%rsi,%rdi,2), %edi	# MEM <char[1:2]> [(void *)_149], MEM <char[1:2]> [(void *)_149]
	movw	%di, -2(%rax)	# MEM <char[1:2]> [(void *)_149], MEM <char[1:2]> [(void *)p_116]
.L10:
# itoa_ljust.c:101:     case  3: u -= d *       100;
	imull	$100, %ecx, %ecx	#, d, _119
# itoa_ljust.c:101:     case  3: u -= d *       100;
	subl	%ecx, %edx	# _119, u
.L6:
# itoa_ljust.c:74:     memcpy(p, &((uint16_t *)lut)[d], 2);
	movslq	%edx, %rdx	# u, _152
# itoa_ljust.c:75:     return p + 2;
	addq	$2, %rax	#, <retval>
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movzwl	(%rsi,%rdx,2), %edx	# MEM <char[1:2]> [(void *)_154], MEM <char[1:2]> [(void *)_154]
	movw	%dx, -2(%rax)	# MEM <char[1:2]> [(void *)_154], MEM <char[1:2]> [(void *)p_125]
.L7:
# itoa_ljust.c:105:     *p = '\0';
	movb	$0, (%rax)	#, *p_127
# itoa_ljust.c:117: }
	ret	
	.p2align 4
	.p2align 3
.L2:
	leaq	lut(%rip), %rsi	#, tmp204
# itoa_ljust.c:112:     else if (u <       100) n = digits(u,         1, &d, &p,  2);
	cmpl	$99, %edi	#, u
	ja	.L5	#,
# itoa_ljust.c:84:     if (u < k*10) {
	cmpl	$9, %edi	#, u
	ja	.L6	#,
# itoa_ljust.c:86:         *p = out1('0'+*d, *p);
	addl	$48, %edx	#, tmp155
# itoa_ljust.c:80:     return p + 1;
	incq	%rax	# <retval>
# itoa_ljust.c:86:         *p = out1('0'+*d, *p);
	movb	%dl, -1(%rax)	# tmp155, MEM[(char * {ref-all})p_216(D)]
	jmp	.L7	#
	.p2align 4
	.p2align 3
.L5:
# itoa_ljust.c:113:     else if (u <     10000) n = digits(u,       100, &d, &p,  4);
	cmpl	$9999, %edi	#, u
	jbe	.L21	#,
# itoa_ljust.c:114:     else if (u <   1000000) n = digits(u,     10000, &d, &p,  6);
	cmpl	$999999, %edi	#, u
	ja	.L11	#,
# itoa_ljust.c:84:     if (u < k*10) {
	cmpl	$99999, %edi	#, u
	ja	.L12	#,
# itoa_ljust.c:85:         *d = u / k;
	movl	%edi, %ecx	# u, u
	movl	$3518437209, %edi	#, tmp162
# itoa_ljust.c:80:     return p + 1;
	incq	%rax	# p
# itoa_ljust.c:85:         *d = u / k;
	imulq	%rdi, %rcx	# tmp162, tmp161
	shrq	$45, %rcx	#, d
# itoa_ljust.c:86:         *p = out1('0'+*d, *p);
	leal	48(%rcx), %edi	#, tmp164
	movb	%dil, -1(%rax)	# tmp164, MEM[(char * {ref-all})p_216(D)]
	jmp	.L13	#
	.p2align 4
	.p2align 3
.L3:
	leal	48(%rcx), %esi	#, tmp154
# itoa_ljust.c:80:     return p + 1;
	incq	%rax	# p
# itoa_ljust.c:86:         *p = out1('0'+*d, *p);
	movb	%sil, -1(%rax)	# tmp154, MEM[(char * {ref-all})p_216(D)]
	leaq	lut(%rip), %rsi	#, tmp204
	jmp	.L4	#
	.p2align 4
	.p2align 3
.L21:
# itoa_ljust.c:84:     if (u < k*10) {
	cmpl	$999, %edi	#, u
	ja	.L9	#,
# itoa_ljust.c:85:         *d = u / k;
	movl	%edi, %ecx	# u, u
# itoa_ljust.c:80:     return p + 1;
	incq	%rax	# p
# itoa_ljust.c:85:         *d = u / k;
	imulq	$1374389535, %rcx, %rcx	#, u, tmp157
	shrq	$37, %rcx	#, d
# itoa_ljust.c:86:         *p = out1('0'+*d, *p);
	leal	48(%rcx), %edi	#, tmp159
	movb	%dil, -1(%rax)	# tmp159, MEM[(char * {ref-all})p_216(D)]
	jmp	.L10	#
	.p2align 4
	.p2align 3
.L11:
# itoa_ljust.c:84:     if (u < k*10) {
	cmpl	$9999999, %edi	#, u
	ja	.L14	#,
# itoa_ljust.c:85:         *d = u / k;
	movl	%edi, %ecx	# u, u
# itoa_ljust.c:80:     return p + 1;
	incq	%rax	# p
# itoa_ljust.c:85:         *d = u / k;
	imulq	$1125899907, %rcx, %rcx	#, u, tmp166
	shrq	$50, %rcx	#, d
# itoa_ljust.c:86:         *p = out1('0'+*d, *p);
	leal	48(%rcx), %edi	#, tmp168
	movb	%dil, -1(%rax)	# tmp168, MEM[(char * {ref-all})p_216(D)]
	jmp	.L15	#
	.cfi_endproc
.LFE19:
	.size	itoa_u32, .-itoa_u32
	.p2align 4
	.globl	itoa_32
	.type	itoa_32, @function
itoa_32:
.LFB20:
	.cfi_startproc
	endbr64	
# itoa_ljust.c:121:     if (i < 0) {
	testl	%edi, %edi	# u
	jns	.L23	#,
# itoa_ljust.c:122:         *p++ = '-';
	movb	$45, (%rsi)	#, *p_6(D)
# itoa_ljust.c:123:         u = -u;
	negl	%edi	# u
# itoa_ljust.c:122:         *p++ = '-';
	incq	%rsi	# p
.L23:
# itoa_ljust.c:125:     return itoa_u32(u, p);
	jmp	itoa_u32	#
	.cfi_endproc
.LFE20:
	.size	itoa_32, .-itoa_32
	.p2align 4
	.globl	itoa_u64
	.type	itoa_u64, @function
itoa_u64:
.LFB21:
	.cfi_startproc
	endbr64	
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
# itoa_ljust.c:132:     if (lower == u) return itoa_u32(lower, p);
	movq	%rdi, %rbx	# u, tmp199
# itoa_ljust.c:128: char* itoa_u64(uint64_t u, char* p) {
	subq	$16, %rsp	#,
	.cfi_def_cfa_offset 32
# itoa_ljust.c:132:     if (lower == u) return itoa_u32(lower, p);
	shrq	$32, %rbx	#, tmp199
	je	.L27	#,
# itoa_ljust.c:134:     uint64_t upper = u / 1000000000;
	movq	%rdi, %rdx	# u, tmp147
	movabsq	$19342813113834067, %rax	#, tmp147
	movq	%rdi, %rbx	# u, u
	shrq	$9, %rdx	#, tmp147
	mulq	%rdx	# tmp147
	shrq	$11, %rdx	#, upper
# itoa_ljust.c:135:     p = itoa_u64(upper, p);
	movq	%rdx, %rdi	# upper,
	movq	%rdx, 8(%rsp)	# upper, %sfp
	call	itoa_u64	#
# itoa_ljust.c:136:     lower = u - (upper * 1000000000);
	movl	%ebx, %edi	# u, lower
# itoa_ljust.c:136:     lower = u - (upper * 1000000000);
	imull	$1000000000, 8(%rsp), %edx	#, %sfp, _2
# itoa_ljust.c:135:     p = itoa_u64(upper, p);
	movq	%rax, %rcx	#, p
# itoa_ljust.c:136:     lower = u - (upper * 1000000000);
	subl	%edx, %edi	# _2, lower
# itoa_ljust.c:137:     d = lower / 100000000;
	movl	%edi, %eax	# lower, lower
	imulq	$1441151881, %rax, %rax	#, lower, tmp152
	shrq	$57, %rax	#, _3
# itoa_ljust.c:138:     p = out1('0'+d,p);
	leal	48(%rax), %edx	#, tmp154
# itoa_ljust.c:95:     case  9: u -= d * 100000000;
	imull	$100000000, %eax, %eax	#, _3, _28
# itoa_ljust.c:138:     p = out1('0'+d,p);
	movb	%dl, (%rcx)	# tmp154, MEM[(char * {ref-all})p_15]
# itoa_ljust.c:74:     memcpy(p, &((uint16_t *)lut)[d], 2);
	leaq	lut(%rip), %rdx	#, tmp163
# itoa_ljust.c:95:     case  9: u -= d * 100000000;
	subl	%eax, %edi	# _28, u
# itoa_ljust.c:96:     case  8: d  = u /   1000000; p = out2( d, p );
	movl	%edi, %eax	# u, u
	imulq	$1125899907, %rax, %rax	#, u, tmp157
	shrq	$50, %rax	#, _32
# itoa_ljust.c:74:     memcpy(p, &((uint16_t *)lut)[d], 2);
	movl	%eax, %esi	# _32, _73
# itoa_ljust.c:97:     case  7: u -= d *   1000000;
	imull	$1000000, %eax, %eax	#, _32, _37
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movzwl	(%rdx,%rsi,2), %esi	# MEM <char[1:2]> [(void *)_75], MEM <char[1:2]> [(void *)_75]
# itoa_ljust.c:97:     case  7: u -= d *   1000000;
	subl	%eax, %edi	# _37, u
# itoa_ljust.c:98:     case  6: d  = u /     10000; p = out2( d, p );
	movl	%edi, %eax	# u, u
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movw	%si, 1(%rcx)	# MEM <char[1:2]> [(void *)_75], MEM <char[1:2]> [(void *)_72]
# itoa_ljust.c:98:     case  6: d  = u /     10000; p = out2( d, p );
	movl	$3518437209, %esi	#, tmp168
	imulq	%rsi, %rax	# tmp168, tmp167
	shrq	$45, %rax	#, _42
# itoa_ljust.c:74:     memcpy(p, &((uint16_t *)lut)[d], 2);
	movl	%eax, %esi	# _42, _78
# itoa_ljust.c:99:     case  5: u -= d *     10000;
	imull	$10000, %eax, %eax	#, _42, _47
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movzwl	(%rdx,%rsi,2), %esi	# MEM <char[1:2]> [(void *)_80], MEM <char[1:2]> [(void *)_80]
# itoa_ljust.c:99:     case  5: u -= d *     10000;
	subl	%eax, %edi	# _47, u
# itoa_ljust.c:100:     case  4: d  = u /       100; p = out2( d, p );
	movl	%edi, %eax	# u, u
	imulq	$1374389535, %rax, %rax	#, u, tmp178
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movw	%si, 3(%rcx)	# MEM <char[1:2]> [(void *)_80], MEM <char[1:2]> [(void *)_77]
# itoa_ljust.c:100:     case  4: d  = u /       100; p = out2( d, p );
	shrq	$37, %rax	#, _52
# itoa_ljust.c:74:     memcpy(p, &((uint16_t *)lut)[d], 2);
	movl	%eax, %esi	# _52, _83
# itoa_ljust.c:101:     case  3: u -= d *       100;
	imull	$100, %eax, %eax	#, _52, _57
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movzwl	(%rdx,%rsi,2), %esi	# MEM <char[1:2]> [(void *)_85], MEM <char[1:2]> [(void *)_85]
# itoa_ljust.c:101:     case  3: u -= d *       100;
	subl	%eax, %edi	# _57, u
# itoa_ljust.c:74:     memcpy(p, &((uint16_t *)lut)[d], 2);
	movslq	%edi, %rdi	# u, _88
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movw	%si, 5(%rcx)	# MEM <char[1:2]> [(void *)_85], MEM <char[1:2]> [(void *)_82]
	movzwl	(%rdx,%rdi,2), %eax	# MEM <char[1:2]> [(void *)_90], MEM <char[1:2]> [(void *)_90]
# itoa_ljust.c:105:     *p = '\0';
	movb	$0, 9(%rcx)	#, MEM[(char *)p_15 + 9B]
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movw	%ax, 7(%rcx)	# MEM <char[1:2]> [(void *)_90], MEM <char[1:2]> [(void *)_87]
# itoa_ljust.c:140: }
	addq	$16, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 16
# itoa_ljust.c:75:     return p + 2;
	leaq	9(%rcx), %rax	#, <retval>
# itoa_ljust.c:140: }
	popq	%rbx	#
	.cfi_def_cfa_offset 8
	ret	
	.p2align 4
	.p2align 3
.L27:
	.cfi_restore_state
	addq	$16, %rsp	#,
	.cfi_def_cfa_offset 16
	popq	%rbx	#
	.cfi_def_cfa_offset 8
# itoa_ljust.c:132:     if (lower == u) return itoa_u32(lower, p);
	jmp	itoa_u32	#
	.cfi_endproc
.LFE21:
	.size	itoa_u64, .-itoa_u64
	.p2align 4
	.globl	itoa_64
	.type	itoa_64, @function
itoa_64:
.LFB22:
	.cfi_startproc
	endbr64	
# itoa_ljust.c:144:     if (i < 0) {
	testq	%rdi, %rdi	# u
	jns	.L29	#,
# itoa_ljust.c:145:         *p++ = '-';
	movb	$45, (%rsi)	#, *p_6(D)
# itoa_ljust.c:146:         u = -u;
	negq	%rdi	# u
# itoa_ljust.c:145:         *p++ = '-';
	incq	%rsi	# p
.L29:
# itoa_ljust.c:148:     return itoa_u64(u, p);
	jmp	itoa_u64	#
	.cfi_endproc
.LFE22:
	.size	itoa_64, .-itoa_64
	.section	.rodata
	.align 32
	.type	lut, @object
	.size	lut, 201
lut:
	.string	"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899"
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
