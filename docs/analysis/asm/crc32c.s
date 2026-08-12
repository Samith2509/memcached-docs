	.file	"crc32c.c"
# GNU C23 (Ubuntu 15.2.0-16ubuntu1) version 15.2.0 (x86_64-linux-gnu)
#	compiled by GNU C version 15.2.0, GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.3.1, isl version isl-0.27-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -D_FORTIFY_SOURCE=3 -march=znver3 -mmmx -mpopcnt -msse -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mavx -mavx2 -msse4a -mno-fma4 -mno-xop -mfma -mno-avx512f -mbmi -mbmi2 -maes -mpclmul -mno-avx512vl -mno-avx512bw -mno-avx512dq -mno-avx512cd -mno-avx512vbmi -mno-avx512ifma -mno-avx512vpopcntdq -mno-avx512vbmi2 -mno-gfni -mvpclmulqdq -mno-avx512vnni -mno-avx512bitalg -mno-avx512bf16 -mno-avx512vp2intersect -mno-3dnow -madx -mabm -mno-cldemote -mclflushopt -mclwb -mclzero -mcx16 -mno-enqcmd -mf16c -mfsgsbase -mfxsr -mno-hle -msahf -mno-lwp -mlzcnt -mmovbe -mno-movdir64b -mno-movdiri -mno-mwaitx -mno-pconfig -mno-pku -mprfchw -mno-ptwrite -mrdpid -mrdrnd -mrdseed -mno-rtm -mno-serialize -mno-sgx -msha -mshstk -mno-tbm -mno-tsxldtrk -mvaes -mno-waitpkg -mno-wbnoinvd -mxsave -mxsavec -mxsaveopt -mxsaves -mno-amx-tile -mno-amx-int8 -mno-amx-bf16 -mno-uintr -mno-hreset -mno-kl -mno-widekl -mno-avxvnni -mno-avx512fp16 -mno-avxifma -mno-avxvnniint8 -mno-avxneconvert -mno-cmpccxadd -mno-amx-fp16 -mno-prefetchi -mno-raoint -mno-amx-complex -mno-avxvnniint16 -mno-sm3 -mno-sha512 -mno-sm4 -mno-apxf -mno-usermsr -mno-avx10.2 -mno-amx-avx512 -mno-amx-tf32 -mno-amx-transpose -mno-amx-fp8 -mno-movrs -mno-amx-movrs --param=l1-cache-size=32 --param=l1-cache-line-size=64 --param=l2-cache-size=512 -mtune=znver3 -O3 -ftree-vectorize -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection -fzero-init-padding-bits=all
	.text
	.p2align 4
	.type	crc32c_zeros, @function
crc32c_zeros:
.LFB4:
	.cfi_startproc
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rdi, %r9	# zeros, zeros
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	andq	$-32, %rsp	#,
	subq	$288, %rsp	#,
# crc32c.c:92:         odd[n] = row;
	vmovdqa	.LC0(%rip), %ymm0	#, tmp173
	movq	.LC4(%rip), %rax	#, tmp177
# crc32c.c:121: static void crc32c_zeros(uint32_t zeros[][256], size_t len) {
	movq	%fs:40, %r10	# MEM[(<address-space-1> long unsigned int *)40B], len
	movq	%r10, 280(%rsp)	# len, D.4546
	movq	%rsi, %r10	# len, len
	leaq	256(%rsp), %r8	#, _328
# crc32c.c:89:     odd[0] = POLY;              /* CRC-32C polynomial */
	movl	$-2097792136, 128(%rsp)	#, odd[0]
# crc32c.c:92:         odd[n] = row;
	movl	$1073741824, 252(%rsp)	#, odd[31]
	movq	%rsp, %rdi	#, ivtmp.154
	leaq	128(%rsp), %rsi	#, ivtmp.153
	movq	%rax, 244(%rsp)	# tmp177, MEM <vector(2) unsigned int> [(unsigned int *)&odd + 116B]
	vmovdqu	%ymm0, 132(%rsp)	# tmp173, MEM <vector(8) unsigned int> [(unsigned int *)&odd + 4B]
	vmovdqa	.LC1(%rip), %ymm0	#, tmp174
	vmovdqu	%ymm0, 164(%rsp)	# tmp174, MEM <vector(8) unsigned int> [(unsigned int *)&odd + 36B]
	vmovdqa	.LC2(%rip), %ymm0	#, tmp175
	vmovdqu	%ymm0, 196(%rsp)	# tmp175, MEM <vector(8) unsigned int> [(unsigned int *)&odd + 68B]
	vmovdqa	.LC3(%rip), %xmm0	#, tmp176
	vmovdqu	%xmm0, 228(%rsp)	# tmp176, MEM <vector(4) unsigned int> [(unsigned int *)&odd + 100B]
	.p2align 4
	.p2align 3
.L6:
# crc32c.c:77:         square[n] = gf2_matrix_times(mat, mat[n]);
	movl	(%rsi), %eax	# MEM[(uint32_t *)_256], vec
# crc32c.c:63:     uint32_t sum = 0;
	xorl	%ecx, %ecx	# sum
# crc32c.c:64:     while (vec) {
	testl	%eax, %eax	# vec
	je	.L2	#,
	leaq	128(%rsp), %rdx	#, mat
	jmp	.L5	#
	.p2align 5
	.p2align 4
	.p2align 3
.L81:
# crc32c.c:67:         vec >>= 1;
	shrl	%eax	# vec
# crc32c.c:68:         mat++;
	addq	$4, %rdx	#, mat
.L5:
# crc32c.c:65:         if (vec & 1)
	testb	$1, %al	#, vec
	jne	.L4	#,
# crc32c.c:67:         vec >>= 1;
	shrl	%eax	# vec
# crc32c.c:68:         mat++;
	addq	$4, %rdx	#, mat
	.p2align 4
	.p2align 3
.L50:
# crc32c.c:65:         if (vec & 1)
	testb	$1, %al	#, vec
	je	.L81	#,
.L4:
# crc32c.c:66:             sum ^= *mat;
	xorl	(%rdx), %ecx	# MEM[(uint32_t *)mat_178], sum
# crc32c.c:64:     while (vec) {
	shrl	%eax	# vec
	je	.L2	#,
# crc32c.c:68:         mat++;
	addq	$4, %rdx	#, mat
	jmp	.L50	#
	.p2align 4
	.p2align 3
.L2:
# crc32c.c:76:     for (unsigned n = 0; n < 32; n++)
	addq	$4, %rsi	#, ivtmp.153
# crc32c.c:77:         square[n] = gf2_matrix_times(mat, mat[n]);
	movl	%ecx, (%rdi)	# sum, MEM[(uint32_t *)_269]
# crc32c.c:76:     for (unsigned n = 0; n < 32; n++)
	addq	$4, %rdi	#, ivtmp.154
	cmpq	%r8, %rsi	# _328, ivtmp.153
	jne	.L6	#,
	leaq	128(%rsp), %r11	#, _313
	movq	%rsp, %rsi	#, ivtmp.139
	movq	%r11, %rdi	# _313, ivtmp.140
	.p2align 4
	.p2align 3
.L11:
# crc32c.c:77:         square[n] = gf2_matrix_times(mat, mat[n]);
	movl	(%rsi), %eax	# MEM[(uint32_t *)_299], vec
# crc32c.c:63:     uint32_t sum = 0;
	xorl	%ecx, %ecx	# sum
# crc32c.c:64:     while (vec) {
	testl	%eax, %eax	# vec
	je	.L7	#,
	movq	%rsp, %rdx	#, mat
	jmp	.L10	#
	.p2align 5
	.p2align 4
	.p2align 3
.L82:
# crc32c.c:67:         vec >>= 1;
	shrl	%eax	# vec
# crc32c.c:68:         mat++;
	addq	$4, %rdx	#, mat
.L10:
# crc32c.c:65:         if (vec & 1)
	testb	$1, %al	#, vec
	jne	.L9	#,
# crc32c.c:67:         vec >>= 1;
	shrl	%eax	# vec
# crc32c.c:68:         mat++;
	addq	$4, %rdx	#, mat
	.p2align 4
	.p2align 3
.L49:
# crc32c.c:65:         if (vec & 1)
	testb	$1, %al	#, vec
	je	.L82	#,
.L9:
# crc32c.c:66:             sum ^= *mat;
	xorl	(%rdx), %ecx	# MEM[(uint32_t *)mat_51], sum
# crc32c.c:64:     while (vec) {
	shrl	%eax	# vec
	je	.L7	#,
# crc32c.c:68:         mat++;
	addq	$4, %rdx	#, mat
	jmp	.L49	#
	.p2align 4
	.p2align 3
.L7:
# crc32c.c:76:     for (unsigned n = 0; n < 32; n++)
	addq	$4, %rsi	#, ivtmp.139
# crc32c.c:77:         square[n] = gf2_matrix_times(mat, mat[n]);
	movl	%ecx, (%rdi)	# sum, MEM[(uint32_t *)_305]
# crc32c.c:76:     for (unsigned n = 0; n < 32; n++)
	addq	$4, %rdi	#, ivtmp.140
	cmpq	%r11, %rsi	# _313, ivtmp.139
	jne	.L11	#,
.L23:
# crc32c.c:63:     uint32_t sum = 0;
	movq	%rsp, %rdi	#, ivtmp.126
	leaq	128(%rsp), %rsi	#, ivtmp.125
	.p2align 4
	.p2align 3
.L16:
# crc32c.c:77:         square[n] = gf2_matrix_times(mat, mat[n]);
	movl	(%rsi), %eax	# MEM[(uint32_t *)_300], vec
# crc32c.c:63:     uint32_t sum = 0;
	xorl	%ecx, %ecx	# sum
# crc32c.c:64:     while (vec) {
	testl	%eax, %eax	# vec
	je	.L12	#,
	leaq	128(%rsp), %rdx	#, mat
	jmp	.L15	#
	.p2align 5
	.p2align 4
	.p2align 3
.L83:
# crc32c.c:67:         vec >>= 1;
	shrl	%eax	# vec
# crc32c.c:68:         mat++;
	addq	$4, %rdx	#, mat
.L15:
# crc32c.c:65:         if (vec & 1)
	testb	$1, %al	#, vec
	jne	.L14	#,
# crc32c.c:67:         vec >>= 1;
	shrl	%eax	# vec
# crc32c.c:68:         mat++;
	addq	$4, %rdx	#, mat
	.p2align 4
	.p2align 3
.L48:
# crc32c.c:65:         if (vec & 1)
	testb	$1, %al	#, vec
	je	.L83	#,
.L14:
# crc32c.c:66:             sum ^= *mat;
	xorl	(%rdx), %ecx	# MEM[(uint32_t *)mat_148], sum
# crc32c.c:64:     while (vec) {
	shrl	%eax	# vec
	je	.L12	#,
# crc32c.c:68:         mat++;
	addq	$4, %rdx	#, mat
	jmp	.L48	#
	.p2align 4
	.p2align 3
.L12:
# crc32c.c:76:     for (unsigned n = 0; n < 32; n++)
	addq	$4, %rsi	#, ivtmp.125
# crc32c.c:77:         square[n] = gf2_matrix_times(mat, mat[n]);
	movl	%ecx, (%rdi)	# sum, MEM[(uint32_t *)_306]
# crc32c.c:76:     for (unsigned n = 0; n < 32; n++)
	addq	$4, %rdi	#, ivtmp.126
	cmpq	%r8, %rsi	# _328, ivtmp.125
	jne	.L16	#,
# crc32c.c:108:         if (len == 0)
	movq	%r10, %rax	# len, tmp204
	shrq	%rax	# tmp204
	je	.L24	#,
	leaq	128(%rsp), %rdi	#, ivtmp.112
	movq	%rsp, %rsi	#, ivtmp.111
	.p2align 4
	.p2align 3
.L17:
# crc32c.c:77:         square[n] = gf2_matrix_times(mat, mat[n]);
	movl	(%rsi), %eax	# MEM[(uint32_t *)_303], vec
# crc32c.c:63:     uint32_t sum = 0;
	xorl	%ecx, %ecx	# sum
# crc32c.c:64:     while (vec) {
	testl	%eax, %eax	# vec
	je	.L19	#,
	movq	%rsp, %rdx	#, mat
	jmp	.L22	#
	.p2align 5
	.p2align 4
	.p2align 3
.L84:
# crc32c.c:67:         vec >>= 1;
	shrl	%eax	# vec
# crc32c.c:68:         mat++;
	addq	$4, %rdx	#, mat
.L22:
# crc32c.c:65:         if (vec & 1)
	testb	$1, %al	#, vec
	jne	.L21	#,
# crc32c.c:67:         vec >>= 1;
	shrl	%eax	# vec
# crc32c.c:68:         mat++;
	addq	$4, %rdx	#, mat
	.p2align 4
	.p2align 3
.L47:
# crc32c.c:65:         if (vec & 1)
	testb	$1, %al	#, vec
	je	.L84	#,
.L21:
# crc32c.c:66:             sum ^= *mat;
	xorl	(%rdx), %ecx	# MEM[(uint32_t *)mat_52], sum
# crc32c.c:64:     while (vec) {
	shrl	%eax	# vec
	je	.L19	#,
# crc32c.c:68:         mat++;
	addq	$4, %rdx	#, mat
	jmp	.L47	#
	.p2align 4
	.p2align 3
.L19:
# crc32c.c:76:     for (unsigned n = 0; n < 32; n++)
	addq	$4, %rsi	#, ivtmp.111
# crc32c.c:77:         square[n] = gf2_matrix_times(mat, mat[n]);
	movl	%ecx, (%rdi)	# sum, MEM[(uint32_t *)_304]
# crc32c.c:76:     for (unsigned n = 0; n < 32; n++)
	addq	$4, %rdi	#, ivtmp.112
	cmpq	%rsi, %r11	# ivtmp.111, _313
	jne	.L17	#,
# crc32c.c:112:     } while (len);
	shrq	$2, %r10	#, len
	jne	.L23	#,
# crc32c.c:116:         even[n] = odd[n];
	vmovdqa	128(%rsp), %ymm0	# MEM <unsigned char[128]> [(char * {ref-all})&odd], MEM <unsigned char[128]> [(char * {ref-all})&odd]
	vmovdqa	%ymm0, (%rsp)	# MEM <unsigned char[128]> [(char * {ref-all})&odd], MEM <unsigned char[128]> [(char * {ref-all})&op]
	vmovdqa	160(%rsp), %ymm0	# MEM <unsigned char[128]> [(char * {ref-all})&odd], MEM <unsigned char[128]> [(char * {ref-all})&odd]
	vmovdqa	%ymm0, 32(%rsp)	# MEM <unsigned char[128]> [(char * {ref-all})&odd], MEM <unsigned char[128]> [(char * {ref-all})&op]
	vmovdqa	192(%rsp), %ymm0	# MEM <unsigned char[128]> [(char * {ref-all})&odd], MEM <unsigned char[128]> [(char * {ref-all})&odd]
	vmovdqa	%ymm0, 64(%rsp)	# MEM <unsigned char[128]> [(char * {ref-all})&odd], MEM <unsigned char[128]> [(char * {ref-all})&op]
	vmovdqa	224(%rsp), %ymm0	# MEM <unsigned char[128]> [(char * {ref-all})&odd], MEM <unsigned char[128]> [(char * {ref-all})&odd]
	vmovdqa	%ymm0, 96(%rsp)	# MEM <unsigned char[128]> [(char * {ref-all})&odd], MEM <unsigned char[128]> [(char * {ref-all})&op]
.L24:
# crc32c.c:126:         zeros[0][n] = gf2_matrix_times(op, n);
	movl	$0, (%r9)	#, (*zeros_11(D))[0]
# crc32c.c:127:         zeros[1][n] = gf2_matrix_times(op, n << 8);
	movl	$0, 1024(%r9)	#, MEM[(uint32_t[256] *)zeros_11(D) + 1024B][0]
# crc32c.c:128:         zeros[2][n] = gf2_matrix_times(op, n << 16);
	movl	$0, 2048(%r9)	#, MEM[(uint32_t[256] *)zeros_11(D) + 2048B][0]
# crc32c.c:129:         zeros[3][n] = gf2_matrix_times(op, n << 24);
	movl	$65536, %edi	#, ivtmp.94
	movl	$0, 3072(%r9)	#, MEM[(uint32_t[256] *)zeros_11(D) + 3072B][0]
	movl	$1, %esi	#, n
	addq	$4, %r9	#, ivtmp.92
.L18:
# crc32c.c:126:         zeros[0][n] = gf2_matrix_times(op, n);
	movl	%esi, %eax	# n, vec
# crc32c.c:63:     uint32_t sum = 0;
	xorl	%ecx, %ecx	# sum
	movq	%rsp, %rdx	#, mat
	jmp	.L25	#
	.p2align 5
	.p2align 4
	.p2align 3
.L85:
# crc32c.c:67:         vec >>= 1;
	shrl	%eax	# vec
# crc32c.c:68:         mat++;
	addq	$4, %rdx	#, mat
.L25:
# crc32c.c:65:         if (vec & 1)
	testb	$1, %al	#, vec
	jne	.L39	#,
# crc32c.c:67:         vec >>= 1;
	shrl	%eax	# vec
# crc32c.c:68:         mat++;
	addq	$4, %rdx	#, mat
	.p2align 4
	.p2align 3
.L46:
# crc32c.c:65:         if (vec & 1)
	testb	$1, %al	#, vec
	je	.L85	#,
.L39:
# crc32c.c:66:             sum ^= *mat;
	xorl	(%rdx), %ecx	# MEM[(uint32_t *)mat_42], sum
# crc32c.c:64:     while (vec) {
	shrl	%eax	# vec
	je	.L86	#,
# crc32c.c:68:         mat++;
	addq	$4, %rdx	#, mat
	jmp	.L46	#
.L86:
	movl	%esi, %edx	# n, vec
# crc32c.c:126:         zeros[0][n] = gf2_matrix_times(op, n);
	movl	%ecx, (%r9)	# sum, MEM[(unsigned int *)_41]
	movq	%rsp, %rcx	#, mat
	sall	$8, %edx	#, vec
	jmp	.L26	#
	.p2align 5
	.p2align 4
	.p2align 3
.L87:
# crc32c.c:67:         vec >>= 1;
	shrl	%edx	# vec
# crc32c.c:68:         mat++;
	addq	$4, %rcx	#, mat
.L26:
# crc32c.c:65:         if (vec & 1)
	testb	$1, %dl	#, vec
	jne	.L35	#,
# crc32c.c:67:         vec >>= 1;
	shrl	%edx	# vec
# crc32c.c:68:         mat++;
	addq	$4, %rcx	#, mat
	.p2align 4
	.p2align 3
.L45:
# crc32c.c:65:         if (vec & 1)
	testb	$1, %dl	#, vec
	je	.L87	#,
.L35:
# crc32c.c:66:             sum ^= *mat;
	xorl	(%rcx), %eax	# MEM[(uint32_t *)mat_117], vec
# crc32c.c:64:     while (vec) {
	shrl	%edx	# vec
	je	.L88	#,
# crc32c.c:68:         mat++;
	addq	$4, %rcx	#, mat
	jmp	.L45	#
.L88:
# crc32c.c:127:         zeros[1][n] = gf2_matrix_times(op, n << 8);
	movl	%eax, 1024(%r9)	# vec, MEM[(unsigned int *)_41 + 1024B]
	movq	%rsp, %rcx	#, mat
# crc32c.c:128:         zeros[2][n] = gf2_matrix_times(op, n << 16);
	movl	%edi, %eax	# ivtmp.94, vec
	jmp	.L27	#
	.p2align 5
	.p2align 4
	.p2align 3
.L89:
# crc32c.c:67:         vec >>= 1;
	shrl	%eax	# vec
# crc32c.c:68:         mat++;
	addq	$4, %rcx	#, mat
.L27:
# crc32c.c:65:         if (vec & 1)
	testb	$1, %al	#, vec
	jne	.L34	#,
# crc32c.c:67:         vec >>= 1;
	shrl	%eax	# vec
# crc32c.c:68:         mat++;
	addq	$4, %rcx	#, mat
	.p2align 4
	.p2align 3
.L44:
# crc32c.c:65:         if (vec & 1)
	testb	$1, %al	#, vec
	je	.L89	#,
.L34:
# crc32c.c:66:             sum ^= *mat;
	xorl	(%rcx), %edx	# MEM[(uint32_t *)mat_89], vec
# crc32c.c:64:     while (vec) {
	shrl	%eax	# vec
	je	.L33	#,
# crc32c.c:68:         mat++;
	addq	$4, %rcx	#, mat
	jmp	.L44	#
.L33:
# crc32c.c:128:         zeros[2][n] = gf2_matrix_times(op, n << 16);
	movl	%edx, 2048(%r9)	# vec, MEM[(unsigned int *)_41 + 2048B]
	movl	%esi, %edx	# n, vec
	movq	%rsp, %rcx	#, mat
	sall	$24, %edx	#, vec
	jmp	.L31	#
	.p2align 5
	.p2align 4
	.p2align 3
.L90:
# crc32c.c:67:         vec >>= 1;
	shrl	%edx	# vec
# crc32c.c:68:         mat++;
	addq	$4, %rcx	#, mat
.L31:
# crc32c.c:65:         if (vec & 1)
	testb	$1, %dl	#, vec
	jne	.L30	#,
# crc32c.c:67:         vec >>= 1;
	shrl	%edx	# vec
# crc32c.c:68:         mat++;
	addq	$4, %rcx	#, mat
	.p2align 4
	.p2align 3
.L43:
# crc32c.c:65:         if (vec & 1)
	testb	$1, %dl	#, vec
	je	.L90	#,
.L30:
# crc32c.c:66:             sum ^= *mat;
	xorl	(%rcx), %eax	# MEM[(uint32_t *)mat_109], vec
# crc32c.c:64:     while (vec) {
	shrl	%edx	# vec
	je	.L29	#,
# crc32c.c:68:         mat++;
	addq	$4, %rcx	#, mat
	jmp	.L43	#
.L29:
# crc32c.c:125:     for (unsigned n = 0; n < 256; n++) {
	incl	%esi	# n
# crc32c.c:129:         zeros[3][n] = gf2_matrix_times(op, n << 24);
	movl	%eax, 3072(%r9)	# vec, MEM[(unsigned int *)_41 + 3072B]
# crc32c.c:125:     for (unsigned n = 0; n < 256; n++) {
	addl	$65536, %edi	#, ivtmp.94
	addq	$4, %r9	#, ivtmp.92
	cmpl	$256, %esi	#, n
	jne	.L18	#,
# crc32c.c:131: }
	movq	280(%rsp), %rax	# D.4546, tmp205
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp205
	jne	.L91	#,
	vzeroupper
	leave	
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret	
.L91:
	.cfi_restore_state
	vzeroupper
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE4:
	.size	crc32c_zeros, .-crc32c_zeros
	.p2align 4
	.type	crc32c_init_hw, @function
crc32c_init_hw:
.LFB6:
	.cfi_startproc
	endbr64	
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 16
# crc32c.c:156:     crc32c_zeros(crc32c_long, LONG);
	movl	$8192, %esi	#,
	leaq	crc32c_long(%rip), %rdi	#,
	call	crc32c_zeros	#
# crc32c.c:157:     crc32c_zeros(crc32c_short, SHORT);
	movl	$256, %esi	#,
	leaq	crc32c_short(%rip), %rdi	#,
# crc32c.c:158: }
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 8
# crc32c.c:157:     crc32c_zeros(crc32c_short, SHORT);
	jmp	crc32c_zeros	#
	.cfi_endproc
.LFE6:
	.size	crc32c_init_hw, .-crc32c_init_hw
	.p2align 4
	.type	crc32c_init_sw_little, @function
crc32c_init_sw_little:
.LFB9:
	.cfi_startproc
	endbr64	
# crc32c.c:369: static void crc32c_init_sw_little(void) {
	vmovdqa	.LC5(%rip), %ymm4	#, vect_vec_iv_.165
# crc32c.c:372:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	movl	$-2097792136, %edi	#, tmp172
	leaq	crc32c_table_little(%rip), %rdx	#, ivtmp.207
# crc32c.c:372:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpcmpeqd	%ymm3, %ymm3, %ymm3	# tmp168
# crc32c.c:372:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vmovd	%edi, %xmm2	# tmp172, tmp171
# crc32c.c:370:     for (unsigned n = 0; n < 256; n++) {
	movl	$8, %edi	#, tmp240
	leaq	1024(%rdx), %rsi	#, _13
# crc32c.c:369: static void crc32c_init_sw_little(void) {
	movq	%rdx, %rcx	# ivtmp.207, tmp263
# crc32c.c:370:     for (unsigned n = 0; n < 256; n++) {
	vmovd	%edi, %xmm5	# tmp240, tmp239
# crc32c.c:369: static void crc32c_init_sw_little(void) {
	movq	%rdx, %rax	# ivtmp.207, ivtmp.213
# crc32c.c:372:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpbroadcastd	%xmm2, %ymm2	# tmp171, tmp171
# crc32c.c:372:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpsrld	$31, %ymm3, %ymm3	#, tmp168, tmp167
# crc32c.c:370:     for (unsigned n = 0; n < 256; n++) {
	vpbroadcastd	%xmm5, %ymm5	# tmp239, tmp239
	.p2align 4
	.p2align 3
.L95:
# crc32c.c:372:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpand	%ymm3, %ymm4, %ymm0	# tmp167, vect_vec_iv_.165, vect__1.166_187
# crc32c.c:372:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpsrld	$1, %ymm4, %ymm1	#, vect_vec_iv_.165, vect__3.168_185
	addq	$32, %rax	#, ivtmp.213
# crc32c.c:370:     for (unsigned n = 0; n < 256; n++) {
	vpaddd	%ymm5, %ymm4, %ymm4	# tmp239, vect_vec_iv_.165, vect_vec_iv_.165
# crc32c.c:372:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpmulld	%ymm2, %ymm0, %ymm0	# tmp171, vect__1.166_187, vect__2.167_186
# crc32c.c:372:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpxor	%ymm1, %ymm0, %ymm0	# vect__3.168_185, vect__2.167_186, vect_crc_41.169
# crc32c.c:373:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpand	%ymm3, %ymm0, %ymm1	# tmp167, vect_crc_41.169, vect__4.170_183
# crc32c.c:373:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpsrld	$1, %ymm0, %ymm0	#, vect_crc_41.169, vect__6.172_181
# crc32c.c:373:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpmulld	%ymm2, %ymm1, %ymm1	# tmp171, vect__4.170_183, vect__5.171_182
# crc32c.c:373:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpxor	%ymm0, %ymm1, %ymm1	# vect__6.172_181, vect__5.171_182, vect_crc_42.173
# crc32c.c:374:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpand	%ymm3, %ymm1, %ymm0	# tmp167, vect_crc_42.173, vect__7.174_179
# crc32c.c:374:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpsrld	$1, %ymm1, %ymm1	#, vect_crc_42.173, vect__9.176_177
# crc32c.c:374:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpmulld	%ymm2, %ymm0, %ymm0	# tmp171, vect__7.174_179, vect__8.175_178
# crc32c.c:374:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpxor	%ymm1, %ymm0, %ymm0	# vect__9.176_177, vect__8.175_178, vect_crc_43.177
# crc32c.c:375:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpand	%ymm3, %ymm0, %ymm1	# tmp167, vect_crc_43.177, vect__10.178_175
# crc32c.c:375:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpsrld	$1, %ymm0, %ymm0	#, vect_crc_43.177, vect__12.180_173
# crc32c.c:375:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpmulld	%ymm2, %ymm1, %ymm1	# tmp171, vect__10.178_175, vect__11.179_174
# crc32c.c:375:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpxor	%ymm0, %ymm1, %ymm1	# vect__12.180_173, vect__11.179_174, vect_crc_44.181
# crc32c.c:376:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpand	%ymm3, %ymm1, %ymm0	# tmp167, vect_crc_44.181, vect__13.182_171
# crc32c.c:376:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpsrld	$1, %ymm1, %ymm1	#, vect_crc_44.181, vect__15.184_169
# crc32c.c:376:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpmulld	%ymm2, %ymm0, %ymm0	# tmp171, vect__13.182_171, vect__14.183_170
# crc32c.c:376:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpxor	%ymm1, %ymm0, %ymm0	# vect__15.184_169, vect__14.183_170, vect_crc_45.185
# crc32c.c:377:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpand	%ymm3, %ymm0, %ymm1	# tmp167, vect_crc_45.185, vect__16.186_167
# crc32c.c:377:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpsrld	$1, %ymm0, %ymm0	#, vect_crc_45.185, vect__18.188_165
# crc32c.c:377:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpmulld	%ymm2, %ymm1, %ymm1	# tmp171, vect__16.186_167, vect__17.187_166
# crc32c.c:377:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpxor	%ymm0, %ymm1, %ymm1	# vect__18.188_165, vect__17.187_166, vect_crc_46.189
# crc32c.c:378:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpand	%ymm3, %ymm1, %ymm0	# tmp167, vect_crc_46.189, vect__19.190_163
# crc32c.c:378:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpsrld	$1, %ymm1, %ymm1	#, vect_crc_46.189, vect__21.192_161
# crc32c.c:378:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpmulld	%ymm2, %ymm0, %ymm0	# tmp171, vect__19.190_163, vect__20.191_162
# crc32c.c:378:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpxor	%ymm1, %ymm0, %ymm0	# vect__21.192_161, vect__20.191_162, vect_crc_47.193
# crc32c.c:379:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpand	%ymm3, %ymm0, %ymm1	# tmp167, vect_crc_47.193, vect__22.194_159
# crc32c.c:379:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpsrld	$1, %ymm0, %ymm0	#, vect_crc_47.193, vect__24.196_157
# crc32c.c:379:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpmulld	%ymm2, %ymm1, %ymm1	# tmp171, vect__22.194_159, vect__23.195_158
# crc32c.c:379:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpxor	%ymm0, %ymm1, %ymm0	# vect__24.196_157, vect__23.195_158, vect_crc_48.197_156
# crc32c.c:380:         crc32c_table_little[0][n] = crc;
	vmovdqa	%ymm0, -32(%rax)	# vect_crc_48.197_156, MEM <vector(8) unsigned int> [(unsigned int *)_12]
	cmpq	%rsi, %rax	# _13, ivtmp.213
	jne	.L95	#,
	.p2align 4
	.p2align 3
.L96:
# crc32c.c:383:         uint32_t crc = crc32c_table_little[0][n];
	movl	(%rdx), %eax	# MEM[(unsigned int *)_2], crc
# crc32c.c:382:     for (unsigned n = 0; n < 256; n++) {
	addq	$4, %rdx	#, ivtmp.207
# crc32c.c:385:             crc = crc32c_table_little[0][crc & 0xff] ^ (crc >> 8);
	movzbl	%al, %edi	# crc, _54
# crc32c.c:385:             crc = crc32c_table_little[0][crc & 0xff] ^ (crc >> 8);
	shrl	$8, %eax	#, _56
# crc32c.c:385:             crc = crc32c_table_little[0][crc & 0xff] ^ (crc >> 8);
	xorl	(%rcx,%rdi,4), %eax	# crc32c_table_little[0][_54], crc
# crc32c.c:385:             crc = crc32c_table_little[0][crc & 0xff] ^ (crc >> 8);
	movzbl	%al, %edi	# crc, _63
# crc32c.c:386:             crc32c_table_little[k][n] = crc;
	movl	%eax, 1020(%rdx)	# crc, MEM[(unsigned int *)_2 + 1024B]
# crc32c.c:385:             crc = crc32c_table_little[0][crc & 0xff] ^ (crc >> 8);
	shrl	$8, %eax	#, _65
# crc32c.c:385:             crc = crc32c_table_little[0][crc & 0xff] ^ (crc >> 8);
	xorl	(%rcx,%rdi,4), %eax	# crc32c_table_little[0][_63], crc
# crc32c.c:385:             crc = crc32c_table_little[0][crc & 0xff] ^ (crc >> 8);
	movzbl	%al, %edi	# crc, _72
# crc32c.c:386:             crc32c_table_little[k][n] = crc;
	movl	%eax, 2044(%rdx)	# crc, MEM[(unsigned int *)_2 + 2048B]
# crc32c.c:385:             crc = crc32c_table_little[0][crc & 0xff] ^ (crc >> 8);
	shrl	$8, %eax	#, _74
# crc32c.c:385:             crc = crc32c_table_little[0][crc & 0xff] ^ (crc >> 8);
	xorl	(%rcx,%rdi,4), %eax	# crc32c_table_little[0][_72], crc
# crc32c.c:385:             crc = crc32c_table_little[0][crc & 0xff] ^ (crc >> 8);
	movzbl	%al, %edi	# crc, _81
# crc32c.c:386:             crc32c_table_little[k][n] = crc;
	movl	%eax, 3068(%rdx)	# crc, MEM[(unsigned int *)_2 + 3072B]
# crc32c.c:385:             crc = crc32c_table_little[0][crc & 0xff] ^ (crc >> 8);
	shrl	$8, %eax	#, _83
# crc32c.c:385:             crc = crc32c_table_little[0][crc & 0xff] ^ (crc >> 8);
	xorl	(%rcx,%rdi,4), %eax	# crc32c_table_little[0][_81], crc
# crc32c.c:385:             crc = crc32c_table_little[0][crc & 0xff] ^ (crc >> 8);
	movzbl	%al, %edi	# crc, _90
# crc32c.c:386:             crc32c_table_little[k][n] = crc;
	movl	%eax, 4092(%rdx)	# crc, MEM[(unsigned int *)_2 + 4096B]
# crc32c.c:385:             crc = crc32c_table_little[0][crc & 0xff] ^ (crc >> 8);
	shrl	$8, %eax	#, _92
# crc32c.c:385:             crc = crc32c_table_little[0][crc & 0xff] ^ (crc >> 8);
	xorl	(%rcx,%rdi,4), %eax	# crc32c_table_little[0][_90], crc
# crc32c.c:385:             crc = crc32c_table_little[0][crc & 0xff] ^ (crc >> 8);
	movzbl	%al, %edi	# crc, _99
# crc32c.c:386:             crc32c_table_little[k][n] = crc;
	movl	%eax, 5116(%rdx)	# crc, MEM[(unsigned int *)_2 + 5120B]
# crc32c.c:385:             crc = crc32c_table_little[0][crc & 0xff] ^ (crc >> 8);
	shrl	$8, %eax	#, _101
# crc32c.c:385:             crc = crc32c_table_little[0][crc & 0xff] ^ (crc >> 8);
	xorl	(%rcx,%rdi,4), %eax	# crc32c_table_little[0][_99], crc
# crc32c.c:385:             crc = crc32c_table_little[0][crc & 0xff] ^ (crc >> 8);
	movzbl	%al, %edi	# crc, _108
# crc32c.c:386:             crc32c_table_little[k][n] = crc;
	movl	%eax, 6140(%rdx)	# crc, MEM[(unsigned int *)_2 + 6144B]
# crc32c.c:385:             crc = crc32c_table_little[0][crc & 0xff] ^ (crc >> 8);
	shrl	$8, %eax	#, _110
# crc32c.c:385:             crc = crc32c_table_little[0][crc & 0xff] ^ (crc >> 8);
	xorl	(%rcx,%rdi,4), %eax	# crc32c_table_little[0][_108], tmp262
	movl	%eax, 7164(%rdx)	# tmp262, MEM[(unsigned int *)_2 + 7168B]
# crc32c.c:382:     for (unsigned n = 0; n < 256; n++) {
	cmpq	%rdx, %rsi	# ivtmp.207, _13
	jne	.L96	#,
	vzeroupper
# crc32c.c:389: }
	ret	
	.cfi_endproc
.LFE9:
	.size	crc32c_init_sw_little, .-crc32c_init_sw_little
	.p2align 4
	.type	crc32c_hw, @function
crc32c_hw:
.LFB7:
	.cfi_startproc
	endbr64	
	pushq	%r14	#
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r12	#
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp	#
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movl	%edi, %r12d	# crc, crc
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rsi, %r14	# buf, buf
# crc32c.c:163:     pthread_once(&crc32c_once_hw, crc32c_init_hw);
	leaq	crc32c_once_hw(%rip), %rdi	#,
	leaq	crc32c_init_hw(%rip), %rsi	#,
# crc32c.c:161: static uint32_t crc32c_hw(uint32_t crc, void const *buf, size_t len) {
	subq	$8, %rsp	#,
	.cfi_def_cfa_offset 48
# crc32c.c:161: static uint32_t crc32c_hw(uint32_t crc, void const *buf, size_t len) {
	movq	%rdx, %rbp	# len, len
# crc32c.c:163:     pthread_once(&crc32c_once_hw, crc32c_init_hw);
	call	pthread_once@PLT	#
# crc32c.c:167:     uint64_t crc0 = crc;            /* 64-bits for crc32q instruction */
	movl	%r12d, %esi	# crc, crc0
	notl	%esi	# crc0
# crc32c.c:172:     while (len && ((uintptr_t)next & 7) != 0) {
	testq	%rbp, %rbp	# len
	jne	.L100	#,
	jmp	.L101	#
	.p2align 4
	.p2align 3
.L105:
# crc32c.c:173:         __asm__("crc32b\t" "(%1), %0"
#APP
# 173 "crc32c.c" 1
	crc32b	(%r14), %rsi	# buf, crc0
# 0 "" 2
# crc32c.c:176:         next++;
#NO_APP
	incq	%r14	# buf
# crc32c.c:172:     while (len && ((uintptr_t)next & 7) != 0) {
	decq	%rbp	# len
	je	.L102	#,
.L100:
# crc32c.c:172:     while (len && ((uintptr_t)next & 7) != 0) {
	testb	$7, %r14b	#, buf
	jne	.L105	#,
# crc32c.c:184:     while (len >= LONG*3) {
	cmpq	$24575, %rbp	#, len
	jbe	.L104	#,
	leaq	8192(%r14), %rdi	#, ivtmp.261
	leaq	crc32c_long(%rip), %r8	#, tmp308
.L108:
# crc32c.c:186:         uint64_t crc2 = 0;
	xorl	%edx, %edx	# crc2
# crc32c.c:185:         uint64_t crc1 = 0;
	xorl	%ecx, %ecx	# crc1
	movq	%r14, %rax	# buf, next
	.p2align 4
	.p2align 3
.L107:
# crc32c.c:189:             __asm__("crc32q\t" "(%3), %0\n\t"
#APP
# 189 "crc32c.c" 1
	crc32q	(%rax), %rsi	# next, crc0
	crc32q	8192(%rax), %rcx	# next, crc1
	crc32q	16384(%rax), %rdx	# next, crc2
# 0 "" 2
# crc32c.c:194:             next += 8;
#NO_APP
	addq	$8, %rax	#, next
# crc32c.c:195:         } while (next < end);
	cmpq	%rdi, %rax	# ivtmp.261, next
	jne	.L107	#,
# crc32c.c:136:            zeros[2][(crc >> 16) & 0xff] ^ zeros[3][crc >> 24];
	movl	%esi, %r9d	# crc0, _90
# crc32c.c:135:     return zeros[0][crc & 0xff] ^ zeros[1][(crc >> 8) & 0xff] ^
	movq	%rsi, %rax	# crc0, crc0
# crc32c.c:199:         len -= LONG*3;
	subq	$24576, %rbp	#, len
# crc32c.c:198:         next += LONG*2;
	addq	$24576, %r14	#, buf
# crc32c.c:136:            zeros[2][(crc >> 16) & 0xff] ^ zeros[3][crc >> 24];
	shrl	$16, %r9d	#, _90
# crc32c.c:135:     return zeros[0][crc & 0xff] ^ zeros[1][(crc >> 8) & 0xff] ^
	movzbl	%ah, %eax	# crc0, _87
# crc32c.c:184:     while (len >= LONG*3) {
	addq	$24576, %rdi	#, ivtmp.261
# crc32c.c:136:            zeros[2][(crc >> 16) & 0xff] ^ zeros[3][crc >> 24];
	movzbl	%r9b, %r9d	# _90, _91
# crc32c.c:136:            zeros[2][(crc >> 16) & 0xff] ^ zeros[3][crc >> 24];
	movl	1024(%r8,%rax,4), %eax	# MEM[(uint32_t[256] *)&crc32c_long + 1024B][_87], MEM[(uint32_t[256] *)&crc32c_long + 1024B][_87]
	xorl	2048(%r8,%r9,4), %eax	# MEM[(uint32_t[256] *)&crc32c_long + 2048B][_91], _135
# crc32c.c:135:     return zeros[0][crc & 0xff] ^ zeros[1][(crc >> 8) & 0xff] ^
	movzbl	%sil, %r9d	# crc0, _84
# crc32c.c:136:            zeros[2][(crc >> 16) & 0xff] ^ zeros[3][crc >> 24];
	shrl	$24, %esi	#, _94
# crc32c.c:136:            zeros[2][(crc >> 16) & 0xff] ^ zeros[3][crc >> 24];
	movl	(%r8,%r9,4), %r9d	# MEM[(uint32_t[256] *)&crc32c_long][_84], MEM[(uint32_t[256] *)&crc32c_long][_84]
	xorl	3072(%r8,%rsi,4), %r9d	# MEM[(uint32_t[256] *)&crc32c_long + 3072B][_94], MEM[(uint32_t[256] *)&crc32c_long][_84]
# crc32c.c:196:         crc0 = crc32c_shift(crc32c_long, crc0) ^ crc1;
	xorl	%r9d, %eax	# MEM[(uint32_t[256] *)&crc32c_long][_84], _4
# crc32c.c:196:         crc0 = crc32c_shift(crc32c_long, crc0) ^ crc1;
	xorq	%rcx, %rax	# crc1, crc0_70
# crc32c.c:136:            zeros[2][(crc >> 16) & 0xff] ^ zeros[3][crc >> 24];
	movl	%eax, %ecx	# crc0_70, _77
# crc32c.c:135:     return zeros[0][crc & 0xff] ^ zeros[1][(crc >> 8) & 0xff] ^
	movzbl	%ah, %esi	# crc0_70, _69
# crc32c.c:136:            zeros[2][(crc >> 16) & 0xff] ^ zeros[3][crc >> 24];
	shrl	$16, %ecx	#, _77
# crc32c.c:136:            zeros[2][(crc >> 16) & 0xff] ^ zeros[3][crc >> 24];
	movl	1024(%r8,%rsi,4), %esi	# MEM[(uint32_t[256] *)&crc32c_long + 1024B][_69], MEM[(uint32_t[256] *)&crc32c_long + 1024B][_69]
# crc32c.c:136:            zeros[2][(crc >> 16) & 0xff] ^ zeros[3][crc >> 24];
	movzbl	%cl, %ecx	# _77, _78
# crc32c.c:136:            zeros[2][(crc >> 16) & 0xff] ^ zeros[3][crc >> 24];
	xorl	2048(%r8,%rcx,4), %esi	# MEM[(uint32_t[256] *)&crc32c_long + 2048B][_78], _132
# crc32c.c:135:     return zeros[0][crc & 0xff] ^ zeros[1][(crc >> 8) & 0xff] ^
	movzbl	%al, %ecx	# crc0_70, _60
# crc32c.c:136:            zeros[2][(crc >> 16) & 0xff] ^ zeros[3][crc >> 24];
	shrl	$24, %eax	#, _81
# crc32c.c:136:            zeros[2][(crc >> 16) & 0xff] ^ zeros[3][crc >> 24];
	movl	(%r8,%rcx,4), %ecx	# MEM[(uint32_t[256] *)&crc32c_long][_60], MEM[(uint32_t[256] *)&crc32c_long][_60]
	xorl	3072(%r8,%rax,4), %ecx	# MEM[(uint32_t[256] *)&crc32c_long + 3072B][_81], MEM[(uint32_t[256] *)&crc32c_long][_60]
# crc32c.c:197:         crc0 = crc32c_shift(crc32c_long, crc0) ^ crc2;
	xorl	%ecx, %esi	# MEM[(uint32_t[256] *)&crc32c_long][_60], _6
# crc32c.c:197:         crc0 = crc32c_shift(crc32c_long, crc0) ^ crc2;
	xorq	%rdx, %rsi	# crc2, crc0
# crc32c.c:184:     while (len >= LONG*3) {
	cmpq	$24575, %rbp	#, len
	ja	.L108	#,
.L104:
# crc32c.c:204:     while (len >= SHORT*3) {
	cmpq	$767, %rbp	#, len
	jbe	.L102	#,
	leaq	256(%r14), %rdi	#, ivtmp.244
	leaq	crc32c_short(%rip), %r8	#, tmp309
.L110:
# crc32c.c:206:         uint64_t crc2 = 0;
	xorl	%edx, %edx	# crc2
# crc32c.c:205:         uint64_t crc1 = 0;
	xorl	%ecx, %ecx	# crc1
	movq	%r14, %rax	# buf, next
	.p2align 4
	.p2align 3
.L109:
# crc32c.c:209:             __asm__("crc32q\t" "(%3), %0\n\t"
#APP
# 209 "crc32c.c" 1
	crc32q	(%rax), %rsi	# next, crc0
	crc32q	256(%rax), %rcx	# next, crc1
	crc32q	512(%rax), %rdx	# next, crc2
# 0 "" 2
# crc32c.c:214:             next += 8;
#NO_APP
	addq	$8, %rax	#, next
# crc32c.c:215:         } while (next < end);
	cmpq	%rdi, %rax	# ivtmp.244, next
	jne	.L109	#,
# crc32c.c:136:            zeros[2][(crc >> 16) & 0xff] ^ zeros[3][crc >> 24];
	movl	%esi, %r9d	# crc0, _116
# crc32c.c:135:     return zeros[0][crc & 0xff] ^ zeros[1][(crc >> 8) & 0xff] ^
	movq	%rsi, %rbx	# crc0, crc0
# crc32c.c:219:         len -= SHORT*3;
	subq	$768, %rbp	#, len
# crc32c.c:218:         next += SHORT*2;
	addq	$768, %r14	#, buf
# crc32c.c:136:            zeros[2][(crc >> 16) & 0xff] ^ zeros[3][crc >> 24];
	shrl	$16, %r9d	#, _116
# crc32c.c:135:     return zeros[0][crc & 0xff] ^ zeros[1][(crc >> 8) & 0xff] ^
	movzbl	%bh, %edi	# crc0, _113
# crc32c.c:136:            zeros[2][(crc >> 16) & 0xff] ^ zeros[3][crc >> 24];
	movzbl	%r9b, %r9d	# _116, _117
# crc32c.c:136:            zeros[2][(crc >> 16) & 0xff] ^ zeros[3][crc >> 24];
	movl	1024(%r8,%rdi,4), %edi	# MEM[(uint32_t[256] *)&crc32c_short + 1024B][_113], MEM[(uint32_t[256] *)&crc32c_short + 1024B][_113]
	xorl	2048(%r8,%r9,4), %edi	# MEM[(uint32_t[256] *)&crc32c_short + 2048B][_117], _129
# crc32c.c:135:     return zeros[0][crc & 0xff] ^ zeros[1][(crc >> 8) & 0xff] ^
	movzbl	%sil, %r9d	# crc0, _110
# crc32c.c:136:            zeros[2][(crc >> 16) & 0xff] ^ zeros[3][crc >> 24];
	shrl	$24, %esi	#, _120
# crc32c.c:136:            zeros[2][(crc >> 16) & 0xff] ^ zeros[3][crc >> 24];
	movl	(%r8,%r9,4), %r9d	# MEM[(uint32_t[256] *)&crc32c_short][_110], MEM[(uint32_t[256] *)&crc32c_short][_110]
	xorl	3072(%r8,%rsi,4), %r9d	# MEM[(uint32_t[256] *)&crc32c_short + 3072B][_120], MEM[(uint32_t[256] *)&crc32c_short][_110]
	movl	%r9d, %esi	# MEM[(uint32_t[256] *)&crc32c_short][_110], _24
# crc32c.c:216:         crc0 = crc32c_shift(crc32c_short, crc0) ^ crc1;
	xorl	%edi, %esi	# _129, _8
# crc32c.c:216:         crc0 = crc32c_shift(crc32c_short, crc0) ^ crc1;
	xorq	%rsi, %rcx	# _8, crc0_59
# crc32c.c:136:            zeros[2][(crc >> 16) & 0xff] ^ zeros[3][crc >> 24];
	movl	%ecx, %edi	# crc0_59, _103
# crc32c.c:135:     return zeros[0][crc & 0xff] ^ zeros[1][(crc >> 8) & 0xff] ^
	movzbl	%ch, %esi	# crc0_59, _100
# crc32c.c:136:            zeros[2][(crc >> 16) & 0xff] ^ zeros[3][crc >> 24];
	shrl	$16, %edi	#, _103
# crc32c.c:136:            zeros[2][(crc >> 16) & 0xff] ^ zeros[3][crc >> 24];
	movl	1024(%r8,%rsi,4), %esi	# MEM[(uint32_t[256] *)&crc32c_short + 1024B][_100], MEM[(uint32_t[256] *)&crc32c_short + 1024B][_100]
# crc32c.c:136:            zeros[2][(crc >> 16) & 0xff] ^ zeros[3][crc >> 24];
	movzbl	%dil, %edi	# _103, _104
# crc32c.c:136:            zeros[2][(crc >> 16) & 0xff] ^ zeros[3][crc >> 24];
	xorl	2048(%r8,%rdi,4), %esi	# MEM[(uint32_t[256] *)&crc32c_short + 2048B][_104], _19
# crc32c.c:135:     return zeros[0][crc & 0xff] ^ zeros[1][(crc >> 8) & 0xff] ^
	movzbl	%cl, %edi	# crc0_59, _97
# crc32c.c:136:            zeros[2][(crc >> 16) & 0xff] ^ zeros[3][crc >> 24];
	shrl	$24, %ecx	#, _107
# crc32c.c:136:            zeros[2][(crc >> 16) & 0xff] ^ zeros[3][crc >> 24];
	movl	(%r8,%rdi,4), %edi	# MEM[(uint32_t[256] *)&crc32c_short][_97], MEM[(uint32_t[256] *)&crc32c_short][_97]
	xorl	3072(%r8,%rcx,4), %edi	# MEM[(uint32_t[256] *)&crc32c_short + 3072B][_107], MEM[(uint32_t[256] *)&crc32c_short][_97]
# crc32c.c:217:         crc0 = crc32c_shift(crc32c_short, crc0) ^ crc2;
	xorl	%edi, %esi	# MEM[(uint32_t[256] *)&crc32c_short][_97], _10
# crc32c.c:204:     while (len >= SHORT*3) {
	leaq	768(%rax), %rdi	#, ivtmp.244
# crc32c.c:217:         crc0 = crc32c_shift(crc32c_short, crc0) ^ crc2;
	xorq	%rdx, %rsi	# crc2, crc0
# crc32c.c:204:     while (len >= SHORT*3) {
	cmpq	$767, %rbp	#, len
	ja	.L110	#,
.L102:
# crc32c.c:225:         unsigned char const * const end = next + (len - (len & 7));
	movq	%rbp, %rdx	# len, _137
# crc32c.c:232:         len &= 7;
	andl	$7, %ebp	#, _163
# crc32c.c:225:         unsigned char const * const end = next + (len - (len & 7));
	andq	$-8, %rdx	#, _137
# crc32c.c:225:         unsigned char const * const end = next + (len - (len & 7));
	addq	%r14, %rdx	# buf, prephitmp_138
# crc32c.c:226:         while (next < end) {
	cmpq	%rdx, %r14	# prephitmp_138, buf
	jnb	.L112	#,
	movq	%r14, %rax	# buf, next
.L113:
# crc32c.c:227:             __asm__("crc32q\t" "(%1), %0"
#APP
# 227 "crc32c.c" 1
	crc32q	(%rax), %rsi	# next, crc0
# 0 "" 2
# crc32c.c:230:             next += 8;
#NO_APP
	addq	$8, %rax	#, next
# crc32c.c:226:         while (next < end) {
	cmpq	%rdx, %rax	# prephitmp_138, next
	jb	.L113	#,
	leaq	-1(%rdx), %rax	#, _131
	subq	%r14, %rax	# buf, _11
	andq	$-8, %rax	#, _46
	leaq	8(%r14,%rax), %r14	#, buf
.L112:
# crc32c.c:236:     while (len) {
	testq	%rbp, %rbp	# _163
	je	.L101	#,
# crc32c.c:237:         __asm__("crc32b\t" "(%1), %0"
#APP
# 237 "crc32c.c" 1
	crc32b	(%r14), %rsi	# buf, crc0
# 0 "" 2
# crc32c.c:236:     while (len) {
#NO_APP
	cmpq	$1, %rbp	#, _163
	je	.L101	#,
# crc32c.c:240:         next++;
	leaq	1(%r14), %rax	#, next
# crc32c.c:237:         __asm__("crc32b\t" "(%1), %0"
#APP
# 237 "crc32c.c" 1
	crc32b	(%rax), %rsi	# next, crc0
# 0 "" 2
# crc32c.c:236:     while (len) {
#NO_APP
	cmpq	$2, %rbp	#, _163
	je	.L101	#,
# crc32c.c:240:         next++;
	leaq	2(%r14), %rax	#, next
# crc32c.c:237:         __asm__("crc32b\t" "(%1), %0"
#APP
# 237 "crc32c.c" 1
	crc32b	(%rax), %rsi	# next, crc0
# 0 "" 2
# crc32c.c:236:     while (len) {
#NO_APP
	cmpq	$3, %rbp	#, _163
	je	.L101	#,
# crc32c.c:240:         next++;
	leaq	3(%r14), %rax	#, next
# crc32c.c:237:         __asm__("crc32b\t" "(%1), %0"
#APP
# 237 "crc32c.c" 1
	crc32b	(%rax), %rsi	# next, crc0
# 0 "" 2
# crc32c.c:236:     while (len) {
#NO_APP
	cmpq	$4, %rbp	#, _163
	je	.L101	#,
# crc32c.c:240:         next++;
	leaq	4(%r14), %rax	#, next
# crc32c.c:237:         __asm__("crc32b\t" "(%1), %0"
#APP
# 237 "crc32c.c" 1
	crc32b	(%rax), %rsi	# next, crc0
# 0 "" 2
# crc32c.c:236:     while (len) {
#NO_APP
	cmpq	$5, %rbp	#, _163
	je	.L101	#,
# crc32c.c:240:         next++;
	leaq	5(%r14), %rax	#, next
# crc32c.c:237:         __asm__("crc32b\t" "(%1), %0"
#APP
# 237 "crc32c.c" 1
	crc32b	(%rax), %rsi	# next, crc0
# 0 "" 2
# crc32c.c:236:     while (len) {
#NO_APP
	cmpq	$6, %rbp	#, _163
	je	.L101	#,
# crc32c.c:240:         next++;
	leaq	6(%r14), %rbx	#, next
# crc32c.c:237:         __asm__("crc32b\t" "(%1), %0"
#APP
# 237 "crc32c.c" 1
	crc32b	(%rbx), %rsi	# next, crc0
# 0 "" 2
#NO_APP
.L101:
# crc32c.c:246: }
	addq	$8, %rsp	#,
	.cfi_def_cfa_offset 40
# crc32c.c:245:     return ~crc0;
	movl	%esi, %eax	# crc0, _47
# crc32c.c:246: }
	popq	%rbx	#
	.cfi_def_cfa_offset 32
# crc32c.c:245:     return ~crc0;
	notl	%eax	# _47
# crc32c.c:246: }
	popq	%rbp	#
	.cfi_def_cfa_offset 24
	popq	%r12	#
	.cfi_def_cfa_offset 16
	popq	%r14	#
	.cfi_def_cfa_offset 8
	ret	
	.cfi_endproc
.LFE7:
	.size	crc32c_hw, .-crc32c_hw
	.p2align 4
	.type	crc32c_init_sw_big, @function
crc32c_init_sw_big:
.LFB11:
	.cfi_startproc
	endbr64	
# crc32c.c:442: static void crc32c_init_sw_big(void) {
	vmovdqa	.LC5(%rip), %ymm4	#, vect_vec_iv_.275
# crc32c.c:445:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	movl	$-2097792136, %edi	#, tmp191
	leaq	crc32c_table_big_byte(%rip), %rsi	#, ivtmp.317
# crc32c.c:445:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpcmpeqd	%ymm3, %ymm3, %ymm3	# tmp187
# crc32c.c:445:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vmovd	%edi, %xmm2	# tmp191, tmp190
# crc32c.c:443:     for (unsigned n = 0; n < 256; n++) {
	movl	$8, %edi	#, tmp259
	leaq	1024(%rsi), %rdx	#, _16
# crc32c.c:442: static void crc32c_init_sw_big(void) {
	movq	%rsi, %rcx	# ivtmp.317, tmp290
# crc32c.c:443:     for (unsigned n = 0; n < 256; n++) {
	vmovd	%edi, %xmm5	# tmp259, tmp258
# crc32c.c:442: static void crc32c_init_sw_big(void) {
	movq	%rsi, %rax	# ivtmp.317, ivtmp.324
# crc32c.c:445:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpbroadcastd	%xmm2, %ymm2	# tmp190, tmp190
# crc32c.c:445:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpsrld	$31, %ymm3, %ymm3	#, tmp187, tmp186
# crc32c.c:443:     for (unsigned n = 0; n < 256; n++) {
	vpbroadcastd	%xmm5, %ymm5	# tmp258, tmp258
	.p2align 4
	.p2align 3
.L146:
# crc32c.c:445:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpand	%ymm3, %ymm4, %ymm0	# tmp186, vect_vec_iv_.275, vect__1.276_260
# crc32c.c:445:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpsrld	$1, %ymm4, %ymm1	#, vect_vec_iv_.275, vect__3.278_258
	addq	$32, %rax	#, ivtmp.324
# crc32c.c:443:     for (unsigned n = 0; n < 256; n++) {
	vpaddd	%ymm5, %ymm4, %ymm4	# tmp258, vect_vec_iv_.275, vect_vec_iv_.275
# crc32c.c:445:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpmulld	%ymm2, %ymm0, %ymm0	# tmp190, vect__1.276_260, vect__2.277_259
# crc32c.c:445:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpxor	%ymm1, %ymm0, %ymm0	# vect__3.278_258, vect__2.277_259, vect_crc_46.279
# crc32c.c:446:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpand	%ymm3, %ymm0, %ymm1	# tmp186, vect_crc_46.279, vect__4.280_256
# crc32c.c:446:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpsrld	$1, %ymm0, %ymm0	#, vect_crc_46.279, vect__6.282_254
# crc32c.c:446:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpmulld	%ymm2, %ymm1, %ymm1	# tmp190, vect__4.280_256, vect__5.281_255
# crc32c.c:446:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpxor	%ymm0, %ymm1, %ymm1	# vect__6.282_254, vect__5.281_255, vect_crc_47.283
# crc32c.c:447:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpand	%ymm3, %ymm1, %ymm0	# tmp186, vect_crc_47.283, vect__7.284_252
# crc32c.c:447:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpsrld	$1, %ymm1, %ymm1	#, vect_crc_47.283, vect__9.286_250
# crc32c.c:447:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpmulld	%ymm2, %ymm0, %ymm0	# tmp190, vect__7.284_252, vect__8.285_251
# crc32c.c:447:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpxor	%ymm1, %ymm0, %ymm0	# vect__9.286_250, vect__8.285_251, vect_crc_48.287
# crc32c.c:448:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpand	%ymm3, %ymm0, %ymm1	# tmp186, vect_crc_48.287, vect__10.288_248
# crc32c.c:448:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpsrld	$1, %ymm0, %ymm0	#, vect_crc_48.287, vect__12.290_246
# crc32c.c:448:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpmulld	%ymm2, %ymm1, %ymm1	# tmp190, vect__10.288_248, vect__11.289_247
# crc32c.c:448:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpxor	%ymm0, %ymm1, %ymm1	# vect__12.290_246, vect__11.289_247, vect_crc_49.291
# crc32c.c:449:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpand	%ymm3, %ymm1, %ymm0	# tmp186, vect_crc_49.291, vect__13.292_244
# crc32c.c:449:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpsrld	$1, %ymm1, %ymm1	#, vect_crc_49.291, vect__15.294_242
# crc32c.c:449:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpmulld	%ymm2, %ymm0, %ymm0	# tmp190, vect__13.292_244, vect__14.293_243
# crc32c.c:449:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpxor	%ymm1, %ymm0, %ymm0	# vect__15.294_242, vect__14.293_243, vect_crc_50.295
# crc32c.c:450:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpand	%ymm3, %ymm0, %ymm1	# tmp186, vect_crc_50.295, vect__16.296_240
# crc32c.c:450:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpsrld	$1, %ymm0, %ymm0	#, vect_crc_50.295, vect__18.298_238
# crc32c.c:450:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpmulld	%ymm2, %ymm1, %ymm1	# tmp190, vect__16.296_240, vect__17.297_239
# crc32c.c:450:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpxor	%ymm0, %ymm1, %ymm1	# vect__18.298_238, vect__17.297_239, vect_crc_51.299
# crc32c.c:451:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpand	%ymm3, %ymm1, %ymm0	# tmp186, vect_crc_51.299, vect__19.300_236
# crc32c.c:451:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpsrld	$1, %ymm1, %ymm1	#, vect_crc_51.299, vect__21.302_234
# crc32c.c:451:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpmulld	%ymm2, %ymm0, %ymm0	# tmp190, vect__19.300_236, vect__20.301_235
# crc32c.c:451:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpxor	%ymm1, %ymm0, %ymm0	# vect__21.302_234, vect__20.301_235, vect_crc_52.303
# crc32c.c:452:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpand	%ymm3, %ymm0, %ymm1	# tmp186, vect_crc_52.303, vect__22.304_232
# crc32c.c:452:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpsrld	$1, %ymm0, %ymm0	#, vect_crc_52.303, vect__24.306_230
# crc32c.c:452:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpmulld	%ymm2, %ymm1, %ymm1	# tmp190, vect__22.304_232, vect__23.305_231
# crc32c.c:452:         crc = crc & 1 ? (crc >> 1) ^ POLY : crc >> 1;
	vpxor	%ymm0, %ymm1, %ymm0	# vect__24.306_230, vect__23.305_231, vect_crc_53.307_229
# crc32c.c:453:         crc32c_table_big_byte[n] = crc;
	vmovdqa	%ymm0, -32(%rax)	# vect_crc_53.307_229, MEM <vector(8) unsigned int> [(unsigned int *)_15]
	cmpq	%rdx, %rax	# _16, ivtmp.324
	jne	.L146	#,
	leaq	crc32c_table_big(%rip), %rdx	#, ivtmp.318
	leaq	2048(%rdx), %rdi	#, _12
	.p2align 4
	.p2align 3
.L147:
# crc32c.c:456:         uint32_t crc = crc32c_table_big_byte[n];
	movl	(%rsi), %r8d	# MEM[(unsigned int *)_4],
# crc32c.c:455:     for (unsigned n = 0; n < 256; n++) {
	addq	$8, %rdx	#, ivtmp.318
	addq	$4, %rsi	#, ivtmp.317
# crc32c.c:456:         uint32_t crc = crc32c_table_big_byte[n];
	movq	%r8, %rax	#,
# crc32c.c:457:         crc32c_table_big[0][n] = swap(crc);
	movbeq	%r8, -8(%rdx)	# _25, MEM[(long unsigned int *)_5]
# crc32c.c:459:             crc = crc32c_table_big_byte[crc & 0xff] ^ (crc >> 8);
	movzbl	%r8b, %r8d	# crc, _59
# crc32c.c:459:             crc = crc32c_table_big_byte[crc & 0xff] ^ (crc >> 8);
	shrl	$8, %eax	#, _61
# crc32c.c:459:             crc = crc32c_table_big_byte[crc & 0xff] ^ (crc >> 8);
	xorl	(%rcx,%r8,4), %eax	# crc32c_table_big_byte[_59], crc
# crc32c.c:460:             crc32c_table_big[k][n] = swap(crc);
	movl	%eax, %r8d	# crc, _63
# crc32c.c:460:             crc32c_table_big[k][n] = swap(crc);
	movbeq	%r8, 2040(%rdx)	# _63, MEM[(long unsigned int *)_5 + 2048B]
# crc32c.c:459:             crc = crc32c_table_big_byte[crc & 0xff] ^ (crc >> 8);
	movzbl	%al, %r8d	# crc, _70
# crc32c.c:459:             crc = crc32c_table_big_byte[crc & 0xff] ^ (crc >> 8);
	shrl	$8, %eax	#, _72
# crc32c.c:459:             crc = crc32c_table_big_byte[crc & 0xff] ^ (crc >> 8);
	xorl	(%rcx,%r8,4), %eax	# crc32c_table_big_byte[_70], crc
# crc32c.c:460:             crc32c_table_big[k][n] = swap(crc);
	movl	%eax, %r8d	# crc, _74
# crc32c.c:460:             crc32c_table_big[k][n] = swap(crc);
	movbeq	%r8, 4088(%rdx)	# _74, MEM[(long unsigned int *)_5 + 4096B]
# crc32c.c:459:             crc = crc32c_table_big_byte[crc & 0xff] ^ (crc >> 8);
	movzbl	%al, %r8d	# crc, _81
# crc32c.c:459:             crc = crc32c_table_big_byte[crc & 0xff] ^ (crc >> 8);
	shrl	$8, %eax	#, _83
# crc32c.c:459:             crc = crc32c_table_big_byte[crc & 0xff] ^ (crc >> 8);
	xorl	(%rcx,%r8,4), %eax	# crc32c_table_big_byte[_81], crc
# crc32c.c:460:             crc32c_table_big[k][n] = swap(crc);
	movl	%eax, %r8d	# crc, _85
# crc32c.c:460:             crc32c_table_big[k][n] = swap(crc);
	movbeq	%r8, 6136(%rdx)	# _85, MEM[(long unsigned int *)_5 + 6144B]
# crc32c.c:459:             crc = crc32c_table_big_byte[crc & 0xff] ^ (crc >> 8);
	movzbl	%al, %r8d	# crc, _92
# crc32c.c:459:             crc = crc32c_table_big_byte[crc & 0xff] ^ (crc >> 8);
	shrl	$8, %eax	#, _94
# crc32c.c:459:             crc = crc32c_table_big_byte[crc & 0xff] ^ (crc >> 8);
	xorl	(%rcx,%r8,4), %eax	# crc32c_table_big_byte[_92], crc
# crc32c.c:460:             crc32c_table_big[k][n] = swap(crc);
	movl	%eax, %r8d	# crc, _96
# crc32c.c:460:             crc32c_table_big[k][n] = swap(crc);
	movbeq	%r8, 8184(%rdx)	# _96, MEM[(long unsigned int *)_5 + 8192B]
# crc32c.c:459:             crc = crc32c_table_big_byte[crc & 0xff] ^ (crc >> 8);
	movzbl	%al, %r8d	# crc, _103
# crc32c.c:459:             crc = crc32c_table_big_byte[crc & 0xff] ^ (crc >> 8);
	shrl	$8, %eax	#, _105
# crc32c.c:459:             crc = crc32c_table_big_byte[crc & 0xff] ^ (crc >> 8);
	xorl	(%rcx,%r8,4), %eax	# crc32c_table_big_byte[_103], crc
# crc32c.c:460:             crc32c_table_big[k][n] = swap(crc);
	movl	%eax, %r8d	# crc, _107
# crc32c.c:460:             crc32c_table_big[k][n] = swap(crc);
	movbeq	%r8, 10232(%rdx)	# _107, MEM[(long unsigned int *)_5 + 10240B]
# crc32c.c:459:             crc = crc32c_table_big_byte[crc & 0xff] ^ (crc >> 8);
	movzbl	%al, %r8d	# crc, _114
# crc32c.c:459:             crc = crc32c_table_big_byte[crc & 0xff] ^ (crc >> 8);
	shrl	$8, %eax	#, _116
# crc32c.c:459:             crc = crc32c_table_big_byte[crc & 0xff] ^ (crc >> 8);
	xorl	(%rcx,%r8,4), %eax	# crc32c_table_big_byte[_114], crc
# crc32c.c:460:             crc32c_table_big[k][n] = swap(crc);
	movl	%eax, %r8d	# crc, _118
# crc32c.c:460:             crc32c_table_big[k][n] = swap(crc);
	movbeq	%r8, 12280(%rdx)	# _118, MEM[(long unsigned int *)_5 + 12288B]
# crc32c.c:459:             crc = crc32c_table_big_byte[crc & 0xff] ^ (crc >> 8);
	movzbl	%al, %r8d	# crc, _125
# crc32c.c:459:             crc = crc32c_table_big_byte[crc & 0xff] ^ (crc >> 8);
	shrl	$8, %eax	#, _127
# crc32c.c:460:             crc32c_table_big[k][n] = swap(crc);
	xorl	(%rcx,%r8,4), %eax	# crc32c_table_big_byte[_125], _129
# crc32c.c:460:             crc32c_table_big[k][n] = swap(crc);
	movbeq	%rax, 14328(%rdx)	# _129, MEM[(long unsigned int *)_5 + 14336B]
# crc32c.c:455:     for (unsigned n = 0; n < 256; n++) {
	cmpq	%rdi, %rdx	# _12, ivtmp.318
	jne	.L147	#,
	vzeroupper
# crc32c.c:463: }
	ret	
	.cfi_endproc
.LFE11:
	.size	crc32c_init_sw_big, .-crc32c_init_sw_big
	.p2align 4
	.globl	crc32c_init
	.type	crc32c_init, @function
crc32c_init:
.LFB8:
	.cfi_startproc
	endbr64	
	pushq	%rbx	#
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
# crc32c.c:269:     SSE42(sse42);
	movl	$1, %eax	#, tmp102
#APP
# 269 "crc32c.c" 1
	cpuid	
# 0 "" 2
# crc32c.c:273:         crc32c = crc32c_sw;
#NO_APP
	leaq	crc32c_sw(%rip), %rax	#, cstore_7
# crc32c.c:271:         crc32c = crc32c_hw;
	andl	$1048576, %ecx	#, ecx
	leaq	crc32c_hw(%rip), %rdx	#, tmp114
# crc32c.c:275: }
	popq	%rbx	#
	.cfi_def_cfa_offset 8
# crc32c.c:271:         crc32c = crc32c_hw;
	cmovne	%rdx, %rax	# cstore_7,, tmp114, cstore_7
	movq	%rax, crc32c(%rip)	# cstore_7, crc32c
# crc32c.c:275: }
	ret	
	.cfi_endproc
.LFE8:
	.size	crc32c_init, .-crc32c_init
	.p2align 4
	.globl	crc32c_sw_little
	.type	crc32c_sw_little, @function
crc32c_sw_little:
.LFB10:
	.cfi_startproc
	endbr64	
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdx, %r12	# len, len
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rsi, %rbp	# buf, buf
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
# crc32c.c:396:     pthread_once(&crc32c_once_little, crc32c_init_sw_little);
	leaq	crc32c_init_sw_little(%rip), %rsi	#,
# crc32c.c:393: uint32_t crc32c_sw_little(uint32_t crc, void const *buf, size_t len) {
	movl	%edi, %ebx	# crc, crc
# crc32c.c:396:     pthread_once(&crc32c_once_little, crc32c_init_sw_little);
	leaq	crc32c_once_little(%rip), %rdi	#,
	call	pthread_once@PLT	#
# crc32c.c:397:     crc = ~crc;
	movl	%ebx, %eax	# crc, crc
# crc32c.c:398:     while (len && ((uintptr_t)next & 7) != 0) {
	testq	%r12, %r12	# len
	je	.L154	#,
# crc32c.c:397:     crc = ~crc;
	notl	%eax	# crc
	leaq	crc32c_table_little(%rip), %rcx	#, tmp281
	jmp	.L156	#
	.p2align 5
	.p2align 4
	.p2align 3
.L158:
# crc32c.c:399:         crc = crc32c_table_little[0][(crc ^ *next++) & 0xff] ^ (crc >> 8);
	movzbl	0(%rbp), %edx	# MEM[(const unsigned char *)next_61 + -1B], _3
# crc32c.c:399:         crc = crc32c_table_little[0][(crc ^ *next++) & 0xff] ^ (crc >> 8);
	incq	%rbp	# buf
# crc32c.c:399:         crc = crc32c_table_little[0][(crc ^ *next++) & 0xff] ^ (crc >> 8);
	xorl	%eax, %edx	# crc, _3
# crc32c.c:399:         crc = crc32c_table_little[0][(crc ^ *next++) & 0xff] ^ (crc >> 8);
	shrl	$8, %eax	#, _6
# crc32c.c:399:         crc = crc32c_table_little[0][(crc ^ *next++) & 0xff] ^ (crc >> 8);
	movzbl	%dl, %edx	# _3, _4
# crc32c.c:399:         crc = crc32c_table_little[0][(crc ^ *next++) & 0xff] ^ (crc >> 8);
	xorl	(%rcx,%rdx,4), %eax	# crc32c_table_little[0][_4], crc
# crc32c.c:398:     while (len && ((uintptr_t)next & 7) != 0) {
	decq	%r12	# len
	je	.L157	#,
.L156:
# crc32c.c:398:     while (len && ((uintptr_t)next & 7) != 0) {
	testb	$7, %bpl	#, buf
	jne	.L158	#,
# crc32c.c:402:     if (len >= 8) {
	cmpq	$7, %r12	#, len
	jbe	.L163	#,
	movq	%r12, %r8	# len, _192
	movq	%r12, %r9	# len, _83
# crc32c.c:403:         uint64_t crcw = crc;
	movl	%eax, %edx	# crc, crcw
	movq	%rbp, %rdi	# buf, next
	andq	$-8, %r8	#, _192
	shrq	$3, %r9	#, _83
	addq	%rbp, %r8	# buf, _190
	.p2align 4
	.p2align 3
.L160:
# crc32c.c:405:             crcw ^= *(uint64_t const *)next;
	xorq	(%rdi), %rdx	# MEM[(const uint64_t *)next_51], crcw
# crc32c.c:414:             next += 8;
	addq	$8, %rdi	#, next
# crc32c.c:409:                    crc32c_table_little[4][(crcw >> 24) & 0xff] ^
	movq	%rdx, %rax	# crcw, _20
# crc32c.c:410:                    crc32c_table_little[3][(crcw >> 32) & 0xff] ^
	movq	%rdx, %rsi	# crcw, _24
# crc32c.c:412:                    crc32c_table_little[1][(crcw >> 48) & 0xff] ^
	movq	%rdx, %r10	# crcw, _32
# crc32c.c:409:                    crc32c_table_little[4][(crcw >> 24) & 0xff] ^
	shrq	$24, %rax	#, _20
# crc32c.c:410:                    crc32c_table_little[3][(crcw >> 32) & 0xff] ^
	shrq	$32, %rsi	#, _24
# crc32c.c:412:                    crc32c_table_little[1][(crcw >> 48) & 0xff] ^
	shrq	$48, %r10	#, _32
# crc32c.c:410:                    crc32c_table_little[3][(crcw >> 32) & 0xff] ^
	movzbl	%sil, %esi	# _24, _25
# crc32c.c:409:                    crc32c_table_little[4][(crcw >> 24) & 0xff] ^
	movzbl	%al, %eax	# _20, _21
# crc32c.c:412:                    crc32c_table_little[1][(crcw >> 48) & 0xff] ^
	movzbl	%r10b, %r10d	# _32, _33
# crc32c.c:412:                    crc32c_table_little[1][(crcw >> 48) & 0xff] ^
	movl	4096(%rcx,%rax,4), %eax	# crc32c_table_little[4][_21], crc32c_table_little[4][_21]
	xorl	3072(%rcx,%rsi,4), %eax	# crc32c_table_little[3][_25], _204
# crc32c.c:411:                    crc32c_table_little[2][(crcw >> 40) & 0xff] ^
	movq	%rdx, %rsi	# crcw, _28
	shrq	$40, %rsi	#, _28
# crc32c.c:411:                    crc32c_table_little[2][(crcw >> 40) & 0xff] ^
	movzbl	%sil, %esi	# _28, _29
# crc32c.c:412:                    crc32c_table_little[1][(crcw >> 48) & 0xff] ^
	movl	2048(%rcx,%rsi,4), %esi	# crc32c_table_little[2][_29], crc32c_table_little[2][_29]
	xorl	1024(%rcx,%r10,4), %esi	# crc32c_table_little[1][_33], _205
# crc32c.c:408:                    crc32c_table_little[5][(crcw >> 16) & 0xff] ^
	movq	%rdx, %r10	# crcw, _16
	shrq	$16, %r10	#, _16
# crc32c.c:408:                    crc32c_table_little[5][(crcw >> 16) & 0xff] ^
	movzbl	%r10b, %r10d	# _16, _17
# crc32c.c:412:                    crc32c_table_little[1][(crcw >> 48) & 0xff] ^
	xorl	%esi, %eax	# _205, _48
# crc32c.c:407:                    crc32c_table_little[6][(crcw >> 8) & 0xff] ^
	movzbl	%dh, %esi	# crcw, _13
# crc32c.c:412:                    crc32c_table_little[1][(crcw >> 48) & 0xff] ^
	movl	6144(%rcx,%rsi,4), %esi	# crc32c_table_little[6][_13], crc32c_table_little[6][_13]
	xorl	5120(%rcx,%r10,4), %esi	# crc32c_table_little[5][_17], _203
# crc32c.c:406:             crcw = crc32c_table_little[7][crcw & 0xff] ^
	movzbl	%dl, %r10d	# crcw, _10
# crc32c.c:413:                    crc32c_table_little[0][crcw >> 56];
	shrq	$56, %rdx	#, _36
# crc32c.c:412:                    crc32c_table_little[1][(crcw >> 48) & 0xff] ^
	movl	7168(%rcx,%r10,4), %r10d	# crc32c_table_little[7][_10], crc32c_table_little[7][_10]
	xorl	(%rcx,%rdx,4), %r10d	# crc32c_table_little[0][_36], crc32c_table_little[7][_10]
	movl	%r10d, %edx	# crc32c_table_little[7][_10], _85
	xorl	%esi, %edx	# _203, _202
	xorl	%edx, %eax	# _202, crc
# crc32c.c:406:             crcw = crc32c_table_little[7][crcw & 0xff] ^
	movl	%eax, %edx	# crc, crcw
# crc32c.c:416:         } while (len >= 8);
	cmpq	%r8, %rdi	# _190, next
	jne	.L160	#,
# crc32c.c:419:     while (len) {
	andl	$7, %r12d	#, len
	je	.L157	#,
	leaq	0(%rbp,%r9,8), %rbp	#, buf
.L163:
# crc32c.c:420:         crc = crc32c_table_little[0][(crc ^ *next++) & 0xff] ^ (crc >> 8);
	movzbl	0(%rbp), %edx	# *next_194, _186
	xorl	%eax, %edx	# crc, _186
# crc32c.c:420:         crc = crc32c_table_little[0][(crc ^ *next++) & 0xff] ^ (crc >> 8);
	shrl	$8, %eax	#, _183
# crc32c.c:420:         crc = crc32c_table_little[0][(crc ^ *next++) & 0xff] ^ (crc >> 8);
	movzbl	%dl, %edx	# _186, _185
# crc32c.c:420:         crc = crc32c_table_little[0][(crc ^ *next++) & 0xff] ^ (crc >> 8);
	xorl	(%rcx,%rdx,4), %eax	# crc32c_table_little[0][_185], crc
# crc32c.c:419:     while (len) {
	cmpq	$1, %r12	#, len
	je	.L157	#,
# crc32c.c:420:         crc = crc32c_table_little[0][(crc ^ *next++) & 0xff] ^ (crc >> 8);
	movzbl	1(%rbp), %edx	# MEM[(const unsigned char *)next_194 + 1B], _174
	xorl	%eax, %edx	# crc, _174
# crc32c.c:420:         crc = crc32c_table_little[0][(crc ^ *next++) & 0xff] ^ (crc >> 8);
	shrl	$8, %eax	#, _171
# crc32c.c:420:         crc = crc32c_table_little[0][(crc ^ *next++) & 0xff] ^ (crc >> 8);
	movzbl	%dl, %edx	# _174, _173
# crc32c.c:420:         crc = crc32c_table_little[0][(crc ^ *next++) & 0xff] ^ (crc >> 8);
	xorl	(%rcx,%rdx,4), %eax	# crc32c_table_little[0][_173], crc
# crc32c.c:419:     while (len) {
	cmpq	$2, %r12	#, len
	je	.L157	#,
# crc32c.c:420:         crc = crc32c_table_little[0][(crc ^ *next++) & 0xff] ^ (crc >> 8);
	movzbl	2(%rbp), %edx	# MEM[(const unsigned char *)next_194 + 2B], _162
	xorl	%eax, %edx	# crc, _162
# crc32c.c:420:         crc = crc32c_table_little[0][(crc ^ *next++) & 0xff] ^ (crc >> 8);
	shrl	$8, %eax	#, _159
# crc32c.c:420:         crc = crc32c_table_little[0][(crc ^ *next++) & 0xff] ^ (crc >> 8);
	movzbl	%dl, %edx	# _162, _161
# crc32c.c:420:         crc = crc32c_table_little[0][(crc ^ *next++) & 0xff] ^ (crc >> 8);
	xorl	(%rcx,%rdx,4), %eax	# crc32c_table_little[0][_161], crc
# crc32c.c:419:     while (len) {
	cmpq	$3, %r12	#, len
	je	.L157	#,
# crc32c.c:420:         crc = crc32c_table_little[0][(crc ^ *next++) & 0xff] ^ (crc >> 8);
	movzbl	3(%rbp), %edx	# MEM[(const unsigned char *)next_194 + 3B], _150
	xorl	%eax, %edx	# crc, _150
# crc32c.c:420:         crc = crc32c_table_little[0][(crc ^ *next++) & 0xff] ^ (crc >> 8);
	shrl	$8, %eax	#, _147
# crc32c.c:420:         crc = crc32c_table_little[0][(crc ^ *next++) & 0xff] ^ (crc >> 8);
	movzbl	%dl, %edx	# _150, _149
# crc32c.c:420:         crc = crc32c_table_little[0][(crc ^ *next++) & 0xff] ^ (crc >> 8);
	xorl	(%rcx,%rdx,4), %eax	# crc32c_table_little[0][_149], crc
# crc32c.c:419:     while (len) {
	cmpq	$4, %r12	#, len
	je	.L157	#,
# crc32c.c:420:         crc = crc32c_table_little[0][(crc ^ *next++) & 0xff] ^ (crc >> 8);
	movzbl	4(%rbp), %edx	# MEM[(const unsigned char *)next_194 + 4B], _138
	xorl	%eax, %edx	# crc, _138
# crc32c.c:420:         crc = crc32c_table_little[0][(crc ^ *next++) & 0xff] ^ (crc >> 8);
	shrl	$8, %eax	#, _135
# crc32c.c:420:         crc = crc32c_table_little[0][(crc ^ *next++) & 0xff] ^ (crc >> 8);
	movzbl	%dl, %edx	# _138, _137
# crc32c.c:420:         crc = crc32c_table_little[0][(crc ^ *next++) & 0xff] ^ (crc >> 8);
	xorl	(%rcx,%rdx,4), %eax	# crc32c_table_little[0][_137], crc
# crc32c.c:419:     while (len) {
	cmpq	$5, %r12	#, len
	je	.L157	#,
# crc32c.c:420:         crc = crc32c_table_little[0][(crc ^ *next++) & 0xff] ^ (crc >> 8);
	movzbl	5(%rbp), %edx	# MEM[(const unsigned char *)next_194 + 5B], _126
	xorl	%eax, %edx	# crc, _126
# crc32c.c:420:         crc = crc32c_table_little[0][(crc ^ *next++) & 0xff] ^ (crc >> 8);
	shrl	$8, %eax	#, _123
# crc32c.c:420:         crc = crc32c_table_little[0][(crc ^ *next++) & 0xff] ^ (crc >> 8);
	movzbl	%dl, %edx	# _126, _125
# crc32c.c:420:         crc = crc32c_table_little[0][(crc ^ *next++) & 0xff] ^ (crc >> 8);
	xorl	(%rcx,%rdx,4), %eax	# crc32c_table_little[0][_125], crc
# crc32c.c:419:     while (len) {
	cmpq	$6, %r12	#, len
	je	.L157	#,
# crc32c.c:420:         crc = crc32c_table_little[0][(crc ^ *next++) & 0xff] ^ (crc >> 8);
	movzbl	6(%rbp), %edx	# MEM[(const unsigned char *)next_194 + 6B], _41
	xorl	%eax, %edx	# crc, _41
# crc32c.c:420:         crc = crc32c_table_little[0][(crc ^ *next++) & 0xff] ^ (crc >> 8);
	shrl	$8, %eax	#, _44
# crc32c.c:420:         crc = crc32c_table_little[0][(crc ^ *next++) & 0xff] ^ (crc >> 8);
	movzbl	%dl, %edx	# _41, _42
# crc32c.c:420:         crc = crc32c_table_little[0][(crc ^ *next++) & 0xff] ^ (crc >> 8);
	xorl	(%rcx,%rdx,4), %eax	# crc32c_table_little[0][_42], crc
.L157:
# crc32c.c:423:     return ~crc;
	notl	%eax	# <retval>
.L154:
# crc32c.c:424: }
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret	
	.cfi_endproc
.LFE10:
	.size	crc32c_sw_little, .-crc32c_sw_little
	.p2align 4
	.globl	crc32c_sw
	.type	crc32c_sw, @function
crc32c_sw:
.LFB13:
	.cfi_startproc
	endbr64	
# crc32c.c:510:         return crc32c_sw_little(crc, buf, len);
	jmp	crc32c_sw_little	#
	.cfi_endproc
.LFE13:
	.size	crc32c_sw, .-crc32c_sw
	.p2align 4
	.globl	crc32c_sw_big
	.type	crc32c_sw_big, @function
crc32c_sw_big:
.LFB12:
	.cfi_startproc
	endbr64	
	pushq	%r12	#
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdx, %r12	# len, len
	pushq	%rbp	#
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rsi, %rbp	# buf, buf
	pushq	%rbx	#
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
# crc32c.c:470:     pthread_once(&crc32c_once_big, crc32c_init_sw_big);
	leaq	crc32c_init_sw_big(%rip), %rsi	#,
# crc32c.c:467: uint32_t crc32c_sw_big(uint32_t crc, void const *buf, size_t len) {
	movl	%edi, %ebx	# crc, crc
# crc32c.c:470:     pthread_once(&crc32c_once_big, crc32c_init_sw_big);
	leaq	crc32c_once_big(%rip), %rdi	#,
	call	pthread_once@PLT	#
# crc32c.c:471:     crc = ~crc;
	movl	%ebx, %eax	# crc, crc
# crc32c.c:472:     while (len && ((uintptr_t)next & 7) != 0) {
	testq	%r12, %r12	# len
	je	.L193	#,
# crc32c.c:471:     crc = ~crc;
	notl	%eax	#
# crc32c.c:473:         crc = crc32c_table_big_byte[(crc ^ *next++) & 0xff] ^ (crc >> 8);
	leaq	crc32c_table_big_byte(%rip), %rcx	#, tmp283
	jmp	.L195	#
	.p2align 5
	.p2align 4
	.p2align 3
.L197:
# crc32c.c:473:         crc = crc32c_table_big_byte[(crc ^ *next++) & 0xff] ^ (crc >> 8);
	movzbl	0(%rbp), %edx	# MEM[(const unsigned char *)next_62 + -1B], _4
# crc32c.c:473:         crc = crc32c_table_big_byte[(crc ^ *next++) & 0xff] ^ (crc >> 8);
	incq	%rbp	# buf
# crc32c.c:473:         crc = crc32c_table_big_byte[(crc ^ *next++) & 0xff] ^ (crc >> 8);
	xorl	%eax, %edx	# crc, _4
# crc32c.c:473:         crc = crc32c_table_big_byte[(crc ^ *next++) & 0xff] ^ (crc >> 8);
	shrl	$8, %eax	#, _7
# crc32c.c:473:         crc = crc32c_table_big_byte[(crc ^ *next++) & 0xff] ^ (crc >> 8);
	movzbl	%dl, %edx	# _4, _5
# crc32c.c:473:         crc = crc32c_table_big_byte[(crc ^ *next++) & 0xff] ^ (crc >> 8);
	xorl	(%rcx,%rdx,4), %eax	# crc32c_table_big_byte[_5],
# crc32c.c:472:     while (len && ((uintptr_t)next & 7) != 0) {
	decq	%r12	# len
	je	.L196	#,
.L195:
# crc32c.c:472:     while (len && ((uintptr_t)next & 7) != 0) {
	testb	$7, %bpl	#, buf
	jne	.L197	#,
# crc32c.c:476:     if (len >= 8) {
	cmpq	$7, %r12	#, len
	jbe	.L202	#,
	movq	%r12, %r10	# len, _194
	movq	%r12, %r9	# len, _85
# crc32c.c:477:         uint64_t crcw = swap(crc);
	bswap	%rax		# crcw
	movq	%rbp, %rdi	# buf, next
	andq	$-8, %r10	#, _194
	shrq	$3, %r9	#, _85
	leaq	crc32c_table_big(%rip), %rdx	#, tmp282
	addq	%rbp, %r10	# buf, _192
	.p2align 4
	.p2align 3
.L199:
# crc32c.c:479:             crcw ^= *(uint64_t const *)next;
	xorq	(%rdi), %rax	# MEM[(const uint64_t *)next_53], crcw
# crc32c.c:488:             next += 8;
	addq	$8, %rdi	#, next
# crc32c.c:483:                    crc32c_table_big[3][(crcw >> 24) & 0xff] ^
	movq	%rax, %rsi	# crcw, _22
# crc32c.c:484:                    crc32c_table_big[4][(crcw >> 32) & 0xff] ^
	movq	%rax, %rcx	# crcw, _26
# crc32c.c:486:                    crc32c_table_big[6][(crcw >> 48) & 0xff] ^
	movq	%rax, %r8	# crcw, _34
# crc32c.c:483:                    crc32c_table_big[3][(crcw >> 24) & 0xff] ^
	shrq	$24, %rsi	#, _22
# crc32c.c:484:                    crc32c_table_big[4][(crcw >> 32) & 0xff] ^
	shrq	$32, %rcx	#, _26
# crc32c.c:486:                    crc32c_table_big[6][(crcw >> 48) & 0xff] ^
	shrq	$48, %r8	#, _34
# crc32c.c:484:                    crc32c_table_big[4][(crcw >> 32) & 0xff] ^
	movzbl	%cl, %ecx	# _26, _27
# crc32c.c:483:                    crc32c_table_big[3][(crcw >> 24) & 0xff] ^
	movzbl	%sil, %esi	# _22, _23
# crc32c.c:486:                    crc32c_table_big[6][(crcw >> 48) & 0xff] ^
	movzbl	%r8b, %r8d	# _34, _35
	movq	6144(%rdx,%rsi,8), %rsi	# crc32c_table_big[3][_23], crc32c_table_big[3][_23]
	xorq	8192(%rdx,%rcx,8), %rsi	# crc32c_table_big[4][_27], _206
# crc32c.c:485:                    crc32c_table_big[5][(crcw >> 40) & 0xff] ^
	movq	%rax, %rcx	# crcw, _30
	shrq	$40, %rcx	#, _30
# crc32c.c:485:                    crc32c_table_big[5][(crcw >> 40) & 0xff] ^
	movzbl	%cl, %ecx	# _30, _31
	movq	10240(%rdx,%rcx,8), %rcx	# crc32c_table_big[5][_31], crc32c_table_big[5][_31]
	xorq	12288(%rdx,%r8,8), %rcx	# crc32c_table_big[6][_35], _207
# crc32c.c:482:                    crc32c_table_big[2][(crcw >> 16) & 0xff] ^
	movq	%rax, %r8	# crcw, _18
	shrq	$16, %r8	#, _18
# crc32c.c:482:                    crc32c_table_big[2][(crcw >> 16) & 0xff] ^
	movzbl	%r8b, %r8d	# _18, _19
	xorq	%rcx, %rsi	# _207, _50
# crc32c.c:481:                    crc32c_table_big[1][(crcw >> 8) & 0xff] ^
	movzbl	%ah, %ecx	# crcw, _15
	movq	2048(%rdx,%rcx,8), %rcx	# crc32c_table_big[1][_15], crc32c_table_big[1][_15]
	xorq	4096(%rdx,%r8,8), %rcx	# crc32c_table_big[2][_19], _205
# crc32c.c:480:             crcw = crc32c_table_big[0][crcw & 0xff] ^
	movzbl	%al, %r8d	# crcw, _12
# crc32c.c:487:                    crc32c_table_big[7][(crcw >> 56)];
	shrq	$56, %rax	#, _38
	movq	(%rdx,%r8,8), %r8	# crc32c_table_big[0][_12], crc32c_table_big[0][_12]
	xorq	14336(%rdx,%rax,8), %r8	# crc32c_table_big[7][_38], crc32c_table_big[0][_12]
	movq	%r8, %rax	# crc32c_table_big[0][_12], _87
	xorq	%rcx, %rax	# _205, _204
# crc32c.c:480:             crcw = crc32c_table_big[0][crcw & 0xff] ^
	xorq	%rsi, %rax	# _50, crcw
# crc32c.c:490:         } while (len >= 8);
	cmpq	%r10, %rdi	# _192, next
	jne	.L199	#,
# crc32c.c:491:         crc = swap(crcw);
	bswap	%rax		# crc
# crc32c.c:493:     while (len) {
	andl	$7, %r12d	#, len
	je	.L196	#,
	leaq	0(%rbp,%r9,8), %rbp	#, buf
.L202:
# crc32c.c:494:         crc = crc32c_table_big_byte[(crc ^ *next++) & 0xff] ^ (crc >> 8);
	movzbl	0(%rbp), %ecx	# *next_196, _188
# crc32c.c:494:         crc = crc32c_table_big_byte[(crc ^ *next++) & 0xff] ^ (crc >> 8);
	leaq	crc32c_table_big_byte(%rip), %rdx	#, tmp246
# crc32c.c:494:         crc = crc32c_table_big_byte[(crc ^ *next++) & 0xff] ^ (crc >> 8);
	xorl	%eax, %ecx	# crc, _188
# crc32c.c:494:         crc = crc32c_table_big_byte[(crc ^ *next++) & 0xff] ^ (crc >> 8);
	shrl	$8, %eax	#, _185
# crc32c.c:494:         crc = crc32c_table_big_byte[(crc ^ *next++) & 0xff] ^ (crc >> 8);
	movzbl	%cl, %ecx	# _188, _187
# crc32c.c:494:         crc = crc32c_table_big_byte[(crc ^ *next++) & 0xff] ^ (crc >> 8);
	xorl	(%rdx,%rcx,4), %eax	# crc32c_table_big_byte[_187], crc
# crc32c.c:493:     while (len) {
	cmpq	$1, %r12	#, len
	je	.L196	#,
# crc32c.c:494:         crc = crc32c_table_big_byte[(crc ^ *next++) & 0xff] ^ (crc >> 8);
	movzbl	1(%rbp), %ecx	# MEM[(const unsigned char *)next_196 + 1B], _176
	xorl	%eax, %ecx	# crc, _176
# crc32c.c:494:         crc = crc32c_table_big_byte[(crc ^ *next++) & 0xff] ^ (crc >> 8);
	shrl	$8, %eax	#, _173
# crc32c.c:494:         crc = crc32c_table_big_byte[(crc ^ *next++) & 0xff] ^ (crc >> 8);
	movzbl	%cl, %ecx	# _176, _175
# crc32c.c:494:         crc = crc32c_table_big_byte[(crc ^ *next++) & 0xff] ^ (crc >> 8);
	xorl	(%rdx,%rcx,4), %eax	# crc32c_table_big_byte[_175], crc
# crc32c.c:493:     while (len) {
	cmpq	$2, %r12	#, len
	je	.L196	#,
# crc32c.c:494:         crc = crc32c_table_big_byte[(crc ^ *next++) & 0xff] ^ (crc >> 8);
	movzbl	2(%rbp), %ecx	# MEM[(const unsigned char *)next_196 + 2B], _164
	xorl	%eax, %ecx	# crc, _164
# crc32c.c:494:         crc = crc32c_table_big_byte[(crc ^ *next++) & 0xff] ^ (crc >> 8);
	shrl	$8, %eax	#, _161
# crc32c.c:494:         crc = crc32c_table_big_byte[(crc ^ *next++) & 0xff] ^ (crc >> 8);
	movzbl	%cl, %ecx	# _164, _163
# crc32c.c:494:         crc = crc32c_table_big_byte[(crc ^ *next++) & 0xff] ^ (crc >> 8);
	xorl	(%rdx,%rcx,4), %eax	# crc32c_table_big_byte[_163], crc
# crc32c.c:493:     while (len) {
	cmpq	$3, %r12	#, len
	je	.L196	#,
# crc32c.c:494:         crc = crc32c_table_big_byte[(crc ^ *next++) & 0xff] ^ (crc >> 8);
	movzbl	3(%rbp), %ecx	# MEM[(const unsigned char *)next_196 + 3B], _152
	xorl	%eax, %ecx	# crc, _152
# crc32c.c:494:         crc = crc32c_table_big_byte[(crc ^ *next++) & 0xff] ^ (crc >> 8);
	shrl	$8, %eax	#, _149
# crc32c.c:494:         crc = crc32c_table_big_byte[(crc ^ *next++) & 0xff] ^ (crc >> 8);
	movzbl	%cl, %ecx	# _152, _151
# crc32c.c:494:         crc = crc32c_table_big_byte[(crc ^ *next++) & 0xff] ^ (crc >> 8);
	xorl	(%rdx,%rcx,4), %eax	# crc32c_table_big_byte[_151], crc
# crc32c.c:493:     while (len) {
	cmpq	$4, %r12	#, len
	je	.L196	#,
# crc32c.c:494:         crc = crc32c_table_big_byte[(crc ^ *next++) & 0xff] ^ (crc >> 8);
	movzbl	4(%rbp), %ecx	# MEM[(const unsigned char *)next_196 + 4B], _140
	xorl	%eax, %ecx	# crc, _140
# crc32c.c:494:         crc = crc32c_table_big_byte[(crc ^ *next++) & 0xff] ^ (crc >> 8);
	shrl	$8, %eax	#, _137
# crc32c.c:494:         crc = crc32c_table_big_byte[(crc ^ *next++) & 0xff] ^ (crc >> 8);
	movzbl	%cl, %ecx	# _140, _139
# crc32c.c:494:         crc = crc32c_table_big_byte[(crc ^ *next++) & 0xff] ^ (crc >> 8);
	xorl	(%rdx,%rcx,4), %eax	# crc32c_table_big_byte[_139], crc
# crc32c.c:493:     while (len) {
	cmpq	$5, %r12	#, len
	je	.L196	#,
# crc32c.c:494:         crc = crc32c_table_big_byte[(crc ^ *next++) & 0xff] ^ (crc >> 8);
	movzbl	5(%rbp), %ecx	# MEM[(const unsigned char *)next_196 + 5B], _128
	xorl	%eax, %ecx	# crc, _128
# crc32c.c:494:         crc = crc32c_table_big_byte[(crc ^ *next++) & 0xff] ^ (crc >> 8);
	shrl	$8, %eax	#, _125
# crc32c.c:494:         crc = crc32c_table_big_byte[(crc ^ *next++) & 0xff] ^ (crc >> 8);
	movzbl	%cl, %ecx	# _128, _127
# crc32c.c:494:         crc = crc32c_table_big_byte[(crc ^ *next++) & 0xff] ^ (crc >> 8);
	xorl	(%rdx,%rcx,4), %eax	# crc32c_table_big_byte[_127], crc
# crc32c.c:493:     while (len) {
	cmpq	$6, %r12	#, len
	je	.L196	#,
# crc32c.c:494:         crc = crc32c_table_big_byte[(crc ^ *next++) & 0xff] ^ (crc >> 8);
	movzbl	6(%rbp), %ecx	# MEM[(const unsigned char *)next_196 + 6B], _43
	xorl	%eax, %ecx	# crc, _43
# crc32c.c:494:         crc = crc32c_table_big_byte[(crc ^ *next++) & 0xff] ^ (crc >> 8);
	shrl	$8, %eax	#, _46
# crc32c.c:494:         crc = crc32c_table_big_byte[(crc ^ *next++) & 0xff] ^ (crc >> 8);
	movzbl	%cl, %ecx	# _43, _44
# crc32c.c:494:         crc = crc32c_table_big_byte[(crc ^ *next++) & 0xff] ^ (crc >> 8);
	xorl	(%rdx,%rcx,4), %eax	# crc32c_table_big_byte[_44], crc
.L196:
# crc32c.c:497:     return ~crc;
	notl	%eax	# <retval>
.L193:
# crc32c.c:498: }
	popq	%rbx	#
	.cfi_def_cfa_offset 24
	popq	%rbp	#
	.cfi_def_cfa_offset 16
	popq	%r12	#
	.cfi_def_cfa_offset 8
	ret	
	.cfi_endproc
.LFE12:
	.size	crc32c_sw_big, .-crc32c_sw_big
	.local	crc32c_table_big
	.comm	crc32c_table_big,16384,32
	.local	crc32c_table_big_byte
	.comm	crc32c_table_big_byte,1024,32
	.local	crc32c_once_big
	.comm	crc32c_once_big,4,4
	.local	crc32c_table_little
	.comm	crc32c_table_little,8192,32
	.local	crc32c_once_little
	.comm	crc32c_once_little,4,4
	.local	crc32c_short
	.comm	crc32c_short,4096,32
	.local	crc32c_long
	.comm	crc32c_long,4096,32
	.local	crc32c_once_hw
	.comm	crc32c_once_hw,4,4
	.globl	crc32c
	.bss
	.align 8
	.type	crc32c, @object
	.size	crc32c, 8
crc32c:
	.zero	8
	.section	.rodata.cst32,"aM",@progbits,32
	.align 32
.LC0:
	.long	1
	.long	2
	.long	4
	.long	8
	.long	16
	.long	32
	.long	64
	.long	128
	.align 32
.LC1:
	.long	256
	.long	512
	.long	1024
	.long	2048
	.long	4096
	.long	8192
	.long	16384
	.long	32768
	.align 32
.LC2:
	.long	65536
	.long	131072
	.long	262144
	.long	524288
	.long	1048576
	.long	2097152
	.long	4194304
	.long	8388608
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC3:
	.long	16777216
	.long	33554432
	.long	67108864
	.long	134217728
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC4:
	.long	268435456
	.long	536870912
	.section	.rodata.cst32
	.align 32
.LC5:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
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
