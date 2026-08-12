	.file	"util.c"
# GNU C23 (Ubuntu 15.2.0-16ubuntu1) version 15.2.0 (x86_64-linux-gnu)
#	compiled by GNU C version 15.2.0, GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.3.1, isl version isl-0.27-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -D_FORTIFY_SOURCE=3 -march=znver3 -mmmx -mpopcnt -msse -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mavx -mavx2 -msse4a -mno-fma4 -mno-xop -mfma -mno-avx512f -mbmi -mbmi2 -maes -mpclmul -mno-avx512vl -mno-avx512bw -mno-avx512dq -mno-avx512cd -mno-avx512vbmi -mno-avx512ifma -mno-avx512vpopcntdq -mno-avx512vbmi2 -mno-gfni -mvpclmulqdq -mno-avx512vnni -mno-avx512bitalg -mno-avx512bf16 -mno-avx512vp2intersect -mno-3dnow -madx -mabm -mno-cldemote -mclflushopt -mclwb -mclzero -mcx16 -mno-enqcmd -mf16c -mfsgsbase -mfxsr -mno-hle -msahf -mno-lwp -mlzcnt -mmovbe -mno-movdir64b -mno-movdiri -mno-mwaitx -mno-pconfig -mno-pku -mprfchw -mno-ptwrite -mrdpid -mrdrnd -mrdseed -mno-rtm -mno-serialize -mno-sgx -msha -mshstk -mno-tbm -mno-tsxldtrk -mvaes -mno-waitpkg -mno-wbnoinvd -mxsave -mxsavec -mxsaveopt -mxsaves -mno-amx-tile -mno-amx-int8 -mno-amx-bf16 -mno-uintr -mno-hreset -mno-kl -mno-widekl -mno-avxvnni -mno-avx512fp16 -mno-avxifma -mno-avxvnniint8 -mno-avxneconvert -mno-cmpccxadd -mno-amx-fp16 -mno-prefetchi -mno-raoint -mno-amx-complex -mno-avxvnniint16 -mno-sm3 -mno-sha512 -mno-sm4 -mno-apxf -mno-usermsr -mno-avx10.2 -mno-amx-avx512 -mno-amx-tf32 -mno-amx-transpose -mno-amx-fp8 -mno-movrs -mno-amx-movrs --param=l1-cache-size=32 --param=l1-cache-line-size=64 --param=l2-cache-size=512 -mtune=znver3 -O3 -ftree-vectorize -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection -fzero-init-padding-bits=all
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%%%02hhX"
	.text
	.p2align 4
	.globl	uriencode_init
	.type	uriencode_init, @function
uriencode_init:
.LFB56:
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
# util.c:17:     char *str = uriencode_str;
	leaq	uriencode_str(%rip), %r14	#, str
# util.c:15: void uriencode_init(void) {
	pushq	%rbp	#
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx	#
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
# util.c:17:     char *str = uriencode_str;
	movl	$768, %ebp	#, _41
# util.c:19:         if (isalnum(x) || x == '-' || x == '.' || x == '_' || x == '~') {
	xorl	%ebx, %ebx	# ivtmp.56
	call	__ctype_b_loc@PLT	#
	leaq	uriencode_map(%rip), %r12	#, tmp140
	movq	(%rax), %rdx	# *_1, *_1
	movq	%rax, %r13	#, _1
	.p2align 4
	.p2align 3
.L7:
	xorl	%eax, %eax	# _55
# util.c:19:         if (isalnum(x) || x == '-' || x == '.' || x == '_' || x == '~') {
	testb	$8, (%rdx,%rbx,2)	#, *_5
	jne	.L2	#,
.L15:
# util.c:19:         if (isalnum(x) || x == '-' || x == '.' || x == '_' || x == '~') {
	leal	-45(%rbx), %ecx	#, _44
	cmpl	$1, %ecx	#, _44
	jbe	.L2	#,
# util.c:19:         if (isalnum(x) || x == '-' || x == '.' || x == '_' || x == '~') {
	cmpq	$95, %rbx	#, ivtmp.56
	je	.L10	#,
	cmpq	$126, %rbx	#, ivtmp.56
	je	.L10	#,
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:68:   return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	movl	$768, %ecx	#, tmp143
	movl	$2, %edx	#,
	movq	%r14, %rdi	# str,
	movl	%ebx, %r9d	# ivtmp.56,
	cmpq	%rcx, %rbp	# tmp143, _41
	leaq	.LC0(%rip), %r8	#,
	movl	$4, %esi	#,
	cmovbe	%rbp, %rcx	# _41,, _25
	xorl	%eax, %eax	#
	call	__snprintf_chk@PLT	#
	movl	$768, %edx	#, tmp144
	cmpq	%rdx, %rbp	# tmp144, _41
	cmovnb	%rbp, %rdx	# _41,, _32
	movq	%rdx, %rax	# _32, _34
	subq	%rbp, %rax	# _41, _34
	addq	$3, %rax	#, _35
	cmpq	%rdx, %rax	# _32, _35
	cmovb	%rdx, %rax	# _35,, _32, _36
	subq	%rdx, %rax	# _32, _7
	leaq	-3(%rbp,%rax), %rbp	#, _41
# util.c:24:             str += 3; /* lobbing off the \0 is fine */
	movq	%r14, %rax	# str, _55
	addq	$3, %r14	#, str
.L2:
# util.c:20:             uriencode_map[x] = NULL;
	movq	%rax, (%r12,%rbx,8)	# _55, MEM[(char * *)&uriencode_map + ivtmp.56_48 * 8]
# util.c:18:     for (x = 0; x < 256; x++) {
	incq	%rbx	# ivtmp.56
	cmpq	$256, %rbx	#, ivtmp.56
	je	.L11	#,
.L16:
	movq	0(%r13), %rdx	# *_1, *_1
	xorl	%eax, %eax	# _55
# util.c:19:         if (isalnum(x) || x == '-' || x == '.' || x == '_' || x == '~') {
	testb	$8, (%rdx,%rbx,2)	#, *_5
	je	.L15	#,
# util.c:20:             uriencode_map[x] = NULL;
	movq	%rax, (%r12,%rbx,8)	# _55, MEM[(char * *)&uriencode_map + ivtmp.56_48 * 8]
# util.c:18:     for (x = 0; x < 256; x++) {
	incq	%rbx	# ivtmp.56
	cmpq	$256, %rbx	#, ivtmp.56
	jne	.L16	#,
.L11:
# util.c:27: }
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
.L10:
	.cfi_restore_state
# util.c:20:             uriencode_map[x] = NULL;
	movq	$0, (%r12,%rbx,8)	#, MEM[(char * *)&uriencode_map + ivtmp.56_48 * 8]
# util.c:18:     for (x = 0; x < 256; x++) {
	incq	%rbx	# ivtmp.56
	jmp	.L7	#
	.cfi_endproc
.LFE56:
	.size	uriencode_init, .-uriencode_init
	.p2align 4
	.globl	uriencode
	.type	uriencode, @function
uriencode:
.LFB57:
	.cfi_startproc
	endbr64	
# util.c:29: bool uriencode(const char *src, char *dst, const size_t srclen, const size_t dstlen) {
	movq	%rsi, %r9	# dst, dst
	movq	%rcx, %r10	# dstlen, dstlen
# util.c:32:     for (x = 0; x < srclen; x++) {
	testq	%rdx, %rdx	# srclen
	je	.L18	#,
	addq	%rdi, %rdx	# ivtmp.73, _16
# util.c:31:     size_t d = 0;
	xorl	%eax, %eax	# d
# util.c:35:         if (uriencode_map[(unsigned char) src[x]] != NULL) {
	leaq	uriencode_map(%rip), %r11	#, tmp120
	jmp	.L22	#
	.p2align 4
	.p2align 3
.L29:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movzwl	(%rcx), %r8d	# MEM <char[1:3]> [(void *)_6], MEM <char[1:3]> [(void *)_6]
# util.c:32:     for (x = 0; x < srclen; x++) {
	incq	%rdi	# ivtmp.73
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movw	%r8w, (%r9,%rax)	# MEM <char[1:3]> [(void *)_6], MEM <char[1:3]> [(void *)_43]
	movzbl	2(%rcx), %ecx	# MEM <char[1:3]> [(void *)_6], MEM <char[1:3]> [(void *)_6]
	movb	%cl, 2(%r9,%rax)	# MEM <char[1:3]> [(void *)_6], MEM <char[1:3]> [(void *)_43]
# util.c:37:             d += 3;
	addq	$3, %rax	#, d
# util.c:32:     for (x = 0; x < srclen; x++) {
	cmpq	%rdi, %rdx	# ivtmp.73, _16
	je	.L28	#,
.L22:
# util.c:33:         if (d + 4 > dstlen)
	leaq	4(%rax), %rcx	#, _1
# util.c:33:         if (d + 4 > dstlen)
	cmpq	%rcx, %r10	# _1, dstlen
	jb	.L23	#,
# util.c:35:         if (uriencode_map[(unsigned char) src[x]] != NULL) {
	movzbl	(%rdi), %ecx	# MEM[(const char *)_13],
	movq	%rcx, %r8	#,
# util.c:35:         if (uriencode_map[(unsigned char) src[x]] != NULL) {
	movq	(%r11,%rcx,8), %rcx	# uriencode_map[_5], _6
# util.c:35:         if (uriencode_map[(unsigned char) src[x]] != NULL) {
	testq	%rcx, %rcx	# _6
	jne	.L29	#,
# util.c:32:     for (x = 0; x < srclen; x++) {
	incq	%rdi	# ivtmp.73
# util.c:39:             dst[d] = src[x];
	movb	%r8b, (%r9,%rax)	# _3, *_43
# util.c:40:             d++;
	incq	%rax	# d
# util.c:32:     for (x = 0; x < srclen; x++) {
	cmpq	%rdi, %rdx	# ivtmp.73, _16
	jne	.L22	#,
.L28:
# util.c:43:     dst[d] = '\0';
	addq	%rax, %r9	# d, dst
.L18:
# util.c:43:     dst[d] = '\0';
	movb	$0, (%r9)	#, *prephitmp_42
# util.c:44:     return true;
	movl	$1, %eax	#, <retval>
	ret	
	.p2align 4
	.p2align 3
.L23:
# util.c:34:             return false;
	xorl	%eax, %eax	# <retval>
# util.c:45: }
	ret	
	.cfi_endproc
.LFE57:
	.size	uriencode, .-uriencode
	.p2align 4
	.globl	uriencode_p
	.type	uriencode_p, @function
uriencode_p:
.LFB58:
	.cfi_startproc
	endbr64	
# util.c:49: char *uriencode_p(const char *src, char *dst, const size_t srclen) {
	movq	%rsi, %rax	# dst, dst
# util.c:52:     for (x = 0; x < srclen; x++) {
	testq	%rdx, %rdx	# srclen
	je	.L30	#,
	addq	%rdi, %rdx	# ivtmp.82, _36
# util.c:51:     size_t d = 0;
	xorl	%ecx, %ecx	# d
	leaq	uriencode_map(%rip), %r10	#, tmp117
	jmp	.L34	#
	.p2align 6
	.p2align 4
	.p2align 3
.L38:
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movzwl	(%rsi), %r9d	# MEM <char[1:3]> [(void *)_5], MEM <char[1:3]> [(void *)_5]
# util.c:52:     for (x = 0; x < srclen; x++) {
	incq	%rdi	# ivtmp.82
# /usr/include/x86_64-linux-gnu/bits/string_fortified.h:29:   return __builtin___memcpy_chk (__dest, __src, __len,
	movw	%r9w, (%rax,%rcx)	# MEM <char[1:3]> [(void *)_5], MEM <char[1:3]> [(void *)_45]
	movzbl	2(%rsi), %esi	# MEM <char[1:3]> [(void *)_5], MEM <char[1:3]> [(void *)_5]
	movb	%sil, 2(%rax,%rcx)	# MEM <char[1:3]> [(void *)_5], MEM <char[1:3]> [(void *)_45]
# util.c:55:             d += 3;
	addq	$3, %rcx	#, d
# util.c:52:     for (x = 0; x < srclen; x++) {
	cmpq	%rdi, %rdx	# ivtmp.82, _36
	je	.L37	#,
.L34:
# util.c:53:         if (uriencode_map[(unsigned char) src[x]] != NULL) {
	movzbl	(%rdi), %esi	# MEM[(const char *)_38],
	movq	%rsi, %r9	#,
# util.c:53:         if (uriencode_map[(unsigned char) src[x]] != NULL) {
	movq	(%r10,%rsi,8), %rsi	# uriencode_map[_4], _5
# util.c:53:         if (uriencode_map[(unsigned char) src[x]] != NULL) {
	testq	%rsi, %rsi	# _5
	jne	.L38	#,
# util.c:52:     for (x = 0; x < srclen; x++) {
	incq	%rdi	# ivtmp.82
# util.c:57:             dst[d] = src[x];
	movb	%r9b, (%rax,%rcx)	# _2, *_45
# util.c:58:             d++;
	incq	%rcx	# d
# util.c:52:     for (x = 0; x < srclen; x++) {
	cmpq	%rdi, %rdx	# ivtmp.82, _36
	jne	.L34	#,
.L37:
# util.c:61:     return dst+d;
	addq	%rcx, %rax	# d, <retval>
.L30:
# util.c:62: }
	ret	
	.cfi_endproc
.LFE58:
	.size	uriencode_p, .-uriencode_p
	.section	.rodata.str1.1
.LC1:
	.string	"util.c"
.LC2:
	.string	"out != NULL"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB3:
	.text
.LHOTB3:
	.p2align 4
	.globl	safe_strtoull
	.type	safe_strtoull, @function
safe_strtoull:
.LFB59:
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
# util.c:67: bool safe_strtoull(const char *str, uint64_t *out) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp121
	movq	%rax, 24(%rsp)	# tmp121, D.5684
	xorl	%eax, %eax	# tmp121
# util.c:68:     assert(out != NULL);
	testq	%rsi, %rsi	# out
	je	.L50	#,
	movq	%rsi, %rbp	# out, out
	movq	%rdi, %rbx	# str, str
# util.c:69:     errno = 0;
	call	__errno_location@PLT	#
# util.c:72:     unsigned long long ull = strtoull(str, &endptr, 10);
	leaq	16(%rsp), %rsi	#, tmp125
# util.c:69:     errno = 0;
	movq	%rax, %r13	#, _1
# util.c:69:     errno = 0;
	movl	$0, (%rax)	#, *_1
# util.c:72:     unsigned long long ull = strtoull(str, &endptr, 10);
	movl	$10, %edx	#,
# util.c:70:     *out = 0;
	movq	$0, 0(%rbp)	#, *out_18(D)
# util.c:72:     unsigned long long ull = strtoull(str, &endptr, 10);
	movq	%rbx, %rdi	# str,
	call	__isoc23_strtoull@PLT	#
# util.c:74:         return false;
	xorl	%ecx, %ecx	# <retval>
# util.c:73:     if ((errno == ERANGE) || (str == endptr)) {
	cmpl	$34, 0(%r13)	#, *_1
# util.c:72:     unsigned long long ull = strtoull(str, &endptr, 10);
	movq	%rax, %r12	#, ull
# util.c:73:     if ((errno == ERANGE) || (str == endptr)) {
	je	.L39	#,
# util.c:73:     if ((errno == ERANGE) || (str == endptr)) {
	movq	16(%rsp), %r13	# endptr, endptr.1_3
# util.c:73:     if ((errno == ERANGE) || (str == endptr)) {
	cmpq	%rbx, %r13	# str, endptr.1_3
	je	.L39	#,
# util.c:77:     if (xisspace(*endptr) || (*endptr == '\0' && endptr != str)) {
	call	__ctype_b_loc@PLT	#
# util.c:77:     if (xisspace(*endptr) || (*endptr == '\0' && endptr != str)) {
	movzbl	0(%r13), %esi	# *endptr.1_3,
	movq	(%rax), %rcx	# *_4, *_4
# util.c:77:     if (xisspace(*endptr) || (*endptr == '\0' && endptr != str)) {
	movzbl	1(%rcx,%rsi,2), %ecx	# *_10, *_10
	shrb	$5, %cl	#, tmp130
	andl	$1, %ecx	#, _30
# util.c:77:     if (xisspace(*endptr) || (*endptr == '\0' && endptr != str)) {
	testb	%sil, %sil	# _6
	sete	%al	#, _29
	orb	%al, %cl	# _29, <retval>
	je	.L39	#,
# util.c:78:         if ((long long) ull < 0) {
	testq	%r12, %r12	# ull
	jns	.L42	#,
# util.c:82:             if (memchr(str, '-', endptr - str) != NULL) {
	movq	%r13, %rdx	# endptr.1_3, endptr.1_3
	movl	$45, %esi	#,
	movq	%rbx, %rdi	# str,
	movb	%cl, 15(%rsp)	# <retval>, %sfp
	subq	%rbx, %rdx	# str, endptr.1_3
	call	memchr@PLT	#
# util.c:82:             if (memchr(str, '-', endptr - str) != NULL) {
	movzbl	15(%rsp), %ecx	# %sfp, <retval>
	testq	%rax, %rax	# _15
	je	.L42	#,
# util.c:74:         return false;
	xorl	%ecx, %ecx	# <retval>
	.p2align 4
	.p2align 3
.L39:
# util.c:90: }
	movq	24(%rsp), %rax	# D.5684, tmp144
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp144
	jne	.L52	#,
	addq	$40, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movl	%ecx, %eax	# <retval>,
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
.L42:
	.cfi_restore_state
# util.c:86:         *out = ull;
	movq	%r12, 0(%rbp)	# ull, *out_18(D)
# util.c:87:         return true;
	jmp	.L39	#
.L52:
# util.c:90: }
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.type	safe_strtoull.cold, @function
safe_strtoull.cold:
.LFSB59:
.L50:
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -40
	.cfi_offset 6, -32
	.cfi_offset 12, -24
	.cfi_offset 13, -16
# util.c:68:     assert(out != NULL);
	leaq	__PRETTY_FUNCTION__.5(%rip), %rcx	#,
	movl	$68, %edx	#,
	leaq	.LC1(%rip), %rsi	#,
	leaq	.LC2(%rip), %rdi	#,
	call	__assert_fail@PLT	#
	.cfi_endproc
.LFE59:
	.text
	.size	safe_strtoull, .-safe_strtoull
	.section	.text.unlikely
	.size	safe_strtoull.cold, .-safe_strtoull.cold
.LCOLDE3:
	.text
.LHOTE3:
	.section	.text.unlikely
.LCOLDB4:
	.text
.LHOTB4:
	.p2align 4
	.globl	safe_strtoull_hex
	.type	safe_strtoull_hex, @function
safe_strtoull_hex:
.LFB60:
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
# util.c:97: bool safe_strtoull_hex(const char *str, uint64_t *out) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp121
	movq	%rax, 24(%rsp)	# tmp121, D.5692
	xorl	%eax, %eax	# tmp121
# util.c:98:     assert(out != NULL);
	testq	%rsi, %rsi	# out
	je	.L64	#,
	movq	%rsi, %rbp	# out, out
	movq	%rdi, %rbx	# str, str
# util.c:99:     errno = 0;
	call	__errno_location@PLT	#
# util.c:102:     unsigned long long ull = strtoull(str, &endptr, 16);
	leaq	16(%rsp), %rsi	#, tmp125
# util.c:99:     errno = 0;
	movq	%rax, %r13	#, _1
# util.c:99:     errno = 0;
	movl	$0, (%rax)	#, *_1
# util.c:102:     unsigned long long ull = strtoull(str, &endptr, 16);
	movl	$16, %edx	#,
# util.c:100:     *out = 0;
	movq	$0, 0(%rbp)	#, *out_18(D)
# util.c:102:     unsigned long long ull = strtoull(str, &endptr, 16);
	movq	%rbx, %rdi	# str,
	call	__isoc23_strtoull@PLT	#
# util.c:104:         return false;
	xorl	%ecx, %ecx	# <retval>
# util.c:103:     if ((errno == ERANGE) || (str == endptr)) {
	cmpl	$34, 0(%r13)	#, *_1
# util.c:102:     unsigned long long ull = strtoull(str, &endptr, 16);
	movq	%rax, %r12	#, ull
# util.c:103:     if ((errno == ERANGE) || (str == endptr)) {
	je	.L53	#,
# util.c:103:     if ((errno == ERANGE) || (str == endptr)) {
	movq	16(%rsp), %r13	# endptr, endptr.7_3
# util.c:103:     if ((errno == ERANGE) || (str == endptr)) {
	cmpq	%rbx, %r13	# str, endptr.7_3
	je	.L53	#,
# util.c:107:     if (xisspace(*endptr) || (*endptr == '\0' && endptr != str)) {
	call	__ctype_b_loc@PLT	#
# util.c:107:     if (xisspace(*endptr) || (*endptr == '\0' && endptr != str)) {
	movzbl	0(%r13), %esi	# *endptr.7_3,
	movq	(%rax), %rcx	# *_4, *_4
# util.c:107:     if (xisspace(*endptr) || (*endptr == '\0' && endptr != str)) {
	movzbl	1(%rcx,%rsi,2), %ecx	# *_10, *_10
	shrb	$5, %cl	#, tmp130
	andl	$1, %ecx	#, _30
# util.c:107:     if (xisspace(*endptr) || (*endptr == '\0' && endptr != str)) {
	testb	%sil, %sil	# _6
	sete	%al	#, _29
	orb	%al, %cl	# _29, <retval>
	je	.L53	#,
# util.c:108:         if ((long long) ull < 0) {
	testq	%r12, %r12	# ull
	jns	.L56	#,
# util.c:112:             if (memchr(str, '-', endptr - str) != NULL) {
	movq	%r13, %rdx	# endptr.7_3, endptr.7_3
	movl	$45, %esi	#,
	movq	%rbx, %rdi	# str,
	movb	%cl, 15(%rsp)	# <retval>, %sfp
	subq	%rbx, %rdx	# str, endptr.7_3
	call	memchr@PLT	#
# util.c:112:             if (memchr(str, '-', endptr - str) != NULL) {
	movzbl	15(%rsp), %ecx	# %sfp, <retval>
	testq	%rax, %rax	# _15
	je	.L56	#,
# util.c:104:         return false;
	xorl	%ecx, %ecx	# <retval>
	.p2align 4
	.p2align 3
.L53:
# util.c:120: }
	movq	24(%rsp), %rax	# D.5692, tmp144
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp144
	jne	.L66	#,
	addq	$40, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movl	%ecx, %eax	# <retval>,
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
.L56:
	.cfi_restore_state
# util.c:116:         *out = ull;
	movq	%r12, 0(%rbp)	# ull, *out_18(D)
# util.c:117:         return true;
	jmp	.L53	#
.L66:
# util.c:120: }
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.type	safe_strtoull_hex.cold, @function
safe_strtoull_hex.cold:
.LFSB60:
.L64:
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -40
	.cfi_offset 6, -32
	.cfi_offset 12, -24
	.cfi_offset 13, -16
# util.c:98:     assert(out != NULL);
	leaq	__PRETTY_FUNCTION__.4(%rip), %rcx	#,
	movl	$98, %edx	#,
	leaq	.LC1(%rip), %rsi	#,
	leaq	.LC2(%rip), %rdi	#,
	call	__assert_fail@PLT	#
	.cfi_endproc
.LFE60:
	.text
	.size	safe_strtoull_hex, .-safe_strtoull_hex
	.section	.text.unlikely
	.size	safe_strtoull_hex.cold, .-safe_strtoull_hex.cold
.LCOLDE4:
	.text
.LHOTE4:
	.section	.text.unlikely
.LCOLDB5:
	.text
.LHOTB5:
	.p2align 4
	.globl	safe_strtoll
	.type	safe_strtoll, @function
safe_strtoll:
.LFB61:
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
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 64
# util.c:122: bool safe_strtoll(const char *str, int64_t *out) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp117
	movq	%rax, 8(%rsp)	# tmp117, D.5696
	xorl	%eax, %eax	# tmp117
# util.c:123:     assert(out != NULL);
	testq	%rsi, %rsi	# out
	je	.L76	#,
	movq	%rsi, %rbx	# out, out
	movq	%rdi, %r12	# str, str
# util.c:124:     errno = 0;
	call	__errno_location@PLT	#
# util.c:127:     long long ll = strtoll(str, &endptr, 10);
	movq	%rsp, %rsi	#, tmp121
# util.c:124:     errno = 0;
	movl	$0, (%rax)	#, *_1
# util.c:127:     long long ll = strtoll(str, &endptr, 10);
	movl	$10, %edx	#,
# util.c:125:     *out = 0;
	movq	$0, (%rbx)	#, *out_14(D)
# util.c:127:     long long ll = strtoll(str, &endptr, 10);
	movq	%r12, %rdi	# str,
# util.c:124:     errno = 0;
	movq	%rax, %rbp	#, _1
# util.c:127:     long long ll = strtoll(str, &endptr, 10);
	call	__isoc23_strtoll@PLT	#
	movq	%rax, %r14	#, ll
# util.c:129:         return false;
	xorl	%eax, %eax	# <retval>
# util.c:128:     if ((errno == ERANGE) || (str == endptr)) {
	cmpl	$34, 0(%rbp)	#, *_1
	je	.L67	#,
# util.c:128:     if ((errno == ERANGE) || (str == endptr)) {
	movq	(%rsp), %rbp	# endptr, endptr.13_3
# util.c:128:     if ((errno == ERANGE) || (str == endptr)) {
	cmpq	%r12, %rbp	# str, endptr.13_3
	je	.L67	#,
# util.c:132:     if (xisspace(*endptr) || (*endptr == '\0' && endptr != str)) {
	call	__ctype_b_loc@PLT	#
# util.c:132:     if (xisspace(*endptr) || (*endptr == '\0' && endptr != str)) {
	movzbl	0(%rbp), %ecx	# *endptr.13_3,
	movq	(%rax), %rax	# *_4, *_4
# util.c:132:     if (xisspace(*endptr) || (*endptr == '\0' && endptr != str)) {
	movzbl	1(%rax,%rcx,2), %eax	# *_10, *_10
	shrb	$5, %al	#, tmp126
	andl	$1, %eax	#, _26
# util.c:132:     if (xisspace(*endptr) || (*endptr == '\0' && endptr != str)) {
	testb	%cl, %cl	# _6
	sete	%dl	#, _25
	orb	%dl, %al	# _25, <retval>
	je	.L67	#,
# util.c:133:         *out = ll;
	movq	%r14, (%rbx)	# ll, *out_14(D)
.L67:
# util.c:137: }
	movq	8(%rsp), %rdx	# D.5696, tmp141
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp141
	jne	.L78	#,
	addq	$24, %rsp	#,
	.cfi_remember_state
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
.L78:
	.cfi_restore_state
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.type	safe_strtoll.cold, @function
safe_strtoll.cold:
.LFSB61:
.L76:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -40
	.cfi_offset 6, -32
	.cfi_offset 12, -24
	.cfi_offset 14, -16
# util.c:123:     assert(out != NULL);
	leaq	__PRETTY_FUNCTION__.3(%rip), %rcx	#,
	movl	$123, %edx	#,
	leaq	.LC1(%rip), %rsi	#,
	leaq	.LC2(%rip), %rdi	#,
	call	__assert_fail@PLT	#
	.cfi_endproc
.LFE61:
	.text
	.size	safe_strtoll, .-safe_strtoll
	.section	.text.unlikely
	.size	safe_strtoll.cold, .-safe_strtoll.cold
.LCOLDE5:
	.text
.LHOTE5:
	.section	.rodata.str1.1
.LC6:
	.string	"out"
.LC7:
	.string	"str"
	.section	.text.unlikely
.LCOLDB8:
	.text
.LHOTB8:
	.p2align 4
	.globl	safe_strtoul
	.type	safe_strtoul, @function
safe_strtoul:
.LFB62:
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
# util.c:139: bool safe_strtoul(const char *str, uint32_t *out) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp122
	movq	%rax, 24(%rsp)	# tmp122, D.5700
	xorl	%eax, %eax	# tmp122
# util.c:140:     char *endptr = NULL;
	movq	$0, 16(%rsp)	#, endptr
# util.c:142:     assert(out);
	testq	%rsi, %rsi	# out
	je	.L91	#,
	movq	%rdi, %rbx	# str, str
# util.c:143:     assert(str);
	testq	%rdi, %rdi	# str
	je	.L92	#,
# util.c:144:     *out = 0;
	movl	$0, (%rsi)	#, *out_21(D)
	movq	%rsi, %rbp	# out, out
# util.c:145:     errno = 0;
	call	__errno_location@PLT	#
# util.c:147:     l = strtoul(str, &endptr, 10);
	leaq	16(%rsp), %rsi	#, tmp129
	movl	$10, %edx	#,
	movq	%rbx, %rdi	# str,
# util.c:145:     errno = 0;
	movq	%rax, %r13	#, _1
# util.c:145:     errno = 0;
	movl	$0, (%rax)	#, *_1
# util.c:147:     l = strtoul(str, &endptr, 10);
	call	__isoc23_strtoul@PLT	#
# util.c:149:         return false;
	xorl	%ecx, %ecx	# <retval>
# util.c:148:     if ((errno == ERANGE) || (str == endptr)) {
	cmpl	$34, 0(%r13)	#, *_1
# util.c:147:     l = strtoul(str, &endptr, 10);
	movq	%rax, %r12	#, l
# util.c:148:     if ((errno == ERANGE) || (str == endptr)) {
	je	.L79	#,
# util.c:148:     if ((errno == ERANGE) || (str == endptr)) {
	movq	16(%rsp), %r13	# endptr, endptr.17_3
# util.c:148:     if ((errno == ERANGE) || (str == endptr)) {
	cmpq	%rbx, %r13	# str, endptr.17_3
	je	.L79	#,
# util.c:152:     if (xisspace(*endptr) || (*endptr == '\0' && endptr != str)) {
	call	__ctype_b_loc@PLT	#
# util.c:152:     if (xisspace(*endptr) || (*endptr == '\0' && endptr != str)) {
	movzbl	0(%r13), %esi	# *endptr.17_3,
	movq	(%rax), %rcx	# *_4, *_4
# util.c:152:     if (xisspace(*endptr) || (*endptr == '\0' && endptr != str)) {
	movzbl	1(%rcx,%rsi,2), %ecx	# *_10, *_10
	shrb	$5, %cl	#, tmp134
	andl	$1, %ecx	#, _33
# util.c:152:     if (xisspace(*endptr) || (*endptr == '\0' && endptr != str)) {
	testb	%sil, %sil	# _6
	sete	%al	#, _32
	orb	%al, %cl	# _32, <retval>
	je	.L79	#,
# util.c:153:         if ((long) l < 0) {
	testq	%r12, %r12	# l
	jns	.L83	#,
# util.c:157:             if (memchr(str, '-', endptr - str) != NULL) {
	movq	%r13, %rdx	# endptr.17_3, endptr.17_3
	movl	$45, %esi	#,
	movq	%rbx, %rdi	# str,
	movb	%cl, 15(%rsp)	# <retval>, %sfp
	subq	%rbx, %rdx	# str, endptr.17_3
	call	memchr@PLT	#
# util.c:157:             if (memchr(str, '-', endptr - str) != NULL) {
	movzbl	15(%rsp), %ecx	# %sfp, <retval>
	testq	%rax, %rax	# _15
	je	.L83	#,
# util.c:149:         return false;
	xorl	%ecx, %ecx	# <retval>
	.p2align 4
	.p2align 3
.L79:
# util.c:166: }
	movq	24(%rsp), %rax	# D.5700, tmp148
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp148
	jne	.L94	#,
	addq	$40, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	movl	%ecx, %eax	# <retval>,
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
.L83:
	.cfi_restore_state
# util.c:161:         *out = l;
	movl	%r12d, 0(%rbp)	# l, *out_21(D)
# util.c:162:         return true;
	jmp	.L79	#
.L94:
# util.c:166: }
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.type	safe_strtoul.cold, @function
safe_strtoul.cold:
.LFSB62:
.L92:
	.cfi_def_cfa_offset 80
	.cfi_offset 3, -40
	.cfi_offset 6, -32
	.cfi_offset 12, -24
	.cfi_offset 13, -16
# util.c:143:     assert(str);
	leaq	__PRETTY_FUNCTION__.2(%rip), %rcx	#,
	movl	$143, %edx	#,
	leaq	.LC1(%rip), %rsi	#,
	leaq	.LC7(%rip), %rdi	#,
	call	__assert_fail@PLT	#
.L91:
# util.c:142:     assert(out);
	leaq	__PRETTY_FUNCTION__.2(%rip), %rcx	#,
	movl	$142, %edx	#,
	leaq	.LC1(%rip), %rsi	#,
	leaq	.LC6(%rip), %rdi	#,
	call	__assert_fail@PLT	#
	.cfi_endproc
.LFE62:
	.text
	.size	safe_strtoul, .-safe_strtoul
	.section	.text.unlikely
	.size	safe_strtoul.cold, .-safe_strtoul.cold
.LCOLDE8:
	.text
.LHOTE8:
	.section	.text.unlikely
.LCOLDB9:
	.text
.LHOTB9:
	.p2align 4
	.globl	safe_strtol
	.type	safe_strtol, @function
safe_strtol:
.LFB63:
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
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$24, %rsp	#,
	.cfi_def_cfa_offset 64
# util.c:168: bool safe_strtol(const char *str, int32_t *out) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp118
	movq	%rax, 8(%rsp)	# tmp118, D.5706
	xorl	%eax, %eax	# tmp118
# util.c:169:     assert(out != NULL);
	testq	%rsi, %rsi	# out
	je	.L104	#,
	movq	%rsi, %rbx	# out, out
	movq	%rdi, %r12	# str, str
# util.c:170:     errno = 0;
	call	__errno_location@PLT	#
# util.c:173:     long l = strtol(str, &endptr, 10);
	movq	%rsp, %rsi	#, tmp122
# util.c:170:     errno = 0;
	movl	$0, (%rax)	#, *_1
# util.c:173:     long l = strtol(str, &endptr, 10);
	movl	$10, %edx	#,
# util.c:171:     *out = 0;
	movl	$0, (%rbx)	#, *out_15(D)
# util.c:173:     long l = strtol(str, &endptr, 10);
	movq	%r12, %rdi	# str,
# util.c:170:     errno = 0;
	movq	%rax, %rbp	#, _1
# util.c:173:     long l = strtol(str, &endptr, 10);
	call	__isoc23_strtol@PLT	#
	movq	%rax, %r14	#, l
# util.c:175:         return false;
	xorl	%eax, %eax	# <retval>
# util.c:174:     if ((errno == ERANGE) || (str == endptr)) {
	cmpl	$34, 0(%rbp)	#, *_1
	je	.L95	#,
# util.c:174:     if ((errno == ERANGE) || (str == endptr)) {
	movq	(%rsp), %rbp	# endptr, endptr.23_3
# util.c:174:     if ((errno == ERANGE) || (str == endptr)) {
	cmpq	%r12, %rbp	# str, endptr.23_3
	je	.L95	#,
# util.c:178:     if (xisspace(*endptr) || (*endptr == '\0' && endptr != str)) {
	call	__ctype_b_loc@PLT	#
# util.c:178:     if (xisspace(*endptr) || (*endptr == '\0' && endptr != str)) {
	movzbl	0(%rbp), %ecx	# *endptr.23_3,
	movq	(%rax), %rax	# *_4, *_4
# util.c:178:     if (xisspace(*endptr) || (*endptr == '\0' && endptr != str)) {
	movzbl	1(%rax,%rcx,2), %eax	# *_10, *_10
	shrb	$5, %al	#, tmp127
	andl	$1, %eax	#, _27
# util.c:178:     if (xisspace(*endptr) || (*endptr == '\0' && endptr != str)) {
	testb	%cl, %cl	# _6
	sete	%dl	#, _26
	orb	%dl, %al	# _26, <retval>
	je	.L95	#,
# util.c:179:         *out = l;
	movl	%r14d, (%rbx)	# l, *out_15(D)
.L95:
# util.c:183: }
	movq	8(%rsp), %rdx	# D.5706, tmp142
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp142
	jne	.L106	#,
	addq	$24, %rsp	#,
	.cfi_remember_state
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
.L106:
	.cfi_restore_state
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.type	safe_strtol.cold, @function
safe_strtol.cold:
.LFSB63:
.L104:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -40
	.cfi_offset 6, -32
	.cfi_offset 12, -24
	.cfi_offset 14, -16
# util.c:169:     assert(out != NULL);
	leaq	__PRETTY_FUNCTION__.1(%rip), %rcx	#,
	movl	$169, %edx	#,
	leaq	.LC1(%rip), %rsi	#,
	leaq	.LC2(%rip), %rdi	#,
	call	__assert_fail@PLT	#
	.cfi_endproc
.LFE63:
	.text
	.size	safe_strtol, .-safe_strtol
	.section	.text.unlikely
	.size	safe_strtol.cold, .-safe_strtol.cold
.LCOLDE9:
	.text
.LHOTE9:
	.section	.text.unlikely
.LCOLDB11:
	.text
.LHOTB11:
	.p2align 4
	.globl	safe_strtod
	.type	safe_strtod, @function
safe_strtod:
.LFB64:
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
# util.c:185: bool safe_strtod(const char *str, double *out) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp117
	movq	%rax, 24(%rsp)	# tmp117, D.5710
	xorl	%eax, %eax	# tmp117
# util.c:186:     assert(out != NULL);
	testq	%rsi, %rsi	# out
	je	.L116	#,
	movq	%rsi, %rbx	# out, out
	movq	%rdi, %r12	# str, str
# util.c:187:     errno = 0;
	call	__errno_location@PLT	#
# util.c:190:     double d = strtod(str, &endptr);
	leaq	16(%rsp), %rsi	#, tmp122
# util.c:187:     errno = 0;
	movq	%rax, %rbp	#, _1
# util.c:187:     errno = 0;
	movl	$0, (%rax)	#, *_1
# util.c:190:     double d = strtod(str, &endptr);
	movq	%r12, %rdi	# str,
# util.c:188:     *out = 0;
	movq	$0x000000000, (%rbx)	#, *out_14(D)
# util.c:190:     double d = strtod(str, &endptr);
	call	strtod@PLT	#
# util.c:192:         return false;
	xorl	%eax, %eax	# <retval>
# util.c:191:     if ((errno == ERANGE) || (str == endptr)) {
	cmpl	$34, 0(%rbp)	#, *_1
	je	.L107	#,
# util.c:191:     if ((errno == ERANGE) || (str == endptr)) {
	movq	16(%rsp), %rbp	# endptr, endptr.27_3
# util.c:191:     if ((errno == ERANGE) || (str == endptr)) {
	cmpq	%r12, %rbp	# str, endptr.27_3
	je	.L107	#,
# util.c:195:     if (xisspace(*endptr) || (*endptr == '\0' && endptr != str)) {
	vmovsd	%xmm0, 8(%rsp)	# d, %sfp
	call	__ctype_b_loc@PLT	#
# util.c:195:     if (xisspace(*endptr) || (*endptr == '\0' && endptr != str)) {
	movzbl	0(%rbp), %ecx	# *endptr.27_3,
	movq	(%rax), %rax	# *_4, *_4
# util.c:195:     if (xisspace(*endptr) || (*endptr == '\0' && endptr != str)) {
	movzbl	1(%rax,%rcx,2), %eax	# *_10, *_10
	shrb	$5, %al	#, tmp127
	andl	$1, %eax	#, _26
# util.c:195:     if (xisspace(*endptr) || (*endptr == '\0' && endptr != str)) {
	testb	%cl, %cl	# _6
	sete	%dl	#, _25
	orb	%dl, %al	# _25, <retval>
	je	.L107	#,
# util.c:196:         *out = d;
	vmovsd	8(%rsp), %xmm0	# %sfp, d
	vmovsd	%xmm0, (%rbx)	# d, *out_14(D)
.L107:
# util.c:200: }
	movq	24(%rsp), %rdx	# D.5710, tmp142
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp142
	jne	.L118	#,
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
.L118:
	.cfi_restore_state
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.type	safe_strtod.cold, @function
safe_strtod.cold:
.LFSB64:
.L116:
	.cfi_def_cfa_offset 64
	.cfi_offset 3, -32
	.cfi_offset 6, -24
	.cfi_offset 12, -16
# util.c:186:     assert(out != NULL);
	leaq	__PRETTY_FUNCTION__.0(%rip), %rcx	#,
	movl	$186, %edx	#,
	leaq	.LC1(%rip), %rsi	#,
	leaq	.LC2(%rip), %rdi	#,
	call	__assert_fail@PLT	#
	.cfi_endproc
.LFE64:
	.text
	.size	safe_strtod, .-safe_strtod
	.section	.text.unlikely
	.size	safe_strtod.cold, .-safe_strtod.cold
.LCOLDE11:
	.text
.LHOTE11:
	.p2align 4
	.globl	safe_strcpy
	.type	safe_strcpy, @function
safe_strcpy:
.LFB65:
	.cfi_startproc
	endbr64	
# util.c:208: bool safe_strcpy(char *dst, const char *src, const size_t dstmax) {
	movq	%rsi, %rcx	# src, src
# util.c:211:    for (x = 0; x < dstmax - 1 && src[x] != '\0'; x++) {
	cmpq	$1, %rdx	#, dstmax
	je	.L121	#,
# util.c:211:    for (x = 0; x < dstmax - 1 && src[x] != '\0'; x++) {
	leaq	-1(%rdx), %r8	#, _20
	subq	$2, %rdx	#, _28
	cmpq	$61, %rdx	#, _28
	jbe	.L140	#,
	leaq	-1(%rdi), %rax	#, _158
	subq	%rsi, %rax	# src, _33
	cmpq	$30, %rax	#, _33
	jbe	.L140	#,
	negq	%rsi	# _165
	andl	$31, %esi	#, prolog_loop_niters.107
	leaq	32(%rsi), %rax	#, _75
	cmpq	%rax, %rdx	# _75, _28
	jb	.L141	#,
	testq	%rsi, %rsi	# prolog_loop_niters.107
	je	.L142	#,
# util.c:211:    for (x = 0; x < dstmax - 1 && src[x] != '\0'; x++) {
	xorl	%eax, %eax	# x
	jmp	.L136	#
	.p2align 5
	.p2align 4
	.p2align 3
.L135:
# util.c:212:         dst[x] = src[x];
	movb	%dl, (%rdi,%rax)	# _52, MEM[(char *)dst_14(D) + x_49 * 1]
# util.c:211:    for (x = 0; x < dstmax - 1 && src[x] != '\0'; x++) {
	incq	%rax	# x
	cmpq	%rax, %rsi	# x, prolog_loop_niters.107
	je	.L146	#,
.L136:
# util.c:211:    for (x = 0; x < dstmax - 1 && src[x] != '\0'; x++) {
	movzbl	(%rcx,%rax), %edx	# MEM[(const char *)src_13(D) + x_49 * 1], _52
# util.c:211:    for (x = 0; x < dstmax - 1 && src[x] != '\0'; x++) {
	testb	%dl, %dl	# _52
	jne	.L135	#,
.L124:
# util.c:211:    for (x = 0; x < dstmax - 1 && src[x] != '\0'; x++) {
	addq	%rax, %rcx	# tmp.111, src
# util.c:212:         dst[x] = src[x];
	addq	%rax, %rdi	# tmp.111, dst
.L121:
# util.c:215:    dst[x] = '\0';
	movb	$0, (%rdi)	#, *prephitmp_9
# util.c:217:    if (src[x] == '\0') {
	cmpb	$0, (%rcx)	#, *prephitmp_26
	sete	%al	#, _18
# util.c:222: }
	ret	
	.p2align 4
	.p2align 3
.L146:
# util.c:211:    for (x = 0; x < dstmax - 1 && src[x] != '\0'; x++) {
	vmovq	%rsi, %xmm5	# prolog_loop_niters.107, x
.L134:
	movq	%r8, %r10	# _20, niters.108
	leaq	(%rcx,%rsi), %rdx	#, vectp_src.113
	vpbroadcastq	%xmm5, %ymm0	# x, _105
# util.c:211:    for (x = 0; x < dstmax - 1 && src[x] != '\0'; x++) {
	vpbroadcastq	.LC16(%rip), %ymm3	#, tmp162
	subq	%rsi, %r10	# prolog_loop_niters.107, niters.108
	vpaddq	.LC14(%rip), %ymm0, %ymm0	#, _105, vect_vec_iv_.117
	addq	%rdi, %rsi	# dst, vectp_dst.116
	xorl	%eax, %eax	# ivtmp.137
	movq	%r10, %r9	# niters.108, _156
# util.c:211:    for (x = 0; x < dstmax - 1 && src[x] != '\0'; x++) {
	vpxor	%xmm4, %xmm4, %xmm4	# tmp154
	andq	$-32, %r9	#, _156
	jmp	.L122	#
	.p2align 6
	.p2align 4
	.p2align 3
.L137:
# util.c:212:         dst[x] = src[x];
	vmovdqu	%ymm2, (%rsi,%rax)	# vect__4.114, MEM <vector(32) char> [(char *)vectp_dst.116_85 + ivtmp.137_154 * 1]
	addq	$32, %rax	#, ivtmp.137
	cmpq	%r9, %rax	# _156, ivtmp.137
	je	.L147	#,
	vpaddq	%ymm3, %ymm0, %ymm0	# tmp162, vect_vec_iv_.117, vect_vec_iv_.117
.L122:
# util.c:211:    for (x = 0; x < dstmax - 1 && src[x] != '\0'; x++) {
	vmovdqa	(%rdx,%rax), %ymm2	# MEM <const vector(32) char> [(const char *)vectp_src.113_81 + ivtmp.137_154 * 1], vect__4.114
# util.c:211:    for (x = 0; x < dstmax - 1 && src[x] != '\0'; x++) {
	vpcmpeqb	%ymm4, %ymm2, %ymm1	# tmp154, vect__4.114, tmp155
	vptest	%ymm1, %ymm1	# tmp155, tmp155
	je	.L137	#,
	vmovq	%xmm0, %rax	# tmp158, tmp.111
	vzeroupper
	jmp	.L125	#
	.p2align 5
	.p2align 4
	.p2align 3
.L148:
# util.c:212:         dst[x] = src[x];
	movb	%dl, (%rdi,%rax)	# _64, MEM[(char *)dst_14(D) + x_61 * 1]
# util.c:211:    for (x = 0; x < dstmax - 1 && src[x] != '\0'; x++) {
	incq	%rax	# tmp.111
# util.c:211:    for (x = 0; x < dstmax - 1 && src[x] != '\0'; x++) {
	cmpq	%r8, %rax	# _20, tmp.111
	jnb	.L130	#,
.L125:
# util.c:211:    for (x = 0; x < dstmax - 1 && src[x] != '\0'; x++) {
	movzbl	(%rcx,%rax), %edx	# MEM[(const char *)src_13(D) + x_61 * 1], _64
# util.c:211:    for (x = 0; x < dstmax - 1 && src[x] != '\0'; x++) {
	testb	%dl, %dl	# _64
	jne	.L148	#,
	jmp	.L124	#
.L123:
# util.c:211:    for (x = 0; x < dstmax - 1 && src[x] != '\0'; x++) {
	vpbroadcastq	.LC15(%rip), %ymm1	#, tmp143
	vpaddq	%ymm1, %ymm0, %ymm0	# tmp143, vect_vec_iv_.117, vect_x_16.120_157
	vextracti128	$0x1, %ymm0, %xmm0	# vect_x_16.120_157, tmp145
	vpextrq	$1, %xmm0, %rax	# tmp145, tmp.111
	vzeroupper
.L130:
# util.c:215:    dst[x] = '\0';
	addq	%rax, %rdi	# tmp.111, dst
# util.c:217:    if (src[x] == '\0') {
	addq	%rax, %rcx	# tmp.111, src
# util.c:215:    dst[x] = '\0';
	movb	$0, (%rdi)	#, *prephitmp_9
# util.c:217:    if (src[x] == '\0') {
	cmpb	$0, (%rcx)	#, *prephitmp_26
	sete	%al	#, _18
# util.c:222: }
	ret	
	.p2align 4
	.p2align 3
.L147:
	cmpq	%rax, %r10	# ivtmp.137, niters.108
	je	.L123	#,
	vmovq	%xmm5, %rsi	# x, x
	addq	%rsi, %rax	# x, tmp.111
	vzeroupper
	jmp	.L125	#
	.p2align 4
	.p2align 3
.L140:
# util.c:211:    for (x = 0; x < dstmax - 1 && src[x] != '\0'; x++) {
	xorl	%eax, %eax	# tmp.111
	jmp	.L129	#
	.p2align 5
	.p2align 4
	.p2align 3
.L127:
# util.c:212:         dst[x] = src[x];
	movb	%dl, (%rdi,%rax)	# _39, MEM[(char *)dst_14(D) + x_36 * 1]
# util.c:211:    for (x = 0; x < dstmax - 1 && src[x] != '\0'; x++) {
	incq	%rax	# tmp.111
# util.c:211:    for (x = 0; x < dstmax - 1 && src[x] != '\0'; x++) {
	cmpq	%rax, %r8	# tmp.111, _20
	je	.L130	#,
.L129:
# util.c:211:    for (x = 0; x < dstmax - 1 && src[x] != '\0'; x++) {
	movzbl	(%rcx,%rax), %edx	# MEM[(const char *)src_13(D) + x_36 * 1], _39
# util.c:211:    for (x = 0; x < dstmax - 1 && src[x] != '\0'; x++) {
	testb	%dl, %dl	# _39
	jne	.L127	#,
	jmp	.L124	#
.L141:
# util.c:211:    for (x = 0; x < dstmax - 1 && src[x] != '\0'; x++) {
	xorl	%eax, %eax	# tmp.111
	jmp	.L125	#
.L142:
	vpxor	%xmm5, %xmm5, %xmm5	# x
	jmp	.L134	#
	.cfi_endproc
.LFE65:
	.size	safe_strcpy, .-safe_strcpy
	.p2align 4
	.globl	safe_memcmp
	.type	safe_memcmp, @function
safe_memcmp:
.LFB66:
	.cfi_startproc
	endbr64	
# util.c:230:     for (x = 0; x < len; x++) {
	testq	%rdx, %rdx	# len
	je	.L152	#,
	addq	%rdi, %rdx	# ivtmp.154, _25
# util.c:227:     int delta = 0;
	xorl	%ecx, %ecx	# delta
	.p2align 5
	.p2align 4
	.p2align 3
.L151:
# util.c:231:         delta |= ua[x] ^ ub[x];
	movzbl	(%rdi), %eax	# *_1, _2
# util.c:231:         delta |= ua[x] ^ ub[x];
	movzbl	(%rsi), %r8d	# *_3, _4
# util.c:230:     for (x = 0; x < len; x++) {
	incq	%rdi	# ivtmp.154
	incq	%rsi	# ivtmp.155
# util.c:231:         delta |= ua[x] ^ ub[x];
	xorl	%r8d, %eax	# _4, _5
	movzbl	%al, %eax	# _5, _13
# util.c:231:         delta |= ua[x] ^ ub[x];
	orl	%eax, %ecx	# _13, delta
# util.c:230:     for (x = 0; x < len; x++) {
	cmpq	%rdx, %rdi	# _25, ivtmp.154
	jne	.L151	#,
# util.c:234:     if (delta == 0) {
	testl	%ecx, %ecx	# delta
	sete	%al	#, <retval>
	ret	
	.p2align 4
	.p2align 3
.L152:
# util.c:230:     for (x = 0; x < len; x++) {
	movl	$1, %eax	#, <retval>
# util.c:239: }
	ret	
	.cfi_endproc
.LFE66:
	.size	safe_memcmp, .-safe_memcmp
	.section	.text.unlikely
	.globl	vperror
	.type	vperror, @function
vperror:
.LFB67:
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
	movq	%rdi, %r13	# fmt, fmt
	pushq	%rbx	#
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$1240, %rsp	#,
	.cfi_def_cfa_offset 1280
	movq	%rsi, 1064(%rsp)	#,
	movq	%rdx, 1072(%rsp)	#,
	movq	%rcx, 1080(%rsp)	#,
	movq	%r8, 1088(%rsp)	#,
	movq	%r9, 1096(%rsp)	#,
	testb	%al, %al	#
	je	.L155	#,
	vmovaps	%xmm0, 1104(%rsp)	#,
	vmovaps	%xmm1, 1120(%rsp)	#,
	vmovaps	%xmm2, 1136(%rsp)	#,
	vmovaps	%xmm3, 1152(%rsp)	#,
	vmovaps	%xmm4, 1168(%rsp)	#,
	vmovaps	%xmm5, 1184(%rsp)	#,
	vmovaps	%xmm6, 1200(%rsp)	#,
	vmovaps	%xmm7, 1216(%rsp)	#,
.L155:
# util.c:241: void vperror(const char *fmt, ...) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp103
	movq	%rax, 1048(%rsp)	# tmp103, D.5769
	xorl	%eax, %eax	# tmp103
# util.c:242:     int old_errno = errno;
	call	__errno_location@PLT	#
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:100:   return __builtin___vsnprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	movq	%rsp, %r9	#,
	movq	%r13, %r8	# fmt,
	movl	$1024, %ecx	#,
# util.c:242:     int old_errno = errno;
	movl	(%rax), %r12d	# *_1, old_errno
# util.c:242:     int old_errno = errno;
	movq	%rax, %rbp	#, _1
# util.c:246:     va_start(ap, fmt);
	leaq	1280(%rsp), %rax	#, tmp117
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:100:   return __builtin___vsnprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	movl	$2, %edx	#,
# util.c:246:     va_start(ap, fmt);
	movq	%rax, 8(%rsp)	# tmp117, MEM[(struct [1] *)&ap].overflow_arg_area
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:100:   return __builtin___vsnprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	movl	$1024, %esi	#,
# util.c:246:     va_start(ap, fmt);
	leaq	1056(%rsp), %rax	#, tmp118
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:100:   return __builtin___vsnprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	leaq	24(%rsp), %rdi	#,
# util.c:246:     va_start(ap, fmt);
	movl	$8, (%rsp)	#, MEM[(struct [1] *)&ap].gp_offset
	movl	$48, 4(%rsp)	#, MEM[(struct [1] *)&ap].fp_offset
	movq	%rax, 16(%rsp)	# tmp118, MEM[(struct [1] *)&ap].reg_save_area
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:100:   return __builtin___vsnprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
	call	__vsnprintf_chk@PLT	#
# util.c:247:     if (vsnprintf(buf, sizeof(buf), fmt, ap) == -1) {
	incl	%eax	# _13
	jne	.L156	#,
# util.c:248:         buf[sizeof(buf) - 1] = '\0';
	movb	$0, 1047(%rsp)	#, buf[1023]
.L156:
# util.c:252:     errno = old_errno;
	movl	%r12d, 0(%rbp)	# old_errno, *_1
# util.c:254:     perror(buf);
	leaq	24(%rsp), %rdi	#,
	call	perror@PLT	#
# util.c:255: }
	movq	1048(%rsp), %rax	# D.5769, tmp115
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp115
	je	.L158	#,
	call	__stack_chk_fail@PLT	#
.L158:
	addq	$1240, %rsp	#,
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
	.cfi_endproc
.LFE67:
	.size	vperror, .-vperror
	.text
	.p2align 4
	.globl	ntohll
	.type	ntohll, @function
ntohll:
.LFB73:
	.cfi_startproc
	endbr64	
	movq	%rdi, %rdx	# val, _81
	movq	%rdi, %rax	# val, val
	salq	$8, %rdx	#, _81
	movzbl	%ah, %eax	# val, _29
	movzwl	%dx, %edx	# _81, _28
	orq	%rax, %rdx	# _29, _30
	movq	%rdi, %rax	# val, in_32
	shrq	$16, %rax	#, in_32
	salq	$8, %rdx	#, _38
	movzbl	%al, %eax	# in_32, _39
	orq	%rax, %rdx	# _39, _40
	movq	%rdi, %rax	# val, in_42
	shrq	$24, %rax	#, in_42
	salq	$8, %rdx	#, _48
	movzbl	%al, %eax	# in_42, _49
	orq	%rax, %rdx	# _49, _50
	movq	%rdi, %rax	# val, in_52
	shrq	$32, %rax	#, in_52
	salq	$8, %rdx	#, _58
	movzbl	%al, %eax	# in_52, _59
	orq	%rax, %rdx	# _59, _60
	movq	%rdi, %rax	# val, in_62
	shrq	$40, %rax	#, in_62
	salq	$8, %rdx	#, _68
	movzbl	%al, %eax	# in_62, _69
	orq	%rax, %rdx	# _69, _70
	movq	%rdi, %rax	# val, in_72
	shrq	$48, %rax	#, in_72
	salq	$8, %rdx	#, _78
	movzbl	%al, %eax	# in_72, _79
	orq	%rax, %rdx	# _79, _80
	shrdq	$56, %rdx, %rdi	#, _80, tmp156
	movq	%rdi, %rax	# tmp156, _9
	ret	
	.cfi_endproc
.LFE73:
	.size	ntohll, .-ntohll
	.p2align 4
	.globl	htonll
	.type	htonll, @function
htonll:
.LFB70:
	.cfi_startproc
	endbr64	
# util.c:265:         rv = (rv << 8) | (in & 0xff);
	movq	%rdi, %rdx	# val, _81
# util.c:265:         rv = (rv << 8) | (in & 0xff);
	movq	%rdi, %rax	# val, val
# util.c:265:         rv = (rv << 8) | (in & 0xff);
	salq	$8, %rdx	#, _81
# util.c:265:         rv = (rv << 8) | (in & 0xff);
	movzbl	%ah, %eax	# val, _29
# util.c:265:         rv = (rv << 8) | (in & 0xff);
	movzwl	%dx, %edx	# _81, _28
# util.c:265:         rv = (rv << 8) | (in & 0xff);
	orq	%rax, %rdx	# _29, _30
# util.c:266:         in >>= 8;
	movq	%rdi, %rax	# val, in_32
	shrq	$16, %rax	#, in_32
# util.c:265:         rv = (rv << 8) | (in & 0xff);
	salq	$8, %rdx	#, _38
# util.c:265:         rv = (rv << 8) | (in & 0xff);
	movzbl	%al, %eax	# in_32, _39
# util.c:265:         rv = (rv << 8) | (in & 0xff);
	orq	%rax, %rdx	# _39, _40
# util.c:266:         in >>= 8;
	movq	%rdi, %rax	# val, in_42
	shrq	$24, %rax	#, in_42
# util.c:265:         rv = (rv << 8) | (in & 0xff);
	salq	$8, %rdx	#, _48
# util.c:265:         rv = (rv << 8) | (in & 0xff);
	movzbl	%al, %eax	# in_42, _49
# util.c:265:         rv = (rv << 8) | (in & 0xff);
	orq	%rax, %rdx	# _49, _50
# util.c:266:         in >>= 8;
	movq	%rdi, %rax	# val, in_52
	shrq	$32, %rax	#, in_52
# util.c:265:         rv = (rv << 8) | (in & 0xff);
	salq	$8, %rdx	#, _58
# util.c:265:         rv = (rv << 8) | (in & 0xff);
	movzbl	%al, %eax	# in_52, _59
# util.c:265:         rv = (rv << 8) | (in & 0xff);
	orq	%rax, %rdx	# _59, _60
# util.c:266:         in >>= 8;
	movq	%rdi, %rax	# val, in_62
	shrq	$40, %rax	#, in_62
# util.c:265:         rv = (rv << 8) | (in & 0xff);
	salq	$8, %rdx	#, _68
# util.c:265:         rv = (rv << 8) | (in & 0xff);
	movzbl	%al, %eax	# in_62, _69
# util.c:265:         rv = (rv << 8) | (in & 0xff);
	orq	%rax, %rdx	# _69, _70
# util.c:266:         in >>= 8;
	movq	%rdi, %rax	# val, in_72
	shrq	$48, %rax	#, in_72
# util.c:265:         rv = (rv << 8) | (in & 0xff);
	salq	$8, %rdx	#, _78
# util.c:265:         rv = (rv << 8) | (in & 0xff);
	movzbl	%al, %eax	# in_72, _79
# util.c:265:         rv = (rv << 8) | (in & 0xff);
	orq	%rax, %rdx	# _79, _80
	shrdq	$56, %rdx, %rdi	#, _80, tmp156
	movq	%rdi, %rax	# tmp156, _8
# util.c:281: }
	ret	
	.cfi_endproc
.LFE70:
	.size	htonll, .-htonll
	.p2align 4
	.globl	mc_timespec_add
	.type	mc_timespec_add, @function
mc_timespec_add:
.LFB71:
	.cfi_startproc
	endbr64	
# util.c:288:     ts1->tv_sec += ts2->tv_sec;
	vmovdqu	(%rsi), %xmm0	# MEM <vector(2) long int> [(long int *)ts2_12(D)], vect__2.177_20
# util.c:288:     ts1->tv_sec += ts2->tv_sec;
	vpaddq	(%rdi), %xmm0, %xmm0	# MEM <vector(2) long int> [(long int *)ts1_11(D)], vect__2.177_20, vect__3.178
# util.c:290:     if (ts1->tv_nsec >= NSEC_PER_SEC) {
	vpextrq	$1, %xmm0, %rax	# vect__3.178, _22
	cmpq	$999999999, %rax	#, _22
	jle	.L166	#,
# util.c:291:         ts1->tv_sec++;
	vpaddq	.LC17(%rip), %xmm0, %xmm0	#, vect__3.178, vect__7.181_25
.L166:
	vmovdqu	%xmm0, (%rdi)	# vect__7.181_25, MEM <vector(2) long int> [(long int *)ts1_11(D)]
# util.c:294: }
	ret	
	.cfi_endproc
.LFE71:
	.size	mc_timespec_add, .-mc_timespec_add
	.section	.rodata
	.align 8
	.type	__PRETTY_FUNCTION__.0, @object
	.size	__PRETTY_FUNCTION__.0, 12
__PRETTY_FUNCTION__.0:
	.string	"safe_strtod"
	.align 8
	.type	__PRETTY_FUNCTION__.1, @object
	.size	__PRETTY_FUNCTION__.1, 12
__PRETTY_FUNCTION__.1:
	.string	"safe_strtol"
	.align 8
	.type	__PRETTY_FUNCTION__.2, @object
	.size	__PRETTY_FUNCTION__.2, 13
__PRETTY_FUNCTION__.2:
	.string	"safe_strtoul"
	.align 8
	.type	__PRETTY_FUNCTION__.3, @object
	.size	__PRETTY_FUNCTION__.3, 13
__PRETTY_FUNCTION__.3:
	.string	"safe_strtoll"
	.align 16
	.type	__PRETTY_FUNCTION__.4, @object
	.size	__PRETTY_FUNCTION__.4, 18
__PRETTY_FUNCTION__.4:
	.string	"safe_strtoull_hex"
	.align 8
	.type	__PRETTY_FUNCTION__.5, @object
	.size	__PRETTY_FUNCTION__.5, 14
__PRETTY_FUNCTION__.5:
	.string	"safe_strtoull"
	.local	uriencode_str
	.comm	uriencode_str,768,32
	.local	uriencode_map
	.comm	uriencode_map,2048,32
	.section	.rodata.cst32,"aM",@progbits,32
	.align 32
.LC14:
	.quad	0
	.quad	1
	.quad	2
	.quad	3
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC15:
	.quad	29
	.align 8
.LC16:
	.quad	32
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC17:
	.quad	1
	.quad	-1000000000
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
