typedef unsigned char md5_byte_t;
typedef unsigned int md5_word_t;
typedef struct md5_state_s {
    md5_word_t count[2];
    md5_word_t abcd[4];
    md5_byte_t buf[64];
} md5_state_t;
void md5_init(md5_state_t *pms);
void md5_append(md5_state_t *pms, const md5_byte_t *data, int nbytes);
void md5_finish(md5_state_t *pms, md5_byte_t digest[16]);

typedef long unsigned int size_t;
extern void *memcpy (void *__restrict __dest, const void *__restrict __src,
       size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern void *memmove (void *__dest, const void *__src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern void *memccpy (void *__restrict __dest, const void *__restrict __src,
        int __c, size_t __n)
    __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2))) __attribute__ ((__access__ (__write_only__, 1, 4)));
extern void *memset (void *__s, int __c, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern void *memset_explicit (void *__s, int __c, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
extern int memcmp (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern int __memcmpeq (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern void *memchr (const void *__s, int __c, size_t __n)
      __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern char *strcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *strncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *strcat (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *strncat (char *__restrict __dest, const char *__restrict __src,
        size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int strcmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern int strncmp (const char *__s1, const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern int strcoll (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern size_t strxfrm (char *__restrict __dest,
         const char *__restrict __src, size_t __n)
    __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2))) __attribute__ ((__access__ (__write_only__, 1, 3)));
struct __locale_struct
{
  struct __locale_data *__locales[13];
  const unsigned short int *__ctype_b;
  const int *__ctype_tolower;
  const int *__ctype_toupper;
  const char *__names[13];
};
typedef struct __locale_struct *__locale_t;
typedef __locale_t locale_t;
extern int strcoll_l (const char *__s1, const char *__s2, locale_t __l)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 3)));
extern size_t strxfrm_l (char *__dest, const char *__src, size_t __n,
    locale_t __l) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 4)))
     __attribute__ ((__access__ (__write_only__, 1, 3)));
extern char *strdup (const char *__s)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));
extern char *strndup (const char *__string, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));
extern char *strchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern char *strrchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern char *strchrnul (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern size_t strcspn (const char *__s, const char *__reject)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern size_t strspn (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *strpbrk (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *strstr (const char *__haystack, const char *__needle)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *strtok (char *__restrict __s, const char *__restrict __delim)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern char *__strtok_r (char *__restrict __s,
    const char *__restrict __delim,
    char **__restrict __save_ptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));
extern char *strtok_r (char *__restrict __s, const char *__restrict __delim,
         char **__restrict __save_ptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));
extern char *strcasestr (const char *__haystack, const char *__needle)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern void *memmem (const void *__haystack, size_t __haystacklen,
       const void *__needle, size_t __needlelen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 3)))
    __attribute__ ((__access__ (__read_only__, 1, 2)))
    __attribute__ ((__access__ (__read_only__, 3, 4)));
extern void *__mempcpy (void *__restrict __dest,
   const void *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern void *mempcpy (void *__restrict __dest,
        const void *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern size_t strlen (const char *__s)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern size_t strnlen (const char *__string, size_t __maxlen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern char *strerror (int __errnum) __attribute__ ((__nothrow__ , __leaf__));
extern int strerror_r (int __errnum, char *__buf, size_t __buflen) __asm__ ("" "__xpg_strerror_r") __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)))
    __attribute__ ((__access__ (__write_only__, 2, 3)));
extern char *strerror_l (int __errnum, locale_t __l) __attribute__ ((__nothrow__ , __leaf__));

extern int bcmp (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern void bcopy (const void *__src, void *__dest, size_t __n)
  __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern void bzero (void *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern char *index (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern char *rindex (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern int ffs (int __i) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern int ffsl (long int __l) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
__extension__ extern int ffsll (long long int __ll)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern int strcasecmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern int strncasecmp (const char *__s1, const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern int strcasecmp_l (const char *__s1, const char *__s2, locale_t __loc)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 3)));
extern int strncasecmp_l (const char *__s1, const char *__s2,
     size_t __n, locale_t __loc)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 4)));

extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) void
__attribute__ ((__nothrow__ , __leaf__)) bcopy (const void *__src, void *__dest, size_t __len)
{
  (void) __builtin___memmove_chk (__dest, __src, __len,
      __builtin_dynamic_object_size (__dest, 0));
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) void
__attribute__ ((__nothrow__ , __leaf__)) bzero (void *__dest, size_t __len)
{
  (void) __builtin___memset_chk (__dest, '\0', __len,
     __builtin_dynamic_object_size (__dest, 0));
}
extern void explicit_bzero (void *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)))
    ;
extern char *strsep (char **__restrict __stringp,
       const char *__restrict __delim)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *strsignal (int __sig) __attribute__ ((__nothrow__ , __leaf__));
extern char *__stpcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *stpcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *__stpncpy (char *__restrict __dest,
   const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *stpncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern size_t strlcpy (char *__restrict __dest,
         const char *__restrict __src, size_t __n)
  __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2))) __attribute__ ((__access__ (__write_only__, 1, 3)));
extern size_t strlcat (char *__restrict __dest,
         const char *__restrict __src, size_t __n)
  __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2))) __attribute__ ((__access__ (__read_write__, 1, 3)));
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) void *
__attribute__ ((__nothrow__ , __leaf__)) memcpy (void *__restrict __dest, const void *__restrict __src, size_t __len)
{
  return __builtin___memcpy_chk (__dest, __src, __len,
     __builtin_dynamic_object_size (__dest, 0));
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) void *
__attribute__ ((__nothrow__ , __leaf__)) memmove (void *__dest, const void *__src, size_t __len)
{
  return __builtin___memmove_chk (__dest, __src, __len,
      __builtin_dynamic_object_size (__dest, 0));
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) void *
__attribute__ ((__nothrow__ , __leaf__)) memset (void *__dest, int __ch, size_t __len)
{
  return __builtin___memset_chk (__dest, __ch, __len,
     __builtin_dynamic_object_size (__dest, 0));
}
void *__memset_explicit_chk (void *__s, int __c, size_t __n, size_t __destlen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) void *
__attribute__ ((__nothrow__ , __leaf__)) memset_explicit (void *__dest, int __ch, size_t __len)
{
  return __memset_explicit_chk (__dest, __ch, __len,
    __builtin_dynamic_object_size (__dest, 0));
}
void __explicit_bzero_chk (void *__dest, size_t __len, size_t __destlen)
  __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) void
__attribute__ ((__nothrow__ , __leaf__)) explicit_bzero (void *__dest, size_t __len)
{
  __explicit_bzero_chk (__dest, __len, __builtin_dynamic_object_size (__dest, 0));
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) char *
__attribute__ ((__nothrow__ , __leaf__)) strcpy (char * __restrict __dest, const char *__restrict __src)
    
{
  return __builtin___strcpy_chk (__dest, __src, __builtin_dynamic_object_size (__dest, 1));
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) char *
__attribute__ ((__nothrow__ , __leaf__)) stpcpy (char * __restrict __dest, const char *__restrict __src)
    
{
  return __builtin___stpcpy_chk (__dest, __src, __builtin_dynamic_object_size (__dest, 1));
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) char *
__attribute__ ((__nothrow__ , __leaf__)) strncpy (char * __restrict __dest, const char *__restrict __src, size_t __len)
    
{
  return __builtin___strncpy_chk (__dest, __src, __len,
      __builtin_dynamic_object_size (__dest, 1));
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) char *
__attribute__ ((__nothrow__ , __leaf__)) stpncpy (char * __dest, const char *__src, size_t __n)
    
{
  return __builtin___stpncpy_chk (__dest, __src, __n,
      __builtin_dynamic_object_size (__dest, 1));
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) char *
__attribute__ ((__nothrow__ , __leaf__)) strcat (char * __restrict __dest, const char *__restrict __src)
    
{
  return __builtin___strcat_chk (__dest, __src, __builtin_dynamic_object_size (__dest, 1));
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) char *
__attribute__ ((__nothrow__ , __leaf__)) strncat (char * __restrict __dest, const char *__restrict __src, size_t __len)
    
{
  return __builtin___strncat_chk (__dest, __src, __len,
      __builtin_dynamic_object_size (__dest, 1));
}
extern size_t __strlcpy_chk (char *__dest, const char *__src, size_t __n,
        size_t __destlen) __attribute__ ((__nothrow__ , __leaf__));
extern size_t __strlcpy_alias (char *__dest, const char *__src, size_t __n) __asm__ ("" "strlcpy") __attribute__ ((__nothrow__ , __leaf__));
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) size_t
__attribute__ ((__nothrow__ , __leaf__)) strlcpy (char * __restrict __dest, const char *__restrict __src, size_t __n)
    
{
  if (__builtin_dynamic_object_size (__dest, 1) != (size_t) -1
      && (!__builtin_constant_p (__n > __builtin_dynamic_object_size (__dest, 1))
   || __n > __builtin_dynamic_object_size (__dest, 1)))
    return __strlcpy_chk (__dest, __src, __n, __builtin_dynamic_object_size (__dest, 1));
  return __strlcpy_alias (__dest, __src, __n);
}
extern size_t __strlcat_chk (char *__dest, const char *__src, size_t __n,
        size_t __destlen) __attribute__ ((__nothrow__ , __leaf__));
extern size_t __strlcat_alias (char *__dest, const char *__src, size_t __n) __asm__ ("" "strlcat") __attribute__ ((__nothrow__ , __leaf__));
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) size_t
__attribute__ ((__nothrow__ , __leaf__)) strlcat (char * __restrict __dest, const char *__restrict __src, size_t __n)
{
  if (__builtin_dynamic_object_size (__dest, 1) != (size_t) -1
      && (!__builtin_constant_p (__n > __builtin_dynamic_object_size (__dest, 1))
   || __n > __builtin_dynamic_object_size (__dest, 1)))
    return __strlcat_chk (__dest, __src, __n, __builtin_dynamic_object_size (__dest, 1));
  return __strlcat_alias (__dest, __src, __n);
}

static void
md5_process(md5_state_t *pms, const md5_byte_t *data )
{
    md5_word_t
 a = pms->abcd[0], b = pms->abcd[1],
 c = pms->abcd[2], d = pms->abcd[3];
    md5_word_t t;
    md5_word_t xbuf[16];
    const md5_word_t *X;
    {
 static const int w = 1;
 if (*((const md5_byte_t *)&w))
 {
     if (!((data - (const md5_byte_t *)0) & 3)) {
  X = (const md5_word_t *)data;
     } else {
  memcpy(xbuf, data, 64);
  X = xbuf;
     }
 }
 else
 {
     const md5_byte_t *xp = data;
     int i;
     X = xbuf;
     for (i = 0; i < 16; ++i, xp += 4)
  xbuf[i] = xp[0] + (xp[1] << 8) + (xp[2] << 16) + (xp[3] << 24);
 }
    }
    t = a + (((b) & (c)) | (~(b) & (d))) + X[0] + (((md5_word_t)~0) ^ 0x28955b87); a = (((t) << (7)) | ((t) >> (32 - (7)))) + b;
    t = d + (((a) & (b)) | (~(a) & (c))) + X[1] + (((md5_word_t)~0) ^ 0x173848a9); d = (((t) << (12)) | ((t) >> (32 - (12)))) + a;
    t = c + (((d) & (a)) | (~(d) & (b))) + X[2] + 0x242070db; c = (((t) << (17)) | ((t) >> (32 - (17)))) + d;
    t = b + (((c) & (d)) | (~(c) & (a))) + X[3] + (((md5_word_t)~0) ^ 0x3e423111); b = (((t) << (22)) | ((t) >> (32 - (22)))) + c;
    t = a + (((b) & (c)) | (~(b) & (d))) + X[4] + (((md5_word_t)~0) ^ 0x0a83f050); a = (((t) << (7)) | ((t) >> (32 - (7)))) + b;
    t = d + (((a) & (b)) | (~(a) & (c))) + X[5] + 0x4787c62a; d = (((t) << (12)) | ((t) >> (32 - (12)))) + a;
    t = c + (((d) & (a)) | (~(d) & (b))) + X[6] + (((md5_word_t)~0) ^ 0x57cfb9ec); c = (((t) << (17)) | ((t) >> (32 - (17)))) + d;
    t = b + (((c) & (d)) | (~(c) & (a))) + X[7] + (((md5_word_t)~0) ^ 0x02b96afe); b = (((t) << (22)) | ((t) >> (32 - (22)))) + c;
    t = a + (((b) & (c)) | (~(b) & (d))) + X[8] + 0x698098d8; a = (((t) << (7)) | ((t) >> (32 - (7)))) + b;
    t = d + (((a) & (b)) | (~(a) & (c))) + X[9] + (((md5_word_t)~0) ^ 0x74bb0850); d = (((t) << (12)) | ((t) >> (32 - (12)))) + a;
    t = c + (((d) & (a)) | (~(d) & (b))) + X[10] + (((md5_word_t)~0) ^ 0x0000a44e); c = (((t) << (17)) | ((t) >> (32 - (17)))) + d;
    t = b + (((c) & (d)) | (~(c) & (a))) + X[11] + (((md5_word_t)~0) ^ 0x76a32841); b = (((t) << (22)) | ((t) >> (32 - (22)))) + c;
    t = a + (((b) & (c)) | (~(b) & (d))) + X[12] + 0x6b901122; a = (((t) << (7)) | ((t) >> (32 - (7)))) + b;
    t = d + (((a) & (b)) | (~(a) & (c))) + X[13] + (((md5_word_t)~0) ^ 0x02678e6c); d = (((t) << (12)) | ((t) >> (32 - (12)))) + a;
    t = c + (((d) & (a)) | (~(d) & (b))) + X[14] + (((md5_word_t)~0) ^ 0x5986bc71); c = (((t) << (17)) | ((t) >> (32 - (17)))) + d;
    t = b + (((c) & (d)) | (~(c) & (a))) + X[15] + 0x49b40821; b = (((t) << (22)) | ((t) >> (32 - (22)))) + c;
    t = a + (((b) & (d)) | ((c) & ~(d))) + X[1] + (((md5_word_t)~0) ^ 0x09e1da9d); a = (((t) << (5)) | ((t) >> (32 - (5)))) + b;
    t = d + (((a) & (c)) | ((b) & ~(c))) + X[6] + (((md5_word_t)~0) ^ 0x3fbf4cbf); d = (((t) << (9)) | ((t) >> (32 - (9)))) + a;
    t = c + (((d) & (b)) | ((a) & ~(b))) + X[11] + 0x265e5a51; c = (((t) << (14)) | ((t) >> (32 - (14)))) + d;
    t = b + (((c) & (a)) | ((d) & ~(a))) + X[0] + (((md5_word_t)~0) ^ 0x16493855); b = (((t) << (20)) | ((t) >> (32 - (20)))) + c;
    t = a + (((b) & (d)) | ((c) & ~(d))) + X[5] + (((md5_word_t)~0) ^ 0x29d0efa2); a = (((t) << (5)) | ((t) >> (32 - (5)))) + b;
    t = d + (((a) & (c)) | ((b) & ~(c))) + X[10] + 0x02441453; d = (((t) << (9)) | ((t) >> (32 - (9)))) + a;
    t = c + (((d) & (b)) | ((a) & ~(b))) + X[15] + (((md5_word_t)~0) ^ 0x275e197e); c = (((t) << (14)) | ((t) >> (32 - (14)))) + d;
    t = b + (((c) & (a)) | ((d) & ~(a))) + X[4] + (((md5_word_t)~0) ^ 0x182c0437); b = (((t) << (20)) | ((t) >> (32 - (20)))) + c;
    t = a + (((b) & (d)) | ((c) & ~(d))) + X[9] + 0x21e1cde6; a = (((t) << (5)) | ((t) >> (32 - (5)))) + b;
    t = d + (((a) & (c)) | ((b) & ~(c))) + X[14] + (((md5_word_t)~0) ^ 0x3cc8f829); d = (((t) << (9)) | ((t) >> (32 - (9)))) + a;
    t = c + (((d) & (b)) | ((a) & ~(b))) + X[3] + (((md5_word_t)~0) ^ 0x0b2af278); c = (((t) << (14)) | ((t) >> (32 - (14)))) + d;
    t = b + (((c) & (a)) | ((d) & ~(a))) + X[8] + 0x455a14ed; b = (((t) << (20)) | ((t) >> (32 - (20)))) + c;
    t = a + (((b) & (d)) | ((c) & ~(d))) + X[13] + (((md5_word_t)~0) ^ 0x561c16fa); a = (((t) << (5)) | ((t) >> (32 - (5)))) + b;
    t = d + (((a) & (c)) | ((b) & ~(c))) + X[2] + (((md5_word_t)~0) ^ 0x03105c07); d = (((t) << (9)) | ((t) >> (32 - (9)))) + a;
    t = c + (((d) & (b)) | ((a) & ~(b))) + X[7] + 0x676f02d9; c = (((t) << (14)) | ((t) >> (32 - (14)))) + d;
    t = b + (((c) & (a)) | ((d) & ~(a))) + X[12] + (((md5_word_t)~0) ^ 0x72d5b375); b = (((t) << (20)) | ((t) >> (32 - (20)))) + c;
    t = a + ((b) ^ (c) ^ (d)) + X[5] + (((md5_word_t)~0) ^ 0x0005c6bd); a = (((t) << (4)) | ((t) >> (32 - (4)))) + b;
    t = d + ((a) ^ (b) ^ (c)) + X[8] + (((md5_word_t)~0) ^ 0x788e097e); d = (((t) << (11)) | ((t) >> (32 - (11)))) + a;
    t = c + ((d) ^ (a) ^ (b)) + X[11] + 0x6d9d6122; c = (((t) << (16)) | ((t) >> (32 - (16)))) + d;
    t = b + ((c) ^ (d) ^ (a)) + X[14] + (((md5_word_t)~0) ^ 0x021ac7f3); b = (((t) << (23)) | ((t) >> (32 - (23)))) + c;
    t = a + ((b) ^ (c) ^ (d)) + X[1] + (((md5_word_t)~0) ^ 0x5b4115bb); a = (((t) << (4)) | ((t) >> (32 - (4)))) + b;
    t = d + ((a) ^ (b) ^ (c)) + X[4] + 0x4bdecfa9; d = (((t) << (11)) | ((t) >> (32 - (11)))) + a;
    t = c + ((d) ^ (a) ^ (b)) + X[7] + (((md5_word_t)~0) ^ 0x0944b49f); c = (((t) << (16)) | ((t) >> (32 - (16)))) + d;
    t = b + ((c) ^ (d) ^ (a)) + X[10] + (((md5_word_t)~0) ^ 0x4140438f); b = (((t) << (23)) | ((t) >> (32 - (23)))) + c;
    t = a + ((b) ^ (c) ^ (d)) + X[13] + 0x289b7ec6; a = (((t) << (4)) | ((t) >> (32 - (4)))) + b;
    t = d + ((a) ^ (b) ^ (c)) + X[0] + (((md5_word_t)~0) ^ 0x155ed805); d = (((t) << (11)) | ((t) >> (32 - (11)))) + a;
    t = c + ((d) ^ (a) ^ (b)) + X[3] + (((md5_word_t)~0) ^ 0x2b10cf7a); c = (((t) << (16)) | ((t) >> (32 - (16)))) + d;
    t = b + ((c) ^ (d) ^ (a)) + X[6] + 0x04881d05; b = (((t) << (23)) | ((t) >> (32 - (23)))) + c;
    t = a + ((b) ^ (c) ^ (d)) + X[9] + (((md5_word_t)~0) ^ 0x262b2fc6); a = (((t) << (4)) | ((t) >> (32 - (4)))) + b;
    t = d + ((a) ^ (b) ^ (c)) + X[12] + (((md5_word_t)~0) ^ 0x1924661a); d = (((t) << (11)) | ((t) >> (32 - (11)))) + a;
    t = c + ((d) ^ (a) ^ (b)) + X[15] + 0x1fa27cf8; c = (((t) << (16)) | ((t) >> (32 - (16)))) + d;
    t = b + ((c) ^ (d) ^ (a)) + X[2] + (((md5_word_t)~0) ^ 0x3b53a99a); b = (((t) << (23)) | ((t) >> (32 - (23)))) + c;
    t = a + ((c) ^ ((b) | ~(d))) + X[0] + (((md5_word_t)~0) ^ 0x0bd6ddbb); a = (((t) << (6)) | ((t) >> (32 - (6)))) + b;
    t = d + ((b) ^ ((a) | ~(c))) + X[7] + 0x432aff97; d = (((t) << (10)) | ((t) >> (32 - (10)))) + a;
    t = c + ((a) ^ ((d) | ~(b))) + X[14] + (((md5_word_t)~0) ^ 0x546bdc58); c = (((t) << (15)) | ((t) >> (32 - (15)))) + d;
    t = b + ((d) ^ ((c) | ~(a))) + X[5] + (((md5_word_t)~0) ^ 0x036c5fc6); b = (((t) << (21)) | ((t) >> (32 - (21)))) + c;
    t = a + ((c) ^ ((b) | ~(d))) + X[12] + 0x655b59c3; a = (((t) << (6)) | ((t) >> (32 - (6)))) + b;
    t = d + ((b) ^ ((a) | ~(c))) + X[3] + (((md5_word_t)~0) ^ 0x70f3336d); d = (((t) << (10)) | ((t) >> (32 - (10)))) + a;
    t = c + ((a) ^ ((d) | ~(b))) + X[10] + (((md5_word_t)~0) ^ 0x00100b82); c = (((t) << (15)) | ((t) >> (32 - (15)))) + d;
    t = b + ((d) ^ ((c) | ~(a))) + X[1] + (((md5_word_t)~0) ^ 0x7a7ba22e); b = (((t) << (21)) | ((t) >> (32 - (21)))) + c;
    t = a + ((c) ^ ((b) | ~(d))) + X[8] + 0x6fa87e4f; a = (((t) << (6)) | ((t) >> (32 - (6)))) + b;
    t = d + ((b) ^ ((a) | ~(c))) + X[15] + (((md5_word_t)~0) ^ 0x01d3191f); d = (((t) << (10)) | ((t) >> (32 - (10)))) + a;
    t = c + ((a) ^ ((d) | ~(b))) + X[6] + (((md5_word_t)~0) ^ 0x5cfebceb); c = (((t) << (15)) | ((t) >> (32 - (15)))) + d;
    t = b + ((d) ^ ((c) | ~(a))) + X[13] + 0x4e0811a1; b = (((t) << (21)) | ((t) >> (32 - (21)))) + c;
    t = a + ((c) ^ ((b) | ~(d))) + X[4] + (((md5_word_t)~0) ^ 0x08ac817d); a = (((t) << (6)) | ((t) >> (32 - (6)))) + b;
    t = d + ((b) ^ ((a) | ~(c))) + X[11] + (((md5_word_t)~0) ^ 0x42c50dca); d = (((t) << (10)) | ((t) >> (32 - (10)))) + a;
    t = c + ((a) ^ ((d) | ~(b))) + X[2] + 0x2ad7d2bb; c = (((t) << (15)) | ((t) >> (32 - (15)))) + d;
    t = b + ((d) ^ ((c) | ~(a))) + X[9] + (((md5_word_t)~0) ^ 0x14792c6e); b = (((t) << (21)) | ((t) >> (32 - (21)))) + c;
    pms->abcd[0] += a;
    pms->abcd[1] += b;
    pms->abcd[2] += c;
    pms->abcd[3] += d;
}
void
md5_init(md5_state_t *pms)
{
    pms->count[0] = pms->count[1] = 0;
    pms->abcd[0] = 0x67452301;
    pms->abcd[1] = ((md5_word_t)~0) ^ 0x10325476;
    pms->abcd[2] = ((md5_word_t)~0) ^ 0x67452301;
    pms->abcd[3] = 0x10325476;
}
void
md5_append(md5_state_t *pms, const md5_byte_t *data, int nbytes)
{
    const md5_byte_t *p = data;
    int left = nbytes;
    int offset = (pms->count[0] >> 3) & 63;
    md5_word_t nbits = (md5_word_t)(nbytes << 3);
    if (nbytes <= 0)
 return;
    pms->count[1] += nbytes >> 29;
    pms->count[0] += nbits;
    if (pms->count[0] < nbits)
 pms->count[1]++;
    if (offset) {
 int copy = (offset + nbytes > 64 ? 64 - offset : nbytes);
 memcpy(pms->buf + offset, p, copy);
 if (offset + copy < 64)
     return;
 p += copy;
 left -= copy;
 md5_process(pms, pms->buf);
    }
    for (; left >= 64; p += 64, left -= 64)
 md5_process(pms, p);
    if (left)
 memcpy(pms->buf, p, left);
}
void
md5_finish(md5_state_t *pms, md5_byte_t digest[16])
{
    static const md5_byte_t pad[64] = {
 0x80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    };
    md5_byte_t data[8];
    int i;
    for (i = 0; i < 8; ++i)
 data[i] = (md5_byte_t)(pms->count[i >> 2] >> ((i & 3) << 3));
    md5_append(pms, pad, ((55 - (pms->count[0] >> 3)) & 63) + 1);
    md5_append(pms, data, 8);
    for (i = 0; i < 16; ++i)
 digest[i] = (md5_byte_t)(pms->abcd[i >> 2] >> ((i & 3) << 3));
}
