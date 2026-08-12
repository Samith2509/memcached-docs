	.file	"base64.c"
# GNU C23 (Ubuntu 15.2.0-16ubuntu1) version 15.2.0 (x86_64-linux-gnu)
#	compiled by GNU C version 15.2.0, GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.3.1, isl version isl-0.27-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -D_FORTIFY_SOURCE=3 -march=znver3 -mmmx -mpopcnt -msse -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mavx -mavx2 -msse4a -mno-fma4 -mno-xop -mfma -mno-avx512f -mbmi -mbmi2 -maes -mpclmul -mno-avx512vl -mno-avx512bw -mno-avx512dq -mno-avx512cd -mno-avx512vbmi -mno-avx512ifma -mno-avx512vpopcntdq -mno-avx512vbmi2 -mno-gfni -mvpclmulqdq -mno-avx512vnni -mno-avx512bitalg -mno-avx512bf16 -mno-avx512vp2intersect -mno-3dnow -madx -mabm -mno-cldemote -mclflushopt -mclwb -mclzero -mcx16 -mno-enqcmd -mf16c -mfsgsbase -mfxsr -mno-hle -msahf -mno-lwp -mlzcnt -mmovbe -mno-movdir64b -mno-movdiri -mno-mwaitx -mno-pconfig -mno-pku -mprfchw -mno-ptwrite -mrdpid -mrdrnd -mrdseed -mno-rtm -mno-serialize -mno-sgx -msha -mshstk -mno-tbm -mno-tsxldtrk -mvaes -mno-waitpkg -mno-wbnoinvd -mxsave -mxsavec -mxsaveopt -mxsaves -mno-amx-tile -mno-amx-int8 -mno-amx-bf16 -mno-uintr -mno-hreset -mno-kl -mno-widekl -mno-avxvnni -mno-avx512fp16 -mno-avxifma -mno-avxvnniint8 -mno-avxneconvert -mno-cmpccxadd -mno-amx-fp16 -mno-prefetchi -mno-raoint -mno-amx-complex -mno-avxvnniint16 -mno-sm3 -mno-sha512 -mno-sm4 -mno-apxf -mno-usermsr -mno-avx10.2 -mno-amx-avx512 -mno-amx-tf32 -mno-amx-transpose -mno-amx-fp8 -mno-movrs -mno-amx-movrs --param=l1-cache-size=32 --param=l1-cache-line-size=64 --param=l2-cache-size=512 -mtune=znver3 -O3 -ftree-vectorize -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection -fzero-init-padding-bits=all
	.text
	.p2align 4
	.globl	base64_encode
	.type	base64_encode, @function
base64_encode:
.LFB0:
	.cfi_startproc
	endbr64	
# base64.c:95: {
	movq	%rsi, %r10	# len, len
	movq	%rcx, %r8	# out_len, out_len
# base64.c:100:     olen = len * 4 / 3 + 4; /* 3-byte blocks to 4-byte */
	movabsq	$-6148914691236517205, %rcx	#, tmp166
# base64.c:95: {
	movq	%rdx, %rsi	# out, out
# base64.c:100:     olen = len * 4 / 3 + 4; /* 3-byte blocks to 4-byte */
	leaq	0(,%r10,4), %rax	#, _1
# base64.c:101:     olen += olen / 72; /* line feeds */
	movabsq	$-2049638230412172401, %r9	#, tmp169
# base64.c:100:     olen = len * 4 / 3 + 4; /* 3-byte blocks to 4-byte */
	mulq	%rcx	# tmp166
	movq	%rdx, %rcx	# tmp165, tmp165
	shrq	%rcx	# tmp165
# base64.c:101:     olen += olen / 72; /* line feeds */
	leaq	4(%rcx), %rax	#, olen_64
	mulq	%r9	# tmp169
	shrq	$6, %rdx	#, _3
# base64.c:102:     olen++; /* nul termination */
	leaq	5(%rcx,%rdx), %rdx	#, olen
# base64.c:103:     if (olen < len) {
	cmpq	%r10, %rdx	# len, olen
	setb	%al	#, _91
# base64.c:106:     if (olen > out_len) {
	cmpq	%rdx, %r8	# olen, out_len
	setb	%dl	#, _92
# base64.c:109:     if (out == NULL) {
	orb	%dl, %al	# _92, tmp245
	jne	.L8	#,
	testq	%rsi, %rsi	# out
	je	.L8	#,
# base64.c:113:     end = src + len;
	leaq	(%rdi,%r10), %r8	#, end
	movq	%r10, %r9	# len, _29
# base64.c:115:     pos = out;
	movq	%rsi, %rdx	# out, pos
# base64.c:116:     while (end - in >= 3) {
	cmpq	$2, %r10	#, len
	jle	.L3	#,
	leaq	base64_table(%rip), %rcx	#, tmp238
	.p2align 4
	.p2align 3
.L4:
# base64.c:117:         *pos++ = base64_table[in[0] >> 2];
	movzbl	(%rdi), %eax	# MEM[(const unsigned char *)in_102], _5
# base64.c:121:         in += 3;
	addq	$3, %rdi	#, src
# base64.c:120:         *pos++ = base64_table[in[2] & 0x3f];
	addq	$4, %rdx	#, pos
# base64.c:117:         *pos++ = base64_table[in[0] >> 2];
	shrb	$2, %al	#, _5
# base64.c:117:         *pos++ = base64_table[in[0] >> 2];
	andl	$63, %eax	#, _6
# base64.c:117:         *pos++ = base64_table[in[0] >> 2];
	movzbl	(%rcx,%rax), %eax	# base64_table[_6], base64_table[_6]
	movb	%al, -4(%rdx)	# base64_table[_6], MEM[(unsigned char *)pos_100]
# base64.c:118:         *pos++ = base64_table[((in[0] & 0x03) << 4) | (in[1] >> 4)];
	movzbl	-3(%rdi), %eax	# MEM[(const unsigned char *)in_102], _9
# base64.c:118:         *pos++ = base64_table[((in[0] & 0x03) << 4) | (in[1] >> 4)];
	movzbl	-2(%rdi), %r9d	# MEM[(const unsigned char *)in_102 + 1B], _13
# base64.c:118:         *pos++ = base64_table[((in[0] & 0x03) << 4) | (in[1] >> 4)];
	sall	$4, %eax	#, _10
# base64.c:118:         *pos++ = base64_table[((in[0] & 0x03) << 4) | (in[1] >> 4)];
	shrb	$4, %r9b	#, _13
	movzbl	%r9b, %r9d	# _13, _14
# base64.c:118:         *pos++ = base64_table[((in[0] & 0x03) << 4) | (in[1] >> 4)];
	andl	$48, %eax	#, _11
# base64.c:118:         *pos++ = base64_table[((in[0] & 0x03) << 4) | (in[1] >> 4)];
	orl	%r9d, %eax	# _14, _15
# base64.c:118:         *pos++ = base64_table[((in[0] & 0x03) << 4) | (in[1] >> 4)];
	cltq
# base64.c:118:         *pos++ = base64_table[((in[0] & 0x03) << 4) | (in[1] >> 4)];
	movzbl	(%rcx,%rax), %eax	# base64_table[_15], base64_table[_15]
	movb	%al, -3(%rdx)	# base64_table[_15], MEM[(unsigned char *)pos_100 + 1B]
# base64.c:119:         *pos++ = base64_table[((in[1] & 0x0f) << 2) | (in[2] >> 6)];
	movzbl	-2(%rdi), %eax	# MEM[(const unsigned char *)in_102 + 1B], _18
# base64.c:119:         *pos++ = base64_table[((in[1] & 0x0f) << 2) | (in[2] >> 6)];
	movzbl	-1(%rdi), %r9d	# MEM[(const unsigned char *)in_102 + 2B], _22
# base64.c:119:         *pos++ = base64_table[((in[1] & 0x0f) << 2) | (in[2] >> 6)];
	sall	$2, %eax	#, _19
# base64.c:119:         *pos++ = base64_table[((in[1] & 0x0f) << 2) | (in[2] >> 6)];
	shrb	$6, %r9b	#, _22
	movzbl	%r9b, %r9d	# _22, _23
# base64.c:119:         *pos++ = base64_table[((in[1] & 0x0f) << 2) | (in[2] >> 6)];
	andl	$60, %eax	#, _20
# base64.c:119:         *pos++ = base64_table[((in[1] & 0x0f) << 2) | (in[2] >> 6)];
	orl	%r9d, %eax	# _23, _24
# base64.c:116:     while (end - in >= 3) {
	movq	%r8, %r9	# end, _29
# base64.c:119:         *pos++ = base64_table[((in[1] & 0x0f) << 2) | (in[2] >> 6)];
	cltq
# base64.c:119:         *pos++ = base64_table[((in[1] & 0x0f) << 2) | (in[2] >> 6)];
	movzbl	(%rcx,%rax), %eax	# base64_table[_24], base64_table[_24]
	movb	%al, -2(%rdx)	# base64_table[_24], MEM[(unsigned char *)pos_100 + 2B]
# base64.c:120:         *pos++ = base64_table[in[2] & 0x3f];
	movzbl	-1(%rdi), %eax	# MEM[(const unsigned char *)in_102 + 2B], MEM[(const unsigned char *)in_102 + 2B]
# base64.c:116:     while (end - in >= 3) {
	subq	%rdi, %r9	# src, _29
# base64.c:120:         *pos++ = base64_table[in[2] & 0x3f];
	andl	$63, %eax	#, _27
# base64.c:120:         *pos++ = base64_table[in[2] & 0x3f];
	movzbl	(%rcx,%rax), %eax	# base64_table[_27], base64_table[_27]
	movb	%al, -1(%rdx)	# base64_table[_27], MEM[(unsigned char *)pos_86 + -1B]
# base64.c:116:     while (end - in >= 3) {
	cmpq	$2, %r9	#, _29
	jg	.L4	#,
.L3:
	movq	%rdx, %rax	# pos, pos
# base64.c:124:     if (end - in) {
	cmpq	%rdi, %r8	# src, end
	je	.L5	#,
# base64.c:125:         *pos++ = base64_table[in[0] >> 2];
	movzbl	(%rdi), %eax	# *in_103, _31
# base64.c:125:         *pos++ = base64_table[in[0] >> 2];
	leaq	base64_table(%rip), %r8	#, tmp214
# base64.c:125:         *pos++ = base64_table[in[0] >> 2];
	shrb	$2, %al	#, _31
# base64.c:125:         *pos++ = base64_table[in[0] >> 2];
	andl	$63, %eax	#, _32
# base64.c:125:         *pos++ = base64_table[in[0] >> 2];
	movzbl	(%r8,%rax), %eax	# base64_table[_32], base64_table[_32]
	movb	%al, (%rdx)	# base64_table[_32], *pos_101
# base64.c:127:             *pos++ = base64_table[(in[0] & 0x03) << 4];
	movzbl	(%rdi), %eax	# *in_103, _116
	sall	$4, %eax	#, _117
	andl	$48, %eax	#,
# base64.c:126:         if (end - in == 1) {
	cmpq	$1, %r9	#, _29
	je	.L13	#,
# base64.c:131:                           (in[1] >> 4)];
	movzbl	1(%rdi), %ecx	# MEM[(const unsigned char *)in_103 + 1B], _44
	shrb	$4, %cl	#, _44
	movzbl	%cl, %ecx	# _44, _45
# base64.c:130:             *pos++ = base64_table[((in[0] & 0x03) << 4) |
	orl	%ecx, %eax	# _45, _46
# base64.c:130:             *pos++ = base64_table[((in[0] & 0x03) << 4) |
	cltq
# base64.c:130:             *pos++ = base64_table[((in[0] & 0x03) << 4) |
	movzbl	(%r8,%rax), %eax	# base64_table[_46], base64_table[_46]
	movb	%al, 1(%rdx)	# base64_table[_46], MEM[(unsigned char *)pos_101 + 1B]
# base64.c:132:             *pos++ = base64_table[(in[1] & 0x0f) << 2];
	movzbl	1(%rdi), %eax	# MEM[(const unsigned char *)in_103 + 1B], _49
	sall	$2, %eax	#, _50
# base64.c:132:             *pos++ = base64_table[(in[1] & 0x0f) << 2];
	andl	$60, %eax	#, _51
	movzbl	(%r8,%rax), %eax	# base64_table[_51], _52
.L7:
# base64.c:128:             *pos++ = '=';
	movb	%al, 2(%rdx)	# _52, MEM[(unsigned char *)pos_101 + 2B]
# base64.c:134:         *pos++ = '=';
	movb	$61, 3(%rdx)	#, MEM[(unsigned char *)pos_101 + 3B]
# base64.c:134:         *pos++ = '=';
	leaq	4(%rdx), %rax	#, pos
.L5:
# base64.c:137:     *pos = '\0';
	movb	$0, (%rax)	#, *pos_56
# base64.c:138:     return pos - out;
	subq	%rsi, %rax	# out, <retval>
	ret	
	.p2align 4
	.p2align 3
.L8:
# base64.c:104:         return 0; /* integer overflow */
	xorl	%eax, %eax	# <retval>
# base64.c:139: }
	ret	
	.p2align 4
	.p2align 3
.L13:
# base64.c:127:             *pos++ = base64_table[(in[0] & 0x03) << 4];
	movzbl	(%r8,%rax), %eax	# base64_table[_118], base64_table[_118]
	movb	%al, 1(%rdx)	# base64_table[_118], MEM[(unsigned char *)pos_101 + 1B]
	movl	$61, %eax	#, _52
	jmp	.L7	#
	.cfi_endproc
.LFE0:
	.size	base64_encode, .-base64_encode
	.p2align 4
	.globl	base64_decode
	.type	base64_decode, @function
base64_decode:
.LFB1:
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
# base64.c:152: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp139
	movq	%rax, 8(%rsp)	# tmp139, D.3490
	xorl	%eax, %eax	# tmp139
# base64.c:158:     for (i = 0; i < len; i++) {
	testq	%rsi, %rsi	# len
	je	.L15	#,
	movq	%rdx, %r11	# out, out
	addq	%rdi, %rsi	# ivtmp.38, _81
	movq	%rdi, %rdx	# src, ivtmp.38
	movq	%rdi, %rax	# ivtmp.38, ivtmp.42
	movq	%rcx, %r9	# out_len, out_len
# base64.c:157:     count = 0;
	xorl	%edi, %edi	# count
	leaq	dtable(%rip), %r8	#, tmp167
	.p2align 5
	.p2align 4
	.p2align 3
.L17:
# base64.c:159:         if (dtable[src[i]] != 0x80)
	movzbl	(%rax), %ecx	# MEM[(const unsigned char *)_61], _89
# base64.c:159:         if (dtable[src[i]] != 0x80)
	cmpb	$-128, (%r8,%rcx)	#, dtable[_89]
	je	.L16	#,
# base64.c:160:             count++;
	incq	%rdi	# count
.L16:
# base64.c:158:     for (i = 0; i < len; i++) {
	incq	%rax	# ivtmp.42
	cmpq	%rax, %rsi	# ivtmp.42, _81
	jne	.L17	#,
# base64.c:163:     if (count == 0 || count % 4)
	testq	%rdi, %rdi	# count
	je	.L15	#,
# base64.c:163:     if (count == 0 || count % 4)
	testb	$3, %dil	#, count
	jne	.L15	#,
# base64.c:166:     olen = count / 4 * 3;
	shrq	$2, %rdi	#, _6
# base64.c:166:     olen = count / 4 * 3;
	leaq	(%rdi,%rdi,2), %rax	#, olen_39
# base64.c:171:     if (out == NULL) {
	cmpq	%rax, %r9	# olen_39, out_len
	jb	.L15	#,
	testq	%r11, %r11	# out
	je	.L15	#,
# base64.c:175:     count = 0;
	xorl	%ecx, %ecx	# count
# base64.c:170:     pos = out;
	movq	%r11, %rax	# out, pos
# base64.c:155:     int pad = 0;
	xorl	%r10d, %r10d	# pad
	jmp	.L25	#
	.p2align 5
	.p2align 4
	.p2align 3
.L20:
# base64.c:176:     for (i = 0; i < len; i++) {
	incq	%rdx	# ivtmp.38
	cmpq	%rsi, %rdx	# _81, ivtmp.38
	je	.L24	#,
.L25:
# base64.c:177:         tmp = dtable[src[i]];
	movzbl	(%rdx), %edi	# MEM[(const unsigned char *)_2],
	movq	%rdi, %r9	#,
# base64.c:177:         tmp = dtable[src[i]];
	movzbl	(%r8,%rdi), %edi	# dtable[_9], tmp
# base64.c:178:         if (tmp == 0x80)
	cmpb	$-128, %dil	#, tmp
	je	.L20	#,
# base64.c:182:             pad++;
	cmpb	$61, %r9b	#, _8
# base64.c:183:         block[count] = tmp;
	movb	%dil, 4(%rsp,%rcx)	# tmp, block[count_76]
# base64.c:182:             pad++;
	sete	%r9b	#, tmp172
# base64.c:184:         count++;
	incq	%rcx	# count
# base64.c:182:             pad++;
	movzbl	%r9b, %r9d	# tmp172, tmp172
	addl	%r9d, %r10d	# tmp172, pad
# base64.c:185:         if (count == 4) {
	cmpq	$4, %rcx	#, count
	jne	.L20	#,
# base64.c:186:             *pos++ = (block[0] << 2) | (block[1] >> 4);
	movzbl	4(%rsp), %ebx	# block[0], tmp188
# base64.c:186:             *pos++ = (block[0] << 2) | (block[1] >> 4);
	movzbl	5(%rsp), %edi	# block[1], _11
# base64.c:186:             *pos++ = (block[0] << 2) | (block[1] >> 4);
	xorl	%ecx, %ecx	# _94
# base64.c:187:             *pos++ = (block[1] << 4) | (block[2] >> 2);
	movzbl	6(%rsp), %r9d	# block[2], _15
# base64.c:186:             *pos++ = (block[0] << 2) | (block[1] >> 4);
	sall	$2, %ebx	#, _58
	movl	%edi, %ebp	# _11, _12
# base64.c:187:             *pos++ = (block[1] << 4) | (block[2] >> 2);
	sall	$4, %edi	#, _57
# base64.c:186:             *pos++ = (block[0] << 2) | (block[1] >> 4);
	movb	%bl, %cl	# _58, _94
# base64.c:187:             *pos++ = (block[1] << 4) | (block[2] >> 2);
	movl	%r9d, %ebx	# _15, _16
# base64.c:186:             *pos++ = (block[0] << 2) | (block[1] >> 4);
	shrb	$4, %bpl	#, _12
# base64.c:187:             *pos++ = (block[1] << 4) | (block[2] >> 2);
	shrb	$2, %bl	#, _16
# base64.c:186:             *pos++ = (block[0] << 2) | (block[1] >> 4);
	orb	%bpl, %cl	# _12, _94
# base64.c:187:             *pos++ = (block[1] << 4) | (block[2] >> 2);
	orl	%edi, %ebx	# _57, _17
# base64.c:186:             *pos++ = (block[0] << 2) | (block[1] >> 4);
	movb	%bl, %ch	# _17, _94
	movw	%cx, (%rax)	# _94, MEM <vector(2) unsigned char> [(unsigned char *)pos_71]
# base64.c:188:             *pos++ = (block[2] << 6) | block[3];
	movl	%r9d, %ecx	# _15, _15
	sall	$6, %ecx	#, _15
	orb	7(%rsp), %cl	# block[3], _19
# base64.c:188:             *pos++ = (block[2] << 6) | block[3];
	movb	%cl, 2(%rax)	# _19, MEM[(unsigned char *)pos_71 + 2B]
# base64.c:190:             if (pad) {
	testl	%r10d, %r10d	# pad
	jne	.L22	#,
# base64.c:176:     for (i = 0; i < len; i++) {
	incq	%rdx	# ivtmp.38
# base64.c:188:             *pos++ = (block[2] << 6) | block[3];
	addq	$3, %rax	#, pos
# base64.c:189:             count = 0;
	xorl	%ecx, %ecx	# count
# base64.c:176:     for (i = 0; i < len; i++) {
	cmpq	%rsi, %rdx	# _81, ivtmp.38
	jne	.L25	#,
.L24:
# base64.c:204:     return pos - out;
	subq	%r11, %rax	# out, <retval>
	jmp	.L14	#
.L22:
# base64.c:191:                 if (pad == 1)
	cmpl	$1, %r10d	#, pad
	je	.L23	#,
# base64.c:186:             *pos++ = (block[0] << 2) | (block[1] >> 4);
	incq	%rax	# pos
# base64.c:193:                 else if (pad == 2)
	cmpl	$2, %r10d	#, pad
	je	.L24	#,
	.p2align 4
	.p2align 3
.L15:
# base64.c:164:         return 0;
	xorl	%eax, %eax	# <retval>
.L14:
# base64.c:205: }
	movq	8(%rsp), %rdx	# D.3490, tmp186
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp186
	jne	.L40	#,
	addq	$24, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx	#
	.cfi_def_cfa_offset 16
	popq	%rbp	#
	.cfi_def_cfa_offset 8
	ret	
.L23:
	.cfi_restore_state
# base64.c:187:             *pos++ = (block[1] << 4) | (block[2] >> 2);
	addq	$2, %rax	#, pos
	jmp	.L24	#
.L40:
# base64.c:205: }
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE1:
	.size	base64_decode, .-base64_decode
	.section	.rodata
	.align 32
	.type	dtable, @object
	.size	dtable, 256
dtable:
	.base64	"gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgD6AgIA/NDU2Nzg5Ojs8PYCAgACAgIAAAQIDBAUGBwgJCgsMDQ4PEBESExQVFhcYGYCAgICAgBobHB0eHyAhIiMkJSYnKCkqKywtLi8wMTIzgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA"
	.ascii	"\200"
	.align 32
	.type	base64_table, @object
	.size	base64_table, 65
base64_table:
	.string	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
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
