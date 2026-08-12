	.file	"jenkins_hash.c"
# GNU C23 (Ubuntu 15.2.0-16ubuntu1) version 15.2.0 (x86_64-linux-gnu)
#	compiled by GNU C version 15.2.0, GMP version 6.3.0, MPFR version 4.2.2, MPC version 1.3.1, isl version isl-0.27-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -D_FORTIFY_SOURCE=3 -march=znver3 -mmmx -mpopcnt -msse -msse2 -msse3 -mssse3 -msse4.1 -msse4.2 -mavx -mavx2 -msse4a -mno-fma4 -mno-xop -mfma -mno-avx512f -mbmi -mbmi2 -maes -mpclmul -mno-avx512vl -mno-avx512bw -mno-avx512dq -mno-avx512cd -mno-avx512vbmi -mno-avx512ifma -mno-avx512vpopcntdq -mno-avx512vbmi2 -mno-gfni -mvpclmulqdq -mno-avx512vnni -mno-avx512bitalg -mno-avx512bf16 -mno-avx512vp2intersect -mno-3dnow -madx -mabm -mno-cldemote -mclflushopt -mclwb -mclzero -mcx16 -mno-enqcmd -mf16c -mfsgsbase -mfxsr -mno-hle -msahf -mno-lwp -mlzcnt -mmovbe -mno-movdir64b -mno-movdiri -mno-mwaitx -mno-pconfig -mno-pku -mprfchw -mno-ptwrite -mrdpid -mrdrnd -mrdseed -mno-rtm -mno-serialize -mno-sgx -msha -mshstk -mno-tbm -mno-tsxldtrk -mvaes -mno-waitpkg -mno-wbnoinvd -mxsave -mxsavec -mxsaveopt -mxsaves -mno-amx-tile -mno-amx-int8 -mno-amx-bf16 -mno-uintr -mno-hreset -mno-kl -mno-widekl -mno-avxvnni -mno-avx512fp16 -mno-avxifma -mno-avxvnniint8 -mno-avxneconvert -mno-cmpccxadd -mno-amx-fp16 -mno-prefetchi -mno-raoint -mno-amx-complex -mno-avxvnniint16 -mno-sm3 -mno-sha512 -mno-sm4 -mno-apxf -mno-usermsr -mno-avx10.2 -mno-amx-avx512 -mno-amx-tf32 -mno-amx-transpose -mno-amx-fp8 -mno-movrs -mno-amx-movrs --param=l1-cache-size=32 --param=l1-cache-line-size=64 --param=l2-cache-size=512 -mtune=znver3 -O3 -ftree-vectorize -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection -fzero-init-padding-bits=all
	.text
	.p2align 4
	.globl	jenkins_hash
	.type	jenkins_hash, @function
jenkins_hash:
.LFB53:
	.cfi_startproc
	endbr64	
# jenkins_hash.c:134:   a = b = c = 0xdeadbeef + ((uint32_t)length) + 0;
	leal	-559038737(%rsi), %edx	#, a
# jenkins_hash.c:129: {
	movq	%rdi, %rcx	# key, key
	movq	%rsi, %rdi	# length, length
# jenkins_hash.c:134:   a = b = c = 0xdeadbeef + ((uint32_t)length) + 0;
	movl	%edx, %eax	# a, b
# jenkins_hash.c:134:   a = b = c = 0xdeadbeef + ((uint32_t)length) + 0;
	movl	%edx, %esi	# a, <retval>
# jenkins_hash.c:137:   if (HASH_LITTLE_ENDIAN && ((u.i & 0x3) == 0)) {
	testb	$3, %cl	#, key
	je	.L65	#,
# jenkins_hash.c:205:   } else if (HASH_LITTLE_ENDIAN && ((u.i & 0x1) == 0)) {
	testb	$1, %cl	#, key
	jne	.L64	#,
# jenkins_hash.c:210:     while (length > 12)
	cmpq	$12, %rdi	#, length
	jbe	.L69	#,
	.p2align 4
	.p2align 3
.L24:
# jenkins_hash.c:213:       b += k[2] + (((uint32_t)k[3])<<16);
	movzwl	6(%rcx), %r8d	# MEM[(const uint16_t *)k_461 + 6B], _55
# jenkins_hash.c:213:       b += k[2] + (((uint32_t)k[3])<<16);
	movzwl	4(%rcx), %r9d	# MEM[(const uint16_t *)k_461 + 4B], _53
# jenkins_hash.c:216:       length -= 12;
	subq	$12, %rdi	#, length
# jenkins_hash.c:217:       k += 6;
	addq	$12, %rcx	#, key
# jenkins_hash.c:213:       b += k[2] + (((uint32_t)k[3])<<16);
	sall	$16, %r8d	#, _56
# jenkins_hash.c:213:       b += k[2] + (((uint32_t)k[3])<<16);
	addl	%r9d, %r8d	# _53, _2555
# jenkins_hash.c:214:       c += k[4] + (((uint32_t)k[5])<<16);
	movzwl	-4(%rcx), %r9d	# MEM[(const uint16_t *)k_461 + 8B], _59
# jenkins_hash.c:213:       b += k[2] + (((uint32_t)k[3])<<16);
	addl	%eax, %r8d	# b, b
# jenkins_hash.c:214:       c += k[4] + (((uint32_t)k[5])<<16);
	movzwl	-2(%rcx), %eax	# MEM[(const uint16_t *)k_461 + 10B], _61
# jenkins_hash.c:214:       c += k[4] + (((uint32_t)k[5])<<16);
	sall	$16, %eax	#, _62
# jenkins_hash.c:214:       c += k[4] + (((uint32_t)k[5])<<16);
	addl	%r9d, %eax	# _59, _2554
# jenkins_hash.c:212:       a += k[0] + (((uint32_t)k[1])<<16);
	movzwl	-12(%rcx), %r9d	# MEM[(const uint16_t *)k_461], _47
# jenkins_hash.c:214:       c += k[4] + (((uint32_t)k[5])<<16);
	addl	%esi, %eax	# <retval>, c
# jenkins_hash.c:212:       a += k[0] + (((uint32_t)k[1])<<16);
	movzwl	-10(%rcx), %esi	# MEM[(const uint16_t *)k_461 + 2B], _49
	subl	%eax, %edx	# c, _2553
# jenkins_hash.c:212:       a += k[0] + (((uint32_t)k[1])<<16);
	sall	$16, %esi	#, _50
# jenkins_hash.c:215:       mix(a,b,c);
	addl	%r9d, %esi	# _47, _2562
	addl	%edx, %esi	# _2553, a
	rorx	$28, %eax, %edx	#, c, _64
	addl	%r8d, %eax	# b, c
	xorl	%esi, %edx	# a, a
	movl	%r8d, %esi	# b, b
	subl	%edx, %esi	# a, b
	rorx	$26, %edx, %r8d	#, a, _65
	addl	%eax, %edx	# c, a
	xorl	%esi, %r8d	# b, b
	subl	%r8d, %eax	# b, c
	rorx	$24, %r8d, %esi	#, b, _66
	addl	%edx, %r8d	# a, b
	xorl	%eax, %esi	# c, c
	rorx	$16, %esi, %eax	#, c, _67
	subl	%esi, %edx	# c, a
	addl	%r8d, %esi	# b, c
	xorl	%eax, %edx	# _67, a
	subl	%edx, %r8d	# a, b
	rorx	$13, %edx, %eax	#, a, _68
	addl	%esi, %edx	# c, a
	xorl	%r8d, %eax	# b, b
	subl	%eax, %esi	# b, c
	rorx	$28, %eax, %r8d	#, b, _69
	addl	%edx, %eax	# a, b
	xorl	%r8d, %esi	# _69, <retval>
# jenkins_hash.c:210:     while (length > 12)
	cmpq	$12, %rdi	#, length
	ja	.L24	#,
.L69:
# jenkins_hash.c:222:     switch(length)
	leaq	.L26(%rip), %r8	#, tmp484
	movslq	(%r8,%rdi,4), %rdi	#, tmp486
	addq	%r8, %rdi	# tmp484, tmp487
	notrack jmp	*%rdi	# tmp487
	.section	.rodata
	.align 4
	.align 4
.L26:
	.long	.L1-.L26
	.long	.L50-.L26
	.long	.L36-.L26
	.long	.L35-.L26
	.long	.L34-.L26
	.long	.L33-.L26
	.long	.L32-.L26
	.long	.L31-.L26
	.long	.L30-.L26
	.long	.L29-.L26
	.long	.L28-.L26
	.long	.L27-.L26
	.long	.L25-.L26
	.text
	.p2align 4
	.p2align 3
.L4:
# jenkins_hash.c:148:       c += k[2];
	addl	8(%rcx), %esi	# MEM[(const uint32_t *)k_459 + 8B], c
# jenkins_hash.c:149:       mix(a,b,c);
	movl	(%rcx), %r8d	# MEM[(const uint32_t *)k_459], _2561
# jenkins_hash.c:150:       length -= 12;
	subq	$12, %rdi	#, length
# jenkins_hash.c:151:       k += 3;
	addq	$12, %rcx	#, key
# jenkins_hash.c:147:       b += k[1];
	addl	-8(%rcx), %eax	# MEM[(const uint32_t *)k_459 + 4B], b
# jenkins_hash.c:149:       mix(a,b,c);
	subl	%esi, %r8d	# c, _2561
	addl	%edx, %r8d	# a, a
	rorx	$28, %esi, %edx	#, c, _6
	addl	%eax, %esi	# b, c
	xorl	%r8d, %edx	# a, a
	subl	%edx, %eax	# a, b
	movl	%eax, %r8d	# b, b
	rorx	$26, %edx, %eax	#, a, _7
	addl	%esi, %edx	# c, a
	xorl	%r8d, %eax	# b, b
	subl	%eax, %esi	# b, c
	movl	%esi, %r8d	# c, c
	rorx	$24, %eax, %esi	#, b, _8
	addl	%edx, %eax	# a, b
	xorl	%r8d, %esi	# c, c
	rorx	$16, %esi, %r8d	#, c, _9
	subl	%esi, %edx	# c, a
	addl	%eax, %esi	# b, c
	xorl	%r8d, %edx	# _9, a
	rorx	$13, %edx, %r8d	#, a, _10
	subl	%edx, %eax	# a, b
	addl	%esi, %edx	# c, a
	xorl	%r8d, %eax	# _10, b
	subl	%eax, %esi	# b, c
	rorx	$28, %eax, %r8d	#, b, _11
	addl	%edx, %eax	# a, b
	xorl	%r8d, %esi	# _11, <retval>
.L65:
# jenkins_hash.c:144:     while (length > 12)
	cmpq	$12, %rdi	#, length
	ja	.L4	#,
# jenkins_hash.c:166:     switch(length)
	leaq	.L7(%rip), %r8	#, tmp415
	movslq	(%r8,%rdi,4), %rdi	#, tmp417
	addq	%r8, %rdi	# tmp415, tmp418
	notrack jmp	*%rdi	# tmp418
	.section	.rodata
	.align 4
	.align 4
.L7:
	.long	.L1-.L7
	.long	.L50-.L7
	.long	.L36-.L7
	.long	.L16-.L7
	.long	.L15-.L7
	.long	.L14-.L7
	.long	.L13-.L7
	.long	.L12-.L7
	.long	.L11-.L7
	.long	.L10-.L7
	.long	.L9-.L7
	.long	.L8-.L7
	.long	.L6-.L7
	.text
	.p2align 4
	.p2align 3
.L21:
# jenkins_hash.c:263:       b += ((uint32_t)k[5])<<8;
	movzbl	5(%rcx), %r8d	# MEM[(const uint8_t *)k_463 + 5B], _159
# jenkins_hash.c:264:       b += ((uint32_t)k[6])<<16;
	movzbl	6(%rcx), %r9d	# MEM[(const uint8_t *)k_463 + 6B], _162
# jenkins_hash.c:262:       b += k[4];
	movzbl	4(%rcx), %r10d	# MEM[(const uint8_t *)k_463 + 4B], _157
# jenkins_hash.c:264:       b += ((uint32_t)k[6])<<16;
	sall	$16, %r9d	#, _163
# jenkins_hash.c:263:       b += ((uint32_t)k[5])<<8;
	sall	$8, %r8d	#, _160
# jenkins_hash.c:265:       b += ((uint32_t)k[7])<<24;
	addl	%r9d, %r8d	# _163, _2227
# jenkins_hash.c:265:       b += ((uint32_t)k[7])<<24;
	movzbl	7(%rcx), %r9d	# MEM[(const uint8_t *)k_463 + 7B], _165
	sall	$24, %r9d	#, _166
# jenkins_hash.c:265:       b += ((uint32_t)k[7])<<24;
	addl	%r10d, %r9d	# _157, _2228
# jenkins_hash.c:266:       c += k[8];
	movzbl	8(%rcx), %r10d	# MEM[(const uint8_t *)k_463 + 8B], _168
# jenkins_hash.c:265:       b += ((uint32_t)k[7])<<24;
	addl	%r9d, %r8d	# _2228, _2229
# jenkins_hash.c:268:       c += ((uint32_t)k[10])<<16;
	movzbl	10(%rcx), %r9d	# MEM[(const uint8_t *)k_463 + 10B], _173
# jenkins_hash.c:265:       b += ((uint32_t)k[7])<<24;
	addl	%eax, %r8d	# b, b
# jenkins_hash.c:267:       c += ((uint32_t)k[9])<<8;
	movzbl	9(%rcx), %eax	# MEM[(const uint8_t *)k_463 + 9B], _170
# jenkins_hash.c:268:       c += ((uint32_t)k[10])<<16;
	sall	$16, %r9d	#, _174
# jenkins_hash.c:267:       c += ((uint32_t)k[9])<<8;
	sall	$8, %eax	#, _171
# jenkins_hash.c:269:       c += ((uint32_t)k[11])<<24;
	addl	%r9d, %eax	# _174, _2550
# jenkins_hash.c:269:       c += ((uint32_t)k[11])<<24;
	movzbl	11(%rcx), %r9d	# MEM[(const uint8_t *)k_463 + 11B], _176
	sall	$24, %r9d	#, _177
# jenkins_hash.c:269:       c += ((uint32_t)k[11])<<24;
	addl	%r10d, %r9d	# _168, _2551
# jenkins_hash.c:258:       a += k[0];
	movzbl	(%rcx), %r10d	# MEM[(const uint8_t *)k_463], _146
# jenkins_hash.c:269:       c += ((uint32_t)k[11])<<24;
	addl	%r9d, %eax	# _2551, _2552
# jenkins_hash.c:260:       a += ((uint32_t)k[2])<<16;
	movzbl	2(%rcx), %r9d	# MEM[(const uint8_t *)k_463 + 2B], _151
# jenkins_hash.c:269:       c += ((uint32_t)k[11])<<24;
	addl	%esi, %eax	# <retval>, c
# jenkins_hash.c:259:       a += ((uint32_t)k[1])<<8;
	movzbl	1(%rcx), %esi	# MEM[(const uint8_t *)k_463 + 1B], _148
# jenkins_hash.c:260:       a += ((uint32_t)k[2])<<16;
	sall	$16, %r9d	#, _152
# jenkins_hash.c:259:       a += ((uint32_t)k[1])<<8;
	sall	$8, %esi	#, _149
# jenkins_hash.c:270:       mix(a,b,c);
	addl	%r9d, %esi	# _152, _2556
# jenkins_hash.c:261:       a += ((uint32_t)k[3])<<24;
	movzbl	3(%rcx), %r9d	# MEM[(const uint8_t *)k_463 + 3B], _154
# jenkins_hash.c:270:       mix(a,b,c);
	subl	%eax, %esi	# c, _2548
# jenkins_hash.c:261:       a += ((uint32_t)k[3])<<24;
	sall	$24, %r9d	#, _155
# jenkins_hash.c:270:       mix(a,b,c);
	addl	%r10d, %r9d	# _146, _2557
	addl	%r9d, %esi	# _2557, _2549
	addl	%esi, %edx	# _2549, a
	rorx	$28, %eax, %esi	#, c, _178
	addl	%r8d, %eax	# b, c
	xorl	%esi, %edx	# _178, a
	subl	%edx, %r8d	# a, b
	rorx	$26, %edx, %esi	#, a, _179
	addl	%eax, %edx	# c, a
	xorl	%r8d, %esi	# b, b
	subl	%esi, %eax	# b, c
	movl	%eax, %r8d	# c, c
	rorx	$24, %esi, %eax	#, b, _180
	xorl	%r8d, %eax	# c, c
	leal	(%rsi,%rdx), %r8d	#, b
	subl	%eax, %edx	# c, a
	rorx	$16, %eax, %esi	#, c, _181
	xorl	%esi, %edx	# _181, a
	leal	(%rax,%r8), %esi	#, c
	rorx	$13, %edx, %eax	#, a, _182
	subl	%edx, %r8d	# a, b
	xorl	%eax, %r8d	# _182, b
	movl	%esi, %eax	# c, c
	addl	%esi, %edx	# c, a
# jenkins_hash.c:271:       length -= 12;
	subq	$12, %rdi	#, length
# jenkins_hash.c:270:       mix(a,b,c);
	subl	%r8d, %eax	# b, c
	rorx	$28, %r8d, %esi	#, b, _183
# jenkins_hash.c:272:       k += 12;
	addq	$12, %rcx	#, key
# jenkins_hash.c:270:       mix(a,b,c);
	xorl	%eax, %esi	# c, <retval>
	leal	(%r8,%rdx), %eax	#, b
.L64:
# jenkins_hash.c:256:     while (length > 12)
	cmpq	$12, %rdi	#, length
	ja	.L21	#,
# jenkins_hash.c:276:     switch(length)                   /* all the case statements fall through */
	leaq	.L39(%rip), %r8	#, tmp565
	movslq	(%r8,%rdi,4), %rdi	#, tmp567
	addq	%r8, %rdi	# tmp565, tmp568
	notrack jmp	*%rdi	# tmp568
	.section	.rodata
	.align 4
	.align 4
.L39:
	.long	.L1-.L39
	.long	.L50-.L39
	.long	.L49-.L39
	.long	.L48-.L39
	.long	.L47-.L39
	.long	.L46-.L39
	.long	.L45-.L39
	.long	.L44-.L39
	.long	.L43-.L39
	.long	.L42-.L39
	.long	.L41-.L39
	.long	.L40-.L39
	.long	.L38-.L39
	.text
.L38:
# jenkins_hash.c:278:     case 12: c+=((uint32_t)k[11])<<24;
	movzbl	11(%rcx), %edi	# MEM[(const uint8_t *)k_464 + 11B], _185
	sall	$24, %edi	#, _186
# jenkins_hash.c:278:     case 12: c+=((uint32_t)k[11])<<24;
	addl	%edi, %esi	# _186, <retval>
.L40:
# jenkins_hash.c:279:     case 11: c+=((uint32_t)k[10])<<16;
	movzbl	10(%rcx), %edi	# MEM[(const uint8_t *)k_464 + 10B], _188
	sall	$16, %edi	#, _189
# jenkins_hash.c:279:     case 11: c+=((uint32_t)k[10])<<16;
	addl	%edi, %esi	# _189, <retval>
.L41:
# jenkins_hash.c:280:     case 10: c+=((uint32_t)k[9])<<8;
	movzbl	9(%rcx), %edi	# MEM[(const uint8_t *)k_464 + 9B], _191
	sall	$8, %edi	#, _192
# jenkins_hash.c:280:     case 10: c+=((uint32_t)k[9])<<8;
	addl	%edi, %esi	# _192, <retval>
.L42:
# jenkins_hash.c:281:     case 9 : c+=k[8];
	movzbl	8(%rcx), %edi	# MEM[(const uint8_t *)k_464 + 8B], _194
# jenkins_hash.c:281:     case 9 : c+=k[8];
	addl	%edi, %esi	# _194, <retval>
.L43:
# jenkins_hash.c:282:     case 8 : b+=((uint32_t)k[7])<<24;
	movzbl	7(%rcx), %edi	# MEM[(const uint8_t *)k_464 + 7B], _196
	sall	$24, %edi	#, _197
# jenkins_hash.c:282:     case 8 : b+=((uint32_t)k[7])<<24;
	addl	%edi, %eax	# _197, b
.L44:
# jenkins_hash.c:283:     case 7 : b+=((uint32_t)k[6])<<16;
	movzbl	6(%rcx), %edi	# MEM[(const uint8_t *)k_464 + 6B], _199
	sall	$16, %edi	#, _200
# jenkins_hash.c:283:     case 7 : b+=((uint32_t)k[6])<<16;
	addl	%edi, %eax	# _200, b
.L45:
# jenkins_hash.c:284:     case 6 : b+=((uint32_t)k[5])<<8;
	movzbl	5(%rcx), %edi	# MEM[(const uint8_t *)k_464 + 5B], _202
	sall	$8, %edi	#, _203
# jenkins_hash.c:284:     case 6 : b+=((uint32_t)k[5])<<8;
	addl	%edi, %eax	# _203, b
.L46:
# jenkins_hash.c:285:     case 5 : b+=k[4];
	movzbl	4(%rcx), %edi	# MEM[(const uint8_t *)k_464 + 4B], _205
# jenkins_hash.c:285:     case 5 : b+=k[4];
	addl	%edi, %eax	# _205, b
.L47:
# jenkins_hash.c:286:     case 4 : a+=((uint32_t)k[3])<<24;
	movzbl	3(%rcx), %edi	# MEM[(const uint8_t *)k_464 + 3B], _207
	sall	$24, %edi	#, _208
# jenkins_hash.c:286:     case 4 : a+=((uint32_t)k[3])<<24;
	addl	%edi, %edx	# _208, a
.L48:
# jenkins_hash.c:287:     case 3 : a+=((uint32_t)k[2])<<16;
	movzbl	2(%rcx), %edi	# MEM[(const uint8_t *)k_464 + 2B], _210
	sall	$16, %edi	#, _211
# jenkins_hash.c:287:     case 3 : a+=((uint32_t)k[2])<<16;
	addl	%edi, %edx	# _211, a
.L49:
# jenkins_hash.c:288:     case 2 : a+=((uint32_t)k[1])<<8;
	movzbl	1(%rcx), %edi	# MEM[(const uint8_t *)k_464 + 1B], _213
	sall	$8, %edi	#, _214
# jenkins_hash.c:288:     case 2 : a+=((uint32_t)k[1])<<8;
	addl	%edi, %edx	# _214, a
.L50:
# jenkins_hash.c:289:     case 1 : a+=k[0];
	movzbl	(%rcx), %ecx	#* key, _216
# jenkins_hash.c:289:     case 1 : a+=k[0];
	addl	%ecx, %edx	# _216, a
.L19:
# jenkins_hash.c:295:   final(a,b,c);
	rorx	$18, %eax, %ecx	#, b, _217
	xorl	%eax, %esi	# b, c
	subl	%ecx, %esi	# _217, c
	rorx	$21, %esi, %ecx	#, c, _218
	xorl	%esi, %edx	# c, a
	subl	%ecx, %edx	# _218, a
	rorx	$7, %edx, %ecx	#, a, _219
	xorl	%edx, %eax	# a, b
	subl	%ecx, %eax	# _219, b
	rorx	$16, %eax, %ecx	#, b, _220
	xorl	%eax, %esi	# b, c
	subl	%ecx, %esi	# _220, c
	xorl	%esi, %edx	# c, a
	rorx	$28, %esi, %ecx	#, c, _221
	subl	%ecx, %edx	# _221, a
	xorl	%edx, %eax	# a, b
	rorx	$18, %edx, %edx	#, a, _222
	subl	%edx, %eax	# _222, b
	xorl	%eax, %esi	# b, c
	rorx	$8, %eax, %eax	#, b, _223
	subl	%eax, %esi	# _223, <retval>
.L1:
# jenkins_hash.c:297: }
	movl	%esi, %eax	# <retval>,
	ret	
.L35:
# jenkins_hash.c:244:     case 3 : a+=((uint32_t)k8[2])<<16;      /* @fallthrough */
	movzbl	2(%rcx), %edi	# MEM[(const uint8_t *)k_462 + 2B], _139
	sall	$16, %edi	#, _140
# jenkins_hash.c:244:     case 3 : a+=((uint32_t)k8[2])<<16;      /* @fallthrough */
	addl	%edi, %edx	# _140, a
.L36:
# jenkins_hash.c:245:     case 2 : a+=k[0];
	movzwl	(%rcx), %ecx	#* key, _142
# jenkins_hash.c:245:     case 2 : a+=k[0];
	addl	%ecx, %edx	# _142, a
# jenkins_hash.c:246:              break;
	jmp	.L19	#
.L27:
# jenkins_hash.c:228:     case 11: c+=((uint32_t)k8[10])<<16;     /* @fallthrough */
	movzbl	10(%rcx), %edi	# MEM[(const uint8_t *)k_462 + 10B], _89
	sall	$16, %edi	#, _90
# jenkins_hash.c:228:     case 11: c+=((uint32_t)k8[10])<<16;     /* @fallthrough */
	addl	%edi, %esi	# _90, <retval>
.L28:
# jenkins_hash.c:229:     case 10: c+=k[4];                       /* @fallthrough@ */
	movzwl	8(%rcx), %edi	# MEM[(const uint16_t *)k_462 + 8B], _92
# jenkins_hash.c:233:     case 9 : c+=k8[8];                      /* @fallthrough */
	addl	%edi, %esi	# _106, <retval>
.L30:
# jenkins_hash.c:234:     case 8 : b+=k[2]+(((uint32_t)k[3])<<16);
	movzwl	4(%rcx), %edi	# MEM[(const uint16_t *)k_462 + 4B], _108
	addl	%eax, %edi	# b, _235
# jenkins_hash.c:234:     case 8 : b+=k[2]+(((uint32_t)k[3])<<16);
	movzwl	6(%rcx), %eax	# MEM[(const uint16_t *)k_462 + 6B], _110
# jenkins_hash.c:234:     case 8 : b+=k[2]+(((uint32_t)k[3])<<16);
	sall	$16, %eax	#, _111
# jenkins_hash.c:241:     case 5 : b+=k8[4];                      /* @fallthrough */
	addl	%edi, %eax	# _131, b
.L34:
# jenkins_hash.c:242:     case 4 : a+=k[0]+(((uint32_t)k[1])<<16);
	movzwl	(%rcx), %edi	# *k_462, _133
	addl	%edx, %edi	# a, _224
# jenkins_hash.c:242:     case 4 : a+=k[0]+(((uint32_t)k[1])<<16);
	movzwl	2(%rcx), %edx	# MEM[(const uint16_t *)k_462 + 2B], _135
# jenkins_hash.c:242:     case 4 : a+=k[0]+(((uint32_t)k[1])<<16);
	sall	$16, %edx	#, _136
# jenkins_hash.c:242:     case 4 : a+=k[0]+(((uint32_t)k[1])<<16);
	addl	%edi, %edx	# _224, a
# jenkins_hash.c:243:              break;
	jmp	.L19	#
.L14:
# jenkins_hash.c:175:     case 5 : b+=k[1]&0xff; a+=k[0]; break;
	movzbl	4(%rcx), %edi	# MEM[(const uint32_t *)k_460 + 4B], _36
# jenkins_hash.c:175:     case 5 : b+=k[1]&0xff; a+=k[0]; break;
	addl	(%rcx), %edx	# *k_460, a
# jenkins_hash.c:175:     case 5 : b+=k[1]&0xff; a+=k[0]; break;
	addl	%edi, %eax	# _36, b
# jenkins_hash.c:175:     case 5 : b+=k[1]&0xff; a+=k[0]; break;
	jmp	.L19	#
.L15:
# jenkins_hash.c:176:     case 4 : a+=k[0]; break;
	addl	(%rcx), %edx	# *k_460, a
# jenkins_hash.c:176:     case 4 : a+=k[0]; break;
	jmp	.L19	#
.L16:
# jenkins_hash.c:177:     case 3 : a+=k[0]&0xffffff; break;
	movl	(%rcx), %ecx	# *k_460, *k_460
	andl	$16777215, %ecx	#, _40
# jenkins_hash.c:177:     case 3 : a+=k[0]&0xffffff; break;
	addl	%ecx, %edx	# _40, a
# jenkins_hash.c:177:     case 3 : a+=k[0]&0xffffff; break;
	jmp	.L19	#
.L6:
# jenkins_hash.c:168:     case 12: c+=k[2]; b+=k[1]; a+=k[0]; break;
	addl	8(%rcx), %esi	# MEM[(const uint32_t *)k_460 + 8B], <retval>
# jenkins_hash.c:168:     case 12: c+=k[2]; b+=k[1]; a+=k[0]; break;
	addl	4(%rcx), %eax	# MEM[(const uint32_t *)k_460 + 4B], b
# jenkins_hash.c:168:     case 12: c+=k[2]; b+=k[1]; a+=k[0]; break;
	addl	(%rcx), %edx	# *k_460, a
# jenkins_hash.c:168:     case 12: c+=k[2]; b+=k[1]; a+=k[0]; break;
	jmp	.L19	#
.L8:
# jenkins_hash.c:169:     case 11: c+=k[2]&0xffffff; b+=k[1]; a+=k[0]; break;
	movl	8(%rcx), %edi	# MEM[(const uint32_t *)k_460 + 8B], _16
# jenkins_hash.c:169:     case 11: c+=k[2]&0xffffff; b+=k[1]; a+=k[0]; break;
	addl	4(%rcx), %eax	# MEM[(const uint32_t *)k_460 + 4B], b
# jenkins_hash.c:169:     case 11: c+=k[2]&0xffffff; b+=k[1]; a+=k[0]; break;
	addl	(%rcx), %edx	# *k_460, a
# jenkins_hash.c:169:     case 11: c+=k[2]&0xffffff; b+=k[1]; a+=k[0]; break;
	andl	$16777215, %edi	#, _16
# jenkins_hash.c:169:     case 11: c+=k[2]&0xffffff; b+=k[1]; a+=k[0]; break;
	addl	%edi, %esi	# _16, <retval>
# jenkins_hash.c:169:     case 11: c+=k[2]&0xffffff; b+=k[1]; a+=k[0]; break;
	jmp	.L19	#
.L9:
# jenkins_hash.c:170:     case 10: c+=k[2]&0xffff; b+=k[1]; a+=k[0]; break;
	movzwl	8(%rcx), %edi	# MEM[(const uint32_t *)k_460 + 8B], _20
# jenkins_hash.c:170:     case 10: c+=k[2]&0xffff; b+=k[1]; a+=k[0]; break;
	addl	4(%rcx), %eax	# MEM[(const uint32_t *)k_460 + 4B], b
# jenkins_hash.c:170:     case 10: c+=k[2]&0xffff; b+=k[1]; a+=k[0]; break;
	addl	(%rcx), %edx	# *k_460, a
# jenkins_hash.c:170:     case 10: c+=k[2]&0xffff; b+=k[1]; a+=k[0]; break;
	addl	%edi, %esi	# _20, <retval>
# jenkins_hash.c:170:     case 10: c+=k[2]&0xffff; b+=k[1]; a+=k[0]; break;
	jmp	.L19	#
.L10:
# jenkins_hash.c:171:     case 9 : c+=k[2]&0xff; b+=k[1]; a+=k[0]; break;
	movzbl	8(%rcx), %edi	# MEM[(const uint32_t *)k_460 + 8B], _24
# jenkins_hash.c:171:     case 9 : c+=k[2]&0xff; b+=k[1]; a+=k[0]; break;
	addl	4(%rcx), %eax	# MEM[(const uint32_t *)k_460 + 4B], b
# jenkins_hash.c:171:     case 9 : c+=k[2]&0xff; b+=k[1]; a+=k[0]; break;
	addl	(%rcx), %edx	# *k_460, a
# jenkins_hash.c:171:     case 9 : c+=k[2]&0xff; b+=k[1]; a+=k[0]; break;
	addl	%edi, %esi	# _24, <retval>
# jenkins_hash.c:171:     case 9 : c+=k[2]&0xff; b+=k[1]; a+=k[0]; break;
	jmp	.L19	#
.L11:
# jenkins_hash.c:172:     case 8 : b+=k[1]; a+=k[0]; break;
	addl	4(%rcx), %eax	# MEM[(const uint32_t *)k_460 + 4B], b
# jenkins_hash.c:172:     case 8 : b+=k[1]; a+=k[0]; break;
	addl	(%rcx), %edx	# *k_460, a
# jenkins_hash.c:172:     case 8 : b+=k[1]; a+=k[0]; break;
	jmp	.L19	#
.L12:
# jenkins_hash.c:173:     case 7 : b+=k[1]&0xffffff; a+=k[0]; break;
	movl	4(%rcx), %edi	# MEM[(const uint32_t *)k_460 + 4B], _30
# jenkins_hash.c:173:     case 7 : b+=k[1]&0xffffff; a+=k[0]; break;
	addl	(%rcx), %edx	# *k_460, a
# jenkins_hash.c:173:     case 7 : b+=k[1]&0xffffff; a+=k[0]; break;
	andl	$16777215, %edi	#, _30
# jenkins_hash.c:173:     case 7 : b+=k[1]&0xffffff; a+=k[0]; break;
	addl	%edi, %eax	# _30, b
# jenkins_hash.c:173:     case 7 : b+=k[1]&0xffffff; a+=k[0]; break;
	jmp	.L19	#
.L13:
# jenkins_hash.c:174:     case 6 : b+=k[1]&0xffff; a+=k[0]; break;
	movzwl	4(%rcx), %edi	# MEM[(const uint32_t *)k_460 + 4B], _33
# jenkins_hash.c:174:     case 6 : b+=k[1]&0xffff; a+=k[0]; break;
	addl	(%rcx), %edx	# *k_460, a
# jenkins_hash.c:174:     case 6 : b+=k[1]&0xffff; a+=k[0]; break;
	addl	%edi, %eax	# _33, b
# jenkins_hash.c:174:     case 6 : b+=k[1]&0xffff; a+=k[0]; break;
	jmp	.L19	#
.L31:
# jenkins_hash.c:237:     case 7 : b+=((uint32_t)k8[6])<<16;      /* @fallthrough */
	movzbl	6(%rcx), %edi	# MEM[(const uint8_t *)k_462 + 6B], _120
	sall	$16, %edi	#, _121
# jenkins_hash.c:237:     case 7 : b+=((uint32_t)k8[6])<<16;      /* @fallthrough */
	addl	%edi, %eax	# _121, b
.L32:
# jenkins_hash.c:238:     case 6 : b+=k[2];
	movzwl	4(%rcx), %edi	# MEM[(const uint16_t *)k_462 + 4B], _123
# jenkins_hash.c:241:     case 5 : b+=k8[4];                      /* @fallthrough */
	addl	%edi, %eax	# _131, b
	jmp	.L34	#
.L33:
# jenkins_hash.c:241:     case 5 : b+=k8[4];                      /* @fallthrough */
	movzbl	4(%rcx), %edi	# MEM[(const uint8_t *)k_462 + 4B], _131
# jenkins_hash.c:241:     case 5 : b+=k8[4];                      /* @fallthrough */
	addl	%edi, %eax	# _131, b
	jmp	.L34	#
.L25:
# jenkins_hash.c:224:     case 12: c+=k[4]+(((uint32_t)k[5])<<16);
	movzwl	8(%rcx), %edi	# MEM[(const uint16_t *)k_462 + 8B], _71
	addl	%esi, %edi	# <retval>, _228
# jenkins_hash.c:224:     case 12: c+=k[4]+(((uint32_t)k[5])<<16);
	movzwl	10(%rcx), %esi	# MEM[(const uint16_t *)k_462 + 10B], _73
# jenkins_hash.c:224:     case 12: c+=k[4]+(((uint32_t)k[5])<<16);
	sall	$16, %esi	#, _74
# jenkins_hash.c:233:     case 9 : c+=k8[8];                      /* @fallthrough */
	addl	%edi, %esi	# _106, <retval>
	jmp	.L30	#
.L29:
# jenkins_hash.c:233:     case 9 : c+=k8[8];                      /* @fallthrough */
	movzbl	8(%rcx), %edi	# MEM[(const uint8_t *)k_462 + 8B], _106
# jenkins_hash.c:233:     case 9 : c+=k8[8];                      /* @fallthrough */
	addl	%edi, %esi	# _106, <retval>
	jmp	.L30	#
	.cfi_endproc
.LFE53:
	.size	jenkins_hash, .-jenkins_hash
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
