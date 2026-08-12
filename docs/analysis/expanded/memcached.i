#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wpedantic"
typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;
typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;
typedef signed long int __int64_t;
typedef unsigned long int __uint64_t;
typedef __int8_t __int_least8_t;
typedef __uint8_t __uint_least8_t;
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
typedef __int64_t __int_least64_t;
typedef __uint64_t __uint_least64_t;
typedef long int __quad_t;
typedef unsigned long int __u_quad_t;
typedef long int __intmax_t;
typedef unsigned long int __uintmax_t;
typedef unsigned long int __dev_t;
typedef unsigned int __uid_t;
typedef unsigned int __gid_t;
typedef unsigned long int __ino_t;
typedef unsigned long int __ino64_t;
typedef unsigned int __mode_t;
typedef unsigned long int __nlink_t;
typedef long int __off_t;
typedef long int __off64_t;
typedef int __pid_t;
typedef struct { int __val[2]; } __fsid_t;
typedef long int __clock_t;
typedef unsigned long int __rlim_t;
typedef unsigned long int __rlim64_t;
typedef unsigned int __id_t;
typedef long int __time_t;
typedef unsigned int __useconds_t;
typedef long int __suseconds_t;
typedef long int __suseconds64_t;
typedef int __daddr_t;
typedef int __key_t;
typedef int __clockid_t;
typedef void * __timer_t;
typedef long int __blksize_t;
typedef long int __blkcnt_t;
typedef long int __blkcnt64_t;
typedef unsigned long int __fsblkcnt_t;
typedef unsigned long int __fsblkcnt64_t;
typedef unsigned long int __fsfilcnt_t;
typedef unsigned long int __fsfilcnt64_t;
typedef long int __fsword_t;
typedef long int __ssize_t;
typedef long int __syscall_slong_t;
typedef unsigned long int __syscall_ulong_t;
typedef __off64_t __loff_t;
typedef char *__caddr_t;
typedef long int __intptr_t;
typedef unsigned int __socklen_t;
typedef int __sig_atomic_t;
typedef __int8_t int8_t;
typedef __int16_t int16_t;
typedef __int32_t int32_t;
typedef __int64_t int64_t;
typedef __uint8_t uint8_t;
typedef __uint16_t uint16_t;
typedef __uint32_t uint32_t;
typedef __uint64_t uint64_t;
typedef __int_least8_t int_least8_t;
typedef __int_least16_t int_least16_t;
typedef __int_least32_t int_least32_t;
typedef __int_least64_t int_least64_t;
typedef __uint_least8_t uint_least8_t;
typedef __uint_least16_t uint_least16_t;
typedef __uint_least32_t uint_least32_t;
typedef __uint_least64_t uint_least64_t;
typedef signed char int_fast8_t;
typedef long int int_fast16_t;
typedef long int int_fast32_t;
typedef long int int_fast64_t;
typedef unsigned char uint_fast8_t;
typedef unsigned long int uint_fast16_t;
typedef unsigned long int uint_fast32_t;
typedef unsigned long int uint_fast64_t;
typedef long int intptr_t;
typedef unsigned long int uintptr_t;
typedef __intmax_t intmax_t;
typedef __uintmax_t uintmax_t;
#pragma GCC diagnostic pop
typedef int __gwchar_t;

typedef struct
  {
    long int quot;
    long int rem;
  } imaxdiv_t;
extern intmax_t imaxabs (intmax_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern uintmax_t umaxabs (intmax_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern imaxdiv_t imaxdiv (intmax_t __numer, intmax_t __denom)
      __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern intmax_t strtoimax (const char *__restrict __nptr,
      char **__restrict __endptr, int __base) __attribute__ ((__nothrow__ , __leaf__));
extern uintmax_t strtoumax (const char *__restrict __nptr,
       char ** __restrict __endptr, int __base) __attribute__ ((__nothrow__ , __leaf__));
extern intmax_t wcstoimax (const __gwchar_t *__restrict __nptr,
      __gwchar_t **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__));
extern uintmax_t wcstoumax (const __gwchar_t *__restrict __nptr,
       __gwchar_t ** __restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__));
extern intmax_t strtoimax (const char *__restrict __nptr, char **__restrict __endptr, int __base) __asm__ ("" "__isoc23_strtoimax") __attribute__ ((__nothrow__ , __leaf__));
extern uintmax_t strtoumax (const char *__restrict __nptr, char **__restrict __endptr, int __base) __asm__ ("" "__isoc23_strtoumax") __attribute__ ((__nothrow__ , __leaf__));
extern intmax_t wcstoimax (const __gwchar_t *__restrict __nptr, __gwchar_t **__restrict __endptr, int __base) __asm__ ("" "__isoc23_wcstoimax") __attribute__ ((__nothrow__ , __leaf__));
extern uintmax_t wcstoumax (const __gwchar_t *__restrict __nptr, __gwchar_t **__restrict __endptr, int __base) __asm__ ("" "__isoc23_wcstoumax") __attribute__ ((__nothrow__ , __leaf__));


typedef __u_char u_char;
typedef __u_short u_short;
typedef __u_int u_int;
typedef __u_long u_long;
typedef __quad_t quad_t;
typedef __u_quad_t u_quad_t;
typedef __fsid_t fsid_t;
typedef __loff_t loff_t;
typedef __ino_t ino_t;
typedef __ino64_t ino64_t;
typedef __dev_t dev_t;
typedef __gid_t gid_t;
typedef __mode_t mode_t;
typedef __nlink_t nlink_t;
typedef __uid_t uid_t;
typedef __off_t off_t;
typedef __off64_t off64_t;
typedef __pid_t pid_t;
typedef __id_t id_t;
typedef __ssize_t ssize_t;
typedef __daddr_t daddr_t;
typedef __caddr_t caddr_t;
typedef __key_t key_t;
typedef __clock_t clock_t;
typedef __clockid_t clockid_t;
typedef __time_t time_t;
typedef __timer_t timer_t;
typedef __useconds_t useconds_t;
typedef __suseconds_t suseconds_t;
typedef long unsigned int size_t;
typedef unsigned long int ulong;
typedef unsigned short int ushort;
typedef unsigned int uint;
typedef __uint8_t u_int8_t;
typedef __uint16_t u_int16_t;
typedef __uint32_t u_int32_t;
typedef __uint64_t u_int64_t;
typedef int register_t __attribute__ ((__mode__ (__word__)));
static __inline __uint16_t
__bswap_16 (__uint16_t __bsx)
{
  return __builtin_bswap16 (__bsx);
}
static __inline __uint32_t
__bswap_32 (__uint32_t __bsx)
{
  return __builtin_bswap32 (__bsx);
}
__extension__ static __inline __uint64_t
__bswap_64 (__uint64_t __bsx)
{
  return __builtin_bswap64 (__bsx);
}
static __inline __uint16_t
__uint16_identity (__uint16_t __x)
{
  return __x;
}
static __inline __uint32_t
__uint32_identity (__uint32_t __x)
{
  return __x;
}
static __inline __uint64_t
__uint64_identity (__uint64_t __x)
{
  return __x;
}
typedef struct
{
  unsigned long int __val[(1024 / (8 * sizeof (unsigned long int)))];
} __sigset_t;
typedef __sigset_t sigset_t;
struct timeval
{
  __time_t tv_sec;
  __suseconds_t tv_usec;
};
struct timespec
{
  __time_t tv_sec;
  __syscall_slong_t tv_nsec;
};
typedef long int __fd_mask;
typedef struct
  {
    __fd_mask fds_bits[1024 / (8 * (int) sizeof (__fd_mask))];
  } fd_set;
typedef __fd_mask fd_mask;

extern int select (int __nfds, fd_set *__restrict __readfds,
     fd_set *__restrict __writefds,
     fd_set *__restrict __exceptfds,
     struct timeval *__restrict __timeout);
extern int pselect (int __nfds, fd_set *__restrict __readfds,
      fd_set *__restrict __writefds,
      fd_set *__restrict __exceptfds,
      const struct timespec *__restrict __timeout,
      const __sigset_t *__restrict __sigmask);
extern long int __fdelt_chk (long int __d);
extern long int __fdelt_warn (long int __d)
  __attribute__((__warning__ ("bit outside of fd_set selected")));

typedef __blksize_t blksize_t;
typedef __blkcnt_t blkcnt_t;
typedef __fsblkcnt_t fsblkcnt_t;
typedef __fsfilcnt_t fsfilcnt_t;
typedef __blkcnt64_t blkcnt64_t;
typedef __fsblkcnt64_t fsblkcnt64_t;
typedef __fsfilcnt64_t fsfilcnt64_t;
typedef union
{
  __extension__ unsigned long long int __value64;
  struct
  {
    unsigned int __low;
    unsigned int __high;
  } __value32;
} __atomic_wide_counter;
typedef struct __pthread_internal_list
{
  struct __pthread_internal_list *__prev;
  struct __pthread_internal_list *__next;
} __pthread_list_t;
typedef struct __pthread_internal_slist
{
  struct __pthread_internal_slist *__next;
} __pthread_slist_t;
struct __pthread_mutex_s
{
  int __lock;
  unsigned int __count;
  int __owner;
  unsigned int __nusers;
  int __kind;
  short __spins;
  short __unused;
  __pthread_list_t __list;
};
struct __pthread_rwlock_arch_t
{
  unsigned int __readers;
  unsigned int __writers;
  unsigned int __wrphase_futex;
  unsigned int __writers_futex;
  unsigned int __pad3;
  unsigned int __pad4;
  int __cur_writer;
  int __shared;
  unsigned long int __pad1;
  unsigned long int __pad2;
  unsigned int __flags;
};
struct __pthread_cond_s
{
  __atomic_wide_counter __wseq;
  __atomic_wide_counter __g1_start;
  unsigned int __g_size[2] ;
  unsigned int __g1_orig_size;
  unsigned int __wrefs;
  unsigned int __g_signals[2];
  unsigned int __unused_initialized_1;
  unsigned int __unused_initialized_2;
};
typedef unsigned int __tss_t;
typedef unsigned long int __thrd_t;
typedef struct
{
  int __data ;
} __once_flag;
typedef unsigned long int pthread_t;
typedef union
{
  char __size[4];
  int __align;
} pthread_mutexattr_t;
typedef union
{
  char __size[4];
  int __align;
} pthread_condattr_t;
typedef unsigned int pthread_key_t;
typedef int pthread_once_t;
union pthread_attr_t
{
  char __size[56];
  long int __align;
};
typedef union pthread_attr_t pthread_attr_t;
typedef union
{
  struct __pthread_mutex_s __data;
  char __size[40];
  long int __align;
} pthread_mutex_t;
typedef union
{
  struct __pthread_cond_s __data;
  char __size[48];
  __extension__ long long int __align;
} pthread_cond_t;
typedef union
{
  struct __pthread_rwlock_arch_t __data;
  char __size[56];
  long int __align;
} pthread_rwlock_t;
typedef union
{
  char __size[8];
  long int __align;
} pthread_rwlockattr_t;
typedef volatile int pthread_spinlock_t;
typedef union
{
  char __size[32];
  long int __align;
} pthread_barrier_t;
typedef union
{
  char __size[4];
  int __align;
} pthread_barrierattr_t;


struct iovec
  {
    void *iov_base;
    size_t iov_len;
  };
typedef __socklen_t socklen_t;
enum __socket_type
{
  SOCK_STREAM = 1,
  SOCK_DGRAM = 2,
  SOCK_RAW = 3,
  SOCK_RDM = 4,
  SOCK_SEQPACKET = 5,
  SOCK_DCCP = 6,
  SOCK_PACKET = 10,
  SOCK_CLOEXEC = 02000000,
  SOCK_NONBLOCK = 00004000
};
typedef unsigned short int sa_family_t;
struct __attribute__ ((__may_alias__)) sockaddr
  {
    sa_family_t sa_family;
    char sa_data[14];
  };
struct __attribute__ ((__may_alias__)) sockaddr_storage
  {
    sa_family_t ss_family;
    char __ss_padding[(128 - (sizeof (unsigned short int)) - sizeof (unsigned long int))];
    unsigned long int __ss_align;
  };
enum
  {
    MSG_OOB = 0x01,
    MSG_PEEK = 0x02,
    MSG_DONTROUTE = 0x04,
    MSG_TRYHARD = MSG_DONTROUTE,
    MSG_CTRUNC = 0x08,
    MSG_PROXY = 0x10,
    MSG_TRUNC = 0x20,
    MSG_DONTWAIT = 0x40,
    MSG_EOR = 0x80,
    MSG_WAITALL = 0x100,
    MSG_FIN = 0x200,
    MSG_SYN = 0x400,
    MSG_CONFIRM = 0x800,
    MSG_RST = 0x1000,
    MSG_ERRQUEUE = 0x2000,
    MSG_NOSIGNAL = 0x4000,
    MSG_MORE = 0x8000,
    MSG_WAITFORONE = 0x10000,
    MSG_BATCH = 0x40000,
    MSG_SOCK_DEVMEM = 0x2000000,
    MSG_ZEROCOPY = 0x4000000,
    MSG_FASTOPEN = 0x20000000,
    MSG_CMSG_CLOEXEC = 0x40000000
  };
struct msghdr
  {
    void *msg_name;
    socklen_t msg_namelen;
    struct iovec *msg_iov;
    size_t msg_iovlen;
    void *msg_control;
    size_t msg_controllen;
    int msg_flags;
  };
struct cmsghdr
  {
    size_t cmsg_len;
    int cmsg_level;
    int cmsg_type;
    __extension__ unsigned char __cmsg_data [];
  };
extern struct cmsghdr *__cmsg_nxthdr (struct msghdr *__mhdr,
          struct cmsghdr *__cmsg) __attribute__ ((__nothrow__ , __leaf__));
extern __inline __attribute__ ((__gnu_inline__)) struct cmsghdr *
__attribute__ ((__nothrow__ , __leaf__)) __cmsg_nxthdr (struct msghdr *__mhdr, struct cmsghdr *__cmsg)
{
  unsigned char * __msg_control_ptr = (unsigned char *) __mhdr->msg_control;
  unsigned char * __cmsg_ptr = (unsigned char *) __cmsg;
  size_t __size_needed = sizeof (struct cmsghdr)
                         + ((sizeof (size_t) - ((__cmsg->cmsg_len) & (sizeof (size_t) - 1))) & (sizeof (size_t) - 1));
  if ((size_t) __cmsg->cmsg_len < sizeof (struct cmsghdr))
    return (struct cmsghdr *) 0;
  if (((size_t)
         (__msg_control_ptr + __mhdr->msg_controllen - __cmsg_ptr)
       < __size_needed)
      || ((size_t)
            (__msg_control_ptr + __mhdr->msg_controllen - __cmsg_ptr
             - __size_needed)
          < __cmsg->cmsg_len))
    return (struct cmsghdr *) 0;
  __cmsg = (struct cmsghdr *) ((unsigned char *) __cmsg
          + (((__cmsg->cmsg_len) + sizeof (size_t) - 1) & (size_t) ~(sizeof (size_t) - 1)));
  return __cmsg;
}
enum
  {
    SCM_RIGHTS = 0x01
    , SCM_CREDENTIALS = 0x02
    , SCM_SECURITY = 0x03
    , SCM_PIDFD = 0x04
  };
struct ucred
{
  pid_t pid;
  uid_t uid;
  gid_t gid;
};
typedef struct {
 unsigned long fds_bits[1024 / (8 * sizeof(long))];
} __kernel_fd_set;
typedef void (*__kernel_sighandler_t)(int);
typedef int __kernel_key_t;
typedef int __kernel_mqd_t;
typedef unsigned short __kernel_old_uid_t;
typedef unsigned short __kernel_old_gid_t;
typedef unsigned long __kernel_old_dev_t;
typedef long __kernel_long_t;
typedef unsigned long __kernel_ulong_t;
typedef __kernel_ulong_t __kernel_ino_t;
typedef unsigned int __kernel_mode_t;
typedef int __kernel_pid_t;
typedef int __kernel_ipc_pid_t;
typedef unsigned int __kernel_uid_t;
typedef unsigned int __kernel_gid_t;
typedef __kernel_long_t __kernel_suseconds_t;
typedef int __kernel_daddr_t;
typedef unsigned int __kernel_uid32_t;
typedef unsigned int __kernel_gid32_t;
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef __kernel_long_t __kernel_ptrdiff_t;
typedef struct {
 int val[2];
} __kernel_fsid_t;
typedef __kernel_long_t __kernel_off_t;
typedef long long __kernel_loff_t;
typedef unsigned long long __kernel_uoff_t;
typedef __kernel_long_t __kernel_old_time_t;
typedef __kernel_long_t __kernel_time_t;
typedef long long __kernel_time64_t;
typedef __kernel_long_t __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef char * __kernel_caddr_t;
typedef unsigned short __kernel_uid16_t;
typedef unsigned short __kernel_gid16_t;
struct linger
  {
    int l_onoff;
    int l_linger;
  };
struct osockaddr
{
  unsigned short int sa_family;
  unsigned char sa_data[14];
};
enum
{
  SHUT_RD = 0,
  SHUT_WR,
  SHUT_RDWR
};
typedef union { struct sockaddr *__restrict __sockaddr__; struct sockaddr_at *__restrict __sockaddr_at__; struct sockaddr_ax25 *__restrict __sockaddr_ax25__; struct sockaddr_dl *__restrict __sockaddr_dl__; struct sockaddr_eon *__restrict __sockaddr_eon__; struct sockaddr_in *__restrict __sockaddr_in__; struct sockaddr_in6 *__restrict __sockaddr_in6__; struct sockaddr_inarp *__restrict __sockaddr_inarp__; struct sockaddr_ipx *__restrict __sockaddr_ipx__; struct sockaddr_iso *__restrict __sockaddr_iso__; struct sockaddr_ns *__restrict __sockaddr_ns__; struct sockaddr_un *__restrict __sockaddr_un__; struct sockaddr_x25 *__restrict __sockaddr_x25__;
       } __SOCKADDR_ARG __attribute__ ((__transparent_union__));
typedef union { const struct sockaddr *__restrict __sockaddr__; const struct sockaddr_at *__restrict __sockaddr_at__; const struct sockaddr_ax25 *__restrict __sockaddr_ax25__; const struct sockaddr_dl *__restrict __sockaddr_dl__; const struct sockaddr_eon *__restrict __sockaddr_eon__; const struct sockaddr_in *__restrict __sockaddr_in__; const struct sockaddr_in6 *__restrict __sockaddr_in6__; const struct sockaddr_inarp *__restrict __sockaddr_inarp__; const struct sockaddr_ipx *__restrict __sockaddr_ipx__; const struct sockaddr_iso *__restrict __sockaddr_iso__; const struct sockaddr_ns *__restrict __sockaddr_ns__; const struct sockaddr_un *__restrict __sockaddr_un__; const struct sockaddr_x25 *__restrict __sockaddr_x25__;
       } __CONST_SOCKADDR_ARG __attribute__ ((__transparent_union__));
struct mmsghdr
  {
    struct msghdr msg_hdr;
    unsigned int msg_len;
  };
extern int socket (int __domain, int __type, int __protocol) __attribute__ ((__nothrow__ , __leaf__));
extern int socketpair (int __domain, int __type, int __protocol,
         int __fds[2]) __attribute__ ((__nothrow__ , __leaf__));
extern int bind (int __fd, __CONST_SOCKADDR_ARG __addr, socklen_t __len)
     __attribute__ ((__nothrow__ , __leaf__));
extern int getsockname (int __fd, __SOCKADDR_ARG __addr,
   socklen_t *__restrict __len) __attribute__ ((__nothrow__ , __leaf__));
extern int connect (int __fd, __CONST_SOCKADDR_ARG __addr, socklen_t __len);
extern int getpeername (int __fd, __SOCKADDR_ARG __addr,
   socklen_t *__restrict __len) __attribute__ ((__nothrow__ , __leaf__));
extern ssize_t send (int __fd, const void *__buf, size_t __n, int __flags);
extern ssize_t recv (int __fd, void *__buf, size_t __n, int __flags);
extern ssize_t sendto (int __fd, const void *__buf, size_t __n,
         int __flags, __CONST_SOCKADDR_ARG __addr,
         socklen_t __addr_len);
extern ssize_t recvfrom (int __fd, void *__restrict __buf, size_t __n,
    int __flags, __SOCKADDR_ARG __addr,
    socklen_t *__restrict __addr_len);
extern ssize_t sendmsg (int __fd, const struct msghdr *__message,
   int __flags);
extern int sendmmsg (int __fd, struct mmsghdr *__vmessages,
       unsigned int __vlen, int __flags);
extern ssize_t recvmsg (int __fd, struct msghdr *__message, int __flags);
extern int recvmmsg (int __fd, struct mmsghdr *__vmessages,
       unsigned int __vlen, int __flags,
       struct timespec *__tmo);
extern int getsockopt (int __fd, int __level, int __optname,
         void *__restrict __optval,
         socklen_t *__restrict __optlen) __attribute__ ((__nothrow__ , __leaf__));
extern int setsockopt (int __fd, int __level, int __optname,
         const void *__optval, socklen_t __optlen) __attribute__ ((__nothrow__ , __leaf__));
extern int listen (int __fd, int __n) __attribute__ ((__nothrow__ , __leaf__));
extern int accept (int __fd, __SOCKADDR_ARG __addr,
     socklen_t *__restrict __addr_len);
extern int accept4 (int __fd, __SOCKADDR_ARG __addr,
      socklen_t *__restrict __addr_len, int __flags);
extern int shutdown (int __fd, int __how) __attribute__ ((__nothrow__ , __leaf__));
extern int sockatmark (int __fd) __attribute__ ((__nothrow__ , __leaf__));
extern int isfdtype (int __fd, int __fdtype) __attribute__ ((__nothrow__ , __leaf__));
extern ssize_t __recv_chk (int __fd, void *__buf, size_t __n, size_t __buflen,
      int __flags);
extern ssize_t __recv_alias (int __fd, void *__buf, size_t __n, int __flags) __asm__ ("" "recv");
extern ssize_t __recv_chk_warn (int __fd, void *__buf, size_t __n, size_t __buflen, int __flags) __asm__ ("" "__recv_chk")
     __attribute__((__warning__ ("recv called with bigger length than size of destination " "buffer")));
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) ssize_t
recv (int __fd, void * __buf, size_t __n,
      int __flags)
    
{
  size_t __sz = __builtin_dynamic_object_size (__buf, 0);
  if (((__builtin_constant_p (__sz) && (__sz) == (long unsigned int) -1) || (((__typeof (__n)) 0 < (__typeof (__n)) -1 || (__builtin_constant_p (__n) && (__n) > 0)) && __builtin_constant_p ((((long unsigned int) (__n)) <= ((__sz)) / ((sizeof (char))))) && (((long unsigned int) (__n)) <= ((__sz)) / ((sizeof (char)))))))
    return __recv_alias (__fd, __buf, __n, __flags);
  if ((((__typeof (__n)) 0 < (__typeof (__n)) -1 || (__builtin_constant_p (__n) && (__n) > 0)) && __builtin_constant_p ((((long unsigned int) (__n)) <= (__sz) / (sizeof (char)))) && !(((long unsigned int) (__n)) <= (__sz) / (sizeof (char)))))
    return __recv_chk_warn (__fd, __buf, __n, __sz, __flags);
  return __recv_chk (__fd, __buf, __n, __sz, __flags);
}
extern ssize_t __recvfrom_chk (int __fd, void *__restrict __buf, size_t __n,
          size_t __buflen, int __flags,
          __SOCKADDR_ARG __addr,
          socklen_t *__restrict __addr_len);
extern ssize_t __recvfrom_alias (int __fd, void *__restrict __buf, size_t __n, int __flags, __SOCKADDR_ARG __addr, socklen_t *__restrict __addr_len) __asm__ ("" "recvfrom");
extern ssize_t __recvfrom_chk_warn (int __fd, void *__restrict __buf, size_t __n, size_t __buflen, int __flags, __SOCKADDR_ARG __addr, socklen_t *__restrict __addr_len) __asm__ ("" "__recvfrom_chk")
     __attribute__((__warning__ ("recvfrom called with bigger length than size of " "destination buffer")));
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) ssize_t
recvfrom (int __fd, void * __restrict __buf,
   size_t __n, int __flags,
   __SOCKADDR_ARG __addr, socklen_t *__restrict __addr_len)
    
{
  size_t __sz = __builtin_dynamic_object_size (__buf, 0);
  if (((__builtin_constant_p (__sz) && (__sz) == (long unsigned int) -1) || (((__typeof (__n)) 0 < (__typeof (__n)) -1 || (__builtin_constant_p (__n) && (__n) > 0)) && __builtin_constant_p ((((long unsigned int) (__n)) <= ((__sz)) / ((sizeof (char))))) && (((long unsigned int) (__n)) <= ((__sz)) / ((sizeof (char)))))))
    return __recvfrom_alias (__fd, __buf, __n, __flags, __addr, __addr_len);
  if ((((__typeof (__n)) 0 < (__typeof (__n)) -1 || (__builtin_constant_p (__n) && (__n) > 0)) && __builtin_constant_p ((((long unsigned int) (__n)) <= (__sz) / (sizeof (char)))) && !(((long unsigned int) (__n)) <= (__sz) / (sizeof (char)))))
    return __recvfrom_chk_warn (__fd, __buf, __n, __sz, __flags, __addr,
    __addr_len);
  return __recvfrom_chk (__fd, __buf, __n, __sz, __flags, __addr, __addr_len);
}


struct timezone
  {
    int tz_minuteswest;
    int tz_dsttime;
  };
extern int gettimeofday (struct timeval *__restrict __tv,
    void *__restrict __tz) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int settimeofday (const struct timeval *__tv,
    const struct timezone *__tz)
     __attribute__ ((__nothrow__ , __leaf__));
extern int adjtime (const struct timeval *__delta,
      struct timeval *__olddelta) __attribute__ ((__nothrow__ , __leaf__));
enum __itimer_which
  {
    ITIMER_REAL = 0,
    ITIMER_VIRTUAL = 1,
    ITIMER_PROF = 2
  };
struct itimerval
  {
    struct timeval it_interval;
    struct timeval it_value;
  };
typedef enum __itimer_which __itimer_which_t;
extern int getitimer (__itimer_which_t __which,
        struct itimerval *__value) __attribute__ ((__nothrow__ , __leaf__));
extern int setitimer (__itimer_which_t __which,
        const struct itimerval *__restrict __new,
        struct itimerval *__restrict __old) __attribute__ ((__nothrow__ , __leaf__));
extern int utimes (const char *__file, const struct timeval __tvp[2])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int lutimes (const char *__file, const struct timeval __tvp[2])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int futimes (int __fd, const struct timeval __tvp[2]) __attribute__ ((__nothrow__ , __leaf__));
extern int futimesat (int __fd, const char *__file,
        const struct timeval __tvp[2]) __attribute__ ((__nothrow__ , __leaf__));


typedef uint32_t in_addr_t;
struct in_addr
  {
    in_addr_t s_addr;
  };
struct ip_opts
  {
    struct in_addr ip_dst;
    char ip_opts[40];
  };
struct in_pktinfo
  {
    int ipi_ifindex;
    struct in_addr ipi_spec_dst;
    struct in_addr ipi_addr;
  };
enum
  {
    IPPROTO_IP = 0,
    IPPROTO_ICMP = 1,
    IPPROTO_IGMP = 2,
    IPPROTO_IPIP = 4,
    IPPROTO_TCP = 6,
    IPPROTO_EGP = 8,
    IPPROTO_PUP = 12,
    IPPROTO_UDP = 17,
    IPPROTO_IDP = 22,
    IPPROTO_TP = 29,
    IPPROTO_DCCP = 33,
    IPPROTO_IPV6 = 41,
    IPPROTO_RSVP = 46,
    IPPROTO_GRE = 47,
    IPPROTO_ESP = 50,
    IPPROTO_AH = 51,
    IPPROTO_MTP = 92,
    IPPROTO_BEETPH = 94,
    IPPROTO_ENCAP = 98,
    IPPROTO_PIM = 103,
    IPPROTO_COMP = 108,
    IPPROTO_L2TP = 115,
    IPPROTO_SCTP = 132,
    IPPROTO_UDPLITE = 136,
    IPPROTO_MPLS = 137,
    IPPROTO_ETHERNET = 143,
    IPPROTO_RAW = 255,
    IPPROTO_SMC = 256,
    IPPROTO_MPTCP = 262,
    IPPROTO_MAX
  };
enum
  {
    IPPROTO_HOPOPTS = 0,
    IPPROTO_ROUTING = 43,
    IPPROTO_FRAGMENT = 44,
    IPPROTO_ICMPV6 = 58,
    IPPROTO_NONE = 59,
    IPPROTO_DSTOPTS = 60,
    IPPROTO_MH = 135
  };
typedef uint16_t in_port_t;
enum
  {
    IPPORT_ECHO = 7,
    IPPORT_DISCARD = 9,
    IPPORT_SYSTAT = 11,
    IPPORT_DAYTIME = 13,
    IPPORT_NETSTAT = 15,
    IPPORT_FTP = 21,
    IPPORT_TELNET = 23,
    IPPORT_SMTP = 25,
    IPPORT_TIMESERVER = 37,
    IPPORT_NAMESERVER = 42,
    IPPORT_WHOIS = 43,
    IPPORT_MTP = 57,
    IPPORT_TFTP = 69,
    IPPORT_RJE = 77,
    IPPORT_FINGER = 79,
    IPPORT_TTYLINK = 87,
    IPPORT_SUPDUP = 95,
    IPPORT_EXECSERVER = 512,
    IPPORT_LOGINSERVER = 513,
    IPPORT_CMDSERVER = 514,
    IPPORT_EFSSERVER = 520,
    IPPORT_BIFFUDP = 512,
    IPPORT_WHOSERVER = 513,
    IPPORT_ROUTESERVER = 520,
    IPPORT_RESERVED = 1024,
    IPPORT_USERRESERVED = 5000
  };
struct in6_addr
  {
    union
      {
 uint8_t __u6_addr8[16];
 uint16_t __u6_addr16[8];
 uint32_t __u6_addr32[4];
      } __in6_u;
  };
extern const struct in6_addr in6addr_any;
extern const struct in6_addr in6addr_loopback;
struct __attribute__ ((__may_alias__)) sockaddr_in
  {
    sa_family_t sin_family;
    in_port_t sin_port;
    struct in_addr sin_addr;
    unsigned char sin_zero[sizeof (struct sockaddr)
      - (sizeof (unsigned short int))
      - sizeof (in_port_t)
      - sizeof (struct in_addr)];
  };
struct __attribute__ ((__may_alias__)) sockaddr_in6
  {
    sa_family_t sin6_family;
    in_port_t sin6_port;
    uint32_t sin6_flowinfo;
    struct in6_addr sin6_addr;
    uint32_t sin6_scope_id;
  };
struct ip_mreq
  {
    struct in_addr imr_multiaddr;
    struct in_addr imr_interface;
  };
struct ip_mreqn
  {
    struct in_addr imr_multiaddr;
    struct in_addr imr_address;
    int imr_ifindex;
  };
struct ip_mreq_source
  {
    struct in_addr imr_multiaddr;
    struct in_addr imr_interface;
    struct in_addr imr_sourceaddr;
  };
struct ipv6_mreq
  {
    struct in6_addr ipv6mr_multiaddr;
    unsigned int ipv6mr_interface;
  };
struct group_req
  {
    uint32_t gr_interface;
    struct sockaddr_storage gr_group;
  };
struct group_source_req
  {
    uint32_t gsr_interface;
    struct sockaddr_storage gsr_group;
    struct sockaddr_storage gsr_source;
  };
struct ip_msfilter
  {
    struct in_addr imsf_multiaddr;
    struct in_addr imsf_interface;
    uint32_t imsf_fmode;
    uint32_t imsf_numsrc;
    struct in_addr imsf_slist[1];
  };
struct group_filter
  {
    uint32_t gf_interface;
    struct sockaddr_storage gf_group;
    uint32_t gf_fmode;
    uint32_t gf_numsrc;
    struct sockaddr_storage gf_slist[1];
};
extern uint32_t ntohl (uint32_t __netlong) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern uint16_t ntohs (uint16_t __netshort)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern uint32_t htonl (uint32_t __hostlong)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern uint16_t htons (uint16_t __hostshort)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern int bindresvport (int __sockfd, struct sockaddr_in *__sock_in) __attribute__ ((__nothrow__ , __leaf__));
extern int bindresvport6 (int __sockfd, struct sockaddr_in6 *__sock_in)
     __attribute__ ((__nothrow__ , __leaf__));
struct cmsghdr;
struct in6_pktinfo
  {
    struct in6_addr ipi6_addr;
    unsigned int ipi6_ifindex;
  };
struct ip6_mtuinfo
  {
    struct sockaddr_in6 ip6m_addr;
    uint32_t ip6m_mtu;
  };
extern int inet6_option_space (int __nbytes)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__deprecated__));
extern int inet6_option_init (void *__bp, struct cmsghdr **__cmsgp,
         int __type) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__deprecated__));
extern int inet6_option_append (struct cmsghdr *__cmsg,
    const uint8_t *__typep, int __multx,
    int __plusy) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__deprecated__));
extern uint8_t *inet6_option_alloc (struct cmsghdr *__cmsg, int __datalen,
        int __multx, int __plusy)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__deprecated__));
extern int inet6_option_next (const struct cmsghdr *__cmsg,
         uint8_t **__tptrp)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__deprecated__));
extern int inet6_option_find (const struct cmsghdr *__cmsg,
         uint8_t **__tptrp, int __type)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__deprecated__));
extern int inet6_opt_init (void *__extbuf, socklen_t __extlen) __attribute__ ((__nothrow__ , __leaf__));
extern int inet6_opt_append (void *__extbuf, socklen_t __extlen, int __offset,
        uint8_t __type, socklen_t __len, uint8_t __align,
        void **__databufp) __attribute__ ((__nothrow__ , __leaf__));
extern int inet6_opt_finish (void *__extbuf, socklen_t __extlen, int __offset)
     __attribute__ ((__nothrow__ , __leaf__));
extern int inet6_opt_set_val (void *__databuf, int __offset, void *__val,
         socklen_t __vallen) __attribute__ ((__nothrow__ , __leaf__));
extern int inet6_opt_next (void *__extbuf, socklen_t __extlen, int __offset,
      uint8_t *__typep, socklen_t *__lenp,
      void **__databufp) __attribute__ ((__nothrow__ , __leaf__));
extern int inet6_opt_find (void *__extbuf, socklen_t __extlen, int __offset,
      uint8_t __type, socklen_t *__lenp,
      void **__databufp) __attribute__ ((__nothrow__ , __leaf__));
extern int inet6_opt_get_val (void *__databuf, int __offset, void *__val,
         socklen_t __vallen) __attribute__ ((__nothrow__ , __leaf__));
extern socklen_t inet6_rth_space (int __type, int __segments) __attribute__ ((__nothrow__ , __leaf__));
extern void *inet6_rth_init (void *__bp, socklen_t __bp_len, int __type,
        int __segments) __attribute__ ((__nothrow__ , __leaf__));
extern int inet6_rth_add (void *__bp, const struct in6_addr *__addr) __attribute__ ((__nothrow__ , __leaf__));
extern int inet6_rth_reverse (const void *__in, void *__out) __attribute__ ((__nothrow__ , __leaf__));
extern int inet6_rth_segments (const void *__bp) __attribute__ ((__nothrow__ , __leaf__));
extern struct in6_addr *inet6_rth_getaddr (const void *__bp, int __index)
     __attribute__ ((__nothrow__ , __leaf__));
extern int getipv4sourcefilter (int __s, struct in_addr __interface_addr,
    struct in_addr __group, uint32_t *__fmode,
    uint32_t *__numsrc, struct in_addr *__slist)
     __attribute__ ((__nothrow__ , __leaf__));
extern int setipv4sourcefilter (int __s, struct in_addr __interface_addr,
    struct in_addr __group, uint32_t __fmode,
    uint32_t __numsrc,
    const struct in_addr *__slist)
     __attribute__ ((__nothrow__ , __leaf__));
extern int getsourcefilter (int __s, uint32_t __interface_addr,
       const struct sockaddr *__group,
       socklen_t __grouplen, uint32_t *__fmode,
       uint32_t *__numsrc,
       struct sockaddr_storage *__slist) __attribute__ ((__nothrow__ , __leaf__));
extern int setsourcefilter (int __s, uint32_t __interface_addr,
       const struct sockaddr *__group,
       socklen_t __grouplen, uint32_t __fmode,
       uint32_t __numsrc,
       const struct sockaddr_storage *__slist) __attribute__ ((__nothrow__ , __leaf__));

typedef __builtin_va_list __gnuc_va_list;
typedef __gnuc_va_list va_list;
typedef long int ptrdiff_t;
typedef int wchar_t;
typedef struct {
  long long __max_align_ll __attribute__((__aligned__(__alignof__(long long))));
  long double __max_align_ld __attribute__((__aligned__(__alignof__(long double))));
} max_align_t;
  typedef __typeof__(nullptr) nullptr_t;

struct rpcent
{
  char *r_name;
  char **r_aliases;
  int r_number;
};
extern void setrpcent (int __stayopen) __attribute__ ((__nothrow__ , __leaf__));
extern void endrpcent (void) __attribute__ ((__nothrow__ , __leaf__));
extern struct rpcent *getrpcbyname (const char *__name) __attribute__ ((__nothrow__ , __leaf__));
extern struct rpcent *getrpcbynumber (int __number) __attribute__ ((__nothrow__ , __leaf__));
extern struct rpcent *getrpcent (void) __attribute__ ((__nothrow__ , __leaf__));
extern int getrpcbyname_r (const char *__name, struct rpcent *__result_buf,
      char *__buffer, size_t __buflen,
      struct rpcent **__result) __attribute__ ((__nothrow__ , __leaf__));
extern int getrpcbynumber_r (int __number, struct rpcent *__result_buf,
        char *__buffer, size_t __buflen,
        struct rpcent **__result) __attribute__ ((__nothrow__ , __leaf__));
extern int getrpcent_r (struct rpcent *__result_buf, char *__buffer,
   size_t __buflen, struct rpcent **__result) __attribute__ ((__nothrow__ , __leaf__));

union sigval
{
  int sival_int;
  void *sival_ptr;
};
typedef union sigval __sigval_t;
typedef struct sigevent
  {
    __sigval_t sigev_value;
    int sigev_signo;
    int sigev_notify;
    union
      {
 int _pad[((64 / sizeof (int)) - 4)];
 __pid_t _tid;
 struct
   {
     void (*_function) (__sigval_t);
     pthread_attr_t *_attribute;
   } _sigev_thread;
      } _sigev_un;
  } sigevent_t;
struct netent
{
  char *n_name;
  char **n_aliases;
  int n_addrtype;
  uint32_t n_net;
};

extern int *__h_errno_location (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern void herror (const char *__str) __attribute__ ((__nothrow__ , __leaf__));
extern const char *hstrerror (int __err_num) __attribute__ ((__nothrow__ , __leaf__));
struct hostent
{
  char *h_name;
  char **h_aliases;
  int h_addrtype;
  int h_length;
  char **h_addr_list;
};
extern void sethostent (int __stay_open);
extern void endhostent (void);
extern struct hostent *gethostent (void);
extern struct hostent *gethostbyaddr (const void *__addr, __socklen_t __len,
          int __type);
extern struct hostent *gethostbyname (const char *__name);
extern struct hostent *gethostbyname2 (const char *__name, int __af);
extern int gethostent_r (struct hostent *__restrict __result_buf,
    char *__restrict __buf, size_t __buflen,
    struct hostent **__restrict __result,
    int *__restrict __h_errnop);
extern int gethostbyaddr_r (const void *__restrict __addr, __socklen_t __len,
       int __type,
       struct hostent *__restrict __result_buf,
       char *__restrict __buf, size_t __buflen,
       struct hostent **__restrict __result,
       int *__restrict __h_errnop);
extern int gethostbyname_r (const char *__restrict __name,
       struct hostent *__restrict __result_buf,
       char *__restrict __buf, size_t __buflen,
       struct hostent **__restrict __result,
       int *__restrict __h_errnop);
extern int gethostbyname2_r (const char *__restrict __name, int __af,
        struct hostent *__restrict __result_buf,
        char *__restrict __buf, size_t __buflen,
        struct hostent **__restrict __result,
        int *__restrict __h_errnop);
extern void setnetent (int __stay_open);
extern void endnetent (void);
extern struct netent *getnetent (void);
extern struct netent *getnetbyaddr (uint32_t __net, int __type);
extern struct netent *getnetbyname (const char *__name);
extern int getnetent_r (struct netent *__restrict __result_buf,
   char *__restrict __buf, size_t __buflen,
   struct netent **__restrict __result,
   int *__restrict __h_errnop);
extern int getnetbyaddr_r (uint32_t __net, int __type,
      struct netent *__restrict __result_buf,
      char *__restrict __buf, size_t __buflen,
      struct netent **__restrict __result,
      int *__restrict __h_errnop);
extern int getnetbyname_r (const char *__restrict __name,
      struct netent *__restrict __result_buf,
      char *__restrict __buf, size_t __buflen,
      struct netent **__restrict __result,
      int *__restrict __h_errnop);
struct servent
{
  char *s_name;
  char **s_aliases;
  int s_port;
  char *s_proto;
};
extern void setservent (int __stay_open);
extern void endservent (void);
extern struct servent *getservent (void);
extern struct servent *getservbyname (const char *__name, const char *__proto);
extern struct servent *getservbyport (int __port, const char *__proto);
extern int getservent_r (struct servent *__restrict __result_buf,
    char *__restrict __buf, size_t __buflen,
    struct servent **__restrict __result);
extern int getservbyname_r (const char *__restrict __name,
       const char *__restrict __proto,
       struct servent *__restrict __result_buf,
       char *__restrict __buf, size_t __buflen,
       struct servent **__restrict __result);
extern int getservbyport_r (int __port, const char *__restrict __proto,
       struct servent *__restrict __result_buf,
       char *__restrict __buf, size_t __buflen,
       struct servent **__restrict __result);
struct protoent
{
  char *p_name;
  char **p_aliases;
  int p_proto;
};
extern void setprotoent (int __stay_open);
extern void endprotoent (void);
extern struct protoent *getprotoent (void);
extern struct protoent *getprotobyname (const char *__name);
extern struct protoent *getprotobynumber (int __proto);
extern int getprotoent_r (struct protoent *__restrict __result_buf,
     char *__restrict __buf, size_t __buflen,
     struct protoent **__restrict __result);
extern int getprotobyname_r (const char *__restrict __name,
        struct protoent *__restrict __result_buf,
        char *__restrict __buf, size_t __buflen,
        struct protoent **__restrict __result);
extern int getprotobynumber_r (int __proto,
          struct protoent *__restrict __result_buf,
          char *__restrict __buf, size_t __buflen,
          struct protoent **__restrict __result);
extern int setnetgrent (const char *__netgroup);
extern void endnetgrent (void);
extern int getnetgrent (char **__restrict __hostp,
   char **__restrict __userp,
   char **__restrict __domainp);
extern int innetgr (const char *__netgroup, const char *__host,
      const char *__user, const char *__domain);
extern int getnetgrent_r (char **__restrict __hostp,
     char **__restrict __userp,
     char **__restrict __domainp,
     char *__restrict __buffer, size_t __buflen);
extern int rcmd (char **__restrict __ahost, unsigned short int __rport,
   const char *__restrict __locuser,
   const char *__restrict __remuser,
   const char *__restrict __cmd, int *__restrict __fd2p);
extern int rcmd_af (char **__restrict __ahost, unsigned short int __rport,
      const char *__restrict __locuser,
      const char *__restrict __remuser,
      const char *__restrict __cmd, int *__restrict __fd2p,
      sa_family_t __af);
extern int rexec (char **__restrict __ahost, int __rport,
    const char *__restrict __name,
    const char *__restrict __pass,
    const char *__restrict __cmd, int *__restrict __fd2p);
extern int rexec_af (char **__restrict __ahost, int __rport,
       const char *__restrict __name,
       const char *__restrict __pass,
       const char *__restrict __cmd, int *__restrict __fd2p,
       sa_family_t __af);
extern int ruserok (const char *__rhost, int __suser,
      const char *__remuser, const char *__locuser);
extern int ruserok_af (const char *__rhost, int __suser,
         const char *__remuser, const char *__locuser,
         sa_family_t __af);
extern int iruserok (uint32_t __raddr, int __suser,
       const char *__remuser, const char *__locuser);
extern int iruserok_af (const void *__raddr, int __suser,
   const char *__remuser, const char *__locuser,
   sa_family_t __af);
extern int rresvport (int *__alport);
extern int rresvport_af (int *__alport, sa_family_t __af);
struct addrinfo
{
  int ai_flags;
  int ai_family;
  int ai_socktype;
  int ai_protocol;
  socklen_t ai_addrlen;
  struct sockaddr *ai_addr;
  char *ai_canonname;
  struct addrinfo *ai_next;
};
struct gaicb
{
  const char *ar_name;
  const char *ar_service;
  const struct addrinfo *ar_request;
  struct addrinfo *ar_result;
  int __return;
  int __glibc_reserved[5];
};
extern int getaddrinfo (const char *__restrict __name,
   const char *__restrict __service,
   const struct addrinfo *__restrict __req,
   struct addrinfo **__restrict __pai);
extern void freeaddrinfo (struct addrinfo *__ai) __attribute__ ((__nothrow__ , __leaf__));
extern const char *gai_strerror (int __ecode) __attribute__ ((__nothrow__ , __leaf__));
extern int getnameinfo (const struct sockaddr *__restrict __sa,
   socklen_t __salen, char *__restrict __host,
   socklen_t __hostlen, char *__restrict __serv,
   socklen_t __servlen, int __flags);
extern int getaddrinfo_a (int __mode, struct gaicb *__list[__restrict],
     int __ent, struct sigevent *__restrict __sig);
extern int gai_suspend (const struct gaicb *const __list[], int __ent,
   const struct timespec *__timeout);
extern int gai_error (struct gaicb *__req) __attribute__ ((__nothrow__ , __leaf__));
extern int gai_cancel (struct gaicb *__gaicbp) __attribute__ ((__nothrow__ , __leaf__));


extern int *__errno_location (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern char *program_invocation_name;
extern char *program_invocation_short_name;
typedef int error_t;

struct timex
{
  unsigned int modes;
  __syscall_slong_t offset;
  __syscall_slong_t freq;
  __syscall_slong_t maxerror;
  __syscall_slong_t esterror;
  int status;
  __syscall_slong_t constant;
  __syscall_slong_t precision;
  __syscall_slong_t tolerance;
  struct timeval time;
  __syscall_slong_t tick;
  __syscall_slong_t ppsfreq;
  __syscall_slong_t jitter;
  int shift;
  __syscall_slong_t stabil;
  __syscall_slong_t jitcnt;
  __syscall_slong_t calcnt;
  __syscall_slong_t errcnt;
  __syscall_slong_t stbcnt;
  int tai;
  int :32; int :32; int :32; int :32;
  int :32; int :32; int :32; int :32;
  int :32; int :32; int :32;
};

extern int clock_adjtime (__clockid_t __clock_id, struct timex *__utx) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));

struct tm
{
  int tm_sec;
  int tm_min;
  int tm_hour;
  int tm_mday;
  int tm_mon;
  int tm_year;
  int tm_wday;
  int tm_yday;
  int tm_isdst;
  long int tm_gmtoff;
  const char *tm_zone;
};
struct itimerspec
  {
    struct timespec it_interval;
    struct timespec it_value;
  };
struct sigevent;
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

extern clock_t clock (void) __attribute__ ((__nothrow__ , __leaf__));
extern time_t time (time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));
extern double difftime (time_t __time1, time_t __time0);
extern time_t mktime (struct tm *__tp) __attribute__ ((__nothrow__ , __leaf__));
extern size_t strftime (char *__restrict __s, size_t __maxsize,
   const char *__restrict __format,
   const struct tm *__restrict __tp)
   __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 3, 4)));
extern char *strptime (const char *__restrict __s,
         const char *__restrict __fmt, struct tm *__tp)
     __attribute__ ((__nothrow__ , __leaf__));
extern size_t strftime_l (char *__restrict __s, size_t __maxsize,
     const char *__restrict __format,
     const struct tm *__restrict __tp,
     locale_t __loc) __attribute__ ((__nothrow__ , __leaf__));
extern char *strptime_l (const char *__restrict __s,
    const char *__restrict __fmt, struct tm *__tp,
    locale_t __loc) __attribute__ ((__nothrow__ , __leaf__));
extern struct tm *gmtime (const time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));
extern struct tm *localtime (const time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));
extern struct tm *gmtime_r (const time_t *__restrict __timer,
       struct tm *__restrict __tp) __attribute__ ((__nothrow__ , __leaf__));
extern struct tm *localtime_r (const time_t *__restrict __timer,
          struct tm *__restrict __tp) __attribute__ ((__nothrow__ , __leaf__));
extern char *asctime (const struct tm *__tp) __attribute__ ((__nothrow__ , __leaf__));
extern char *ctime (const time_t *__timer) __attribute__ ((__nothrow__ , __leaf__));
extern char *asctime_r (const struct tm *__restrict __tp,
   char *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__));
extern char *ctime_r (const time_t *__restrict __timer,
        char *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__));
extern char *__tzname[2];
extern int __daylight;
extern long int __timezone;
extern char *tzname[2];
extern void tzset (void) __attribute__ ((__nothrow__ , __leaf__));
extern int daylight;
extern long int timezone;
extern time_t timegm (struct tm *__tp) __attribute__ ((__nothrow__ , __leaf__));
extern time_t timelocal (struct tm *__tp) __attribute__ ((__nothrow__ , __leaf__));
extern int dysize (int __year) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern int nanosleep (const struct timespec *__requested_time,
        struct timespec *__remaining);
extern int clock_getres (clockid_t __clock_id, struct timespec *__res) __attribute__ ((__nothrow__ , __leaf__));
extern int clock_gettime (clockid_t __clock_id, struct timespec *__tp)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern int clock_settime (clockid_t __clock_id, const struct timespec *__tp)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern int clock_nanosleep (clockid_t __clock_id, int __flags,
       const struct timespec *__req,
       struct timespec *__rem);
extern int clock_getcpuclockid (pid_t __pid, clockid_t *__clock_id) __attribute__ ((__nothrow__ , __leaf__));
extern int timer_create (clockid_t __clock_id,
    struct sigevent *__restrict __evp,
    timer_t *__restrict __timerid) __attribute__ ((__nothrow__ , __leaf__));
extern int timer_delete (timer_t __timerid) __attribute__ ((__nothrow__ , __leaf__));
extern int timer_settime (timer_t __timerid, int __flags,
     const struct itimerspec *__restrict __value,
     struct itimerspec *__restrict __ovalue) __attribute__ ((__nothrow__ , __leaf__));
extern int timer_gettime (timer_t __timerid, struct itimerspec *__value)
     __attribute__ ((__nothrow__ , __leaf__));
extern int timer_getoverrun (timer_t __timerid) __attribute__ ((__nothrow__ , __leaf__));
extern int timespec_get (struct timespec *__ts, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int timespec_getres (struct timespec *__ts, int __base)
     __attribute__ ((__nothrow__ , __leaf__));
extern int getdate_err;
extern struct tm *getdate (const char *__string);
extern int getdate_r (const char *__restrict __string,
        struct tm *__restrict __resbufp);

struct evutil_monotonic_timer
;
 int
evutil_date_rfc1123(char *date, const size_t datelen, const struct tm *tm);

struct evutil_monotonic_timer * evutil_monotonic_timer_new(void);

void evutil_monotonic_timer_free(struct evutil_monotonic_timer *timer);

int evutil_configure_monotonic_time(struct evutil_monotonic_timer *timer,
                                    int flags);

int evutil_gettime_monotonic(struct evutil_monotonic_timer *timer,
                             struct timeval *tp);

int evutil_socketpair(int d, int type, int protocol, int sv[2]);

int evutil_make_socket_nonblocking(int sock);

int evutil_make_listen_socket_reuseable(int sock);

int evutil_make_listen_socket_reuseable_port(int sock);

int evutil_make_listen_socket_ipv6only(int sock);

int evutil_make_socket_closeonexec(int sock);

int evutil_closesocket(int sock);

int evutil_make_tcp_listen_socket_deferred(int sock);

int64_t evutil_strtoll(const char *s, char **endptr, int base);

int evutil_snprintf(char *buf, size_t buflen, const char *format, ...)
 __attribute__((format(printf, 3, 4)))
;

int evutil_vsnprintf(char *buf, size_t buflen, const char *format, va_list ap)
 __attribute__((format(printf, 3, 0)))
;

const char *evutil_inet_ntop(int af, const void *src, char *dst, size_t len);

int evutil_inet_pton_scope(int af, const char *src, void *dst,
 unsigned *indexp);

int evutil_inet_pton(int af, const char *src, void *dst);
struct sockaddr;

int evutil_parse_sockaddr_port(const char *str, struct sockaddr *out, int *outlen);

int evutil_sockaddr_cmp(const struct sockaddr *sa1, const struct sockaddr *sa2,
    int include_port);

int evutil_ascii_strcasecmp(const char *str1, const char *str2);

int evutil_ascii_strncasecmp(const char *str1, const char *str2, size_t n);
struct addrinfo;

int evutil_getaddrinfo(const char *nodename, const char *servname,
    const struct addrinfo *hints_in, struct addrinfo **res);

void evutil_freeaddrinfo(struct addrinfo *ai);

const char *evutil_gai_strerror(int err);

void evutil_secure_rng_get_bytes(void *buf, size_t n);

int evutil_secure_rng_init(void);

int evutil_secure_rng_set_urandom_device_file(char *fname);

void evutil_secure_rng_add_bytes(const char *dat, size_t datlen);
struct evkeyval {
 struct { struct evkeyval *tqe_next; struct evkeyval **tqe_prev; } next;
 char *key;
 char *value;
};
struct evkeyvalq { struct evkeyval *tqh_first; struct evkeyval **tqh_last; };
struct event;
struct event_callback {
 struct { struct event_callback *tqe_next; struct event_callback **tqe_prev; } evcb_active_next;
 short evcb_flags;
 uint8_t evcb_pri;
 uint8_t evcb_closure;
        union {
  void (*evcb_callback)(int, short, void *);
  void (*evcb_selfcb)(struct event_callback *, void *);
  void (*evcb_evfinalize)(struct event *, void *);
  void (*evcb_cbfinalize)(struct event_callback *, void *);
 } evcb_cb_union;
 void *evcb_arg;
};
struct event_base;
struct event {
 struct event_callback ev_evcallback;
 union {
  struct { struct event *tqe_next; struct event **tqe_prev; } ev_next_with_common_timeout;
  int min_heap_idx;
 } ev_timeout_pos;
 int ev_fd;
 struct event_base *ev_base;
 union {
  struct {
   struct { struct event *le_next; struct event **le_prev; } ev_io_next;
   struct timeval ev_timeout;
  } ev_io;
  struct {
   struct { struct event *le_next; struct event **le_prev; } ev_signal_next;
   short ev_ncalls;
   short *ev_pncalls;
  } ev_signal;
 } ev_;
 short ev_events;
 short ev_res;
 struct timeval ev_timeout;
};
struct event_list { struct event *tqh_first; struct event **tqh_last; };
struct event_dlist { struct event *lh_first; };

typedef struct
{
  int __count;
  union
  {
    unsigned int __wch;
    char __wchb[4];
  } __value;
} __mbstate_t;
typedef struct _G_fpos_t
{
  __off_t __pos;
  __mbstate_t __state;
} __fpos_t;
typedef struct _G_fpos64_t
{
  __off64_t __pos;
  __mbstate_t __state;
} __fpos64_t;
struct _IO_FILE;
typedef struct _IO_FILE __FILE;
struct _IO_FILE;
typedef struct _IO_FILE FILE;
struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;
typedef void _IO_lock_t;
struct _IO_FILE
{
  int _flags;
  char *_IO_read_ptr;
  char *_IO_read_end;
  char *_IO_read_base;
  char *_IO_write_base;
  char *_IO_write_ptr;
  char *_IO_write_end;
  char *_IO_buf_base;
  char *_IO_buf_end;
  char *_IO_save_base;
  char *_IO_backup_base;
  char *_IO_save_end;
  struct _IO_marker *_markers;
  struct _IO_FILE *_chain;
  int _fileno;
  int _flags2:24;
  char _short_backupbuf[1];
  __off_t _old_offset;
  unsigned short _cur_column;
  signed char _vtable_offset;
  char _shortbuf[1];
  _IO_lock_t *_lock;
  __off64_t _offset;
  struct _IO_codecvt *_codecvt;
  struct _IO_wide_data *_wide_data;
  struct _IO_FILE *_freeres_list;
  void *_freeres_buf;
  struct _IO_FILE **_prevchain;
  int _mode;
  int _unused3;
  __uint64_t _total_written;
  char _unused2[12 * sizeof (int) - 5 * sizeof (void *)];
};
typedef __ssize_t cookie_read_function_t (void *__cookie, char *__buf,
                                          size_t __nbytes);
typedef __ssize_t cookie_write_function_t (void *__cookie, const char *__buf,
                                           size_t __nbytes);
typedef int cookie_seek_function_t (void *__cookie, __off64_t *__pos, int __w);
typedef int cookie_close_function_t (void *__cookie);
typedef struct _IO_cookie_io_functions_t
{
  cookie_read_function_t *read;
  cookie_write_function_t *write;
  cookie_seek_function_t *seek;
  cookie_close_function_t *close;
} cookie_io_functions_t;
typedef __fpos_t fpos_t;
typedef __fpos64_t fpos64_t;
extern FILE *stdin;
extern FILE *stdout;
extern FILE *stderr;
extern int remove (const char *__filename) __attribute__ ((__nothrow__ , __leaf__));
extern int rename (const char *__old, const char *__new) __attribute__ ((__nothrow__ , __leaf__));
extern int renameat (int __oldfd, const char *__old, int __newfd,
       const char *__new) __attribute__ ((__nothrow__ , __leaf__));
extern int renameat2 (int __oldfd, const char *__old, int __newfd,
        const char *__new, unsigned int __flags) __attribute__ ((__nothrow__ , __leaf__));
extern int fclose (FILE *__stream) __attribute__ ((__nonnull__ (1)));
extern FILE *tmpfile (void)
  __attribute__ ((__malloc__)) __attribute__ ((__malloc__ (fclose, 1))) __attribute__ ((__warn_unused_result__));
extern FILE *tmpfile64 (void)
   __attribute__ ((__malloc__)) __attribute__ ((__malloc__ (fclose, 1))) __attribute__ ((__warn_unused_result__));
extern char *tmpnam (char[20]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern char *tmpnam_r (char __s[20]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern char *tempnam (const char *__dir, const char *__pfx)
   __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__warn_unused_result__)) __attribute__ ((__malloc__ (__builtin_free, 1)));
extern int fflush (FILE *__stream);
extern int fflush_unlocked (FILE *__stream);
extern int fcloseall (void);
extern FILE *fopen (const char *__restrict __filename,
      const char *__restrict __modes)
  __attribute__ ((__malloc__)) __attribute__ ((__malloc__ (fclose, 1))) __attribute__ ((__warn_unused_result__));
extern FILE *freopen (const char *__restrict __filename,
        const char *__restrict __modes,
        FILE *__restrict __stream) __attribute__ ((__warn_unused_result__)) __attribute__ ((__nonnull__ (3)));
extern FILE *fopen64 (const char *__restrict __filename,
        const char *__restrict __modes)
  __attribute__ ((__malloc__)) __attribute__ ((__malloc__ (fclose, 1))) __attribute__ ((__warn_unused_result__));
extern FILE *freopen64 (const char *__restrict __filename,
   const char *__restrict __modes,
   FILE *__restrict __stream) __attribute__ ((__warn_unused_result__)) __attribute__ ((__nonnull__ (3)));
extern FILE *fdopen (int __fd, const char *__modes) __attribute__ ((__nothrow__ , __leaf__))
  __attribute__ ((__malloc__)) __attribute__ ((__malloc__ (fclose, 1))) __attribute__ ((__warn_unused_result__));
extern FILE *fopencookie (void *__restrict __magic_cookie,
     const char *__restrict __modes,
     cookie_io_functions_t __io_funcs) __attribute__ ((__nothrow__ , __leaf__))
  __attribute__ ((__malloc__)) __attribute__ ((__malloc__ (fclose, 1))) __attribute__ ((__warn_unused_result__));
extern FILE *fmemopen (void *__s, size_t __len, const char *__modes)
  __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__malloc__ (fclose, 1))) __attribute__ ((__warn_unused_result__));
extern FILE *open_memstream (char **__bufloc, size_t *__sizeloc) __attribute__ ((__nothrow__ , __leaf__))
  __attribute__ ((__malloc__)) __attribute__ ((__malloc__ (fclose, 1))) __attribute__ ((__warn_unused_result__));
extern void setbuf (FILE *__restrict __stream, char *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__))
  __attribute__ ((__nonnull__ (1)));
extern int setvbuf (FILE *__restrict __stream, char *__restrict __buf,
      int __modes, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern void setbuffer (FILE *__restrict __stream, char *__restrict __buf,
         size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern void setlinebuf (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int fprintf (FILE *__restrict __stream,
      const char *__restrict __format, ...) __attribute__ ((__nonnull__ (1)));
extern int printf (const char *__restrict __format, ...);
extern int sprintf (char *__restrict __s,
      const char *__restrict __format, ...) __attribute__ ((__nothrow__));
extern int vfprintf (FILE *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg) __attribute__ ((__nonnull__ (1)));
extern int vprintf (const char *__restrict __format, __gnuc_va_list __arg);
extern int vsprintf (char *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg) __attribute__ ((__nothrow__));
extern int snprintf (char *__restrict __s, size_t __maxlen,
       const char *__restrict __format, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 4)));
extern int vsnprintf (char *__restrict __s, size_t __maxlen,
        const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 0)));
extern int vasprintf (char **__restrict __ptr, const char *__restrict __f,
        __gnuc_va_list __arg)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 2, 0))) __attribute__ ((__warn_unused_result__));
extern int __asprintf (char **__restrict __ptr,
         const char *__restrict __fmt, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 2, 3))) __attribute__ ((__warn_unused_result__));
extern int asprintf (char **__restrict __ptr,
       const char *__restrict __fmt, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 2, 3))) __attribute__ ((__warn_unused_result__));
extern int vdprintf (int __fd, const char *__restrict __fmt,
       __gnuc_va_list __arg)
     __attribute__ ((__format__ (__printf__, 2, 0)));
extern int dprintf (int __fd, const char *__restrict __fmt, ...)
     __attribute__ ((__format__ (__printf__, 2, 3)));
extern int fscanf (FILE *__restrict __stream,
     const char *__restrict __format, ...) __attribute__ ((__warn_unused_result__)) __attribute__ ((__nonnull__ (1)));
extern int scanf (const char *__restrict __format, ...) __attribute__ ((__warn_unused_result__));
extern int sscanf (const char *__restrict __s,
     const char *__restrict __format, ...) __attribute__ ((__nothrow__ , __leaf__));
extern int fscanf (FILE *__restrict __stream, const char *__restrict __format, ...) __asm__ ("" "__isoc23_fscanf") __attribute__ ((__warn_unused_result__)) __attribute__ ((__nonnull__ (1)));
extern int scanf (const char *__restrict __format, ...) __asm__ ("" "__isoc23_scanf") __attribute__ ((__warn_unused_result__));
extern int sscanf (const char *__restrict __s, const char *__restrict __format, ...) __asm__ ("" "__isoc23_sscanf") __attribute__ ((__nothrow__ , __leaf__));
extern int vfscanf (FILE *__restrict __s, const char *__restrict __format,
      __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 2, 0))) __attribute__ ((__warn_unused_result__)) __attribute__ ((__nonnull__ (1)));
extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 1, 0))) __attribute__ ((__warn_unused_result__));
extern int vsscanf (const char *__restrict __s,
      const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__format__ (__scanf__, 2, 0)));
extern int vfscanf (FILE *__restrict __s, const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc23_vfscanf")
     __attribute__ ((__format__ (__scanf__, 2, 0))) __attribute__ ((__warn_unused_result__)) __attribute__ ((__nonnull__ (1)));
extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc23_vscanf")
     __attribute__ ((__format__ (__scanf__, 1, 0))) __attribute__ ((__warn_unused_result__));
extern int vsscanf (const char *__restrict __s, const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc23_vsscanf") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__format__ (__scanf__, 2, 0)));
extern int fgetc (FILE *__stream) __attribute__ ((__nonnull__ (1)));
extern int getc (FILE *__stream) __attribute__ ((__nonnull__ (1)));
extern int getchar (void);
extern int getc_unlocked (FILE *__stream) __attribute__ ((__nonnull__ (1)));
extern int getchar_unlocked (void);
extern int fgetc_unlocked (FILE *__stream) __attribute__ ((__nonnull__ (1)));
extern int fputc (int __c, FILE *__stream) __attribute__ ((__nonnull__ (2)));
extern int putc (int __c, FILE *__stream) __attribute__ ((__nonnull__ (2)));
extern int putchar (int __c);
extern int fputc_unlocked (int __c, FILE *__stream) __attribute__ ((__nonnull__ (2)));
extern int putc_unlocked (int __c, FILE *__stream) __attribute__ ((__nonnull__ (2)));
extern int putchar_unlocked (int __c);
extern int getw (FILE *__stream) __attribute__ ((__nonnull__ (1)));
extern int putw (int __w, FILE *__stream) __attribute__ ((__nonnull__ (2)));
extern char *fgets (char *__restrict __s, int __n, FILE *__restrict __stream)
     __attribute__ ((__warn_unused_result__)) __attribute__ ((__nonnull__ (3)));
extern char *fgets_unlocked (char *__restrict __s, int __n,
        FILE *__restrict __stream) __attribute__ ((__warn_unused_result__))
    __attribute__ ((__nonnull__ (3)));
extern __ssize_t __getdelim (char **__restrict __lineptr,
                             size_t *__restrict __n, int __delimiter,
                             FILE *__restrict __stream) __attribute__ ((__warn_unused_result__)) __attribute__ ((__nonnull__ (4)));
extern __ssize_t getdelim (char **__restrict __lineptr,
                           size_t *__restrict __n, int __delimiter,
                           FILE *__restrict __stream) __attribute__ ((__warn_unused_result__)) __attribute__ ((__nonnull__ (4)));
extern __ssize_t getline (char **__restrict __lineptr,
                          size_t *__restrict __n,
                          FILE *__restrict __stream) __attribute__ ((__warn_unused_result__)) __attribute__ ((__nonnull__ (3)));
extern int fputs (const char *__restrict __s, FILE *__restrict __stream)
  __attribute__ ((__nonnull__ (2)));
extern int puts (const char *__s);
extern int ungetc (int __c, FILE *__stream) __attribute__ ((__nonnull__ (2)));
extern size_t fread (void *__restrict __ptr, size_t __size,
       size_t __n, FILE *__restrict __stream) __attribute__ ((__warn_unused_result__))
  __attribute__ ((__nonnull__ (4)));
extern size_t fwrite (const void *__restrict __ptr, size_t __size,
        size_t __n, FILE *__restrict __s) __attribute__ ((__nonnull__ (4)));
extern int fputs_unlocked (const char *__restrict __s,
      FILE *__restrict __stream) __attribute__ ((__nonnull__ (2)));
extern size_t fread_unlocked (void *__restrict __ptr, size_t __size,
         size_t __n, FILE *__restrict __stream) __attribute__ ((__warn_unused_result__))
  __attribute__ ((__nonnull__ (4)));
extern size_t fwrite_unlocked (const void *__restrict __ptr, size_t __size,
          size_t __n, FILE *__restrict __stream)
  __attribute__ ((__nonnull__ (4)));
extern int fseek (FILE *__stream, long int __off, int __whence)
  __attribute__ ((__nonnull__ (1)));
extern long int ftell (FILE *__stream) __attribute__ ((__warn_unused_result__)) __attribute__ ((__nonnull__ (1)));
extern void rewind (FILE *__stream) __attribute__ ((__nonnull__ (1)));
extern int fseeko (FILE *__stream, __off_t __off, int __whence)
  __attribute__ ((__nonnull__ (1)));
extern __off_t ftello (FILE *__stream) __attribute__ ((__warn_unused_result__)) __attribute__ ((__nonnull__ (1)));
extern int fgetpos (FILE *__restrict __stream, fpos_t *__restrict __pos)
  __attribute__ ((__nonnull__ (1)));
extern int fsetpos (FILE *__stream, const fpos_t *__pos) __attribute__ ((__nonnull__ (1)));
extern int fseeko64 (FILE *__stream, __off64_t __off, int __whence)
  __attribute__ ((__nonnull__ (1)));
extern __off64_t ftello64 (FILE *__stream) __attribute__ ((__warn_unused_result__)) __attribute__ ((__nonnull__ (1)));
extern int fgetpos64 (FILE *__restrict __stream, fpos64_t *__restrict __pos)
  __attribute__ ((__nonnull__ (1)));
extern int fsetpos64 (FILE *__stream, const fpos64_t *__pos) __attribute__ ((__nonnull__ (1)));
extern void clearerr (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int feof (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__)) __attribute__ ((__nonnull__ (1)));
extern int ferror (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__)) __attribute__ ((__nonnull__ (1)));
extern void clearerr_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int feof_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__)) __attribute__ ((__nonnull__ (1)));
extern int ferror_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__)) __attribute__ ((__nonnull__ (1)));
extern void perror (const char *__s) __attribute__ ((__cold__));
extern int fileno (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__)) __attribute__ ((__nonnull__ (1)));
extern int fileno_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__)) __attribute__ ((__nonnull__ (1)));
extern int pclose (FILE *__stream) __attribute__ ((__nonnull__ (1)));
extern FILE *popen (const char *__command, const char *__modes)
  __attribute__ ((__malloc__)) __attribute__ ((__malloc__ (pclose, 1))) __attribute__ ((__warn_unused_result__));
extern char *ctermid (char *__s) __attribute__ ((__nothrow__ , __leaf__))
  __attribute__ ((__access__ (__write_only__, 1)));
extern char *cuserid (char *__s)
  __attribute__ ((__access__ (__write_only__, 1)));
struct obstack;
extern int obstack_printf (struct obstack *__restrict __obstack,
      const char *__restrict __format, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 2, 3)));
extern int obstack_vprintf (struct obstack *__restrict __obstack,
       const char *__restrict __format,
       __gnuc_va_list __args)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 2, 0)));
extern void flockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int ftrylockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__)) __attribute__ ((__nonnull__ (1)));
extern void funlockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int __uflow (FILE *);
extern int __overflow (FILE *, int);
extern int __sprintf_chk (char *__restrict __s, int __flag, size_t __slen,
     const char *__restrict __format, ...) __attribute__ ((__nothrow__ , __leaf__))
    __attribute__ ((__access__ (__write_only__, 1, 3)));
extern int __vsprintf_chk (char *__restrict __s, int __flag, size_t __slen,
      const char *__restrict __format,
      __gnuc_va_list __ap) __attribute__ ((__nothrow__ , __leaf__))
    __attribute__ ((__access__ (__write_only__, 1, 3)));
extern int __snprintf_chk (char *__restrict __s, size_t __n, int __flag,
      size_t __slen, const char *__restrict __format,
      ...) __attribute__ ((__nothrow__ , __leaf__))
    __attribute__ ((__access__ (__write_only__, 1, 2)));
extern int __vsnprintf_chk (char *__restrict __s, size_t __n, int __flag,
       size_t __slen, const char *__restrict __format,
       __gnuc_va_list __ap) __attribute__ ((__nothrow__ , __leaf__))
    __attribute__ ((__access__ (__write_only__, 1, 2)));
extern int __fprintf_chk (FILE *__restrict __stream, int __flag,
     const char *__restrict __format, ...)
    __attribute__ ((__nonnull__ (1)));
extern int __printf_chk (int __flag, const char *__restrict __format, ...);
extern int __vfprintf_chk (FILE *__restrict __stream, int __flag,
      const char *__restrict __format,
      __gnuc_va_list __ap) __attribute__ ((__nonnull__ (1)));
extern int __vprintf_chk (int __flag, const char *__restrict __format,
     __gnuc_va_list __ap);
extern int __dprintf_chk (int __fd, int __flag, const char *__restrict __fmt,
     ...) __attribute__ ((__format__ (__printf__, 3, 4)));
extern int __vdprintf_chk (int __fd, int __flag,
      const char *__restrict __fmt, __gnuc_va_list __arg)
     __attribute__ ((__format__ (__printf__, 3, 0)));
extern int __asprintf_chk (char **__restrict __ptr, int __flag,
      const char *__restrict __fmt, ...)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__format__ (__printf__, 3, 4))) __attribute__ ((__warn_unused_result__));
extern int __vasprintf_chk (char **__restrict __ptr, int __flag,
       const char *__restrict __fmt, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__format__ (__printf__, 3, 0))) __attribute__ ((__warn_unused_result__));
extern int __obstack_printf_chk (struct obstack *__restrict __obstack,
     int __flag, const char *__restrict __format,
     ...)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__format__ (__printf__, 3, 4)));
extern int __obstack_vprintf_chk (struct obstack *__restrict __obstack,
      int __flag,
      const char *__restrict __format,
      __gnuc_va_list __args)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__format__ (__printf__, 3, 0)));
extern char *__fgets_alias (char *__restrict __s, int __n, FILE *__restrict __stream) __asm__ ("" "fgets")
    __attribute__ ((__warn_unused_result__)) __attribute__ ((__access__ (__write_only__, 1, 2)));
extern char *__fgets_chk_warn (char *__restrict __s, size_t __size, int __n, FILE *__restrict __stream) __asm__ ("" "__fgets_chk")
     __attribute__ ((__warn_unused_result__)) __attribute__((__warning__ ("fgets called with bigger size than length " "of destination buffer")));
extern char *__fgets_chk (char *__restrict __s, size_t __size, int __n,
     FILE *__restrict __stream)
    __attribute__ ((__warn_unused_result__)) __attribute__ ((__access__ (__write_only__, 1, 3))) __attribute__ ((__nonnull__ (4)));
extern size_t __fread_alias (void *__restrict __ptr, size_t __size, size_t __n, FILE *__restrict __stream) __asm__ ("" "fread") __attribute__ ((__warn_unused_result__));
extern size_t __fread_chk_warn (void *__restrict __ptr, size_t __ptrlen, size_t __size, size_t __n, FILE *__restrict __stream) __asm__ ("" "__fread_chk")
     __attribute__ ((__warn_unused_result__)) __attribute__((__warning__ ("fread called with bigger size * nmemb than length " "of destination buffer")));
extern size_t __fread_chk (void *__restrict __ptr, size_t __ptrlen,
      size_t __size, size_t __n,
      FILE *__restrict __stream) __attribute__ ((__warn_unused_result__)) __attribute__ ((__nonnull__ (5)));
extern char *__fgets_unlocked_alias (char *__restrict __s, int __n, FILE *__restrict __stream) __asm__ ("" "fgets_unlocked")
    __attribute__ ((__warn_unused_result__)) __attribute__ ((__access__ (__write_only__, 1, 2)));
extern char *__fgets_unlocked_chk_warn (char *__restrict __s, size_t __size, int __n, FILE *__restrict __stream) __asm__ ("" "__fgets_unlocked_chk")
     __attribute__ ((__warn_unused_result__)) __attribute__((__warning__ ("fgets_unlocked called with bigger size than length " "of destination buffer")));
extern char *__fgets_unlocked_chk (char *__restrict __s, size_t __size,
       int __n, FILE *__restrict __stream)
    __attribute__ ((__warn_unused_result__)) __attribute__ ((__access__ (__write_only__, 1, 3))) __attribute__ ((__nonnull__ (4)));
extern size_t __fread_unlocked_alias (void *__restrict __ptr, size_t __size, size_t __n, FILE *__restrict __stream) __asm__ ("" "fread_unlocked") __attribute__ ((__warn_unused_result__));
extern size_t __fread_unlocked_chk_warn (void *__restrict __ptr, size_t __ptrlen, size_t __size, size_t __n, FILE *__restrict __stream) __asm__ ("" "__fread_unlocked_chk")
     __attribute__ ((__warn_unused_result__)) __attribute__((__warning__ ("fread_unlocked called with bigger size * nmemb than " "length of destination buffer")));
extern size_t __fread_unlocked_chk (void *__restrict __ptr, size_t __ptrlen,
        size_t __size, size_t __n,
        FILE *__restrict __stream)
    __attribute__ ((__warn_unused_result__)) __attribute__ ((__nonnull__ (5)));
extern __inline __attribute__ ((__gnu_inline__)) int
getchar (void)
{
  return getc (stdin);
}
extern __inline __attribute__ ((__gnu_inline__)) int
fgetc_unlocked (FILE *__fp)
{
  return (__builtin_expect (((__fp)->_IO_read_ptr >= (__fp)->_IO_read_end), 0) ? __uflow (__fp) : *(unsigned char *) (__fp)->_IO_read_ptr++);
}
extern __inline __attribute__ ((__gnu_inline__)) int
getc_unlocked (FILE *__fp)
{
  return (__builtin_expect (((__fp)->_IO_read_ptr >= (__fp)->_IO_read_end), 0) ? __uflow (__fp) : *(unsigned char *) (__fp)->_IO_read_ptr++);
}
extern __inline __attribute__ ((__gnu_inline__)) int
getchar_unlocked (void)
{
  return (__builtin_expect (((stdin)->_IO_read_ptr >= (stdin)->_IO_read_end), 0) ? __uflow (stdin) : *(unsigned char *) (stdin)->_IO_read_ptr++);
}
extern __inline __attribute__ ((__gnu_inline__)) int
putchar (int __c)
{
  return putc (__c, stdout);
}
extern __inline __attribute__ ((__gnu_inline__)) int
fputc_unlocked (int __c, FILE *__stream)
{
  return (__builtin_expect (((__stream)->_IO_write_ptr >= (__stream)->_IO_write_end), 0) ? __overflow (__stream, (unsigned char) (__c)) : (unsigned char) (*(__stream)->_IO_write_ptr++ = (__c)));
}
extern __inline __attribute__ ((__gnu_inline__)) int
putc_unlocked (int __c, FILE *__stream)
{
  return (__builtin_expect (((__stream)->_IO_write_ptr >= (__stream)->_IO_write_end), 0) ? __overflow (__stream, (unsigned char) (__c)) : (unsigned char) (*(__stream)->_IO_write_ptr++ = (__c)));
}
extern __inline __attribute__ ((__gnu_inline__)) int
putchar_unlocked (int __c)
{
  return (__builtin_expect (((stdout)->_IO_write_ptr >= (stdout)->_IO_write_end), 0) ? __overflow (stdout, (unsigned char) (__c)) : (unsigned char) (*(stdout)->_IO_write_ptr++ = (__c)));
}
extern __inline __attribute__ ((__gnu_inline__)) __ssize_t
getline (char **__lineptr, size_t *__n, FILE *__stream)
{
  return __getdelim (__lineptr, __n, '\n', __stream);
}
extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ , __leaf__)) feof_unlocked (FILE *__stream)
{
  return (((__stream)->_flags & 0x0010) != 0);
}
extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ , __leaf__)) ferror_unlocked (FILE *__stream)
{
  return (((__stream)->_flags & 0x0020) != 0);
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
__attribute__ ((__nothrow__ , __leaf__)) sprintf (char *__restrict __s, const char *__restrict __fmt, ...)
{
  return __builtin___sprintf_chk (__s, 3 - 1,
      __builtin_dynamic_object_size (__s, 1), __fmt,
      __builtin_va_arg_pack ());
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
__attribute__ ((__nothrow__ , __leaf__)) vsprintf (char * __restrict __s, const char *__restrict __fmt, __gnuc_va_list __ap)
{
  return __builtin___vsprintf_chk (__s, 3 - 1,
       __builtin_dynamic_object_size (__s, 1), __fmt, __ap);
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
__attribute__ ((__nothrow__ , __leaf__)) snprintf (char *__restrict __s, size_t __n, const char *__restrict __fmt, ...)
{
  return __builtin___snprintf_chk (__s, __n, 3 - 1,
       __builtin_dynamic_object_size (__s, 1), __fmt,
       __builtin_va_arg_pack ());
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
__attribute__ ((__nothrow__ , __leaf__)) vsnprintf (char * __restrict __s, size_t __n, const char *__restrict __fmt, __gnuc_va_list __ap)
    
{
  return __builtin___vsnprintf_chk (__s, __n, 3 - 1,
        __builtin_dynamic_object_size (__s, 1), __fmt, __ap);
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) __attribute__ ((__nonnull__ (1))) int
fprintf (FILE *__restrict __stream, const char *__restrict __fmt, ...)
{
  return __fprintf_chk (__stream, 3 - 1, __fmt,
   __builtin_va_arg_pack ());
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
printf (const char *__restrict __fmt, ...)
{
  return __printf_chk (3 - 1, __fmt, __builtin_va_arg_pack ());
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
vprintf (const char * __restrict __fmt,
  __gnuc_va_list __ap)
{
  return __vfprintf_chk (stdout, 3 - 1, __fmt, __ap);
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) __attribute__ ((__nonnull__ (1))) int
vfprintf (FILE *__restrict __stream,
   const char *__restrict __fmt, __gnuc_va_list __ap)
{
  return __vfprintf_chk (__stream, 3 - 1, __fmt, __ap);
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
dprintf (int __fd, const char *__restrict __fmt, ...)
{
  return __dprintf_chk (__fd, 3 - 1, __fmt,
   __builtin_va_arg_pack ());
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
vdprintf (int __fd, const char *__restrict __fmt, __gnuc_va_list __ap)
{
  return __vdprintf_chk (__fd, 3 - 1, __fmt, __ap);
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
__attribute__ ((__nothrow__ , __leaf__)) asprintf (char **__restrict __ptr, const char *__restrict __fmt, ...)
{
  return __asprintf_chk (__ptr, 3 - 1, __fmt,
    __builtin_va_arg_pack ());
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
__attribute__ ((__nothrow__ , __leaf__)) __asprintf (char **__restrict __ptr, const char *__restrict __fmt, ...)
{
  return __asprintf_chk (__ptr, 3 - 1, __fmt,
    __builtin_va_arg_pack ());
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
__attribute__ ((__nothrow__ , __leaf__)) obstack_printf (struct obstack *__restrict __obstack, const char *__restrict __fmt, ...)
{
  return __obstack_printf_chk (__obstack, 3 - 1, __fmt,
          __builtin_va_arg_pack ());
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
__attribute__ ((__nothrow__ , __leaf__)) vasprintf (char **__restrict __ptr, const char *__restrict __fmt, __gnuc_va_list __ap)
{
  return __vasprintf_chk (__ptr, 3 - 1, __fmt, __ap);
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
__attribute__ ((__nothrow__ , __leaf__)) obstack_vprintf (struct obstack *__restrict __obstack, const char *__restrict __fmt, __gnuc_va_list __ap)
{
  return __obstack_vprintf_chk (__obstack, 3 - 1, __fmt,
    __ap);
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) __attribute__ ((__warn_unused_result__))
__attribute__ ((__nonnull__ (3))) char *
fgets (char * __restrict __s, int __n,
       FILE *__restrict __stream)
    
{
  size_t __sz = __builtin_dynamic_object_size (__s, 1);
  if (((__builtin_constant_p (__sz) && (__sz) == (long unsigned int) -1) || (((__typeof (__n)) 0 < (__typeof (__n)) -1 || (__builtin_constant_p (__n) && (__n) > 0)) && __builtin_constant_p ((((long unsigned int) (__n)) <= ((__sz)) / ((sizeof (char))))) && (((long unsigned int) (__n)) <= ((__sz)) / ((sizeof (char)))))))
    return __fgets_alias (__s, __n, __stream);
  if ((((__typeof (__n)) 0 < (__typeof (__n)) -1 || (__builtin_constant_p (__n) && (__n) > 0)) && __builtin_constant_p ((((long unsigned int) (__n)) <= (__sz) / (sizeof (char)))) && !(((long unsigned int) (__n)) <= (__sz) / (sizeof (char)))))
    return __fgets_chk_warn (__s, __sz, __n, __stream);
  return __fgets_chk (__s, __sz, __n, __stream);
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) __attribute__ ((__warn_unused_result__)) __attribute__ ((__nonnull__ (4))) size_t
fread (void * __restrict __ptr,
       size_t __size, size_t __n, FILE *__restrict __stream)
    
{
  size_t __sz = __builtin_dynamic_object_size (__ptr, 0);
  if (((__builtin_constant_p (__sz) && (__sz) == (long unsigned int) -1) || (((__typeof (__n)) 0 < (__typeof (__n)) -1 || (__builtin_constant_p (__n) && (__n) > 0)) && __builtin_constant_p ((((long unsigned int) (__n)) <= ((__sz)) / ((__size)))) && (((long unsigned int) (__n)) <= ((__sz)) / ((__size))))))
    return __fread_alias (__ptr, __size, __n, __stream);
  if ((((__typeof (__n)) 0 < (__typeof (__n)) -1 || (__builtin_constant_p (__n) && (__n) > 0)) && __builtin_constant_p ((((long unsigned int) (__n)) <= (__sz) / (__size))) && !(((long unsigned int) (__n)) <= (__sz) / (__size))))
    return __fread_chk_warn (__ptr, __sz, __size, __n, __stream);
  return __fread_chk (__ptr, __sz, __size, __n, __stream);
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) __attribute__ ((__warn_unused_result__))
__attribute__ ((__nonnull__ (3))) char *
fgets_unlocked (char * __restrict __s,
  int __n, FILE *__restrict __stream)
    
{
  size_t __sz = __builtin_dynamic_object_size (__s, 1);
  if (((__builtin_constant_p (__sz) && (__sz) == (long unsigned int) -1) || (((__typeof (__n)) 0 < (__typeof (__n)) -1 || (__builtin_constant_p (__n) && (__n) > 0)) && __builtin_constant_p ((((long unsigned int) (__n)) <= ((__sz)) / ((sizeof (char))))) && (((long unsigned int) (__n)) <= ((__sz)) / ((sizeof (char)))))))
    return __fgets_unlocked_alias (__s, __n, __stream);
  if ((((__typeof (__n)) 0 < (__typeof (__n)) -1 || (__builtin_constant_p (__n) && (__n) > 0)) && __builtin_constant_p ((((long unsigned int) (__n)) <= (__sz) / (sizeof (char)))) && !(((long unsigned int) (__n)) <= (__sz) / (sizeof (char)))))
    return __fgets_unlocked_chk_warn (__s, __sz, __n, __stream);
  return __fgets_unlocked_chk (__s, __sz, __n, __stream);
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) __attribute__ ((__warn_unused_result__)) __attribute__ ((__nonnull__ (4))) size_t
fread_unlocked (void * __restrict __ptr,
  size_t __size, size_t __n, FILE *__restrict __stream)
    
{
  size_t __sz = __builtin_dynamic_object_size (__ptr, 0);
  if (((__builtin_constant_p (__sz) && (__sz) == (long unsigned int) -1) || (((__typeof (__n)) 0 < (__typeof (__n)) -1 || (__builtin_constant_p (__n) && (__n) > 0)) && __builtin_constant_p ((((long unsigned int) (__n)) <= ((__sz)) / ((__size)))) && (((long unsigned int) (__n)) <= ((__sz)) / ((__size))))))
    {
      if (__builtin_constant_p (__size)
   && __builtin_constant_p (__n)
   && (__size | __n) < (((size_t) 1) << (8 * sizeof (size_t) / 2))
   && __size * __n <= 8)
 {
   size_t __cnt = __size * __n;
   char *__cptr = (char *) __ptr;
   if (__cnt == 0)
     return 0;
   for (; __cnt > 0; --__cnt)
     {
       int __c = getc_unlocked (__stream);
       if (__c == (-1))
  break;
       *__cptr++ = __c;
     }
   return (__cptr - (char *) __ptr) / __size;
 }
      return __fread_unlocked_alias (__ptr, __size, __n, __stream);
    }
  if ((((__typeof (__n)) 0 < (__typeof (__n)) -1 || (__builtin_constant_p (__n) && (__n) > 0)) && __builtin_constant_p ((((long unsigned int) (__n)) <= (__sz) / (__size))) && !(((long unsigned int) (__n)) <= (__sz) / (__size))))
    return __fread_unlocked_chk_warn (__ptr, __sz, __size, __n, __stream);
  return __fread_unlocked_chk (__ptr, __sz, __size, __n, __stream);
}

struct event_base
;
struct event
;
struct event_config
;

void event_enable_debug_mode(void);

void event_debug_unassign(struct event *);

struct event_base *event_base_new(void);

int event_reinit(struct event_base *base);

int event_base_dispatch(struct event_base *);

const char *event_base_get_method(const struct event_base *);

const char **event_get_supported_methods(void);

int event_gettime_monotonic(struct event_base *base, struct timeval *tp);

int event_base_get_num_events(struct event_base *, unsigned int);

int event_base_get_max_events(struct event_base *, unsigned int, int);

struct event_config *event_config_new(void);

void event_config_free(struct event_config *cfg);

int event_config_avoid_method(struct event_config *cfg, const char *method);
enum event_method_feature {
    EV_FEATURE_ET = 0x01,
    EV_FEATURE_O1 = 0x02,
    EV_FEATURE_FDS = 0x04,
    EV_FEATURE_EARLY_CLOSE = 0x08
};
enum event_base_config_flag {
 EVENT_BASE_FLAG_NOLOCK = 0x01,
 EVENT_BASE_FLAG_IGNORE_ENV = 0x02,
 EVENT_BASE_FLAG_STARTUP_IOCP = 0x04,
 EVENT_BASE_FLAG_NO_CACHE_TIME = 0x08,
 EVENT_BASE_FLAG_EPOLL_USE_CHANGELIST = 0x10,
 EVENT_BASE_FLAG_PRECISE_TIMER = 0x20
};

int event_base_get_features(const struct event_base *base);

int event_config_require_features(struct event_config *cfg, int feature);

int event_config_set_flag(struct event_config *cfg, int flag);

int event_config_set_num_cpus_hint(struct event_config *cfg, int cpus);

int event_config_set_max_dispatch_interval(struct event_config *cfg,
    const struct timeval *max_interval, int max_callbacks,
    int min_priority);

struct event_base *event_base_new_with_config(const struct event_config *);

void event_base_free(struct event_base *);

void event_base_free_nofinalize(struct event_base *);
typedef void (*event_log_cb)(int severity, const char *msg);

void event_set_log_callback(event_log_cb cb);
typedef void (*event_fatal_cb)(int err);

void event_set_fatal_callback(event_fatal_cb cb);

void event_enable_debug_logging(uint32_t which);

int event_base_set(struct event_base *, struct event *);

int event_base_loop(struct event_base *, int);

int event_base_loopexit(struct event_base *, const struct timeval *);

int event_base_loopbreak(struct event_base *);

int event_base_loopcontinue(struct event_base *);

int event_base_got_exit(struct event_base *);

int event_base_got_break(struct event_base *);
typedef void (*event_callback_fn)(int, short, void *);

void *event_self_cbarg(void);

struct event *event_new(struct event_base *, int, short, event_callback_fn, void *);

int event_assign(struct event *, struct event_base *, int, short, event_callback_fn, void *);

void event_free(struct event *);
typedef void (*event_finalize_callback_fn)(struct event *, void *);

int event_finalize(unsigned, struct event *, event_finalize_callback_fn);

int event_free_finalize(unsigned, struct event *, event_finalize_callback_fn);

int event_base_once(struct event_base *, int, short, event_callback_fn, void *, const struct timeval *);

int event_add(struct event *ev, const struct timeval *timeout);

int event_remove_timer(struct event *ev);

int event_del(struct event *);

int event_del_noblock(struct event *ev);

int event_del_block(struct event *ev);

void event_active(struct event *ev, int res, short ncalls);

int event_pending(const struct event *ev, short events, struct timeval *tv);

struct event *event_base_get_running_event(struct event_base *base);

int event_initialized(const struct event *ev);

int event_get_fd(const struct event *ev);

struct event_base *event_get_base(const struct event *ev);

short event_get_events(const struct event *ev);

event_callback_fn event_get_callback(const struct event *ev);

void *event_get_callback_arg(const struct event *ev);

int event_get_priority(const struct event *ev);

void event_get_assignment(const struct event *event,
    struct event_base **base_out, int *fd_out, short *events_out,
    event_callback_fn *callback_out, void **arg_out);

size_t event_get_struct_event_size(void);

const char *event_get_version(void);

uint32_t event_get_version_number(void);

int event_base_priority_init(struct event_base *, int);

int event_base_get_npriorities(struct event_base *eb);

int event_priority_set(struct event *, int);

const struct timeval *event_base_init_common_timeout(struct event_base *base,
    const struct timeval *duration);

void event_set_mem_functions(
 void *(*malloc_fn)(size_t sz),
 void *(*realloc_fn)(void *ptr, size_t sz),
 void (*free_fn)(void *ptr));

void event_base_dump_events(struct event_base *, FILE *);

void event_base_active_by_fd(struct event_base *base, int fd, short events);

void event_base_active_by_signal(struct event_base *base, int sig);
typedef int (*event_base_foreach_event_cb)(const struct event_base *, const struct event *, void *);

int event_base_foreach_event(struct event_base *base, event_base_foreach_event_cb fn, void *arg);

int event_base_gettimeofday_cached(struct event_base *base,
    struct timeval *tv);

int event_base_update_cache_time(struct event_base *base);

void libevent_global_shutdown(void);

struct event_base *event_init(void);

int event_dispatch(void);

int event_loop(int);

int event_loopexit(const struct timeval *);

int event_loopbreak(void);

int event_once(int , short,
    void (*)(int, short, void *), void *, const struct timeval *);

const char *event_get_method(void);

int event_priority_init(int);

void event_set(struct event *, int, short, void (*)(int, short, void *), void *);

extern ssize_t readv (int __fd, const struct iovec *__iovec, int __count)
  __attribute__ ((__warn_unused_result__)) __attribute__ ((__access__ (__read_only__, 2, 3)));
extern ssize_t writev (int __fd, const struct iovec *__iovec, int __count)
  __attribute__ ((__warn_unused_result__)) __attribute__ ((__access__ (__read_only__, 2, 3)));
extern ssize_t preadv (int __fd, const struct iovec *__iovec, int __count,
         __off_t __offset)
  __attribute__ ((__warn_unused_result__)) __attribute__ ((__access__ (__read_only__, 2, 3)));
extern ssize_t pwritev (int __fd, const struct iovec *__iovec, int __count,
   __off_t __offset)
  __attribute__ ((__warn_unused_result__)) __attribute__ ((__access__ (__read_only__, 2, 3)));
extern ssize_t preadv64 (int __fd, const struct iovec *__iovec, int __count,
    __off64_t __offset)
  __attribute__ ((__warn_unused_result__)) __attribute__ ((__access__ (__read_only__, 2, 3)));
extern ssize_t pwritev64 (int __fd, const struct iovec *__iovec, int __count,
     __off64_t __offset)
  __attribute__ ((__warn_unused_result__)) __attribute__ ((__access__ (__read_only__, 2, 3)));
extern ssize_t preadv2 (int __fp, const struct iovec *__iovec, int __count,
   __off_t __offset, int ___flags)
  __attribute__ ((__warn_unused_result__)) __attribute__ ((__access__ (__read_only__, 2, 3)));
extern ssize_t pwritev2 (int __fd, const struct iovec *__iodev, int __count,
    __off_t __offset, int __flags) __attribute__ ((__warn_unused_result__));
extern ssize_t preadv64v2 (int __fp, const struct iovec *__iovec,
      int __count, __off64_t __offset,
      int ___flags)
  __attribute__ ((__warn_unused_result__)) __attribute__ ((__access__ (__read_only__, 2, 3)));
extern ssize_t pwritev64v2 (int __fd, const struct iovec *__iodev,
       int __count, __off64_t __offset,
       int __flags)
  __attribute__ ((__warn_unused_result__)) __attribute__ ((__access__ (__read_only__, 2, 3)));


extern ssize_t process_vm_readv (pid_t __pid, const struct iovec *__lvec,
     unsigned long int __liovcnt,
     const struct iovec *__rvec,
     unsigned long int __riovcnt,
     unsigned long int __flags)
  __attribute__ ((__nothrow__ , __leaf__));
extern ssize_t process_vm_writev (pid_t __pid, const struct iovec *__lvec,
      unsigned long int __liovcnt,
      const struct iovec *__rvec,
      unsigned long int __riovcnt,
      unsigned long int __flags)
  __attribute__ ((__nothrow__ , __leaf__));

struct evbuffer
;
struct evbuffer_ptr {
 ssize_t pos;
 struct {
  void *chain;
  size_t pos_in_chain;
 } internal_;
};

struct evbuffer *evbuffer_new(void);

void evbuffer_free(struct evbuffer *buf);

int evbuffer_enable_locking(struct evbuffer *buf, void *lock);

void evbuffer_lock(struct evbuffer *buf);

void evbuffer_unlock(struct evbuffer *buf);

int evbuffer_set_flags(struct evbuffer *buf, uint64_t flags);

int evbuffer_clear_flags(struct evbuffer *buf, uint64_t flags);

size_t evbuffer_get_length(const struct evbuffer *buf);

size_t evbuffer_get_contiguous_space(const struct evbuffer *buf);

int evbuffer_expand(struct evbuffer *buf, size_t datlen);

int
evbuffer_reserve_space(struct evbuffer *buf, ssize_t size,
    struct iovec *vec, int n_vec);

int evbuffer_commit_space(struct evbuffer *buf,
    struct iovec *vec, int n_vecs);

int evbuffer_add(struct evbuffer *buf, const void *data, size_t datlen);

int evbuffer_remove(struct evbuffer *buf, void *data, size_t datlen);

ssize_t evbuffer_copyout(struct evbuffer *buf, void *data_out, size_t datlen);

ssize_t evbuffer_copyout_from(struct evbuffer *buf, const struct evbuffer_ptr *pos, void *data_out, size_t datlen);

int evbuffer_remove_buffer(struct evbuffer *src, struct evbuffer *dst,
    size_t datlen);
enum evbuffer_eol_style {
 EVBUFFER_EOL_ANY,
 EVBUFFER_EOL_CRLF,
 EVBUFFER_EOL_CRLF_STRICT,
 EVBUFFER_EOL_LF,
 EVBUFFER_EOL_NUL
};

char *evbuffer_readln(struct evbuffer *buffer, size_t *n_read_out,
    enum evbuffer_eol_style eol_style);

int evbuffer_add_buffer(struct evbuffer *outbuf, struct evbuffer *inbuf);

int evbuffer_add_buffer_reference(struct evbuffer *outbuf,
    struct evbuffer *inbuf);
typedef void (*evbuffer_ref_cleanup_cb)(const void *data,
    size_t datalen, void *extra);

int evbuffer_add_reference(struct evbuffer *outbuf,
    const void *data, size_t datlen,
    evbuffer_ref_cleanup_cb cleanupfn, void *cleanupfn_arg);

int evbuffer_add_file(struct evbuffer *outbuf, int fd, int64_t offset,
    int64_t length);
struct evbuffer_file_segment;
typedef void (*evbuffer_file_segment_cleanup_cb)(
    struct evbuffer_file_segment const* seg, int flags, void* arg);

struct evbuffer_file_segment *evbuffer_file_segment_new(
 int fd, int64_t offset, int64_t length, unsigned flags);

void evbuffer_file_segment_free(struct evbuffer_file_segment *seg);

void evbuffer_file_segment_add_cleanup_cb(struct evbuffer_file_segment *seg,
 evbuffer_file_segment_cleanup_cb cb, void* arg);

int evbuffer_add_file_segment(struct evbuffer *buf,
    struct evbuffer_file_segment *seg, int64_t offset, int64_t length);

int evbuffer_add_printf(struct evbuffer *buf, const char *fmt, ...)
  __attribute__((format(printf, 2, 3)))
;

int evbuffer_add_vprintf(struct evbuffer *buf, const char *fmt, va_list ap)
 __attribute__((format(printf, 2, 0)))
;

int evbuffer_drain(struct evbuffer *buf, size_t len);

int evbuffer_write(struct evbuffer *buffer, int fd);

int evbuffer_write_atmost(struct evbuffer *buffer, int fd,
        ssize_t howmuch);

int evbuffer_read(struct evbuffer *buffer, int fd, int howmuch);

struct evbuffer_ptr evbuffer_search(struct evbuffer *buffer, const char *what, size_t len, const struct evbuffer_ptr *start);

struct evbuffer_ptr evbuffer_search_range(struct evbuffer *buffer, const char *what, size_t len, const struct evbuffer_ptr *start, const struct evbuffer_ptr *end);
enum evbuffer_ptr_how {
 EVBUFFER_PTR_SET,
 EVBUFFER_PTR_ADD
};

int
evbuffer_ptr_set(struct evbuffer *buffer, struct evbuffer_ptr *ptr,
    size_t position, enum evbuffer_ptr_how how);

struct evbuffer_ptr evbuffer_search_eol(struct evbuffer *buffer,
    struct evbuffer_ptr *start, size_t *eol_len_out,
    enum evbuffer_eol_style eol_style);

int evbuffer_peek(struct evbuffer *buffer, ssize_t len,
    struct evbuffer_ptr *start_at,
    struct iovec *vec_out, int n_vec);
struct evbuffer_cb_info {
 size_t orig_size;
 size_t n_added;
 size_t n_deleted;
};
typedef void (*evbuffer_cb_func)(struct evbuffer *buffer, const struct evbuffer_cb_info *info, void *arg);
struct evbuffer_cb_entry;

struct evbuffer_cb_entry *evbuffer_add_cb(struct evbuffer *buffer, evbuffer_cb_func cb, void *cbarg);

int evbuffer_remove_cb_entry(struct evbuffer *buffer,
        struct evbuffer_cb_entry *ent);

int evbuffer_remove_cb(struct evbuffer *buffer, evbuffer_cb_func cb, void *cbarg);

int evbuffer_cb_set_flags(struct evbuffer *buffer,
     struct evbuffer_cb_entry *cb, uint32_t flags);

int evbuffer_cb_clear_flags(struct evbuffer *buffer,
     struct evbuffer_cb_entry *cb, uint32_t flags);

unsigned char *evbuffer_pullup(struct evbuffer *buf, ssize_t size);

int evbuffer_prepend(struct evbuffer *buf, const void *data, size_t size);

int evbuffer_prepend_buffer(struct evbuffer *dst, struct evbuffer* src);

int evbuffer_freeze(struct evbuffer *buf, int at_front);

int evbuffer_unfreeze(struct evbuffer *buf, int at_front);
struct event_base;

int evbuffer_defer_callbacks(struct evbuffer *buffer, struct event_base *base);

size_t evbuffer_add_iovec(struct evbuffer * buffer, struct iovec * vec, int n_vec);

char *evbuffer_readline(struct evbuffer *buffer);
typedef void (*evbuffer_cb)(struct evbuffer *buffer, size_t old_len, size_t new_len, void *arg);

int evbuffer_setcb(struct evbuffer *buffer, evbuffer_cb cb, void *cbarg);

unsigned char *evbuffer_find(struct evbuffer *buffer, const unsigned char *what, size_t len);
struct bufferevent
;
struct event_base;
struct evbuffer;
struct sockaddr;
typedef void (*bufferevent_data_cb)(struct bufferevent *bev, void *ctx);
typedef void (*bufferevent_event_cb)(struct bufferevent *bev, short what, void *ctx);
enum bufferevent_options {
 BEV_OPT_CLOSE_ON_FREE = (1<<0),
 BEV_OPT_THREADSAFE = (1<<1),
 BEV_OPT_DEFER_CALLBACKS = (1<<2),
 BEV_OPT_UNLOCK_CALLBACKS = (1<<3)
};

struct bufferevent *bufferevent_socket_new(struct event_base *base, int fd, int options);

int bufferevent_socket_connect(struct bufferevent *, const struct sockaddr *, int);
struct evdns_base;

int bufferevent_socket_connect_hostname(struct bufferevent *,
    struct evdns_base *, int, const char *, int);

int bufferevent_socket_get_dns_error(struct bufferevent *bev);

int bufferevent_base_set(struct event_base *base, struct bufferevent *bufev);

struct event_base *bufferevent_get_base(struct bufferevent *bev);

int bufferevent_priority_set(struct bufferevent *bufev, int pri);

int bufferevent_get_priority(const struct bufferevent *bufev);

void bufferevent_free(struct bufferevent *bufev);

void bufferevent_setcb(struct bufferevent *bufev,
    bufferevent_data_cb readcb, bufferevent_data_cb writecb,
    bufferevent_event_cb eventcb, void *cbarg);

void bufferevent_getcb(struct bufferevent *bufev,
    bufferevent_data_cb *readcb_ptr,
    bufferevent_data_cb *writecb_ptr,
    bufferevent_event_cb *eventcb_ptr,
    void **cbarg_ptr);

int bufferevent_setfd(struct bufferevent *bufev, int fd);

int bufferevent_getfd(struct bufferevent *bufev);

struct bufferevent *bufferevent_get_underlying(struct bufferevent *bufev);

int bufferevent_write(struct bufferevent *bufev,
    const void *data, size_t size);

int bufferevent_write_buffer(struct bufferevent *bufev, struct evbuffer *buf);

size_t bufferevent_read(struct bufferevent *bufev, void *data, size_t size);

int bufferevent_read_buffer(struct bufferevent *bufev, struct evbuffer *buf);

struct evbuffer *bufferevent_get_input(struct bufferevent *bufev);

struct evbuffer *bufferevent_get_output(struct bufferevent *bufev);

int bufferevent_enable(struct bufferevent *bufev, short event);

int bufferevent_disable(struct bufferevent *bufev, short event);

short bufferevent_get_enabled(struct bufferevent *bufev);

int bufferevent_set_timeouts(struct bufferevent *bufev,
    const struct timeval *timeout_read, const struct timeval *timeout_write);

void bufferevent_setwatermark(struct bufferevent *bufev, short events,
    size_t lowmark, size_t highmark);

int bufferevent_getwatermark(struct bufferevent *bufev, short events,
    size_t *lowmark, size_t *highmark);

void bufferevent_lock(struct bufferevent *bufev);

void bufferevent_unlock(struct bufferevent *bufev);

void bufferevent_incref(struct bufferevent *bufev);

int bufferevent_decref(struct bufferevent *bufev);
enum bufferevent_flush_mode {
 BEV_NORMAL = 0,
 BEV_FLUSH = 1,
 BEV_FINISHED = 2
};

int bufferevent_flush(struct bufferevent *bufev,
    short iotype,
    enum bufferevent_flush_mode mode);
enum bufferevent_trigger_options {
 BEV_TRIG_IGNORE_WATERMARKS = (1<<16),
 BEV_TRIG_DEFER_CALLBACKS = BEV_OPT_DEFER_CALLBACKS
};

void bufferevent_trigger(struct bufferevent *bufev, short iotype,
    int options);

void bufferevent_trigger_event(struct bufferevent *bufev, short what,
    int options);
enum bufferevent_filter_result {
 BEV_OK = 0,
 BEV_NEED_MORE = 1,
 BEV_ERROR = 2
};
typedef enum bufferevent_filter_result (*bufferevent_filter_cb)(
    struct evbuffer *src, struct evbuffer *dst, ssize_t dst_limit,
    enum bufferevent_flush_mode mode, void *ctx);

struct bufferevent *
bufferevent_filter_new(struct bufferevent *underlying,
         bufferevent_filter_cb input_filter,
         bufferevent_filter_cb output_filter,
         int options,
         void (*free_context)(void *),
         void *ctx);

int bufferevent_pair_new(struct event_base *base, int options,
    struct bufferevent *pair[2]);

struct bufferevent *bufferevent_pair_get_partner(struct bufferevent *bev);
struct ev_token_bucket_cfg;
struct bufferevent_rate_limit_group;

struct ev_token_bucket_cfg *ev_token_bucket_cfg_new(
 size_t read_rate, size_t read_burst,
 size_t write_rate, size_t write_burst,
 const struct timeval *tick_len);

void ev_token_bucket_cfg_free(struct ev_token_bucket_cfg *cfg);

int bufferevent_set_rate_limit(struct bufferevent *bev,
    struct ev_token_bucket_cfg *cfg);

struct bufferevent_rate_limit_group *bufferevent_rate_limit_group_new(
 struct event_base *base,
 const struct ev_token_bucket_cfg *cfg);

int bufferevent_rate_limit_group_set_cfg(
 struct bufferevent_rate_limit_group *,
 const struct ev_token_bucket_cfg *);

int bufferevent_rate_limit_group_set_min_share(
 struct bufferevent_rate_limit_group *, size_t);

void bufferevent_rate_limit_group_free(struct bufferevent_rate_limit_group *);

int bufferevent_add_to_rate_limit_group(struct bufferevent *bev,
    struct bufferevent_rate_limit_group *g);

int bufferevent_remove_from_rate_limit_group(struct bufferevent *bev);

int bufferevent_set_max_single_read(struct bufferevent *bev, size_t size);

int bufferevent_set_max_single_write(struct bufferevent *bev, size_t size);

ssize_t bufferevent_get_max_single_read(struct bufferevent *bev);

ssize_t bufferevent_get_max_single_write(struct bufferevent *bev);

ssize_t bufferevent_get_read_limit(struct bufferevent *bev);

ssize_t bufferevent_get_write_limit(struct bufferevent *bev);

ssize_t bufferevent_get_max_to_read(struct bufferevent *bev);

ssize_t bufferevent_get_max_to_write(struct bufferevent *bev);

const struct ev_token_bucket_cfg *bufferevent_get_token_bucket_cfg(const struct bufferevent * bev);

ssize_t bufferevent_rate_limit_group_get_read_limit(
 struct bufferevent_rate_limit_group *);

ssize_t bufferevent_rate_limit_group_get_write_limit(
 struct bufferevent_rate_limit_group *);

int bufferevent_decrement_read_limit(struct bufferevent *bev, ssize_t decr);

int bufferevent_decrement_write_limit(struct bufferevent *bev, ssize_t decr);

int bufferevent_rate_limit_group_decrement_read(
 struct bufferevent_rate_limit_group *, ssize_t);

int bufferevent_rate_limit_group_decrement_write(
 struct bufferevent_rate_limit_group *, ssize_t);

void bufferevent_rate_limit_group_get_totals(
    struct bufferevent_rate_limit_group *grp,
    uint64_t *total_read_out, uint64_t *total_written_out);

void
bufferevent_rate_limit_group_reset_totals(
 struct bufferevent_rate_limit_group *grp);
struct event_watermark {
 size_t low;
 size_t high;
};
struct bufferevent {
 struct event_base *ev_base;
 const struct bufferevent_ops *be_ops;
 struct event ev_read;
 struct event ev_write;
 struct evbuffer *input;
 struct evbuffer *output;
 struct event_watermark wm_read;
 struct event_watermark wm_write;
 bufferevent_data_cb readcb;
 bufferevent_data_cb writecb;
 bufferevent_event_cb errorcb;
 void *cbarg;
 struct timeval timeout_read;
 struct timeval timeout_write;
 short enabled;
};

struct bufferevent *bufferevent_new(int fd,
    bufferevent_data_cb readcb, bufferevent_data_cb writecb, bufferevent_event_cb errorcb, void *cbarg);

void bufferevent_settimeout(struct bufferevent *bufev,
    int timeout_read, int timeout_write);
struct evbuffer;

void evtag_init(void);

int evtag_unmarshal_header(struct evbuffer *evbuf, uint32_t *ptag);

void evtag_marshal(struct evbuffer *evbuf, uint32_t tag, const void *data,
    uint32_t len);

void evtag_marshal_buffer(struct evbuffer *evbuf, uint32_t tag,
    struct evbuffer *data);

void evtag_encode_int(struct evbuffer *evbuf, uint32_t number);

void evtag_encode_int64(struct evbuffer *evbuf, uint64_t number);

void evtag_marshal_int(struct evbuffer *evbuf, uint32_t tag,
    uint32_t integer);

void evtag_marshal_int64(struct evbuffer *evbuf, uint32_t tag,
    uint64_t integer);

void evtag_marshal_string(struct evbuffer *buf, uint32_t tag,
    const char *string);

void evtag_marshal_timeval(struct evbuffer *evbuf, uint32_t tag,
    struct timeval *tv);

int evtag_unmarshal(struct evbuffer *src, uint32_t *ptag,
    struct evbuffer *dst);

int evtag_peek(struct evbuffer *evbuf, uint32_t *ptag);

int evtag_peek_length(struct evbuffer *evbuf, uint32_t *plength);

int evtag_payload_length(struct evbuffer *evbuf, uint32_t *plength);

int evtag_consume(struct evbuffer *evbuf);

int evtag_unmarshal_int(struct evbuffer *evbuf, uint32_t need_tag,
    uint32_t *pinteger);

int evtag_unmarshal_int64(struct evbuffer *evbuf, uint32_t need_tag,
    uint64_t *pinteger);

int evtag_unmarshal_fixed(struct evbuffer *src, uint32_t need_tag,
    void *data, size_t len);

int evtag_unmarshal_string(struct evbuffer *evbuf, uint32_t need_tag,
    char **pstring);

int evtag_unmarshal_timeval(struct evbuffer *evbuf, uint32_t need_tag,
    struct timeval *ptv);
typedef __signed__ char __s8;
typedef unsigned char __u8;
typedef __signed__ short __s16;
typedef unsigned short __u16;
typedef __signed__ int __s32;
typedef unsigned int __u32;
__extension__ typedef __signed__ long long __s64;
__extension__ typedef unsigned long long __u64;
typedef __signed__ __int128 __s128 __attribute__((aligned(16)));
typedef unsigned __int128 __u128 __attribute__((aligned(16)));
typedef __u16 __le16;
typedef __u16 __be16;
typedef __u32 __le32;
typedef __u32 __be32;
typedef __u64 __le64;
typedef __u64 __be64;
typedef __u16 __sum16;
typedef __u32 __wsum;
typedef unsigned __poll_t;
struct sched_attr {
 __u32 size;
 __u32 sched_policy;
 __u64 sched_flags;
 __s32 sched_nice;
 __u32 sched_priority;
 __u64 sched_runtime;
 __u64 sched_deadline;
 __u64 sched_period;
 __u32 sched_util_min;
 __u32 sched_util_max;
};
struct sched_param
{
  int sched_priority;
};

extern int clone (int (*__fn) (void *__arg), void *__child_stack,
    int __flags, void *__arg, ...) __attribute__ ((__nothrow__ , __leaf__));
extern int unshare (int __flags) __attribute__ ((__nothrow__ , __leaf__));
extern int sched_getcpu (void) __attribute__ ((__nothrow__ , __leaf__));
extern int getcpu (unsigned int *, unsigned int *) __attribute__ ((__nothrow__ , __leaf__));
extern int setns (int __fd, int __nstype) __attribute__ ((__nothrow__ , __leaf__));
int sched_setattr (pid_t tid, struct sched_attr *attr, unsigned int flags)
  __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
int sched_getattr (pid_t tid, struct sched_attr *attr, unsigned int size,
     unsigned int flags)
  __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));

typedef unsigned long int __cpu_mask;
typedef struct
{
  __cpu_mask __bits[1024 / (8 * sizeof (__cpu_mask))];
} cpu_set_t;

extern int __sched_cpucount (size_t __setsize, const cpu_set_t *__setp)
     __attribute__ ((__nothrow__ , __leaf__));
extern cpu_set_t *__sched_cpualloc (size_t __count) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern void __sched_cpufree (cpu_set_t *__set) __attribute__ ((__nothrow__ , __leaf__));


extern int sched_setparam (__pid_t __pid, const struct sched_param *__param)
     __attribute__ ((__nothrow__ , __leaf__));
extern int sched_getparam (__pid_t __pid, struct sched_param *__param) __attribute__ ((__nothrow__ , __leaf__));
extern int sched_setscheduler (__pid_t __pid, int __policy,
          const struct sched_param *__param) __attribute__ ((__nothrow__ , __leaf__));
extern int sched_getscheduler (__pid_t __pid) __attribute__ ((__nothrow__ , __leaf__));
extern int sched_yield (void) __attribute__ ((__nothrow__ , __leaf__));
extern int sched_get_priority_max (int __algorithm) __attribute__ ((__nothrow__ , __leaf__));
extern int sched_get_priority_min (int __algorithm) __attribute__ ((__nothrow__ , __leaf__));
extern int sched_rr_get_interval (__pid_t __pid, struct timespec *__t) __attribute__ ((__nothrow__ , __leaf__));
extern int sched_setaffinity (__pid_t __pid, size_t __cpusetsize,
         const cpu_set_t *__cpuset) __attribute__ ((__nothrow__ , __leaf__));
extern int sched_getaffinity (__pid_t __pid, size_t __cpusetsize,
         cpu_set_t *__cpuset) __attribute__ ((__nothrow__ , __leaf__));

typedef long int __jmp_buf[8];
struct __jmp_buf_tag
  {
    __jmp_buf __jmpbuf;
    int __mask_was_saved;
    __sigset_t __saved_mask;
  };

extern long int __sysconf (int __name) __attribute__ ((__nothrow__ , __leaf__));

enum
{
  PTHREAD_CREATE_JOINABLE,
  PTHREAD_CREATE_DETACHED
};
enum
{
  PTHREAD_MUTEX_TIMED_NP,
  PTHREAD_MUTEX_RECURSIVE_NP,
  PTHREAD_MUTEX_ERRORCHECK_NP,
  PTHREAD_MUTEX_ADAPTIVE_NP
  ,
  PTHREAD_MUTEX_NORMAL = PTHREAD_MUTEX_TIMED_NP,
  PTHREAD_MUTEX_RECURSIVE = PTHREAD_MUTEX_RECURSIVE_NP,
  PTHREAD_MUTEX_ERRORCHECK = PTHREAD_MUTEX_ERRORCHECK_NP,
  PTHREAD_MUTEX_DEFAULT = PTHREAD_MUTEX_NORMAL
  , PTHREAD_MUTEX_FAST_NP = PTHREAD_MUTEX_TIMED_NP
};
enum
{
  PTHREAD_MUTEX_STALLED,
  PTHREAD_MUTEX_STALLED_NP = PTHREAD_MUTEX_STALLED,
  PTHREAD_MUTEX_ROBUST,
  PTHREAD_MUTEX_ROBUST_NP = PTHREAD_MUTEX_ROBUST
};
enum
{
  PTHREAD_PRIO_NONE,
  PTHREAD_PRIO_INHERIT,
  PTHREAD_PRIO_PROTECT
};
enum
{
  PTHREAD_RWLOCK_PREFER_READER_NP,
  PTHREAD_RWLOCK_PREFER_WRITER_NP,
  PTHREAD_RWLOCK_PREFER_WRITER_NONRECURSIVE_NP,
  PTHREAD_RWLOCK_DEFAULT_NP = PTHREAD_RWLOCK_PREFER_READER_NP
};
enum
{
  PTHREAD_INHERIT_SCHED,
  PTHREAD_EXPLICIT_SCHED
};
enum
{
  PTHREAD_SCOPE_SYSTEM,
  PTHREAD_SCOPE_PROCESS
};
enum
{
  PTHREAD_PROCESS_PRIVATE,
  PTHREAD_PROCESS_SHARED
};
struct _pthread_cleanup_buffer
{
  void (*__routine) (void *);
  void *__arg;
  int __canceltype;
  struct _pthread_cleanup_buffer *__prev;
};
enum
{
  PTHREAD_CANCEL_ENABLE,
  PTHREAD_CANCEL_DISABLE
};
enum
{
  PTHREAD_CANCEL_DEFERRED,
  PTHREAD_CANCEL_ASYNCHRONOUS
};

extern int pthread_create (pthread_t *__restrict __newthread,
      const pthread_attr_t *__restrict __attr,
      void *(*__start_routine) (void *),
      void *__restrict __arg) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 3)));
extern void pthread_exit (void *__retval) __attribute__ ((__noreturn__));
extern int pthread_join (pthread_t __th, void **__thread_return);
extern int pthread_tryjoin_np (pthread_t __th, void **__thread_return) __attribute__ ((__nothrow__ , __leaf__));
extern int pthread_timedjoin_np (pthread_t __th, void **__thread_return,
     const struct timespec *__abstime);
extern int pthread_clockjoin_np (pthread_t __th, void **__thread_return,
                                 clockid_t __clockid,
     const struct timespec *__abstime);
extern int pthread_detach (pthread_t __th) __attribute__ ((__nothrow__ , __leaf__));
extern pthread_t pthread_self (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern int pthread_equal (pthread_t __thread1, pthread_t __thread2)
  __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern int pthread_attr_init (pthread_attr_t *__attr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_attr_destroy (pthread_attr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_attr_getdetachstate (const pthread_attr_t *__attr,
     int *__detachstate)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int pthread_attr_setdetachstate (pthread_attr_t *__attr,
     int __detachstate)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_attr_getguardsize (const pthread_attr_t *__attr,
          size_t *__guardsize)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int pthread_attr_setguardsize (pthread_attr_t *__attr,
          size_t __guardsize)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_attr_getschedparam (const pthread_attr_t *__restrict __attr,
           struct sched_param *__restrict __param)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int pthread_attr_setschedparam (pthread_attr_t *__restrict __attr,
           const struct sched_param *__restrict
           __param) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int pthread_attr_getschedpolicy (const pthread_attr_t *__restrict
     __attr, int *__restrict __policy)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int pthread_attr_setschedpolicy (pthread_attr_t *__attr, int __policy)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_attr_getinheritsched (const pthread_attr_t *__restrict
      __attr, int *__restrict __inherit)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int pthread_attr_setinheritsched (pthread_attr_t *__attr,
      int __inherit)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_attr_getscope (const pthread_attr_t *__restrict __attr,
      int *__restrict __scope)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int pthread_attr_setscope (pthread_attr_t *__attr, int __scope)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_attr_getstackaddr (const pthread_attr_t *__restrict
          __attr, void **__restrict __stackaddr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2))) __attribute__ ((__deprecated__));
extern int pthread_attr_setstackaddr (pthread_attr_t *__attr,
          void *__stackaddr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__deprecated__));
extern int pthread_attr_getstacksize (const pthread_attr_t *__restrict
          __attr, size_t *__restrict __stacksize)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int pthread_attr_setstacksize (pthread_attr_t *__attr,
          size_t __stacksize)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_attr_getstack (const pthread_attr_t *__restrict __attr,
      void **__restrict __stackaddr,
      size_t *__restrict __stacksize)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2, 3)));
extern int pthread_attr_setstack (pthread_attr_t *__attr, void *__stackaddr,
      size_t __stacksize) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_attr_setaffinity_np (pthread_attr_t *__attr,
     size_t __cpusetsize,
     const cpu_set_t *__cpuset)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 3)));
extern int pthread_attr_getaffinity_np (const pthread_attr_t *__attr,
     size_t __cpusetsize,
     cpu_set_t *__cpuset)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 3)));
extern int pthread_getattr_default_np (pthread_attr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_attr_setsigmask_np (pthread_attr_t *__attr,
           const __sigset_t *sigmask);
extern int pthread_attr_getsigmask_np (const pthread_attr_t *__attr,
           __sigset_t *sigmask);
extern int pthread_setattr_default_np (const pthread_attr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_getattr_np (pthread_t __th, pthread_attr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern int pthread_setschedparam (pthread_t __target_thread, int __policy,
      const struct sched_param *__param)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3)));
extern int pthread_getschedparam (pthread_t __target_thread,
      int *__restrict __policy,
      struct sched_param *__restrict __param)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));
extern int pthread_setschedprio (pthread_t __target_thread, int __prio)
     __attribute__ ((__nothrow__ , __leaf__));
extern int pthread_getname_np (pthread_t __target_thread, char *__buf,
          size_t __buflen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern int pthread_setname_np (pthread_t __target_thread, const char *__name)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern int pthread_getconcurrency (void) __attribute__ ((__nothrow__ , __leaf__));
extern int pthread_setconcurrency (int __level) __attribute__ ((__nothrow__ , __leaf__));
extern int pthread_yield (void) __attribute__ ((__nothrow__ , __leaf__));
extern int pthread_yield (void) __asm__ ("" "sched_yield") __attribute__ ((__nothrow__ , __leaf__))
  __attribute__ ((__deprecated__ ("pthread_yield is deprecated, use sched_yield instead")));
extern int pthread_setaffinity_np (pthread_t __th, size_t __cpusetsize,
       const cpu_set_t *__cpuset)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3)));
extern int pthread_getaffinity_np (pthread_t __th, size_t __cpusetsize,
       cpu_set_t *__cpuset)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3)));
extern int pthread_once (pthread_once_t *__once_control,
    void (*__init_routine) (void)) __attribute__ ((__nonnull__ (1, 2)));
extern int pthread_setcancelstate (int __state, int *__oldstate);
extern int pthread_setcanceltype (int __type, int *__oldtype);
extern int pthread_cancel (pthread_t __th);
extern void pthread_testcancel (void);
struct __cancel_jmp_buf_tag
{
  __jmp_buf __cancel_jmp_buf;
  int __mask_was_saved;
};
typedef struct
{
  struct __cancel_jmp_buf_tag __cancel_jmp_buf[1];
  void *__pad[4];
} __pthread_unwind_buf_t __attribute__ ((__aligned__));
struct __pthread_cleanup_frame
{
  void (*__cancel_routine) (void *);
  void *__cancel_arg;
  int __do_it;
  int __cancel_type;
};
extern void __pthread_register_cancel (__pthread_unwind_buf_t *__buf)
     ;
extern void __pthread_unregister_cancel (__pthread_unwind_buf_t *__buf)
  ;
extern void __pthread_register_cancel_defer (__pthread_unwind_buf_t *__buf)
     ;
extern void __pthread_unregister_cancel_restore (__pthread_unwind_buf_t *__buf)
  ;
extern void __pthread_unwind_next (__pthread_unwind_buf_t *__buf)
     __attribute__ ((__noreturn__))
     __attribute__ ((__weak__))
     ;
extern int __sigsetjmp_cancel (struct __cancel_jmp_buf_tag __env[1], int __savemask) __asm__ ("" "__sigsetjmp") __attribute__ ((__nothrow__)) __attribute__ ((__returns_twice__));
extern int pthread_mutex_init (pthread_mutex_t *__mutex,
          const pthread_mutexattr_t *__mutexattr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_mutex_destroy (pthread_mutex_t *__mutex)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_mutex_trylock (pthread_mutex_t *__mutex)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_mutex_lock (pthread_mutex_t *__mutex)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_mutex_timedlock (pthread_mutex_t *__restrict __mutex,
        const struct timespec *__restrict
        __abstime) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));
extern int pthread_mutex_clocklock (pthread_mutex_t *__restrict __mutex,
        clockid_t __clockid,
        const struct timespec *__restrict
        __abstime) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 3)));
extern int pthread_mutex_unlock (pthread_mutex_t *__mutex)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_mutex_getprioceiling (const pthread_mutex_t *
      __restrict __mutex,
      int *__restrict __prioceiling)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int pthread_mutex_setprioceiling (pthread_mutex_t *__restrict __mutex,
      int __prioceiling,
      int *__restrict __old_ceiling)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 3)));
extern int pthread_mutex_consistent (pthread_mutex_t *__mutex)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_mutex_consistent_np (pthread_mutex_t *) __asm__ ("" "pthread_mutex_consistent") __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)))
  __attribute__ ((__deprecated__ ("pthread_mutex_consistent_np is deprecated, use pthread_mutex_consistent")));
extern int pthread_mutexattr_init (pthread_mutexattr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_mutexattr_destroy (pthread_mutexattr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_mutexattr_getpshared (const pthread_mutexattr_t *
      __restrict __attr,
      int *__restrict __pshared)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int pthread_mutexattr_setpshared (pthread_mutexattr_t *__attr,
      int __pshared)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_mutexattr_gettype (const pthread_mutexattr_t *__restrict
          __attr, int *__restrict __kind)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int pthread_mutexattr_settype (pthread_mutexattr_t *__attr, int __kind)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_mutexattr_getprotocol (const pthread_mutexattr_t *
       __restrict __attr,
       int *__restrict __protocol)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int pthread_mutexattr_setprotocol (pthread_mutexattr_t *__attr,
       int __protocol)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_mutexattr_getprioceiling (const pthread_mutexattr_t *
          __restrict __attr,
          int *__restrict __prioceiling)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int pthread_mutexattr_setprioceiling (pthread_mutexattr_t *__attr,
          int __prioceiling)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_mutexattr_getrobust (const pthread_mutexattr_t *__attr,
     int *__robustness)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int pthread_mutexattr_getrobust_np (pthread_mutexattr_t *, int *) __asm__ ("" "pthread_mutexattr_getrobust") __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)))
  __attribute__ ((__deprecated__ ("pthread_mutexattr_getrobust_np is deprecated, use pthread_mutexattr_getrobust")));
extern int pthread_mutexattr_setrobust (pthread_mutexattr_t *__attr,
     int __robustness)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_mutexattr_setrobust_np (pthread_mutexattr_t *, int) __asm__ ("" "pthread_mutexattr_setrobust") __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)))
  __attribute__ ((__deprecated__ ("pthread_mutexattr_setrobust_np is deprecated, use pthread_mutexattr_setrobust")));
extern int pthread_rwlock_init (pthread_rwlock_t *__restrict __rwlock,
    const pthread_rwlockattr_t *__restrict
    __attr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_rwlock_destroy (pthread_rwlock_t *__rwlock)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_rwlock_rdlock (pthread_rwlock_t *__rwlock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_rwlock_tryrdlock (pthread_rwlock_t *__rwlock)
  __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_rwlock_timedrdlock (pthread_rwlock_t *__restrict __rwlock,
           const struct timespec *__restrict
           __abstime) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));
extern int pthread_rwlock_clockrdlock (pthread_rwlock_t *__restrict __rwlock,
           clockid_t __clockid,
           const struct timespec *__restrict
           __abstime) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 3)));
extern int pthread_rwlock_wrlock (pthread_rwlock_t *__rwlock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_rwlock_trywrlock (pthread_rwlock_t *__rwlock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_rwlock_timedwrlock (pthread_rwlock_t *__restrict __rwlock,
           const struct timespec *__restrict
           __abstime) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 2)));
extern int pthread_rwlock_clockwrlock (pthread_rwlock_t *__restrict __rwlock,
           clockid_t __clockid,
           const struct timespec *__restrict
           __abstime) __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1, 3)));
extern int pthread_rwlock_unlock (pthread_rwlock_t *__rwlock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_rwlockattr_init (pthread_rwlockattr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_rwlockattr_destroy (pthread_rwlockattr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_rwlockattr_getpshared (const pthread_rwlockattr_t *
       __restrict __attr,
       int *__restrict __pshared)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int pthread_rwlockattr_setpshared (pthread_rwlockattr_t *__attr,
       int __pshared)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_rwlockattr_getkind_np (const pthread_rwlockattr_t *
       __restrict __attr,
       int *__restrict __pref)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int pthread_rwlockattr_setkind_np (pthread_rwlockattr_t *__attr,
       int __pref) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_cond_init (pthread_cond_t *__restrict __cond,
         const pthread_condattr_t *__restrict __cond_attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_cond_destroy (pthread_cond_t *__cond)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_cond_signal (pthread_cond_t *__cond)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_cond_broadcast (pthread_cond_t *__cond)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_cond_wait (pthread_cond_t *__restrict __cond,
         pthread_mutex_t *__restrict __mutex)
     __attribute__ ((__nonnull__ (1, 2)));
extern int pthread_cond_timedwait (pthread_cond_t *__restrict __cond,
       pthread_mutex_t *__restrict __mutex,
       const struct timespec *__restrict __abstime)
     __attribute__ ((__nonnull__ (1, 2, 3)));
extern int pthread_cond_clockwait (pthread_cond_t *__restrict __cond,
       pthread_mutex_t *__restrict __mutex,
       __clockid_t __clock_id,
       const struct timespec *__restrict __abstime)
     __attribute__ ((__nonnull__ (1, 2, 4)));
extern int pthread_condattr_init (pthread_condattr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_condattr_destroy (pthread_condattr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_condattr_getpshared (const pthread_condattr_t *
     __restrict __attr,
     int *__restrict __pshared)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int pthread_condattr_setpshared (pthread_condattr_t *__attr,
     int __pshared) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_condattr_getclock (const pthread_condattr_t *
          __restrict __attr,
          __clockid_t *__restrict __clock_id)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int pthread_condattr_setclock (pthread_condattr_t *__attr,
          __clockid_t __clock_id)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_spin_init (pthread_spinlock_t *__lock, int __pshared)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_spin_destroy (pthread_spinlock_t *__lock)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_spin_lock (pthread_spinlock_t *__lock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_spin_trylock (pthread_spinlock_t *__lock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_spin_unlock (pthread_spinlock_t *__lock)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_barrier_init (pthread_barrier_t *__restrict __barrier,
     const pthread_barrierattr_t *__restrict
     __attr, unsigned int __count)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_barrier_destroy (pthread_barrier_t *__barrier)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_barrier_wait (pthread_barrier_t *__barrier)
     __attribute__ ((__nothrow__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_barrierattr_init (pthread_barrierattr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_barrierattr_destroy (pthread_barrierattr_t *__attr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_barrierattr_getpshared (const pthread_barrierattr_t *
        __restrict __attr,
        int *__restrict __pshared)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int pthread_barrierattr_setpshared (pthread_barrierattr_t *__attr,
        int __pshared)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_key_create (pthread_key_t *__key,
          void (*__destr_function) (void *))
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int pthread_key_delete (pthread_key_t __key) __attribute__ ((__nothrow__ , __leaf__));
extern void *pthread_getspecific (pthread_key_t __key) __attribute__ ((__nothrow__ , __leaf__));
extern int pthread_setspecific (pthread_key_t __key,
    const void *__pointer)
  __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__access__ (__none__, 2)));
extern int pthread_getcpuclockid (pthread_t __thread_id,
      __clockid_t *__clock_id)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern pid_t pthread_gettid_np (pthread_t __thread_id);
extern int pthread_atfork (void (*__prepare) (void),
      void (*__parent) (void),
      void (*__child) (void)) __attribute__ ((__nothrow__ , __leaf__));
extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ , __leaf__)) pthread_equal (pthread_t __thread1, pthread_t __thread2)
{
  return __thread1 == __thread2;
}


extern int access (const char *__name, int __type) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int euidaccess (const char *__name, int __type)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int eaccess (const char *__name, int __type)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int execveat (int __fd, const char *__path, char *const __argv[],
                     char *const __envp[], int __flags)
    __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));
extern int faccessat (int __fd, const char *__file, int __type, int __flag)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2))) __attribute__ ((__warn_unused_result__));
extern __off_t lseek (int __fd, __off_t __offset, int __whence) __attribute__ ((__nothrow__ , __leaf__));
extern __off64_t lseek64 (int __fd, __off64_t __offset, int __whence)
     __attribute__ ((__nothrow__ , __leaf__));
extern int close (int __fd);
extern void closefrom (int __lowfd) __attribute__ ((__nothrow__ , __leaf__));
extern ssize_t read (int __fd, void *__buf, size_t __nbytes) __attribute__ ((__warn_unused_result__))
    ;
extern ssize_t write (int __fd, const void *__buf, size_t __n) __attribute__ ((__warn_unused_result__))
    __attribute__ ((__access__ (__read_only__, 2, 3)));
extern ssize_t pread (int __fd, void *__buf, size_t __nbytes,
        __off_t __offset) __attribute__ ((__warn_unused_result__))
    ;
extern ssize_t pwrite (int __fd, const void *__buf, size_t __n,
         __off_t __offset) __attribute__ ((__warn_unused_result__))
    __attribute__ ((__access__ (__read_only__, 2, 3)));
extern ssize_t pread64 (int __fd, void *__buf, size_t __nbytes,
   __off64_t __offset) __attribute__ ((__warn_unused_result__))
    ;
extern ssize_t pwrite64 (int __fd, const void *__buf, size_t __n,
    __off64_t __offset) __attribute__ ((__warn_unused_result__))
    __attribute__ ((__access__ (__read_only__, 2, 3)));
extern int pipe (int __pipedes[2]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern int pipe2 (int __pipedes[2], int __flags) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern unsigned int alarm (unsigned int __seconds) __attribute__ ((__nothrow__ , __leaf__));
extern unsigned int sleep (unsigned int __seconds);
extern __useconds_t ualarm (__useconds_t __value, __useconds_t __interval)
     __attribute__ ((__nothrow__ , __leaf__));
extern int usleep (__useconds_t __useconds);
extern int pause (void);
extern int chown (const char *__file, __uid_t __owner, __gid_t __group)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern int fchown (int __fd, __uid_t __owner, __gid_t __group) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern int lchown (const char *__file, __uid_t __owner, __gid_t __group)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern int fchownat (int __fd, const char *__file, __uid_t __owner,
       __gid_t __group, int __flag)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2))) __attribute__ ((__warn_unused_result__));
extern int chdir (const char *__path) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern int fchdir (int __fd) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern char *getcwd (char *__buf, size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern char *get_current_dir_name (void) __attribute__ ((__nothrow__ , __leaf__));
extern char *getwd (char *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__deprecated__)) __attribute__ ((__warn_unused_result__))
    __attribute__ ((__access__ (__write_only__, 1)));
extern int dup (int __fd) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern int dup2 (int __fd, int __fd2) __attribute__ ((__nothrow__ , __leaf__));
extern int dup3 (int __fd, int __fd2, int __flags) __attribute__ ((__nothrow__ , __leaf__));
extern char **__environ;
extern char **environ;
extern int execve (const char *__path, char *const __argv[],
     char *const __envp[]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int fexecve (int __fd, char *const __argv[], char *const __envp[])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern int execv (const char *__path, char *const __argv[])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int execle (const char *__path, const char *__arg, ...)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int execl (const char *__path, const char *__arg, ...)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int execvp (const char *__file, char *const __argv[])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int execlp (const char *__file, const char *__arg, ...)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int execvpe (const char *__file, char *const __argv[],
      char *const __envp[])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int nice (int __inc) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern void _exit (int __status) __attribute__ ((__noreturn__));
enum
  {
    _PC_LINK_MAX,
    _PC_MAX_CANON,
    _PC_MAX_INPUT,
    _PC_NAME_MAX,
    _PC_PATH_MAX,
    _PC_PIPE_BUF,
    _PC_CHOWN_RESTRICTED,
    _PC_NO_TRUNC,
    _PC_VDISABLE,
    _PC_SYNC_IO,
    _PC_ASYNC_IO,
    _PC_PRIO_IO,
    _PC_SOCK_MAXBUF,
    _PC_FILESIZEBITS,
    _PC_REC_INCR_XFER_SIZE,
    _PC_REC_MAX_XFER_SIZE,
    _PC_REC_MIN_XFER_SIZE,
    _PC_REC_XFER_ALIGN,
    _PC_ALLOC_SIZE_MIN,
    _PC_SYMLINK_MAX,
    _PC_2_SYMLINKS
  };
enum
  {
    _SC_ARG_MAX,
    _SC_CHILD_MAX,
    _SC_CLK_TCK,
    _SC_NGROUPS_MAX,
    _SC_OPEN_MAX,
    _SC_STREAM_MAX,
    _SC_TZNAME_MAX,
    _SC_JOB_CONTROL,
    _SC_SAVED_IDS,
    _SC_REALTIME_SIGNALS,
    _SC_PRIORITY_SCHEDULING,
    _SC_TIMERS,
    _SC_ASYNCHRONOUS_IO,
    _SC_PRIORITIZED_IO,
    _SC_SYNCHRONIZED_IO,
    _SC_FSYNC,
    _SC_MAPPED_FILES,
    _SC_MEMLOCK,
    _SC_MEMLOCK_RANGE,
    _SC_MEMORY_PROTECTION,
    _SC_MESSAGE_PASSING,
    _SC_SEMAPHORES,
    _SC_SHARED_MEMORY_OBJECTS,
    _SC_AIO_LISTIO_MAX,
    _SC_AIO_MAX,
    _SC_AIO_PRIO_DELTA_MAX,
    _SC_DELAYTIMER_MAX,
    _SC_MQ_OPEN_MAX,
    _SC_MQ_PRIO_MAX,
    _SC_VERSION,
    _SC_PAGESIZE,
    _SC_RTSIG_MAX,
    _SC_SEM_NSEMS_MAX,
    _SC_SEM_VALUE_MAX,
    _SC_SIGQUEUE_MAX,
    _SC_TIMER_MAX,
    _SC_BC_BASE_MAX,
    _SC_BC_DIM_MAX,
    _SC_BC_SCALE_MAX,
    _SC_BC_STRING_MAX,
    _SC_COLL_WEIGHTS_MAX,
    _SC_EQUIV_CLASS_MAX,
    _SC_EXPR_NEST_MAX,
    _SC_LINE_MAX,
    _SC_RE_DUP_MAX,
    _SC_CHARCLASS_NAME_MAX,
    _SC_2_VERSION,
    _SC_2_C_BIND,
    _SC_2_C_DEV,
    _SC_2_FORT_DEV,
    _SC_2_FORT_RUN,
    _SC_2_SW_DEV,
    _SC_2_LOCALEDEF,
    _SC_PII,
    _SC_PII_XTI,
    _SC_PII_SOCKET,
    _SC_PII_INTERNET,
    _SC_PII_OSI,
    _SC_POLL,
    _SC_SELECT,
    _SC_UIO_MAXIOV,
    _SC_IOV_MAX = _SC_UIO_MAXIOV,
    _SC_PII_INTERNET_STREAM,
    _SC_PII_INTERNET_DGRAM,
    _SC_PII_OSI_COTS,
    _SC_PII_OSI_CLTS,
    _SC_PII_OSI_M,
    _SC_T_IOV_MAX,
    _SC_THREADS,
    _SC_THREAD_SAFE_FUNCTIONS,
    _SC_GETGR_R_SIZE_MAX,
    _SC_GETPW_R_SIZE_MAX,
    _SC_LOGIN_NAME_MAX,
    _SC_TTY_NAME_MAX,
    _SC_THREAD_DESTRUCTOR_ITERATIONS,
    _SC_THREAD_KEYS_MAX,
    _SC_THREAD_STACK_MIN,
    _SC_THREAD_THREADS_MAX,
    _SC_THREAD_ATTR_STACKADDR,
    _SC_THREAD_ATTR_STACKSIZE,
    _SC_THREAD_PRIORITY_SCHEDULING,
    _SC_THREAD_PRIO_INHERIT,
    _SC_THREAD_PRIO_PROTECT,
    _SC_THREAD_PROCESS_SHARED,
    _SC_NPROCESSORS_CONF,
    _SC_NPROCESSORS_ONLN,
    _SC_PHYS_PAGES,
    _SC_AVPHYS_PAGES,
    _SC_ATEXIT_MAX,
    _SC_PASS_MAX,
    _SC_XOPEN_VERSION,
    _SC_XOPEN_XCU_VERSION,
    _SC_XOPEN_UNIX,
    _SC_XOPEN_CRYPT,
    _SC_XOPEN_ENH_I18N,
    _SC_XOPEN_SHM,
    _SC_2_CHAR_TERM,
    _SC_2_C_VERSION,
    _SC_2_UPE,
    _SC_XOPEN_XPG2,
    _SC_XOPEN_XPG3,
    _SC_XOPEN_XPG4,
    _SC_CHAR_BIT,
    _SC_CHAR_MAX,
    _SC_CHAR_MIN,
    _SC_INT_MAX,
    _SC_INT_MIN,
    _SC_LONG_BIT,
    _SC_WORD_BIT,
    _SC_MB_LEN_MAX,
    _SC_NZERO,
    _SC_SSIZE_MAX,
    _SC_SCHAR_MAX,
    _SC_SCHAR_MIN,
    _SC_SHRT_MAX,
    _SC_SHRT_MIN,
    _SC_UCHAR_MAX,
    _SC_UINT_MAX,
    _SC_ULONG_MAX,
    _SC_USHRT_MAX,
    _SC_NL_ARGMAX,
    _SC_NL_LANGMAX,
    _SC_NL_MSGMAX,
    _SC_NL_NMAX,
    _SC_NL_SETMAX,
    _SC_NL_TEXTMAX,
    _SC_XBS5_ILP32_OFF32,
    _SC_XBS5_ILP32_OFFBIG,
    _SC_XBS5_LP64_OFF64,
    _SC_XBS5_LPBIG_OFFBIG,
    _SC_XOPEN_LEGACY,
    _SC_XOPEN_REALTIME,
    _SC_XOPEN_REALTIME_THREADS,
    _SC_ADVISORY_INFO,
    _SC_BARRIERS,
    _SC_BASE,
    _SC_C_LANG_SUPPORT,
    _SC_C_LANG_SUPPORT_R,
    _SC_CLOCK_SELECTION,
    _SC_CPUTIME,
    _SC_THREAD_CPUTIME,
    _SC_DEVICE_IO,
    _SC_DEVICE_SPECIFIC,
    _SC_DEVICE_SPECIFIC_R,
    _SC_FD_MGMT,
    _SC_FIFO,
    _SC_PIPE,
    _SC_FILE_ATTRIBUTES,
    _SC_FILE_LOCKING,
    _SC_FILE_SYSTEM,
    _SC_MONOTONIC_CLOCK,
    _SC_MULTI_PROCESS,
    _SC_SINGLE_PROCESS,
    _SC_NETWORKING,
    _SC_READER_WRITER_LOCKS,
    _SC_SPIN_LOCKS,
    _SC_REGEXP,
    _SC_REGEX_VERSION,
    _SC_SHELL,
    _SC_SIGNALS,
    _SC_SPAWN,
    _SC_SPORADIC_SERVER,
    _SC_THREAD_SPORADIC_SERVER,
    _SC_SYSTEM_DATABASE,
    _SC_SYSTEM_DATABASE_R,
    _SC_TIMEOUTS,
    _SC_TYPED_MEMORY_OBJECTS,
    _SC_USER_GROUPS,
    _SC_USER_GROUPS_R,
    _SC_2_PBS,
    _SC_2_PBS_ACCOUNTING,
    _SC_2_PBS_LOCATE,
    _SC_2_PBS_MESSAGE,
    _SC_2_PBS_TRACK,
    _SC_SYMLOOP_MAX,
    _SC_STREAMS,
    _SC_2_PBS_CHECKPOINT,
    _SC_V6_ILP32_OFF32,
    _SC_V6_ILP32_OFFBIG,
    _SC_V6_LP64_OFF64,
    _SC_V6_LPBIG_OFFBIG,
    _SC_HOST_NAME_MAX,
    _SC_TRACE,
    _SC_TRACE_EVENT_FILTER,
    _SC_TRACE_INHERIT,
    _SC_TRACE_LOG,
    _SC_LEVEL1_ICACHE_SIZE,
    _SC_LEVEL1_ICACHE_ASSOC,
    _SC_LEVEL1_ICACHE_LINESIZE,
    _SC_LEVEL1_DCACHE_SIZE,
    _SC_LEVEL1_DCACHE_ASSOC,
    _SC_LEVEL1_DCACHE_LINESIZE,
    _SC_LEVEL2_CACHE_SIZE,
    _SC_LEVEL2_CACHE_ASSOC,
    _SC_LEVEL2_CACHE_LINESIZE,
    _SC_LEVEL3_CACHE_SIZE,
    _SC_LEVEL3_CACHE_ASSOC,
    _SC_LEVEL3_CACHE_LINESIZE,
    _SC_LEVEL4_CACHE_SIZE,
    _SC_LEVEL4_CACHE_ASSOC,
    _SC_LEVEL4_CACHE_LINESIZE,
    _SC_IPV6 = _SC_LEVEL1_ICACHE_SIZE + 50,
    _SC_RAW_SOCKETS,
    _SC_V7_ILP32_OFF32,
    _SC_V7_ILP32_OFFBIG,
    _SC_V7_LP64_OFF64,
    _SC_V7_LPBIG_OFFBIG,
    _SC_SS_REPL_MAX,
    _SC_TRACE_EVENT_NAME_MAX,
    _SC_TRACE_NAME_MAX,
    _SC_TRACE_SYS_MAX,
    _SC_TRACE_USER_EVENT_MAX,
    _SC_XOPEN_STREAMS,
    _SC_THREAD_ROBUST_PRIO_INHERIT,
    _SC_THREAD_ROBUST_PRIO_PROTECT,
    _SC_MINSIGSTKSZ,
    _SC_SIGSTKSZ
  };
enum
  {
    _CS_PATH,
    _CS_V6_WIDTH_RESTRICTED_ENVS,
    _CS_GNU_LIBC_VERSION,
    _CS_GNU_LIBPTHREAD_VERSION,
    _CS_V5_WIDTH_RESTRICTED_ENVS,
    _CS_V7_WIDTH_RESTRICTED_ENVS,
    _CS_LFS_CFLAGS = 1000,
    _CS_LFS_LDFLAGS,
    _CS_LFS_LIBS,
    _CS_LFS_LINTFLAGS,
    _CS_LFS64_CFLAGS,
    _CS_LFS64_LDFLAGS,
    _CS_LFS64_LIBS,
    _CS_LFS64_LINTFLAGS,
    _CS_XBS5_ILP32_OFF32_CFLAGS = 1100,
    _CS_XBS5_ILP32_OFF32_LDFLAGS,
    _CS_XBS5_ILP32_OFF32_LIBS,
    _CS_XBS5_ILP32_OFF32_LINTFLAGS,
    _CS_XBS5_ILP32_OFFBIG_CFLAGS,
    _CS_XBS5_ILP32_OFFBIG_LDFLAGS,
    _CS_XBS5_ILP32_OFFBIG_LIBS,
    _CS_XBS5_ILP32_OFFBIG_LINTFLAGS,
    _CS_XBS5_LP64_OFF64_CFLAGS,
    _CS_XBS5_LP64_OFF64_LDFLAGS,
    _CS_XBS5_LP64_OFF64_LIBS,
    _CS_XBS5_LP64_OFF64_LINTFLAGS,
    _CS_XBS5_LPBIG_OFFBIG_CFLAGS,
    _CS_XBS5_LPBIG_OFFBIG_LDFLAGS,
    _CS_XBS5_LPBIG_OFFBIG_LIBS,
    _CS_XBS5_LPBIG_OFFBIG_LINTFLAGS,
    _CS_POSIX_V6_ILP32_OFF32_CFLAGS,
    _CS_POSIX_V6_ILP32_OFF32_LDFLAGS,
    _CS_POSIX_V6_ILP32_OFF32_LIBS,
    _CS_POSIX_V6_ILP32_OFF32_LINTFLAGS,
    _CS_POSIX_V6_ILP32_OFFBIG_CFLAGS,
    _CS_POSIX_V6_ILP32_OFFBIG_LDFLAGS,
    _CS_POSIX_V6_ILP32_OFFBIG_LIBS,
    _CS_POSIX_V6_ILP32_OFFBIG_LINTFLAGS,
    _CS_POSIX_V6_LP64_OFF64_CFLAGS,
    _CS_POSIX_V6_LP64_OFF64_LDFLAGS,
    _CS_POSIX_V6_LP64_OFF64_LIBS,
    _CS_POSIX_V6_LP64_OFF64_LINTFLAGS,
    _CS_POSIX_V6_LPBIG_OFFBIG_CFLAGS,
    _CS_POSIX_V6_LPBIG_OFFBIG_LDFLAGS,
    _CS_POSIX_V6_LPBIG_OFFBIG_LIBS,
    _CS_POSIX_V6_LPBIG_OFFBIG_LINTFLAGS,
    _CS_POSIX_V7_ILP32_OFF32_CFLAGS,
    _CS_POSIX_V7_ILP32_OFF32_LDFLAGS,
    _CS_POSIX_V7_ILP32_OFF32_LIBS,
    _CS_POSIX_V7_ILP32_OFF32_LINTFLAGS,
    _CS_POSIX_V7_ILP32_OFFBIG_CFLAGS,
    _CS_POSIX_V7_ILP32_OFFBIG_LDFLAGS,
    _CS_POSIX_V7_ILP32_OFFBIG_LIBS,
    _CS_POSIX_V7_ILP32_OFFBIG_LINTFLAGS,
    _CS_POSIX_V7_LP64_OFF64_CFLAGS,
    _CS_POSIX_V7_LP64_OFF64_LDFLAGS,
    _CS_POSIX_V7_LP64_OFF64_LIBS,
    _CS_POSIX_V7_LP64_OFF64_LINTFLAGS,
    _CS_POSIX_V7_LPBIG_OFFBIG_CFLAGS,
    _CS_POSIX_V7_LPBIG_OFFBIG_LDFLAGS,
    _CS_POSIX_V7_LPBIG_OFFBIG_LIBS,
    _CS_POSIX_V7_LPBIG_OFFBIG_LINTFLAGS,
    _CS_V6_ENV,
    _CS_V7_ENV
  };
extern long int pathconf (const char *__path, int __name)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern long int fpathconf (int __fd, int __name) __attribute__ ((__nothrow__ , __leaf__));
extern long int sysconf (int __name) __attribute__ ((__nothrow__ , __leaf__));
extern size_t confstr (int __name, char *__buf, size_t __len) __attribute__ ((__nothrow__ , __leaf__))
    ;
extern __pid_t getpid (void) __attribute__ ((__nothrow__ , __leaf__));
extern __pid_t getppid (void) __attribute__ ((__nothrow__ , __leaf__));
extern __pid_t getpgrp (void) __attribute__ ((__nothrow__ , __leaf__));
extern __pid_t __getpgid (__pid_t __pid) __attribute__ ((__nothrow__ , __leaf__));
extern __pid_t getpgid (__pid_t __pid) __attribute__ ((__nothrow__ , __leaf__));
extern int setpgid (__pid_t __pid, __pid_t __pgid) __attribute__ ((__nothrow__ , __leaf__));
extern int setpgrp (void) __attribute__ ((__nothrow__ , __leaf__));
extern __pid_t setsid (void) __attribute__ ((__nothrow__ , __leaf__));
extern __pid_t getsid (__pid_t __pid) __attribute__ ((__nothrow__ , __leaf__));
extern __uid_t getuid (void) __attribute__ ((__nothrow__ , __leaf__));
extern __uid_t geteuid (void) __attribute__ ((__nothrow__ , __leaf__));
extern __gid_t getgid (void) __attribute__ ((__nothrow__ , __leaf__));
extern __gid_t getegid (void) __attribute__ ((__nothrow__ , __leaf__));
extern int getgroups (int __size, __gid_t __list[]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__))
    ;
extern int group_member (__gid_t __gid) __attribute__ ((__nothrow__ , __leaf__));
extern int setuid (__uid_t __uid) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern int setreuid (__uid_t __ruid, __uid_t __euid) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern int seteuid (__uid_t __uid) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern int setgid (__gid_t __gid) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern int setregid (__gid_t __rgid, __gid_t __egid) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern int setegid (__gid_t __gid) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern int getresuid (__uid_t *__ruid, __uid_t *__euid, __uid_t *__suid)
     __attribute__ ((__nothrow__ , __leaf__));
extern int getresgid (__gid_t *__rgid, __gid_t *__egid, __gid_t *__sgid)
     __attribute__ ((__nothrow__ , __leaf__));
extern int setresuid (__uid_t __ruid, __uid_t __euid, __uid_t __suid)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern int setresgid (__gid_t __rgid, __gid_t __egid, __gid_t __sgid)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern __pid_t fork (void) __attribute__ ((__nothrow__));
extern __pid_t vfork (void) __attribute__ ((__nothrow__ , __leaf__));
extern __pid_t _Fork (void) __attribute__ ((__nothrow__ , __leaf__));
extern char *ttyname (int __fd) __attribute__ ((__nothrow__ , __leaf__));
extern int ttyname_r (int __fd, char *__buf, size_t __buflen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2))) __attribute__ ((__warn_unused_result__))
     ;
extern int isatty (int __fd) __attribute__ ((__nothrow__ , __leaf__));
extern int ttyslot (void) __attribute__ ((__nothrow__ , __leaf__));
extern int link (const char *__from, const char *__to)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2))) __attribute__ ((__warn_unused_result__));
extern int linkat (int __fromfd, const char *__from, int __tofd,
     const char *__to, int __flags)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 4))) __attribute__ ((__warn_unused_result__));
extern int symlink (const char *__from, const char *__to)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2))) __attribute__ ((__warn_unused_result__));
extern ssize_t readlink (const char *__restrict __path,
    char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2))) __attribute__ ((__warn_unused_result__))
     ;
extern int symlinkat (const char *__from, int __tofd,
        const char *__to) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 3))) __attribute__ ((__warn_unused_result__));
extern ssize_t readlinkat (int __fd, const char *__restrict __path,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3))) __attribute__ ((__warn_unused_result__))
     ;
extern int unlink (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int unlinkat (int __fd, const char *__name, int __flag)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern int rmdir (const char *__path) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern __pid_t tcgetpgrp (int __fd) __attribute__ ((__nothrow__ , __leaf__));
extern int tcsetpgrp (int __fd, __pid_t __pgrp_id) __attribute__ ((__nothrow__ , __leaf__));
extern char *getlogin (void);
extern int getlogin_r (char *__name, size_t __name_len) __attribute__ ((__nonnull__ (1)))
    ;
extern int setlogin (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

extern char *optarg;
extern int optind;
extern int opterr;
extern int optopt;
extern int getopt (int ___argc, char *const *___argv, const char *__shortopts)
       __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));



extern int gethostname (char *__name, size_t __len) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)))
    ;
extern int sethostname (const char *__name, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__)) __attribute__ ((__access__ (__read_only__, 1, 2)));
extern int sethostid (long int __id) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern int getdomainname (char *__name, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__))
     ;
extern int setdomainname (const char *__name, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__)) __attribute__ ((__access__ (__read_only__, 1, 2)));
extern int vhangup (void) __attribute__ ((__nothrow__ , __leaf__));
extern int revoke (const char *__file) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern int profil (unsigned short int *__sample_buffer, size_t __size,
     size_t __offset, unsigned int __scale)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int acct (const char *__name) __attribute__ ((__nothrow__ , __leaf__));
extern char *getusershell (void) __attribute__ ((__nothrow__ , __leaf__));
extern void endusershell (void) __attribute__ ((__nothrow__ , __leaf__));
extern void setusershell (void) __attribute__ ((__nothrow__ , __leaf__));
extern int daemon (int __nochdir, int __noclose) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern int chroot (const char *__path) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern char *getpass (const char *__prompt) __attribute__ ((__nonnull__ (1)));
extern int fsync (int __fd);
extern int syncfs (int __fd) __attribute__ ((__nothrow__ , __leaf__));
extern long int gethostid (void);
extern void sync (void) __attribute__ ((__nothrow__ , __leaf__));
extern int getpagesize (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern int getdtablesize (void) __attribute__ ((__nothrow__ , __leaf__));
extern int truncate (const char *__file, __off_t __length)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern int truncate64 (const char *__file, __off64_t __length)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern int ftruncate (int __fd, __off_t __length) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern int ftruncate64 (int __fd, __off64_t __length) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern int brk (void *__addr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern void *sbrk (intptr_t __delta) __attribute__ ((__nothrow__ , __leaf__));
extern long int syscall (long int __sysno, ...) __attribute__ ((__nothrow__ , __leaf__));
extern int lockf (int __fd, int __cmd, __off_t __len) __attribute__ ((__warn_unused_result__));
extern int lockf64 (int __fd, int __cmd, __off64_t __len) __attribute__ ((__warn_unused_result__));
ssize_t copy_file_range (int __infd, __off64_t *__pinoff,
    int __outfd, __off64_t *__poutoff,
    size_t __length, unsigned int __flags);
extern int fdatasync (int __fildes);
extern char *crypt (const char *__key, const char *__salt)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern void swab (const void *__restrict __from, void *__restrict __to,
    ssize_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)))
    __attribute__ ((__access__ (__read_only__, 1, 3)))
    __attribute__ ((__access__ (__write_only__, 2, 3)));
int getentropy (void *__buffer, size_t __length) __attribute__ ((__warn_unused_result__))
    __attribute__ ((__access__ (__write_only__, 1, 2)));
extern int close_range (unsigned int __fd, unsigned int __max_fd,
   int __flags) __attribute__ ((__nothrow__ , __leaf__));
extern ssize_t __read_chk (int __fd, void *__buf, size_t __nbytes,
      size_t __buflen)
     __attribute__ ((__warn_unused_result__)) __attribute__ ((__access__ (__write_only__, 2, 3)));
extern ssize_t __read_alias (int __fd, void *__buf, size_t __nbytes) __asm__ ("" "read")
     __attribute__ ((__warn_unused_result__)) __attribute__ ((__access__ (__write_only__, 2, 3)));
extern ssize_t __read_chk_warn (int __fd, void *__buf, size_t __nbytes, size_t __buflen) __asm__ ("" "__read_chk")
     __attribute__ ((__warn_unused_result__)) __attribute__((__warning__ ("read called with bigger length than size of " "the destination buffer")));
extern ssize_t __pread_chk (int __fd, void *__buf, size_t __nbytes,
       __off_t __offset, size_t __bufsize)
     __attribute__ ((__warn_unused_result__)) __attribute__ ((__access__ (__write_only__, 2, 3)));
extern ssize_t __pread64_chk (int __fd, void *__buf, size_t __nbytes,
         __off64_t __offset, size_t __bufsize)
     __attribute__ ((__warn_unused_result__)) __attribute__ ((__access__ (__write_only__, 2, 3)));
extern ssize_t __pread_alias (int __fd, void *__buf, size_t __nbytes, __off_t __offset) __asm__ ("" "pread")
     __attribute__ ((__warn_unused_result__)) __attribute__ ((__access__ (__write_only__, 2, 3)));
extern ssize_t __pread64_alias (int __fd, void *__buf, size_t __nbytes, __off64_t __offset) __asm__ ("" "pread64")
     __attribute__ ((__warn_unused_result__)) __attribute__ ((__access__ (__write_only__, 2, 3)));
extern ssize_t __pread_chk_warn (int __fd, void *__buf, size_t __nbytes, __off_t __offset, size_t __bufsize) __asm__ ("" "__pread_chk")
     __attribute__ ((__warn_unused_result__)) __attribute__((__warning__ ("pread called with bigger length than size of " "the destination buffer")));
extern ssize_t __pread64_chk_warn (int __fd, void *__buf, size_t __nbytes, __off64_t __offset, size_t __bufsize) __asm__ ("" "__pread64_chk")
     __attribute__ ((__warn_unused_result__)) __attribute__((__warning__ ("pread64 called with bigger length than size of " "the destination buffer")));
extern ssize_t __readlink_chk (const char *__restrict __path,
          char *__restrict __buf, size_t __len,
          size_t __buflen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2))) __attribute__ ((__warn_unused_result__)) __attribute__ ((__access__ (__write_only__, 2, 3)));
extern ssize_t __readlink_alias (const char *__restrict __path, char *__restrict __buf, size_t __len) __asm__ ("" "readlink") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__nonnull__ (1, 2))) __attribute__ ((__warn_unused_result__)) __attribute__ ((__access__ (__write_only__, 2, 3)));
extern ssize_t __readlink_chk_warn (const char *__restrict __path, char *__restrict __buf, size_t __len, size_t __buflen) __asm__ ("" "__readlink_chk") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__nonnull__ (1, 2))) __attribute__ ((__warn_unused_result__)) __attribute__((__warning__ ("readlink called with bigger length " "than size of destination buffer")));
extern ssize_t __readlinkat_chk (int __fd, const char *__restrict __path,
     char *__restrict __buf, size_t __len,
     size_t __buflen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3))) __attribute__ ((__warn_unused_result__)) __attribute__ ((__access__ (__write_only__, 3, 4)));
extern ssize_t __readlinkat_alias (int __fd, const char *__restrict __path, char *__restrict __buf, size_t __len) __asm__ ("" "readlinkat") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__nonnull__ (2, 3))) __attribute__ ((__warn_unused_result__)) __attribute__ ((__access__ (__write_only__, 3, 4)));
extern ssize_t __readlinkat_chk_warn (int __fd, const char *__restrict __path, char *__restrict __buf, size_t __len, size_t __buflen) __asm__ ("" "__readlinkat_chk") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__nonnull__ (2, 3))) __attribute__ ((__warn_unused_result__)) __attribute__((__warning__ ("readlinkat called with bigger " "length than size of destination " "buffer")));
extern char *__getcwd_chk (char *__buf, size_t __size, size_t __buflen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern char *__getcwd_alias (char *__buf, size_t __size) __asm__ ("" "getcwd") __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern char *__getcwd_chk_warn (char *__buf, size_t __size, size_t __buflen) __asm__ ("" "__getcwd_chk") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__warn_unused_result__)) __attribute__((__warning__ ("getcwd caller with bigger length than size of " "destination buffer")));
extern char *__getwd_chk (char *__buf, size_t buflen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__)) __attribute__ ((__access__ (__write_only__, 1, 2)));
extern char *__getwd_warn (char *__buf) __asm__ ("" "getwd") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__)) __attribute__((__warning__ ("please use getcwd instead, as getwd " "doesn't specify buffer size")));
extern size_t __confstr_chk (int __name, char *__buf, size_t __len,
        size_t __buflen) __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__access__ (__write_only__, 2, 3)));
extern size_t __confstr_alias (int __name, char *__buf, size_t __len) __asm__ ("" "confstr") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__access__ (__write_only__, 2, 3)));
extern size_t __confstr_chk_warn (int __name, char *__buf, size_t __len, size_t __buflen) __asm__ ("" "__confstr_chk") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__((__warning__ ("confstr called with bigger length than size of destination " "buffer")));
extern int __getgroups_chk (int __size, __gid_t __list[], size_t __listlen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__)) __attribute__ ((__access__ (__write_only__, 2, 1)));
extern int __getgroups_alias (int __size, __gid_t __list[]) __asm__ ("" "getgroups") __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__)) __attribute__ ((__access__ (__write_only__, 2, 1)));
extern int __getgroups_chk_warn (int __size, __gid_t __list[], size_t __listlen) __asm__ ("" "__getgroups_chk") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__warn_unused_result__)) __attribute__((__warning__ ("getgroups called with bigger group count than what " "can fit into destination buffer")));
extern int __ttyname_r_chk (int __fd, char *__buf, size_t __buflen,
       size_t __nreal) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)))
     __attribute__ ((__access__ (__write_only__, 2, 3)));
extern int __ttyname_r_alias (int __fd, char *__buf, size_t __buflen) __asm__ ("" "ttyname_r") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__nonnull__ (2)));
extern int __ttyname_r_chk_warn (int __fd, char *__buf, size_t __buflen, size_t __nreal) __asm__ ("" "__ttyname_r_chk") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__nonnull__ (2))) __attribute__((__warning__ ("ttyname_r called with bigger buflen than " "size of destination buffer")));
extern int __getlogin_r_chk (char *__buf, size_t __buflen, size_t __nreal)
     __attribute__ ((__nonnull__ (1))) __attribute__ ((__access__ (__write_only__, 1, 2)));
extern int __getlogin_r_alias (char *__buf, size_t __buflen) __asm__ ("" "getlogin_r") __attribute__ ((__nonnull__ (1)));
extern int __getlogin_r_chk_warn (char *__buf, size_t __buflen, size_t __nreal) __asm__ ("" "__getlogin_r_chk")
     __attribute__ ((__nonnull__ (1))) __attribute__((__warning__ ("getlogin_r called with bigger buflen than " "size of destination buffer")));
extern int __gethostname_chk (char *__buf, size_t __buflen, size_t __nreal)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__access__ (__write_only__, 1, 2)));
extern int __gethostname_alias (char *__buf, size_t __buflen) __asm__ ("" "gethostname") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__nonnull__ (1))) __attribute__ ((__access__ (__write_only__, 1, 2)));
extern int __gethostname_chk_warn (char *__buf, size_t __buflen, size_t __nreal) __asm__ ("" "__gethostname_chk") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__nonnull__ (1))) __attribute__((__warning__ ("gethostname called with bigger buflen than " "size of destination buffer")));
extern int __getdomainname_chk (char *__buf, size_t __buflen, size_t __nreal)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__)) __attribute__ ((__access__ (__write_only__, 1, 2)));
extern int __getdomainname_alias (char *__buf, size_t __buflen) __asm__ ("" "getdomainname") __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)))
     __attribute__ ((__warn_unused_result__)) __attribute__ ((__access__ (__write_only__, 1, 2)));
extern int __getdomainname_chk_warn (char *__buf, size_t __buflen, size_t __nreal) __asm__ ("" "__getdomainname_chk") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__)) __attribute__((__warning__ ("getdomainname called with bigger " "buflen than size of destination " "buffer")));
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) __attribute__ ((__warn_unused_result__)) ssize_t
read (int __fd, void * __buf, size_t __nbytes)
    
{
  return (((__builtin_constant_p (__builtin_dynamic_object_size (__buf, 0)) && (__builtin_dynamic_object_size (__buf, 0)) == (long unsigned int) -1) || (((__typeof (__nbytes)) 0 < (__typeof (__nbytes)) -1 || (__builtin_constant_p (__nbytes) && (__nbytes) > 0)) && __builtin_constant_p ((((long unsigned int) (__nbytes)) <= ((__builtin_dynamic_object_size (__buf, 0))) / ((sizeof (char))))) && (((long unsigned int) (__nbytes)) <= ((__builtin_dynamic_object_size (__buf, 0))) / ((sizeof (char)))))) ? __read_alias (__fd, __buf, __nbytes) : ((((__typeof (__nbytes)) 0 < (__typeof (__nbytes)) -1 || (__builtin_constant_p (__nbytes) && (__nbytes) > 0)) && __builtin_constant_p ((((long unsigned int) (__nbytes)) <= (__builtin_dynamic_object_size (__buf, 0)) / (sizeof (char)))) && !(((long unsigned int) (__nbytes)) <= (__builtin_dynamic_object_size (__buf, 0)) / (sizeof (char)))) ? __read_chk_warn (__fd, __buf, __nbytes, __builtin_dynamic_object_size (__buf, 0)) : __read_chk (__fd, __buf, __nbytes, __builtin_dynamic_object_size (__buf, 0))));
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) __attribute__ ((__warn_unused_result__)) ssize_t
pread (int __fd, void * __buf,
       size_t __nbytes, __off_t __offset)
    
{
  return (((__builtin_constant_p (__builtin_dynamic_object_size (__buf, 0)) && (__builtin_dynamic_object_size (__buf, 0)) == (long unsigned int) -1) || (((__typeof (__nbytes)) 0 < (__typeof (__nbytes)) -1 || (__builtin_constant_p (__nbytes) && (__nbytes) > 0)) && __builtin_constant_p ((((long unsigned int) (__nbytes)) <= ((__builtin_dynamic_object_size (__buf, 0))) / ((sizeof (char))))) && (((long unsigned int) (__nbytes)) <= ((__builtin_dynamic_object_size (__buf, 0))) / ((sizeof (char)))))) ? __pread_alias (__fd, __buf, __nbytes, __offset) : ((((__typeof (__nbytes)) 0 < (__typeof (__nbytes)) -1 || (__builtin_constant_p (__nbytes) && (__nbytes) > 0)) && __builtin_constant_p ((((long unsigned int) (__nbytes)) <= (__builtin_dynamic_object_size (__buf, 0)) / (sizeof (char)))) && !(((long unsigned int) (__nbytes)) <= (__builtin_dynamic_object_size (__buf, 0)) / (sizeof (char)))) ? __pread_chk_warn (__fd, __buf, __nbytes, __offset, __builtin_dynamic_object_size (__buf, 0)) : __pread_chk (__fd, __buf, __nbytes, __offset, __builtin_dynamic_object_size (__buf, 0))));
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) __attribute__ ((__warn_unused_result__)) ssize_t
pread64 (int __fd, void * __buf,
  size_t __nbytes, __off64_t __offset)
    
{
  return (((__builtin_constant_p (__builtin_dynamic_object_size (__buf, 0)) && (__builtin_dynamic_object_size (__buf, 0)) == (long unsigned int) -1) || (((__typeof (__nbytes)) 0 < (__typeof (__nbytes)) -1 || (__builtin_constant_p (__nbytes) && (__nbytes) > 0)) && __builtin_constant_p ((((long unsigned int) (__nbytes)) <= ((__builtin_dynamic_object_size (__buf, 0))) / ((sizeof (char))))) && (((long unsigned int) (__nbytes)) <= ((__builtin_dynamic_object_size (__buf, 0))) / ((sizeof (char)))))) ? __pread64_alias (__fd, __buf, __nbytes, __offset) : ((((__typeof (__nbytes)) 0 < (__typeof (__nbytes)) -1 || (__builtin_constant_p (__nbytes) && (__nbytes) > 0)) && __builtin_constant_p ((((long unsigned int) (__nbytes)) <= (__builtin_dynamic_object_size (__buf, 0)) / (sizeof (char)))) && !(((long unsigned int) (__nbytes)) <= (__builtin_dynamic_object_size (__buf, 0)) / (sizeof (char)))) ? __pread64_chk_warn (__fd, __buf, __nbytes, __offset, __builtin_dynamic_object_size (__buf, 0)) : __pread64_chk (__fd, __buf, __nbytes, __offset, __builtin_dynamic_object_size (__buf, 0))));
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) __attribute__ ((__nonnull__ (1, 2))) __attribute__ ((__warn_unused_result__)) ssize_t
__attribute__ ((__nothrow__ , __leaf__)) readlink (const char *__restrict __path, char * __restrict __buf, size_t __len)
    
{
  return (((__builtin_constant_p (__builtin_dynamic_object_size (__buf, 1)) && (__builtin_dynamic_object_size (__buf, 1)) == (long unsigned int) -1) || (((__typeof (__len)) 0 < (__typeof (__len)) -1 || (__builtin_constant_p (__len) && (__len) > 0)) && __builtin_constant_p ((((long unsigned int) (__len)) <= ((__builtin_dynamic_object_size (__buf, 1))) / ((sizeof (char))))) && (((long unsigned int) (__len)) <= ((__builtin_dynamic_object_size (__buf, 1))) / ((sizeof (char)))))) ? __readlink_alias (__path, __buf, __len) : ((((__typeof (__len)) 0 < (__typeof (__len)) -1 || (__builtin_constant_p (__len) && (__len) > 0)) && __builtin_constant_p ((((long unsigned int) (__len)) <= (__builtin_dynamic_object_size (__buf, 1)) / (sizeof (char)))) && !(((long unsigned int) (__len)) <= (__builtin_dynamic_object_size (__buf, 1)) / (sizeof (char)))) ? __readlink_chk_warn (__path, __buf, __len, __builtin_dynamic_object_size (__buf, 1)) : __readlink_chk (__path, __buf, __len, __builtin_dynamic_object_size (__buf, 1))));
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) __attribute__ ((__nonnull__ (2, 3))) __attribute__ ((__warn_unused_result__)) ssize_t
__attribute__ ((__nothrow__ , __leaf__)) readlinkat (int __fd, const char *__restrict __path, char * __restrict __buf, size_t __len)
    
{
  return (((__builtin_constant_p (__builtin_dynamic_object_size (__buf, 1)) && (__builtin_dynamic_object_size (__buf, 1)) == (long unsigned int) -1) || (((__typeof (__len)) 0 < (__typeof (__len)) -1 || (__builtin_constant_p (__len) && (__len) > 0)) && __builtin_constant_p ((((long unsigned int) (__len)) <= ((__builtin_dynamic_object_size (__buf, 1))) / ((sizeof (char))))) && (((long unsigned int) (__len)) <= ((__builtin_dynamic_object_size (__buf, 1))) / ((sizeof (char)))))) ? __readlinkat_alias (__fd, __path, __buf, __len) : ((((__typeof (__len)) 0 < (__typeof (__len)) -1 || (__builtin_constant_p (__len) && (__len) > 0)) && __builtin_constant_p ((((long unsigned int) (__len)) <= (__builtin_dynamic_object_size (__buf, 1)) / (sizeof (char)))) && !(((long unsigned int) (__len)) <= (__builtin_dynamic_object_size (__buf, 1)) / (sizeof (char)))) ? __readlinkat_chk_warn (__fd, __path, __buf, __len, __builtin_dynamic_object_size (__buf, 1)) : __readlinkat_chk (__fd, __path, __buf, __len, __builtin_dynamic_object_size (__buf, 1))));
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) __attribute__ ((__warn_unused_result__)) char *
__attribute__ ((__nothrow__ , __leaf__)) getcwd (char * __buf, size_t __size)
    
{
  return (((__builtin_constant_p (__builtin_dynamic_object_size (__buf, 1)) && (__builtin_dynamic_object_size (__buf, 1)) == (long unsigned int) -1) || (((__typeof (__size)) 0 < (__typeof (__size)) -1 || (__builtin_constant_p (__size) && (__size) > 0)) && __builtin_constant_p ((((long unsigned int) (__size)) <= ((__builtin_dynamic_object_size (__buf, 1))) / ((sizeof (char))))) && (((long unsigned int) (__size)) <= ((__builtin_dynamic_object_size (__buf, 1))) / ((sizeof (char)))))) ? __getcwd_alias (__buf, __size) : ((((__typeof (__size)) 0 < (__typeof (__size)) -1 || (__builtin_constant_p (__size) && (__size) > 0)) && __builtin_constant_p ((((long unsigned int) (__size)) <= (__builtin_dynamic_object_size (__buf, 1)) / (sizeof (char)))) && !(((long unsigned int) (__size)) <= (__builtin_dynamic_object_size (__buf, 1)) / (sizeof (char)))) ? __getcwd_chk_warn (__buf, __size, __builtin_dynamic_object_size (__buf, 1)) : __getcwd_chk (__buf, __size, __builtin_dynamic_object_size (__buf, 1))));
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) __attribute__ ((__nonnull__ (1)))
__attribute__ ((__deprecated__)) __attribute__ ((__warn_unused_result__)) char *
__attribute__ ((__nothrow__ , __leaf__)) getwd (char * __buf)
{
  if (__builtin_dynamic_object_size (__buf, 1) != (size_t) -1)
    return __getwd_chk (__buf, __builtin_dynamic_object_size (__buf, 1));
  return __getwd_warn (__buf);
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) size_t
__attribute__ ((__nothrow__ , __leaf__)) confstr (int __name, char * __buf, size_t __len)
    
{
  return (((__builtin_constant_p (__builtin_dynamic_object_size (__buf, 1)) && (__builtin_dynamic_object_size (__buf, 1)) == (long unsigned int) -1) || (((__typeof (__len)) 0 < (__typeof (__len)) -1 || (__builtin_constant_p (__len) && (__len) > 0)) && __builtin_constant_p ((((long unsigned int) (__len)) <= ((__builtin_dynamic_object_size (__buf, 1))) / ((sizeof (char))))) && (((long unsigned int) (__len)) <= ((__builtin_dynamic_object_size (__buf, 1))) / ((sizeof (char)))))) ? __confstr_alias (__name, __buf, __len) : ((((__typeof (__len)) 0 < (__typeof (__len)) -1 || (__builtin_constant_p (__len) && (__len) > 0)) && __builtin_constant_p ((((long unsigned int) (__len)) <= (__builtin_dynamic_object_size (__buf, 1)) / (sizeof (char)))) && !(((long unsigned int) (__len)) <= (__builtin_dynamic_object_size (__buf, 1)) / (sizeof (char)))) ? __confstr_chk_warn (__name, __buf, __len, __builtin_dynamic_object_size (__buf, 1)) : __confstr_chk (__name, __buf, __len, __builtin_dynamic_object_size (__buf, 1))));
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
__attribute__ ((__nothrow__ , __leaf__)) getgroups (int __size, __gid_t * __list)
    
{
  return (((__builtin_constant_p (__builtin_dynamic_object_size (__list, 1)) && (__builtin_dynamic_object_size (__list, 1)) == (long unsigned int) -1) || (((__typeof (__size)) 0 < (__typeof (__size)) -1 || (__builtin_constant_p (__size) && (__size) > 0)) && __builtin_constant_p ((((long unsigned int) (__size)) <= ((__builtin_dynamic_object_size (__list, 1))) / ((sizeof (__gid_t))))) && (((long unsigned int) (__size)) <= ((__builtin_dynamic_object_size (__list, 1))) / ((sizeof (__gid_t)))))) ? __getgroups_alias (__size, __list) : ((((__typeof (__size)) 0 < (__typeof (__size)) -1 || (__builtin_constant_p (__size) && (__size) > 0)) && __builtin_constant_p ((((long unsigned int) (__size)) <= (__builtin_dynamic_object_size (__list, 1)) / (sizeof (__gid_t)))) && !(((long unsigned int) (__size)) <= (__builtin_dynamic_object_size (__list, 1)) / (sizeof (__gid_t)))) ? __getgroups_chk_warn (__size, __list, __builtin_dynamic_object_size (__list, 1)) : __getgroups_chk (__size, __list, __builtin_dynamic_object_size (__list, 1))));
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
__attribute__ ((__nothrow__ , __leaf__)) ttyname_r (int __fd, char * __buf, size_t __buflen)
    
{
  return (((__builtin_constant_p (__builtin_dynamic_object_size (__buf, 1)) && (__builtin_dynamic_object_size (__buf, 1)) == (long unsigned int) -1) || (((__typeof (__buflen)) 0 < (__typeof (__buflen)) -1 || (__builtin_constant_p (__buflen) && (__buflen) > 0)) && __builtin_constant_p ((((long unsigned int) (__buflen)) <= ((__builtin_dynamic_object_size (__buf, 1))) / ((sizeof (char))))) && (((long unsigned int) (__buflen)) <= ((__builtin_dynamic_object_size (__buf, 1))) / ((sizeof (char)))))) ? __ttyname_r_alias (__fd, __buf, __buflen) : ((((__typeof (__buflen)) 0 < (__typeof (__buflen)) -1 || (__builtin_constant_p (__buflen) && (__buflen) > 0)) && __builtin_constant_p ((((long unsigned int) (__buflen)) <= (__builtin_dynamic_object_size (__buf, 1)) / (sizeof (char)))) && !(((long unsigned int) (__buflen)) <= (__builtin_dynamic_object_size (__buf, 1)) / (sizeof (char)))) ? __ttyname_r_chk_warn (__fd, __buf, __buflen, __builtin_dynamic_object_size (__buf, 1)) : __ttyname_r_chk (__fd, __buf, __buflen, __builtin_dynamic_object_size (__buf, 1))));
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
getlogin_r (char * __buf, size_t __buflen)
    
{
  return (((__builtin_constant_p (__builtin_dynamic_object_size (__buf, 1)) && (__builtin_dynamic_object_size (__buf, 1)) == (long unsigned int) -1) || (((__typeof (__buflen)) 0 < (__typeof (__buflen)) -1 || (__builtin_constant_p (__buflen) && (__buflen) > 0)) && __builtin_constant_p ((((long unsigned int) (__buflen)) <= ((__builtin_dynamic_object_size (__buf, 1))) / ((sizeof (char))))) && (((long unsigned int) (__buflen)) <= ((__builtin_dynamic_object_size (__buf, 1))) / ((sizeof (char)))))) ? __getlogin_r_alias (__buf, __buflen) : ((((__typeof (__buflen)) 0 < (__typeof (__buflen)) -1 || (__builtin_constant_p (__buflen) && (__buflen) > 0)) && __builtin_constant_p ((((long unsigned int) (__buflen)) <= (__builtin_dynamic_object_size (__buf, 1)) / (sizeof (char)))) && !(((long unsigned int) (__buflen)) <= (__builtin_dynamic_object_size (__buf, 1)) / (sizeof (char)))) ? __getlogin_r_chk_warn (__buf, __buflen, __builtin_dynamic_object_size (__buf, 1)) : __getlogin_r_chk (__buf, __buflen, __builtin_dynamic_object_size (__buf, 1))));
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
__attribute__ ((__nothrow__ , __leaf__)) gethostname (char * __buf, size_t __buflen)
    
{
  return (((__builtin_constant_p (__builtin_dynamic_object_size (__buf, 1)) && (__builtin_dynamic_object_size (__buf, 1)) == (long unsigned int) -1) || (((__typeof (__buflen)) 0 < (__typeof (__buflen)) -1 || (__builtin_constant_p (__buflen) && (__buflen) > 0)) && __builtin_constant_p ((((long unsigned int) (__buflen)) <= ((__builtin_dynamic_object_size (__buf, 1))) / ((sizeof (char))))) && (((long unsigned int) (__buflen)) <= ((__builtin_dynamic_object_size (__buf, 1))) / ((sizeof (char)))))) ? __gethostname_alias (__buf, __buflen) : ((((__typeof (__buflen)) 0 < (__typeof (__buflen)) -1 || (__builtin_constant_p (__buflen) && (__buflen) > 0)) && __builtin_constant_p ((((long unsigned int) (__buflen)) <= (__builtin_dynamic_object_size (__buf, 1)) / (sizeof (char)))) && !(((long unsigned int) (__buflen)) <= (__builtin_dynamic_object_size (__buf, 1)) / (sizeof (char)))) ? __gethostname_chk_warn (__buf, __buflen, __builtin_dynamic_object_size (__buf, 1)) : __gethostname_chk (__buf, __buflen, __builtin_dynamic_object_size (__buf, 1))));
}
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
__attribute__ ((__nothrow__ , __leaf__)) getdomainname (char * __buf, size_t __buflen)
    
{
  return (((__builtin_constant_p (__builtin_dynamic_object_size (__buf, 1)) && (__builtin_dynamic_object_size (__buf, 1)) == (long unsigned int) -1) || (((__typeof (__buflen)) 0 < (__typeof (__buflen)) -1 || (__builtin_constant_p (__buflen) && (__buflen) > 0)) && __builtin_constant_p ((((long unsigned int) (__buflen)) <= ((__builtin_dynamic_object_size (__buf, 1))) / ((sizeof (char))))) && (((long unsigned int) (__buflen)) <= ((__builtin_dynamic_object_size (__buf, 1))) / ((sizeof (char)))))) ? __getdomainname_alias (__buf, __buflen) : ((((__typeof (__buflen)) 0 < (__typeof (__buflen)) -1 || (__builtin_constant_p (__buflen) && (__buflen) > 0)) && __builtin_constant_p ((((long unsigned int) (__buflen)) <= (__builtin_dynamic_object_size (__buf, 1)) / (sizeof (char)))) && !(((long unsigned int) (__buflen)) <= (__builtin_dynamic_object_size (__buf, 1)) / (sizeof (char)))) ? __getdomainname_chk_warn (__buf, __buflen, __builtin_dynamic_object_size (__buf, 1)) : __getdomainname_chk (__buf, __buflen, __builtin_dynamic_object_size (__buf, 1))));
}
extern __pid_t gettid (void) __attribute__ ((__nothrow__ , __leaf__));


struct group
  {
    char *gr_name;
    char *gr_passwd;
    __gid_t gr_gid;
    char **gr_mem;
  };
extern void setgrent (void);
extern void endgrent (void);
extern struct group *getgrent (void);
extern struct group *fgetgrent (FILE *__stream);
extern int putgrent (const struct group *__restrict __p,
       FILE *__restrict __f);
extern struct group *getgrgid (__gid_t __gid);
extern struct group *getgrnam (const char *__name);
extern int getgrent_r (struct group *__restrict __resultbuf,
         char *__restrict __buffer, size_t __buflen,
         struct group **__restrict __result)
 __attribute__ ((__access__ (__write_only__, 2, 3)));
extern int getgrgid_r (__gid_t __gid, struct group *__restrict __resultbuf,
         char *__restrict __buffer, size_t __buflen,
         struct group **__restrict __result)
 __attribute__ ((__access__ (__write_only__, 3, 4)));
extern int getgrnam_r (const char *__restrict __name,
         struct group *__restrict __resultbuf,
         char *__restrict __buffer, size_t __buflen,
         struct group **__restrict __result)
 __attribute__ ((__access__ (__write_only__, 3, 4)));
extern int fgetgrent_r (FILE *__restrict __stream,
   struct group *__restrict __resultbuf,
   char *__restrict __buffer, size_t __buflen,
   struct group **__restrict __result)
 __attribute__ ((__access__ (__write_only__, 3, 4)));
extern int setgroups (size_t __n, const __gid_t *__groups) __attribute__ ((__nothrow__ , __leaf__));
extern int getgrouplist (const char *__user, __gid_t __group,
    __gid_t *__groups, int *__ngroups);
extern int initgroups (const char *__user, __gid_t __group);


typedef __sig_atomic_t sig_atomic_t;
typedef struct
  {
    int si_signo;
    int si_errno;
    int si_code;
    int __pad0;
    union
      {
 int _pad[((128 / sizeof (int)) - 4)];
 struct
   {
     __pid_t si_pid;
     __uid_t si_uid;
   } _kill;
 struct
   {
     int si_tid;
     int si_overrun;
     __sigval_t si_sigval;
   } _timer;
 struct
   {
     __pid_t si_pid;
     __uid_t si_uid;
     __sigval_t si_sigval;
   } _rt;
 struct
   {
     __pid_t si_pid;
     __uid_t si_uid;
     int si_status;
     __clock_t si_utime;
     __clock_t si_stime;
   } _sigchld;
 struct
   {
     void *si_addr;
    
     short int si_addr_lsb;
     union
       {
  struct
    {
      void *_lower;
      void *_upper;
    } _addr_bnd;
  __uint32_t _pkey;
       } _bounds;
   } _sigfault;
 struct
   {
     long int si_band;
     int si_fd;
   } _sigpoll;
 struct
   {
     void *_call_addr;
     int _syscall;
     unsigned int _arch;
   } _sigsys;
      } _sifields;
  } siginfo_t ;
enum
{
  SI_ASYNCNL = -60,
  SI_DETHREAD = -7,
  SI_TKILL,
  SI_SIGIO,
  SI_ASYNCIO,
  SI_MESGQ,
  SI_TIMER,
  SI_QUEUE,
  SI_USER,
  SI_KERNEL = 0x80
};
enum
{
  ILL_ILLOPC = 1,
  ILL_ILLOPN,
  ILL_ILLADR,
  ILL_ILLTRP,
  ILL_PRVOPC,
  ILL_PRVREG,
  ILL_COPROC,
  ILL_BADSTK,
  ILL_BADIADDR
};
enum
{
  FPE_INTDIV = 1,
  FPE_INTOVF,
  FPE_FLTDIV,
  FPE_FLTOVF,
  FPE_FLTUND,
  FPE_FLTRES,
  FPE_FLTINV,
  FPE_FLTSUB,
  FPE_FLTUNK = 14,
  FPE_CONDTRAP
};
enum
{
  SEGV_MAPERR = 1,
  SEGV_ACCERR,
  SEGV_BNDERR,
  SEGV_PKUERR,
  SEGV_ACCADI,
  SEGV_ADIDERR,
  SEGV_ADIPERR,
  SEGV_MTEAERR,
  SEGV_MTESERR,
  SEGV_CPERR
};
enum
{
  BUS_ADRALN = 1,
  BUS_ADRERR,
  BUS_OBJERR,
  BUS_MCEERR_AR,
  BUS_MCEERR_AO
};
enum
{
  TRAP_BRKPT = 1,
  TRAP_TRACE,
  TRAP_BRANCH,
  TRAP_HWBKPT,
  TRAP_UNK,
  TRAP_PERF
};
enum
{
  CLD_EXITED = 1,
  CLD_KILLED,
  CLD_DUMPED,
  CLD_TRAPPED,
  CLD_STOPPED,
  CLD_CONTINUED
};
enum
{
  POLL_IN = 1,
  POLL_OUT,
  POLL_MSG,
  POLL_ERR,
  POLL_PRI,
  POLL_HUP
};
enum
{
  SYS_SECCOMP = 1,
  SYS_USER_DISPATCH
};
typedef __sigval_t sigval_t;
enum
{
  SIGEV_SIGNAL = 0,
  SIGEV_NONE,
  SIGEV_THREAD,
  SIGEV_THREAD_ID = 4
};
typedef void (*__sighandler_t) (int);
extern __sighandler_t __sysv_signal (int __sig, __sighandler_t __handler)
     __attribute__ ((__nothrow__ , __leaf__));
extern __sighandler_t sysv_signal (int __sig, __sighandler_t __handler)
     __attribute__ ((__nothrow__ , __leaf__));
extern __sighandler_t signal (int __sig, __sighandler_t __handler)
     __attribute__ ((__nothrow__ , __leaf__));
extern int kill (__pid_t __pid, int __sig) __attribute__ ((__nothrow__ , __leaf__));
extern int killpg (__pid_t __pgrp, int __sig) __attribute__ ((__nothrow__ , __leaf__));
extern int raise (int __sig) __attribute__ ((__nothrow__ , __leaf__));
extern __sighandler_t ssignal (int __sig, __sighandler_t __handler)
     __attribute__ ((__nothrow__ , __leaf__));
extern int gsignal (int __sig) __attribute__ ((__nothrow__ , __leaf__));
extern void psignal (int __sig, const char *__s);
extern void psiginfo (const siginfo_t *__pinfo, const char *__s);
extern int sigpause (int __sig) __asm__ ("__xpg_sigpause")
  __attribute__ ((__deprecated__ ("Use the sigsuspend function instead")));
extern int sigblock (int __mask) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__deprecated__));
extern int sigsetmask (int __mask) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__deprecated__));
extern int siggetmask (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__deprecated__));
typedef __sighandler_t sighandler_t;
typedef __sighandler_t sig_t;
extern int sigemptyset (sigset_t *__set) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int sigfillset (sigset_t *__set) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int sigaddset (sigset_t *__set, int __signo) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int sigdelset (sigset_t *__set, int __signo) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int sigismember (const sigset_t *__set, int __signo)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int sigisemptyset (const sigset_t *__set) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int sigandset (sigset_t *__set, const sigset_t *__left,
        const sigset_t *__right) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2, 3)));
extern int sigorset (sigset_t *__set, const sigset_t *__left,
       const sigset_t *__right) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2, 3)));
struct sigaction
  {
    union
      {
 __sighandler_t sa_handler;
 void (*sa_sigaction) (int, siginfo_t *, void *);
      }
    __sigaction_handler;
    __sigset_t sa_mask;
    int sa_flags;
    void (*sa_restorer) (void);
  };
extern int sigprocmask (int __how, const sigset_t *__restrict __set,
   sigset_t *__restrict __oset) __attribute__ ((__nothrow__ , __leaf__));
extern int sigsuspend (const sigset_t *__set) __attribute__ ((__nonnull__ (1)));
extern int sigaction (int __sig, const struct sigaction *__restrict __act,
        struct sigaction *__restrict __oact) __attribute__ ((__nothrow__ , __leaf__));
extern int sigpending (sigset_t *__set) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int sigwait (const sigset_t *__restrict __set, int *__restrict __sig)
     __attribute__ ((__nonnull__ (1, 2)));
extern int sigwaitinfo (const sigset_t *__restrict __set,
   siginfo_t *__restrict __info) __attribute__ ((__nonnull__ (1)));
extern int sigtimedwait (const sigset_t *__restrict __set,
    siginfo_t *__restrict __info,
    const struct timespec *__restrict __timeout)
     __attribute__ ((__nonnull__ (1)));
extern int sigqueue (__pid_t __pid, int __sig, const union sigval __val)
     __attribute__ ((__nothrow__ , __leaf__));
struct _fpx_sw_bytes
{
  __uint32_t magic1;
  __uint32_t extended_size;
  __uint64_t xstate_bv;
  __uint32_t xstate_size;
  __uint32_t __glibc_reserved1[7];
};
struct _fpreg
{
  unsigned short significand[4];
  unsigned short exponent;
};
struct _fpxreg
{
  unsigned short significand[4];
  unsigned short exponent;
  unsigned short __glibc_reserved1[3];
};
struct _xmmreg
{
  __uint32_t element[4];
};
struct _fpstate
{
  __uint16_t cwd;
  __uint16_t swd;
  __uint16_t ftw;
  __uint16_t fop;
  __uint64_t rip;
  __uint64_t rdp;
  __uint32_t mxcsr;
  __uint32_t mxcr_mask;
  struct _fpxreg _st[8];
  struct _xmmreg _xmm[16];
  __uint32_t __glibc_reserved1[24];
};
struct sigcontext
{
  __uint64_t r8;
  __uint64_t r9;
  __uint64_t r10;
  __uint64_t r11;
  __uint64_t r12;
  __uint64_t r13;
  __uint64_t r14;
  __uint64_t r15;
  __uint64_t rdi;
  __uint64_t rsi;
  __uint64_t rbp;
  __uint64_t rbx;
  __uint64_t rdx;
  __uint64_t rax;
  __uint64_t rcx;
  __uint64_t rsp;
  __uint64_t rip;
  __uint64_t eflags;
  unsigned short cs;
  unsigned short gs;
  unsigned short fs;
  unsigned short __pad0;
  __uint64_t err;
  __uint64_t trapno;
  __uint64_t oldmask;
  __uint64_t cr2;
  __extension__ union
    {
      struct _fpstate * fpstate;
      __uint64_t __fpstate_word;
    };
  __uint64_t __reserved1 [8];
};
struct _xsave_hdr
{
  __uint64_t xstate_bv;
  __uint64_t __glibc_reserved1[2];
  __uint64_t __glibc_reserved2[5];
};
struct _ymmh_state
{
  __uint32_t ymmh_space[64];
};
struct _xstate
{
  struct _fpstate fpstate;
  struct _xsave_hdr xstate_hdr;
  struct _ymmh_state ymmh;
};
extern int sigreturn (struct sigcontext *__scp) __attribute__ ((__nothrow__ , __leaf__));
typedef struct
  {
    void *ss_sp;
    int ss_flags;
    size_t ss_size;
  } stack_t;
__extension__ typedef long long int greg_t;
typedef greg_t gregset_t[23];
enum
{
  REG_R8 = 0,
  REG_R9,
  REG_R10,
  REG_R11,
  REG_R12,
  REG_R13,
  REG_R14,
  REG_R15,
  REG_RDI,
  REG_RSI,
  REG_RBP,
  REG_RBX,
  REG_RDX,
  REG_RAX,
  REG_RCX,
  REG_RSP,
  REG_RIP,
  REG_EFL,
  REG_CSGSFS,
  REG_ERR,
  REG_TRAPNO,
  REG_OLDMASK,
  REG_CR2
};
struct _libc_fpxreg
{
  unsigned short int significand[4];
  unsigned short int exponent;
  unsigned short int __glibc_reserved1[3];
};
struct _libc_xmmreg
{
  __uint32_t element[4];
};
struct _libc_fpstate
{
  __uint16_t cwd;
  __uint16_t swd;
  __uint16_t ftw;
  __uint16_t fop;
  __uint64_t rip;
  __uint64_t rdp;
  __uint32_t mxcsr;
  __uint32_t mxcr_mask;
  struct _libc_fpxreg _st[8];
  struct _libc_xmmreg _xmm[16];
  __uint32_t __glibc_reserved1[24];
};
typedef struct _libc_fpstate *fpregset_t;
typedef struct
  {
    gregset_t gregs;
    fpregset_t fpregs;
    __extension__ unsigned long long __reserved1 [8];
} mcontext_t;
typedef struct ucontext_t
  {
    unsigned long int uc_flags;
    struct ucontext_t *uc_link;
    stack_t uc_stack;
    mcontext_t uc_mcontext;
    sigset_t uc_sigmask;
    struct _libc_fpstate __fpregs_mem;
    __extension__ unsigned long long int __ssp[4];
  } ucontext_t;
extern int siginterrupt (int __sig, int __interrupt) __attribute__ ((__nothrow__ , __leaf__))
  __attribute__ ((__deprecated__ ("Use sigaction with SA_RESTART instead")));
enum
{
  SS_ONSTACK = 1,
  SS_DISABLE
};
extern int sigaltstack (const stack_t *__restrict __ss,
   stack_t *__restrict __oss) __attribute__ ((__nothrow__ , __leaf__));
struct sigstack
  {
    void *ss_sp;
    int ss_onstack;
  };
extern int sigstack (struct sigstack *__ss, struct sigstack *__oss)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__deprecated__));
extern int sighold (int __sig) __attribute__ ((__nothrow__ , __leaf__))
  __attribute__ ((__deprecated__ ("Use the sigprocmask function instead")));
extern int sigrelse (int __sig) __attribute__ ((__nothrow__ , __leaf__))
  __attribute__ ((__deprecated__ ("Use the sigprocmask function instead")));
extern int sigignore (int __sig) __attribute__ ((__nothrow__ , __leaf__))
  __attribute__ ((__deprecated__ ("Use the signal function instead")));
extern __sighandler_t sigset (int __sig, __sighandler_t __disp) __attribute__ ((__nothrow__ , __leaf__))
  __attribute__ ((__deprecated__ ("Use the signal and sigprocmask functions instead")));
extern int pthread_sigmask (int __how,
       const __sigset_t *__restrict __newmask,
       __sigset_t *__restrict __oldmask)__attribute__ ((__nothrow__ , __leaf__));
extern int pthread_kill (pthread_t __threadid, int __signo) __attribute__ ((__nothrow__ , __leaf__));
extern int pthread_sigqueue (pthread_t __threadid, int __signo,
        const union sigval __value) __attribute__ ((__nothrow__ , __leaf__));
extern int __libc_current_sigrtmin (void) __attribute__ ((__nothrow__ , __leaf__));
extern int __libc_current_sigrtmax (void) __attribute__ ((__nothrow__ , __leaf__));
extern int tgkill (__pid_t __tgid, __pid_t __tid, int __signal);

 
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wpedantic"
#pragma GCC diagnostic pop
char* itoa_u32(uint32_t u, char* buffer);
char* itoa_32( int32_t i, char* buffer);
char* itoa_u64(uint64_t u, char* buffer);
char* itoa_64( int64_t i, char* buffer);
struct slab_rebal_thread;
struct slab_rebal_thread *start_slab_maintenance_thread(void *storage);
void stop_slab_maintenance_thread(struct slab_rebal_thread *t);
enum reassign_result_type {
    REASSIGN_OK=0, REASSIGN_RUNNING, REASSIGN_BADCLASS, REASSIGN_NOSPARE,
    REASSIGN_SRC_DST_SAME
};
enum reassign_result_type slabs_reassign(struct slab_rebal_thread *t, int src, int dst, int flags);
void slab_maintenance_pause(struct slab_rebal_thread *t);
void slab_maintenance_resume(struct slab_rebal_thread *t);
    typedef enum {
        PROTOCOL_BINARY_REQ = 0x80,
        PROTOCOL_BINARY_RES = 0x81
    } protocol_binary_magic;
    typedef enum {
        PROTOCOL_BINARY_RESPONSE_SUCCESS = 0x00,
        PROTOCOL_BINARY_RESPONSE_KEY_ENOENT = 0x01,
        PROTOCOL_BINARY_RESPONSE_KEY_EEXISTS = 0x02,
        PROTOCOL_BINARY_RESPONSE_E2BIG = 0x03,
        PROTOCOL_BINARY_RESPONSE_EINVAL = 0x04,
        PROTOCOL_BINARY_RESPONSE_NOT_STORED = 0x05,
        PROTOCOL_BINARY_RESPONSE_DELTA_BADVAL = 0x06,
        PROTOCOL_BINARY_RESPONSE_AUTH_ERROR = 0x20,
        PROTOCOL_BINARY_RESPONSE_AUTH_CONTINUE = 0x21,
        PROTOCOL_BINARY_RESPONSE_UNKNOWN_COMMAND = 0x81,
        PROTOCOL_BINARY_RESPONSE_ENOMEM = 0x82
    } protocol_binary_response_status;
    typedef enum {
        PROTOCOL_BINARY_CMD_GET = 0x00,
        PROTOCOL_BINARY_CMD_SET = 0x01,
        PROTOCOL_BINARY_CMD_ADD = 0x02,
        PROTOCOL_BINARY_CMD_REPLACE = 0x03,
        PROTOCOL_BINARY_CMD_DELETE = 0x04,
        PROTOCOL_BINARY_CMD_INCREMENT = 0x05,
        PROTOCOL_BINARY_CMD_DECREMENT = 0x06,
        PROTOCOL_BINARY_CMD_QUIT = 0x07,
        PROTOCOL_BINARY_CMD_FLUSH = 0x08,
        PROTOCOL_BINARY_CMD_GETQ = 0x09,
        PROTOCOL_BINARY_CMD_NOOP = 0x0a,
        PROTOCOL_BINARY_CMD_VERSION = 0x0b,
        PROTOCOL_BINARY_CMD_GETK = 0x0c,
        PROTOCOL_BINARY_CMD_GETKQ = 0x0d,
        PROTOCOL_BINARY_CMD_APPEND = 0x0e,
        PROTOCOL_BINARY_CMD_PREPEND = 0x0f,
        PROTOCOL_BINARY_CMD_STAT = 0x10,
        PROTOCOL_BINARY_CMD_SETQ = 0x11,
        PROTOCOL_BINARY_CMD_ADDQ = 0x12,
        PROTOCOL_BINARY_CMD_REPLACEQ = 0x13,
        PROTOCOL_BINARY_CMD_DELETEQ = 0x14,
        PROTOCOL_BINARY_CMD_INCREMENTQ = 0x15,
        PROTOCOL_BINARY_CMD_DECREMENTQ = 0x16,
        PROTOCOL_BINARY_CMD_QUITQ = 0x17,
        PROTOCOL_BINARY_CMD_FLUSHQ = 0x18,
        PROTOCOL_BINARY_CMD_APPENDQ = 0x19,
        PROTOCOL_BINARY_CMD_PREPENDQ = 0x1a,
        PROTOCOL_BINARY_CMD_TOUCH = 0x1c,
        PROTOCOL_BINARY_CMD_GAT = 0x1d,
        PROTOCOL_BINARY_CMD_GATQ = 0x1e,
        PROTOCOL_BINARY_CMD_GATK = 0x23,
        PROTOCOL_BINARY_CMD_GATKQ = 0x24,
        PROTOCOL_BINARY_CMD_SASL_LIST_MECHS = 0x20,
        PROTOCOL_BINARY_CMD_SASL_AUTH = 0x21,
        PROTOCOL_BINARY_CMD_SASL_STEP = 0x22,
        PROTOCOL_BINARY_CMD_RGET = 0x30,
        PROTOCOL_BINARY_CMD_RSET = 0x31,
        PROTOCOL_BINARY_CMD_RSETQ = 0x32,
        PROTOCOL_BINARY_CMD_RAPPEND = 0x33,
        PROTOCOL_BINARY_CMD_RAPPENDQ = 0x34,
        PROTOCOL_BINARY_CMD_RPREPEND = 0x35,
        PROTOCOL_BINARY_CMD_RPREPENDQ = 0x36,
        PROTOCOL_BINARY_CMD_RDELETE = 0x37,
        PROTOCOL_BINARY_CMD_RDELETEQ = 0x38,
        PROTOCOL_BINARY_CMD_RINCR = 0x39,
        PROTOCOL_BINARY_CMD_RINCRQ = 0x3a,
        PROTOCOL_BINARY_CMD_RDECR = 0x3b,
        PROTOCOL_BINARY_CMD_RDECRQ = 0x3c
    } protocol_binary_command;
    typedef enum {
        PROTOCOL_BINARY_RAW_BYTES = 0x00
    } protocol_binary_datatypes;
    typedef union {
        struct {
            uint8_t magic;
            uint8_t opcode;
            uint16_t keylen;
            uint8_t extlen;
            uint8_t datatype;
            uint16_t reserved;
            uint32_t bodylen;
            uint32_t opaque;
            uint64_t cas;
        } request;
        uint8_t bytes[24];
    } protocol_binary_request_header;
    typedef union {
        struct {
            uint8_t magic;
            uint8_t opcode;
            uint16_t keylen;
            uint8_t extlen;
            uint8_t datatype;
            uint16_t status;
            uint32_t bodylen;
            uint32_t opaque;
            uint64_t cas;
        } response;
        uint8_t bytes[24];
    } protocol_binary_response_header;
    typedef union {
        struct {
            protocol_binary_request_header header;
        } message;
        uint8_t bytes[sizeof(protocol_binary_request_header)];
    } protocol_binary_request_no_extras;
    typedef union {
        struct {
            protocol_binary_response_header header;
        } message;
        uint8_t bytes[sizeof(protocol_binary_response_header)];
    } protocol_binary_response_no_extras;
    typedef protocol_binary_request_no_extras protocol_binary_request_get;
    typedef protocol_binary_request_no_extras protocol_binary_request_getq;
    typedef protocol_binary_request_no_extras protocol_binary_request_getk;
    typedef protocol_binary_request_no_extras protocol_binary_request_getkq;
    typedef union {
        struct {
            protocol_binary_response_header header;
            struct {
                uint32_t flags;
            } body;
        } message;
        uint8_t bytes[sizeof(protocol_binary_response_header) + 4];
    } protocol_binary_response_get;
    typedef protocol_binary_response_get protocol_binary_response_getq;
    typedef protocol_binary_response_get protocol_binary_response_getk;
    typedef protocol_binary_response_get protocol_binary_response_getkq;
    typedef protocol_binary_request_no_extras protocol_binary_request_delete;
    typedef protocol_binary_response_no_extras protocol_binary_response_delete;
    typedef union {
        struct {
            protocol_binary_request_header header;
            struct {
                uint32_t expiration;
            } body;
        } message;
        uint8_t bytes[sizeof(protocol_binary_request_header) + 4];
    } protocol_binary_request_flush;
    typedef protocol_binary_response_no_extras protocol_binary_response_flush;
    typedef union {
        struct {
            protocol_binary_request_header header;
            struct {
                uint32_t flags;
                uint32_t expiration;
            } body;
        } message;
        uint8_t bytes[sizeof(protocol_binary_request_header) + 8];
    } protocol_binary_request_set;
    typedef protocol_binary_request_set protocol_binary_request_add;
    typedef protocol_binary_request_set protocol_binary_request_replace;
    typedef protocol_binary_response_no_extras protocol_binary_response_set;
    typedef protocol_binary_response_no_extras protocol_binary_response_add;
    typedef protocol_binary_response_no_extras protocol_binary_response_replace;
    typedef protocol_binary_request_no_extras protocol_binary_request_noop;
    typedef protocol_binary_response_no_extras protocol_binary_response_noop;
    typedef union {
        struct {
            protocol_binary_request_header header;
            struct {
                uint64_t delta;
                uint64_t initial;
                uint32_t expiration;
            } body;
        } message;
        uint8_t bytes[sizeof(protocol_binary_request_header) + 20];
    } protocol_binary_request_incr;
    typedef protocol_binary_request_incr protocol_binary_request_decr;
    typedef union {
        struct {
            protocol_binary_response_header header;
            struct {
                uint64_t value;
            } body;
        } message;
        uint8_t bytes[sizeof(protocol_binary_response_header) + 8];
    } protocol_binary_response_incr;
    typedef protocol_binary_response_incr protocol_binary_response_decr;
    typedef protocol_binary_request_no_extras protocol_binary_request_quit;
    typedef protocol_binary_response_no_extras protocol_binary_response_quit;
    typedef protocol_binary_request_no_extras protocol_binary_request_append;
    typedef protocol_binary_request_no_extras protocol_binary_request_prepend;
    typedef protocol_binary_response_no_extras protocol_binary_response_append;
    typedef protocol_binary_response_no_extras protocol_binary_response_prepend;
    typedef protocol_binary_request_no_extras protocol_binary_request_version;
    typedef protocol_binary_response_no_extras protocol_binary_response_version;
    typedef protocol_binary_request_no_extras protocol_binary_request_stats;
    typedef protocol_binary_response_no_extras protocol_binary_response_stats;
    typedef union {
        struct {
            protocol_binary_request_header header;
            struct {
                uint32_t expiration;
            } body;
        } message;
        uint8_t bytes[sizeof(protocol_binary_request_header) + 4];
    } protocol_binary_request_touch;
    typedef protocol_binary_response_no_extras protocol_binary_response_touch;
    typedef union {
        struct {
            protocol_binary_request_header header;
            struct {
                uint32_t expiration;
            } body;
        } message;
        uint8_t bytes[sizeof(protocol_binary_request_header) + 4];
    } protocol_binary_request_gat;
    typedef protocol_binary_request_gat protocol_binary_request_gatq;
    typedef protocol_binary_request_gat protocol_binary_request_gatk;
    typedef protocol_binary_request_gat protocol_binary_request_gatkq;
    typedef protocol_binary_response_get protocol_binary_response_gat;
    typedef protocol_binary_response_get protocol_binary_response_gatq;
    typedef protocol_binary_response_get protocol_binary_response_gatk;
    typedef protocol_binary_response_get protocol_binary_response_gatkq;
    typedef union {
        struct {
            protocol_binary_response_header header;
            struct {
                uint16_t size;
                uint8_t reserved;
                uint8_t flags;
                uint32_t max_results;
            } body;
        } message;
        uint8_t bytes[sizeof(protocol_binary_request_header) + 4];
    } protocol_binary_request_rangeop;
    typedef protocol_binary_request_rangeop protocol_binary_request_rget;
    typedef protocol_binary_request_rangeop protocol_binary_request_rset;
    typedef protocol_binary_request_rangeop protocol_binary_request_rsetq;
    typedef protocol_binary_request_rangeop protocol_binary_request_rappend;
    typedef protocol_binary_request_rangeop protocol_binary_request_rappendq;
    typedef protocol_binary_request_rangeop protocol_binary_request_rprepend;
    typedef protocol_binary_request_rangeop protocol_binary_request_rprependq;
    typedef protocol_binary_request_rangeop protocol_binary_request_rdelete;
    typedef protocol_binary_request_rangeop protocol_binary_request_rdeleteq;
    typedef protocol_binary_request_rangeop protocol_binary_request_rincr;
    typedef protocol_binary_request_rangeop protocol_binary_request_rincrq;
    typedef protocol_binary_request_rangeop protocol_binary_request_rdecr;
    typedef protocol_binary_request_rangeop protocol_binary_request_rdecrq;
struct cache_free_s {
    struct { struct cache_free_s *stqe_next; } c_next;
};
typedef struct {
    pthread_mutex_t mutex;
    char *name;
    struct cache_head { struct cache_free_s *stqh_first; struct cache_free_s **stqh_last; } head;
    size_t bufsize;
    int freetotal;
    int total;
    int freecurr;
    int limit;
} cache_t;
cache_t* cache_create(const char* name, size_t bufsize, size_t align);
void cache_destroy(cache_t* handle);
void* cache_alloc(cache_t* handle);
void* do_cache_alloc(cache_t* handle);
void cache_free(cache_t* handle, void* ptr);
void do_cache_free(cache_t* handle, void* ptr);
void cache_set_limit(cache_t* handle, int limit);
typedef struct
{
    unsigned long int size;
    unsigned int a_start, a_end;
    unsigned int b_end;
    int b_inuse;
    unsigned char data[];
} bipbuf_t;
bipbuf_t *bipbuf_new(const unsigned int size);
void bipbuf_init(bipbuf_t* me, const unsigned int size);
void bipbuf_free(bipbuf_t *me);
unsigned char *bipbuf_request(bipbuf_t* me, const int size);
int bipbuf_push(bipbuf_t* me, const int size);
int bipbuf_offer(bipbuf_t *me, const unsigned char *data, const int size);
unsigned char *bipbuf_peek(const bipbuf_t* me, const unsigned int len);
unsigned char *bipbuf_peek_all(const bipbuf_t* me, unsigned int *len);
unsigned char *bipbuf_poll(bipbuf_t* me, const unsigned int size);
int bipbuf_size(const bipbuf_t* me);
int bipbuf_is_empty(const bipbuf_t* me);
int bipbuf_used(const bipbuf_t* cb);
int bipbuf_unused(const bipbuf_t* me);
typedef unsigned int rel_time_t;
enum log_entry_type {
    LOGGER_ASCII_CMD = 0,
    LOGGER_EVICTION,
    LOGGER_ITEM_GET,
    LOGGER_ITEM_STORE,
    LOGGER_CRAWLER_STATUS,
    LOGGER_SLAB_MOVE,
    LOGGER_CONNECTION_NEW,
    LOGGER_CONNECTION_CLOSE,
    LOGGER_CONNECTION_ERROR,
    LOGGER_CONNECTION_TLSERROR,
    LOGGER_DELETIONS,
    LOGGER_EXTSTORE_WRITE,
    LOGGER_COMPACT_START,
    LOGGER_COMPACT_ABORT,
    LOGGER_COMPACT_READ_START,
    LOGGER_COMPACT_READ_END,
    LOGGER_COMPACT_END,
    LOGGER_COMPACT_FRAGINFO,
    LOGGER_PROXY_CONFIG,
    LOGGER_PROXY_RAW,
    LOGGER_PROXY_ERROR,
    LOGGER_PROXY_USER,
    LOGGER_PROXY_REQ,
    LOGGER_PROXY_BE_ERROR,
};
enum logger_ret_type {
    LOGGER_RET_OK = 0,
    LOGGER_RET_NOSPACE,
    LOGGER_RET_ERR
};
enum logger_parse_entry_ret {
    LOGGER_PARSE_ENTRY_OK = 0,
    LOGGER_PARSE_ENTRY_FULLBUF,
    LOGGER_PARSE_ENTRY_FAILED
};
typedef struct _logentry logentry;
typedef struct _entry_details entry_details;
typedef void (*entry_log_cb)(logentry *e, const entry_details *d, const void *entry, va_list ap);
typedef int (*entry_parse_cb)(logentry *e, char *scratch);
struct _entry_details {
    int reqlen;
    uint16_t eflags;
    entry_log_cb log_cb;
    entry_parse_cb parse_cb;
    char *format;
};
struct logentry_eviction {
    long long int exptime;
    int nbytes;
    uint32_t latime;
    uint16_t it_flags;
    uint8_t nkey;
    uint8_t clsid;
    char key[];
};
struct logentry_ext_write {
    long long int exptime;
    uint32_t latime;
    uint16_t it_flags;
    uint8_t nkey;
    uint8_t clsid;
    uint8_t bucket;
    char key[];
};
struct logentry_item_get {
    uint8_t was_found;
    uint8_t nkey;
    uint8_t clsid;
    int nbytes;
    int sfd;
    char key[];
};
struct logentry_item_store {
    int status;
    int cmd;
    rel_time_t ttl;
    uint8_t nkey;
    uint8_t clsid;
    int nbytes;
    int sfd;
    char key[];
};
struct logentry_deletion {
    int nbytes;
    int cmd;
    uint8_t nkey;
    uint8_t clsid;
    char key[];
};
struct logentry_conn_event {
    int transport;
    int reason;
    int sfd;
    struct sockaddr_in6 addr;
};
struct logentry_proxy_req {
    unsigned short type;
    unsigned short code;
    uint8_t flag;
    int status;
    int conn_fd;
    uint32_t reqlen;
    size_t dlen;
    size_t be_namelen;
    size_t be_portlen;
    long elapsed;
    char data[];
};
struct logentry_proxy_errbe {
    size_t errlen;
    size_t be_namelen;
    size_t be_portlen;
    size_t be_labellen;
    size_t be_rbuflen;
    int be_depth;
    int retry;
    char data[];
};
struct _logentry {
    enum log_entry_type event;
    uint8_t pad;
    uint16_t eflags;
    uint64_t gid;
    struct timeval tv;
    int size;
    union {
        char end;
    } data[];
};
typedef struct _logger {
    struct _logger *prev;
    struct _logger *next;
    pthread_mutex_t mutex;
    uint64_t written;
    uint64_t dropped;
    uint64_t blocked;
    uint16_t fetcher_ratio;
    uint16_t mutation_ratio;
    uint16_t eflags;
    bipbuf_t *buf;
    const entry_details *entry_map;
} logger;
enum logger_watcher_type {
    LOGGER_WATCHER_STDERR = 0,
    LOGGER_WATCHER_CLIENT = 1
};
typedef struct {
    void *c;
    int sfd;
    int id;
    uint64_t skipped;
    uint64_t min_gid;
    bool failed_flush;
    enum logger_watcher_type t;
    uint16_t eflags;
    bipbuf_t *buf;
} logger_watcher;
struct logger_stats {
    uint64_t worker_dropped;
    uint64_t worker_written;
    uint64_t watcher_skipped;
    uint64_t watcher_sent;
    uint64_t watcher_count;
};
extern pthread_key_t logger_key;
void logger_init(void);
void logger_stop(void);
logger *logger_create(void);
enum logger_ret_type logger_log(logger *l, const enum log_entry_type event, const void *entry, ...);
enum logger_add_watcher_ret {
    LOGGER_ADD_WATCHER_TOO_MANY = 0,
    LOGGER_ADD_WATCHER_OK,
    LOGGER_ADD_WATCHER_FAILED
};
enum logger_add_watcher_ret logger_add_watcher(void *c, const int sfd, uint16_t f);
uint64_t logger_get_gid(void);
void logger_set_gid(uint64_t gid);
void uriencode_init(void);
bool uriencode(const char *src, char *dst, const size_t srclen, const size_t dstlen);
char *uriencode_p(const char *src, char *dst, const size_t srclen);
bool safe_strtoull(const char *str, uint64_t *out);
bool safe_strtoull_hex(const char *str, uint64_t *out);
bool safe_strtoll(const char *str, int64_t *out);
bool safe_strtoul(const char *str, uint32_t *out);
bool safe_strtol(const char *str, int32_t *out);
bool safe_strtod(const char *str, double *out);
bool safe_strcpy(char *dst, const char *src, const size_t dstmax);
bool safe_memcmp(const void *a, const void *b, size_t len);
extern uint64_t htonll(uint64_t);
extern uint64_t ntohll(uint64_t);
void vperror(const char *fmt, ...)
    ;
void mc_timespec_add(struct timespec *ts1, struct timespec *ts2);
typedef uint32_t (*crc_func)(uint32_t crc, const void *buf, size_t len);
extern crc_func crc32c;
void crc32c_init(void);
uint32_t crc32c_sw(uint32_t crc, void const *buf, size_t len);
typedef void* sasl_conn_t;
typedef uint32_t client_flags_t;
typedef void (*ADD_STAT)(const char *key, const uint16_t klen,
                         const char *val, const uint32_t vlen,
                         const void *cookie);
enum conn_states {
    conn_listening,
    conn_new_cmd,
    conn_waiting,
    conn_read,
    conn_parse_cmd,
    conn_write,
    conn_nread,
    conn_swallow,
    conn_closing,
    conn_mwrite,
    conn_closed,
    conn_watch,
    conn_io_queue,
    conn_io_resume,
    conn_io_pending,
    conn_max_state
};
enum bin_substates {
    bin_no_state,
    bin_reading_set_header,
    bin_reading_cas_header,
    bin_read_set_value,
    bin_reading_get_key,
    bin_reading_stat,
    bin_reading_del_header,
    bin_reading_incr_header,
    bin_read_flush_exptime,
    bin_reading_sasl_auth,
    bin_reading_sasl_auth_data,
    bin_reading_touch_key,
};
enum protocol {
    ascii_prot = 3,
    binary_prot,
    negotiating_prot,
    proxy_prot,
};
enum network_transport {
    local_transport,
    tcp_transport,
    udp_transport
};
enum pause_thread_types {
    PAUSE_WORKER_THREADS = 0,
    PAUSE_ALL_THREADS,
    RESUME_ALL_THREADS,
    RESUME_WORKER_THREADS
};
enum stop_reasons {
    NOT_STOP,
    GRACE_STOP,
    EXIT_NORMALLY
};
enum close_reasons {
    ERROR_CLOSE,
    NORMAL_CLOSE,
    IDLE_TIMEOUT_CLOSE,
    SHUTDOWN_CLOSE,
};
enum store_item_type {
    NOT_STORED=0, STORED, EXISTS, NOT_FOUND, TOO_LARGE, NO_MEMORY
};
enum delta_result_type {
    OK, NON_NUMERIC, EOM, DELTA_ITEM_NOT_FOUND, DELTA_ITEM_CAS_MISMATCH
};
struct slab_stats {
    uint64_t set_cmds; uint64_t get_hits; uint64_t touch_hits; uint64_t delete_hits; uint64_t cas_hits; uint64_t cas_badval; uint64_t incr_hits; uint64_t decr_hits;
};
struct thread_stats {
    pthread_mutex_t mutex;
    uint64_t get_cmds; uint64_t get_misses; uint64_t get_expired; uint64_t get_flushed; uint64_t touch_cmds; uint64_t touch_misses; uint64_t delete_misses; uint64_t incr_misses; uint64_t decr_misses; uint64_t cas_misses; uint64_t meta_cmds; uint64_t bytes_read; uint64_t bytes_written; uint64_t flush_cmds; uint64_t conn_yields; uint64_t auth_cmds; uint64_t auth_errors; uint64_t idle_kicks; uint64_t response_obj_oom; uint64_t response_obj_count; uint64_t response_obj_bytes; uint64_t read_buf_oom; uint64_t store_too_large; uint64_t store_no_memory;
    uint64_t get_extstore; uint64_t get_aborted_extstore; uint64_t get_oom_extstore; uint64_t recache_from_extstore; uint64_t miss_from_extstore; uint64_t badcrc_from_extstore;
    uint64_t proxy_conn_requests; uint64_t proxy_conn_errors; uint64_t proxy_conn_oom;
    int64_t proxy_req_active;
    struct slab_stats slab_stats[(63 + 1)];
    uint64_t lru_hits[256];
    uint64_t read_buf_count;
    uint64_t read_buf_bytes;
    uint64_t read_buf_bytes_free;
};
struct stats {
    uint64_t total_items;
    uint64_t total_conns;
    uint64_t rejected_conns;
    uint64_t malloc_fails;
    uint64_t listen_disabled_num;
    uint64_t slabs_moved;
    uint64_t slab_reassign_rescues;
    uint64_t slab_reassign_inline_reclaim;
    uint64_t slab_reassign_chunk_rescues;
    uint64_t slab_reassign_busy_items;
    uint64_t slab_reassign_busy_deletes;
    uint64_t slab_reassign_busy_nomem;
    const char * slab_reassign_last_busy_status;
    uint64_t lru_crawler_starts;
    uint64_t lru_maintainer_juggles;
    uint64_t time_in_listen_disabled_us;
    uint64_t log_worker_dropped;
    uint64_t log_worker_written;
    uint64_t log_watcher_skipped;
    uint64_t log_watcher_sent;
    uint64_t extstore_compact_lost;
    uint64_t extstore_compact_rescues;
    uint64_t extstore_compact_skipped;
    uint64_t extstore_compact_resc_cold;
    uint64_t extstore_compact_resc_old;
    uint64_t ssl_proto_errors;
    uint64_t ssl_handshake_errors;
    uint64_t ssl_new_sessions;
    struct timeval maxconns_entered;
    uint64_t unexpected_napi_ids;
    uint64_t round_robin_fallback;
};
struct stats_state {
    uint64_t curr_items;
    uint64_t curr_bytes;
    uint64_t curr_conns;
    uint64_t hash_bytes;
    float extstore_memory_pressure;
    unsigned int conn_structs;
    unsigned int reserved_fds;
    unsigned int hash_power_level;
    unsigned int log_watchers;
    bool hash_is_expanding;
    bool accepting_conns;
    bool slab_reassign_running;
    bool lru_crawler_running;
};
struct settings {
    size_t maxbytes;
    int maxconns;
    int port;
    int udpport;
    char *inter;
    int verbose;
    rel_time_t oldest_live;
    int evict_to_free;
    char *socketpath;
    char *auth_file;
    int access;
    double factor;
    int chunk_size;
    int num_threads;
    int num_threads_per_udp;
    char prefix_delimiter;
    int detail_enabled;
    int reqs_per_event;
    bool use_cas;
    enum protocol binding_protocol;
    int backlog;
    int item_size_max;
    int slab_chunk_size_max;
    int slab_page_size;
    volatile sig_atomic_t sig_hup;
    bool sasl;
    bool maxconns_fast;
    bool lru_crawler;
    bool lru_maintainer_thread;
    bool lru_segmented;
    bool slab_reassign;
    bool ssl_enabled;
    int slab_automove;
    unsigned int slab_automove_version;
    double slab_automove_ratio;
    double slab_automove_freeratio;
    unsigned int slab_automove_window;
    int hashpower_init;
    bool shutdown_command;
    int tail_repair_time;
    bool flush_enabled;
    bool dump_enabled;
    char *hash_algorithm;
    int lru_crawler_sleep;
    uint32_t lru_crawler_tocrawl;
    int hot_lru_pct;
    int warm_lru_pct;
    double hot_max_factor;
    double warm_max_factor;
    int crawls_persleep;
    bool temp_lru;
    uint32_t temporary_ttl;
    int idle_timeout;
    unsigned int logger_watcher_buf_size;
    unsigned int logger_buf_size;
    unsigned int read_buf_mem_limit;
    bool drop_privileges;
    bool watch_enabled;
    bool relaxed_privileges;
    struct slab_rebal_thread *slab_rebal;
    unsigned int ext_io_threadcount;
    unsigned int ext_page_size;
    unsigned int ext_item_size;
    unsigned int ext_item_age;
    unsigned int ext_low_ttl;
    unsigned int ext_recache_rate;
    unsigned int ext_wbuf_size;
    unsigned int ext_compact_under;
    unsigned int ext_drop_under;
    unsigned int ext_max_sleep;
    double ext_max_frag;
    bool ext_drop_unread;
    unsigned int ext_global_pool_min;
    void *ssl_ctx;
    char *ssl_chain_cert;
    char *ssl_key;
    int ssl_verify_mode;
    int ssl_keyformat;
    char *ssl_ciphers;
    char *ssl_ca_cert;
    rel_time_t ssl_last_cert_refresh_time;
    unsigned int ssl_wbuf_size;
    bool ssl_session_cache;
    bool ssl_kernel_tls;
    int ssl_min_version;
    int num_napi_ids;
    char *memory_file;
    bool proxy_enabled;
    bool proxy_uring;
    bool proxy_memprofile;
    char *proxy_startfile;
    char *proxy_startarg;
    void *proxy_ctx;
    uint32_t sock_cookie_id;
};
extern struct stats stats;
extern struct stats_state stats_state;
extern time_t process_started;
extern struct settings settings;
typedef struct _stritem {
    struct _stritem *next;
    struct _stritem *prev;
    struct _stritem *h_next;
    rel_time_t time;
    rel_time_t exptime;
    int nbytes;
    unsigned short refcount;
    uint16_t it_flags;
    uint8_t slabs_clsid;
    uint8_t nkey;
    union {
        uint64_t cas;
        char end;
    } data[];
} item;
enum crawler_run_type {
    CRAWLER_AUTOEXPIRE=0, CRAWLER_EXPIRED, CRAWLER_METADUMP, CRAWLER_MGDUMP
};
typedef struct {
    struct _stritem *next;
    struct _stritem *prev;
    struct _stritem *h_next;
    rel_time_t time;
    rel_time_t exptime;
    int nbytes;
    unsigned short refcount;
    uint16_t it_flags;
    uint8_t slabs_clsid;
    uint8_t nkey;
    uint32_t remaining;
    uint64_t reclaimed;
    uint64_t unfetched;
    uint64_t checked;
} crawler;
typedef struct _strchunk {
    struct _strchunk *next;
    struct _strchunk *prev;
    struct _stritem *head;
    int size;
    int used;
    int nbytes;
    unsigned short refcount;
    uint16_t it_flags;
    uint8_t slabs_clsid;
    uint8_t orig_clsid;
    char data[];
} item_chunk;
typedef struct {
    unsigned int page_version;
    unsigned int offset;
    unsigned short page_id;
} item_hdr;
typedef struct iop_head_s { struct _io_pending_t *stqh_first; struct _io_pending_t **stqh_last; } iop_head_t;
typedef struct _io_pending_t io_pending_t;
typedef struct io_queue_s io_queue_t;
typedef void (*io_queue_stack_cb)(io_queue_t *q);
typedef void (*io_queue_cb)(io_pending_t *pending);
typedef struct io_queue_s {
    void *ctx;
    iop_head_t stack;
    io_queue_stack_cb submit_cb;
    int type;
} io_queue_t;
struct thread_notify {
    struct event notify_event;
    int notify_event_fd;
};
typedef struct _mc_resp_bundle mc_resp_bundle;
typedef struct {
    pthread_t thread_id;
    struct event_base *base;
    struct thread_notify n;
    struct thread_notify ion;
    pthread_mutex_t ion_lock;
    iop_head_t ion_head;
    int cur_sfd;
    int thread_baseid;
    int conns_tosubmit;
    struct thread_stats stats;
    io_queue_t io_queues[3];
    struct conn_queue *ev_queue;
    cache_t *rbuf_cache;
    mc_resp_bundle *open_bundle;
    cache_t *io_cache;
    void *storage;
    logger *l;
    void *lru_bump_buf;
    char *ssl_wbuf;
    int napi_id;
    void *proxy_ctx;
    void *L;
    void *proxy_hooks;
    void *proxy_user_stats;
    void *proxy_int_stats;
    void *proxy_event_thread;
    struct event *proxy_gc_timer;
    int proxy_vm_extra_kb;
    int proxy_vm_last_kb;
    unsigned int proxy_vm_negative_delta;
    int proxy_vm_gcrunning;
    int proxy_vm_gcpokemem;
    int64_t proxy_active_req_limit;
    uint64_t proxy_buffer_memory_limit;
    uint64_t proxy_buffer_memory_used;
    uint32_t proxy_rng[4];
} LIBEVENT_THREAD;
typedef struct _mc_resp {
    mc_resp_bundle *bundle;
    struct _mc_resp *next;
    int wbytes;
    int tosend;
    void *write_and_free;
    io_pending_t *io_pending;
    item *item;
    struct iovec iov[4];
    int chunked_total;
    uint8_t iovcnt;
    uint8_t chunked_data_iov;
    bool skip;
    bool suspended;
    bool free;
    bool noreply;
    bool binary_prot;
    bool mset_res;
    bool set_stale;
    bool proxy_res;
    uint16_t request_id;
    uint16_t udp_sequence;
    uint16_t udp_total;
    struct sockaddr_in6 request_addr;
    socklen_t request_addr_size;
    char wbuf[1024];
} mc_resp;
struct _mc_resp_bundle {
    uint8_t refcount;
    uint8_t next_check;
    LIBEVENT_THREAD *thread;
    struct _mc_resp_bundle *next;
    struct _mc_resp_bundle *prev;
    mc_resp r[];
};
typedef struct conn conn;
struct _io_pending_t {
    uint8_t io_queue_type;
    uint8_t io_sub_type;
    uint8_t payload;
    LIBEVENT_THREAD *thread;
    conn *c;
    mc_resp *resp;
    io_queue_cb return_cb;
    io_queue_cb finalize_cb;
    struct { struct _io_pending_t *stqe_next; } iop_next;
    char data[120];
};
struct conn {
    sasl_conn_t *sasl_conn;
    int sfd;
    bool sasl_started;
    bool authenticated;
    bool close_after_write;
    bool rbuf_malloced;
    bool item_malloced;
    uint8_t ssl_enabled;
    void *ssl;
    char *ssl_wbuf;
    enum conn_states state;
    enum bin_substates substate;
    rel_time_t last_cmd_time;
    struct event event;
    short ev_flags;
    short which;
    char *rbuf;
    char *rcurr;
    int rsize;
    int rbytes;
    mc_resp *resp;
    mc_resp *resp_head;
    char *ritem;
    int rlbytes;
    void *item;
    int sbytes;
    int resps_suspended;
    void *proxy_rctx;
    unsigned int recache_counter;
    enum protocol protocol;
    enum network_transport transport;
    enum close_reasons close_reason;
    int request_id;
    struct sockaddr_in6 request_addr;
    socklen_t request_addr_size;
    struct {
        char *buffer;
        size_t size;
        size_t offset;
    } stats;
    protocol_binary_request_header binary_header;
    uint64_t cas;
    uint64_t tag;
    short cmd;
    int opaque;
    int keylen;
    conn *next;
    LIBEVENT_THREAD *thread;
    int (*try_read_command)(conn *c);
    ssize_t (*read)(conn *c, void *buf, size_t count);
    ssize_t (*sendmsg)(conn *c, struct msghdr *msg, int flags);
    ssize_t (*write)(conn *c, void *buf, size_t count);
};
extern conn **conns;
extern volatile rel_time_t current_time;
extern void *ext_storage;
void verify_default(const char* param, bool condition);
void do_accept_new_conns(const bool do_accept);
enum delta_result_type do_add_delta(LIBEVENT_THREAD *t, const char *key,
                                    const size_t nkey, const bool incr,
                                    const int64_t delta, char *buf,
                                    uint64_t *cas, const uint32_t hv,
                                    item **it_ret);
enum store_item_type do_store_item(item *item, int comm, LIBEVENT_THREAD *t, const uint32_t hv, int *nbytes, uint64_t *cas, const uint64_t cas_in, bool cas_stale);
void thread_io_queue_add(LIBEVENT_THREAD *t, int type, void *ctx, io_queue_stack_cb cb);
io_queue_t *thread_io_queue_get(LIBEVENT_THREAD *t, int type);
void thread_io_queue_submit(LIBEVENT_THREAD *t);
void conn_io_queue_return(io_pending_t *io);
conn *conn_new(const int sfd, const enum conn_states init_state, const int event_flags, const int read_buffer_size,
    enum network_transport transport, struct event_base *base, void *ssl, uint64_t conntag, enum protocol bproto);
void conn_worker_readd(conn *c);
extern int daemonize(int nochdir, int noclose);
void stats_prefix_init(char prefix_delimiter);
void stats_prefix_clear(void);
void stats_prefix_record_get(const char *key, const size_t nkey, const bool is_hit);
void stats_prefix_record_delete(const char *key, const size_t nkey);
void stats_prefix_record_set(const char *key, const size_t nkey);
char *stats_prefix_dump(int *length);
typedef struct _prefix_stats PREFIX_STATS;
struct _prefix_stats {
    char *prefix;
    size_t prefix_len;
    uint64_t num_gets;
    uint64_t num_sets;
    uint64_t num_deletes;
    uint64_t num_hits;
    PREFIX_STATS *next;
};
PREFIX_STATS *stats_prefix_find(const char *key, const size_t nkey);
void slabs_init(const size_t limit, const double factor, const bool prealloc, const uint32_t *slab_sizes, void *mem_base_external, bool reuse_mem);
void slabs_prefill_global(void);
unsigned int slabs_clsid(const size_t size);
unsigned int slabs_size(const int clsid);
bool slabs_class_check(const int id);
void *slabs_alloc(unsigned int id, unsigned int flags);
void slabs_free(void *ptr, unsigned int id);
bool slabs_adjust_mem_limit(size_t new_mem_limit);
typedef struct {
    unsigned int chunks_per_page;
    unsigned int chunk_size;
    long int free_chunks;
    long int total_pages;
} slab_stats_automove;
void fill_slab_stats_automove(slab_stats_automove *am);
unsigned int global_page_pool_size(bool *mem_flag);
void slabs_stats(ADD_STAT add_stats, void *c);
unsigned int slabs_available_chunks(unsigned int id, bool *mem_flag, unsigned int *chunks_perslab);
void slabs_mlock(void);
void slabs_munlock(void);
void *slabs_peek_page(const unsigned int id, uint32_t *size, uint32_t *perslab);
void do_slabs_unlink_free_chunk(const unsigned int id, item *it);
void slabs_finalize_page_move(const unsigned int sid, const unsigned int did, void *page);
int slabs_pick_any_for_reassign(const unsigned int did);
int slabs_page_count(const unsigned int id);
typedef int (*slabs_cb)(void *arg);
int slabs_locked_callback(slabs_cb cb, void *arg);
int slabs_grow_slab_list(const unsigned int id);
unsigned int slabs_fixup(char *chunk, const int border);
void assoc_init(const int hashpower_init);
item *assoc_find(const char *key, const size_t nkey, const uint32_t hv);
int assoc_insert(item *item, const uint32_t hv);
void assoc_delete(const char *key, const size_t nkey, const uint32_t hv);
int start_assoc_maintenance_thread(void);
void stop_assoc_maintenance_thread(void);
void assoc_start_expand(uint64_t curr_items);
void *assoc_get_iterator(void);
bool assoc_iterate(void *iterp, item **it);
void assoc_iterate_final(void *iterp);
extern unsigned int hashpower;
uint64_t get_cas_id(void);
void set_cas_id(uint64_t new_cas);
item *do_item_alloc(const char *key, const size_t nkey, const client_flags_t flags, const rel_time_t exptime, const int nbytes);
item_chunk *do_item_alloc_chunk(item_chunk *ch, const size_t bytes_remain);
item *do_item_alloc_pull(const size_t ntotal, const unsigned int id);
void item_free(item *it);
bool item_size_ok(const size_t nkey, const client_flags_t flags, const int nbytes);
int do_item_link(item *it, const uint32_t hv, const uint64_t cas);
void do_item_unlink(item *it, const uint32_t hv);
void do_item_unlink_nolock(item *it, const uint32_t hv);
void do_item_remove(item *it);
void do_item_update(item *it);
void do_item_update_nolock(item *it);
int do_item_replace(item *it, item *new_it, const uint32_t hv, const uint64_t cas);
void do_item_link_fixup(item *it);
int item_is_flushed(item *it);
unsigned int do_get_lru_size(uint32_t id);
void do_item_linktail_q(item *it);
void do_item_unlinktail_q(item *it);
item *do_item_crawl_q(item *it);
void *item_lru_bump_buf_create(void);
struct lru_pull_tail_return {
    item *it;
    uint32_t hv;
};
int lru_pull_tail(const int orig_id, const int cur_lru,
        const uint64_t total_bytes, const uint8_t flags, const rel_time_t max_age,
        struct lru_pull_tail_return *ret_it);
void item_flush_expired(void);
char *item_cachedump(const unsigned int slabs_clsid, const unsigned int limit, unsigned int *bytes);
void item_stats(ADD_STAT add_stats, void *c);
void do_item_stats_add_crawl(const int i, const uint64_t reclaimed,
        const uint64_t unfetched, const uint64_t checked);
void item_stats_totals(ADD_STAT add_stats, void *c);
void item_stats_sizes(ADD_STAT add_stats, void *c);
void item_stats_sizes_init(void);
void item_stats_sizes_add(item *it);
void item_stats_sizes_remove(item *it);
bool item_stats_sizes_status(void);
typedef struct {
    int64_t evicted;
    int64_t outofmemory;
    uint32_t age;
} item_stats_automove;
void fill_item_stats_automove(item_stats_automove *am);
item *do_item_get(const char *key, const size_t nkey, const uint32_t hv, LIBEVENT_THREAD *t, const bool do_update);
item *do_item_touch(const char *key, const size_t nkey, uint32_t exptime, const uint32_t hv, LIBEVENT_THREAD *t);
void do_item_bump(LIBEVENT_THREAD *t, item *it, const uint32_t hv);
void item_stats_reset(void);
extern pthread_mutex_t lru_locks[256];
int start_lru_maintainer_thread(void *arg);
int stop_lru_maintainer_thread(void);
void lru_maintainer_pause(void);
void lru_maintainer_resume(void);
void *lru_bump_buf_create(void);
typedef struct {
    uint64_t histo[61];
    uint64_t ttl_hourplus;
    uint64_t noexp;
    uint64_t reclaimed;
    uint64_t seen;
    rel_time_t start_time;
    rel_time_t end_time;
    bool run_complete;
} crawlerstats_t;
struct crawler_expired_data {
    pthread_mutex_t lock;
    crawlerstats_t crawlerstats[256];
    rel_time_t start_time;
    rel_time_t end_time;
    bool crawl_complete;
    bool is_external;
};
enum crawler_result_type {
    CRAWLER_OK=0, CRAWLER_RUNNING, CRAWLER_BADCLASS, CRAWLER_NOTSTARTED, CRAWLER_ERROR
};
int start_item_crawler_thread(void);
int stop_item_crawler_thread(bool wait);
int init_lru_crawler(void *arg);
enum crawler_result_type lru_crawler_crawl(char *slabs, enum crawler_run_type,
        void *c, const int sfd, unsigned int remaining);
int lru_crawler_start(uint8_t *ids, uint32_t remaining,
                             const enum crawler_run_type type, void *data,
                             void *c, const int sfd);
void lru_crawler_pause(void);
void lru_crawler_resume(void);
typedef uint32_t (*hash_func)(const void *key, size_t length);
extern hash_func hash;
enum hashfunc_type {
    JENKINS_HASH=0, MURMUR3_HASH, XXH3_HASH
};
int hash_init(enum hashfunc_type type);
void memcached_thread_init(int nthreads, void *arg);
void redispatch_conn(conn *c);
void timeout_conn(conn *c);
void proxy_reload_notify(LIBEVENT_THREAD *t);
void return_io_pending(io_pending_t *io);
void dispatch_conn_new(int sfd, enum conn_states init_state, int event_flags, int read_buffer_size,
    enum network_transport transport, void *ssl, uint64_t conntag, enum protocol bproto);
void sidethread_conn_close(conn *c);
enum delta_result_type add_delta(LIBEVENT_THREAD *t, const char *key,
                                 const size_t nkey, bool incr,
                                 const int64_t delta, char *buf,
                                 uint64_t *cas);
void accept_new_conns(const bool do_accept);
void conn_close_idle(conn *c);
void conn_close_all(void);
item *item_alloc(const char *key, size_t nkey, client_flags_t flags, rel_time_t exptime, int nbytes);
item *item_get(const char *key, const size_t nkey, LIBEVENT_THREAD *t, const bool do_update);
item *item_get_locked(const char *key, const size_t nkey, LIBEVENT_THREAD *t, const bool do_update, uint32_t *hv);
item *item_touch(const char *key, const size_t nkey, uint32_t exptime, LIBEVENT_THREAD *t);
int item_link(item *it);
void item_remove(item *it);
int item_replace(item *it, item *new_it, const uint32_t hv, const uint64_t cas_in);
void item_unlink(item *it);
void item_lock(uint32_t hv);
void *item_trylock(uint32_t hv);
void item_trylock_unlock(void *arg);
void item_unlock(uint32_t hv);
void pause_threads(enum pause_thread_types type);
void stop_threads(void);
int stop_conn_timeout_thread(void);
void STATS_LOCK(void);
void STATS_UNLOCK(void);
void threadlocal_stats_reset(void);
void threadlocal_stats_aggregate(struct thread_stats *stats);
void slab_stats_aggregate(struct thread_stats *stats, struct slab_stats *out);
void thread_setname(pthread_t thread, const char *name);
LIBEVENT_THREAD *get_worker_thread(int id);
void append_stat(const char *name, ADD_STAT add_stats, conn *c,
                 const char *fmt, ...);
enum store_item_type store_item(item *item, int comm, LIBEVENT_THREAD *t, int *nbytes, uint64_t *cas, const uint64_t cas_in, bool cas_stale);
void out_string(conn *c, const char *str);
rel_time_t realtime(const time_t exptime);
item* limited_get(const char *key, size_t nkey, LIBEVENT_THREAD *t, uint32_t exptime, bool should_touch, bool do_update, bool *overflow);
item* limited_get_locked(const char *key, size_t nkey, LIBEVENT_THREAD *t, bool do_update, uint32_t *hv, bool *overflow);
void resp_reset(mc_resp *resp);
void resp_add_iov(mc_resp *resp, const void *buf, int len);
void resp_add_chunked_iov(mc_resp *resp, const void *buf, int len);
bool resp_start(conn *c);
mc_resp *resp_start_unlinked(conn *c);
mc_resp* resp_finish(conn *c, mc_resp *resp);
void resp_free(LIBEVENT_THREAD *th, mc_resp *resp);
bool resp_has_stack(conn *c);
bool rbuf_switch_to_malloc(conn *c);
void conn_release_items(conn *c);
void conn_set_state(conn *c, enum conn_states state);
void out_of_memory(conn *c, char *ascii_error);
void out_errstring(conn *c, const char *str);
void write_and_free(conn *c, char *buf, int bytes);
void server_stats(ADD_STAT add_stats, void *c);
void append_stats(const char *key, const uint16_t klen,
                  const char *val, const uint32_t vlen,
                  const void *cookie);
bool get_stats(const char *stat_type, int nkey, ADD_STAT add_stats, void *c);
void stats_reset(void);
void process_stat_settings(ADD_STAT add_stats, void *c);
void process_stats_conns(ADD_STAT add_stats, void *c);
void storage_delete(void *e, item *it);
void storage_stats(ADD_STAT add_stats, void *c);
void process_extstore_stats(ADD_STAT add_stats, void *c);
bool storage_validate_item(void *e, item *it);
int storage_get_item(LIBEVENT_THREAD *t, item *it, mc_resp *resp);
void storage_submit_cb(io_queue_t *q);
int start_storage_write_thread(void *arg);
void storage_write_pause(void);
void storage_write_resume(void);
int start_storage_compact_thread(void *arg);
void storage_compact_pause(void);
void storage_compact_resume(void);
struct extstore_conf_file *storage_conf_parse(char *arg);
void *storage_init_config(struct settings *s);
int storage_read_config(void *conf, char **subopt);
int storage_check_config(void *conf);
void *storage_init(void *conf);
enum authfile_ret {
    AUTHFILE_OK = 0,
    AUTHFILE_OOM,
    AUTHFILE_STATFAIL,
    AUTHFILE_OPENFAIL,
    AUTHFILE_MALFORMED,
};
enum authfile_ret authfile_load(const char *file);
int authfile_check(const char *user, unsigned int ulen, const char *pass, unsigned int plen);
    typedef uint64_t mc_ptr_t;
enum restart_get_kv_ret {
    RESTART_OK=0, RESTART_NOTAG, RESTART_BADLINE, RESTART_DONE
};
typedef int (*restart_check_cb)(const char *tag, void *ctx, void *data);
typedef int (*restart_save_cb)(const char *tag, void *ctx, void *data);
void restart_register(const char *tag, restart_check_cb ccb, restart_save_cb scb, void *data);
void restart_set_kv(void *ctx, const char *key, const char *fmt, ...);
enum restart_get_kv_ret restart_get_kv(void *ctx, char **key, char **val);
bool restart_mmap_open(const size_t limit, const char *file, void **mem_base);
void restart_mmap_close(void);
unsigned int restart_fixup(void *old_base);

struct stat
  {
    __dev_t st_dev;
    __ino_t st_ino;
    __nlink_t st_nlink;
    __mode_t st_mode;
    __uid_t st_uid;
    __gid_t st_gid;
    int __pad0;
    __dev_t st_rdev;
    __off_t st_size;
    __blksize_t st_blksize;
    __blkcnt_t st_blocks;
    struct timespec st_atim;
    struct timespec st_mtim;
    struct timespec st_ctim;
    __syscall_slong_t __glibc_reserved[3];
  };
struct stat64
  {
    __dev_t st_dev;
    __ino64_t st_ino;
    __nlink_t st_nlink;
    __mode_t st_mode;
    __uid_t st_uid;
    __gid_t st_gid;
    int __pad0;
    __dev_t st_rdev;
    __off_t st_size;
    __blksize_t st_blksize;
    __blkcnt64_t st_blocks;
    struct timespec st_atim;
    struct timespec st_mtim;
    struct timespec st_ctim;
    __syscall_slong_t __glibc_reserved[3];
  };
extern int stat (const char *__restrict __file,
   struct stat *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int fstat (int __fd, struct stat *__buf) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern int stat64 (const char *__restrict __file,
     struct stat64 *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int fstat64 (int __fd, struct stat64 *__buf) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern int fstatat (int __fd, const char *__restrict __file,
      struct stat *__restrict __buf, int __flag)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3)));
extern int fstatat64 (int __fd, const char *__restrict __file,
        struct stat64 *__restrict __buf, int __flag)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3)));
extern int lstat (const char *__restrict __file,
    struct stat *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int lstat64 (const char *__restrict __file,
      struct stat64 *__restrict __buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int chmod (const char *__file, __mode_t __mode)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int lchmod (const char *__file, __mode_t __mode)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int fchmod (int __fd, __mode_t __mode) __attribute__ ((__nothrow__ , __leaf__));
extern int fchmodat (int __fd, const char *__file, __mode_t __mode,
       int __flag)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2))) __attribute__ ((__warn_unused_result__));
extern __mode_t umask (__mode_t __mask) __attribute__ ((__nothrow__ , __leaf__));
extern __mode_t getumask (void) __attribute__ ((__nothrow__ , __leaf__));
extern int mkdir (const char *__path, __mode_t __mode)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int mkdirat (int __fd, const char *__path, __mode_t __mode)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern int mknod (const char *__path, __mode_t __mode, __dev_t __dev)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int mknodat (int __fd, const char *__path, __mode_t __mode,
      __dev_t __dev) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern int mkfifo (const char *__path, __mode_t __mode)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int mkfifoat (int __fd, const char *__path, __mode_t __mode)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern int utimensat (int __fd, const char *__path,
        const struct timespec __times[2],
        int __flags)
     __attribute__ ((__nothrow__ , __leaf__));
extern int futimens (int __fd, const struct timespec __times[2]) __attribute__ ((__nothrow__ , __leaf__));
struct statx_timestamp {
 __s64 tv_sec;
 __u32 tv_nsec;
 __s32 __reserved;
};
struct statx {
 __u32 stx_mask;
 __u32 stx_blksize;
 __u64 stx_attributes;
 __u32 stx_nlink;
 __u32 stx_uid;
 __u32 stx_gid;
 __u16 stx_mode;
 __u16 __spare0[1];
 __u64 stx_ino;
 __u64 stx_size;
 __u64 stx_blocks;
 __u64 stx_attributes_mask;
 struct statx_timestamp stx_atime;
 struct statx_timestamp stx_btime;
 struct statx_timestamp stx_ctime;
 struct statx_timestamp stx_mtime;
 __u32 stx_rdev_major;
 __u32 stx_rdev_minor;
 __u32 stx_dev_major;
 __u32 stx_dev_minor;
 __u64 stx_mnt_id;
 __u32 stx_dio_mem_align;
 __u32 stx_dio_offset_align;
 __u64 stx_subvol;
 __u32 stx_atomic_write_unit_min;
 __u32 stx_atomic_write_unit_max;
 __u32 stx_atomic_write_segments_max;
 __u32 stx_dio_read_offset_align;
 __u32 stx_atomic_write_unit_max_opt;
 __u32 __spare2[1];
 __u64 __spare3[8];
};

int statx (int __dirfd, const char *__restrict __path, int __flags,
           unsigned int __mask, struct statx *__restrict __buf)
  __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (5)));



struct __attribute__ ((__may_alias__)) sockaddr_un
  {
    sa_family_t sun_family;
    char sun_path[108];
  };

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
extern void *rawmemchr (const void *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
extern void *memrchr (const void *__s, int __c, size_t __n)
      __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)))
      __attribute__ ((__access__ (__read_only__, 1, 3)));
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
extern char *strerror_r (int __errnum, char *__buf, size_t __buflen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2))) __attribute__ ((__warn_unused_result__)) __attribute__ ((__access__ (__write_only__, 2, 3)));
extern const char *strerrordesc_np (int __err) __attribute__ ((__nothrow__ , __leaf__));
extern const char *strerrorname_np (int __err) __attribute__ ((__nothrow__ , __leaf__));
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
extern const char *sigabbrev_np (int __sig) __attribute__ ((__nothrow__ , __leaf__));
extern const char *sigdescr_np (int __sig) __attribute__ ((__nothrow__ , __leaf__));
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
extern int strverscmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *strfry (char *__string) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern void *memfrob (void *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)))
    __attribute__ ((__access__ (__read_write__, 1, 2)));
extern char *basename (const char *__filename) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
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
__attribute__ ((__nothrow__ , __leaf__)) mempcpy (void *__restrict __dest, const void *__restrict __src, size_t __len)
{
  return __builtin___mempcpy_chk (__dest, __src, __len,
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


enum __rlimit_resource
{
  RLIMIT_CPU = 0,
  RLIMIT_FSIZE = 1,
  RLIMIT_DATA = 2,
  RLIMIT_STACK = 3,
  RLIMIT_CORE = 4,
  __RLIMIT_RSS = 5,
  RLIMIT_NOFILE = 7,
  __RLIMIT_OFILE = RLIMIT_NOFILE,
  RLIMIT_AS = 9,
  __RLIMIT_NPROC = 6,
  __RLIMIT_MEMLOCK = 8,
  __RLIMIT_LOCKS = 10,
  __RLIMIT_SIGPENDING = 11,
  __RLIMIT_MSGQUEUE = 12,
  __RLIMIT_NICE = 13,
  __RLIMIT_RTPRIO = 14,
  __RLIMIT_RTTIME = 15,
  __RLIMIT_NLIMITS = 16,
  __RLIM_NLIMITS = __RLIMIT_NLIMITS
};
typedef __rlim_t rlim_t;
typedef __rlim64_t rlim64_t;
struct rlimit
  {
    rlim_t rlim_cur;
    rlim_t rlim_max;
  };
struct rlimit64
  {
    rlim64_t rlim_cur;
    rlim64_t rlim_max;
 };
enum __rusage_who
{
  RUSAGE_SELF = 0,
  RUSAGE_CHILDREN = -1
  ,
  RUSAGE_THREAD = 1
};
struct rusage
  {
    struct timeval ru_utime;
    struct timeval ru_stime;
    __extension__ union
      {
 long int ru_maxrss;
 __syscall_slong_t __ru_maxrss_word;
      };
    __extension__ union
      {
 long int ru_ixrss;
 __syscall_slong_t __ru_ixrss_word;
      };
    __extension__ union
      {
 long int ru_idrss;
 __syscall_slong_t __ru_idrss_word;
      };
    __extension__ union
      {
 long int ru_isrss;
  __syscall_slong_t __ru_isrss_word;
      };
    __extension__ union
      {
 long int ru_minflt;
 __syscall_slong_t __ru_minflt_word;
      };
    __extension__ union
      {
 long int ru_majflt;
 __syscall_slong_t __ru_majflt_word;
      };
    __extension__ union
      {
 long int ru_nswap;
 __syscall_slong_t __ru_nswap_word;
      };
    __extension__ union
      {
 long int ru_inblock;
 __syscall_slong_t __ru_inblock_word;
      };
    __extension__ union
      {
 long int ru_oublock;
 __syscall_slong_t __ru_oublock_word;
      };
    __extension__ union
      {
 long int ru_msgsnd;
 __syscall_slong_t __ru_msgsnd_word;
      };
    __extension__ union
      {
 long int ru_msgrcv;
 __syscall_slong_t __ru_msgrcv_word;
      };
    __extension__ union
      {
 long int ru_nsignals;
 __syscall_slong_t __ru_nsignals_word;
      };
    __extension__ union
      {
 long int ru_nvcsw;
 __syscall_slong_t __ru_nvcsw_word;
      };
    __extension__ union
      {
 long int ru_nivcsw;
 __syscall_slong_t __ru_nivcsw_word;
      };
  };
enum __priority_which
{
  PRIO_PROCESS = 0,
  PRIO_PGRP = 1,
  PRIO_USER = 2
};

extern int prlimit (__pid_t __pid, enum __rlimit_resource __resource,
      const struct rlimit *__new_limit,
      struct rlimit *__old_limit) __attribute__ ((__nothrow__ , __leaf__));
extern int prlimit64 (__pid_t __pid, enum __rlimit_resource __resource,
        const struct rlimit64 *__new_limit,
        struct rlimit64 *__old_limit) __attribute__ ((__nothrow__ , __leaf__));


typedef enum __rlimit_resource __rlimit_resource_t;
typedef enum __rusage_who __rusage_who_t;
typedef enum __priority_which __priority_which_t;
extern int getrlimit (__rlimit_resource_t __resource,
        struct rlimit *__rlimits) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern int getrlimit64 (__rlimit_resource_t __resource,
   struct rlimit64 *__rlimits) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern int setrlimit (__rlimit_resource_t __resource,
        const struct rlimit *__rlimits) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern int setrlimit64 (__rlimit_resource_t __resource,
   const struct rlimit64 *__rlimits) __attribute__ ((__nothrow__ , __leaf__))
   __attribute__ ((__nonnull__ (2)));
extern int getrusage (__rusage_who_t __who, struct rusage *__usage) __attribute__ ((__nothrow__ , __leaf__));
extern int getpriority (__priority_which_t __which, id_t __who) __attribute__ ((__nothrow__ , __leaf__));
extern int setpriority (__priority_which_t __which, id_t __who, int __prio)
     __attribute__ ((__nothrow__ , __leaf__));


enum
{
  _ISupper = ((0) < 8 ? ((1 << (0)) << 8) : ((1 << (0)) >> 8)),
  _ISlower = ((1) < 8 ? ((1 << (1)) << 8) : ((1 << (1)) >> 8)),
  _ISalpha = ((2) < 8 ? ((1 << (2)) << 8) : ((1 << (2)) >> 8)),
  _ISdigit = ((3) < 8 ? ((1 << (3)) << 8) : ((1 << (3)) >> 8)),
  _ISxdigit = ((4) < 8 ? ((1 << (4)) << 8) : ((1 << (4)) >> 8)),
  _ISspace = ((5) < 8 ? ((1 << (5)) << 8) : ((1 << (5)) >> 8)),
  _ISprint = ((6) < 8 ? ((1 << (6)) << 8) : ((1 << (6)) >> 8)),
  _ISgraph = ((7) < 8 ? ((1 << (7)) << 8) : ((1 << (7)) >> 8)),
  _ISblank = ((8) < 8 ? ((1 << (8)) << 8) : ((1 << (8)) >> 8)),
  _IScntrl = ((9) < 8 ? ((1 << (9)) << 8) : ((1 << (9)) >> 8)),
  _ISpunct = ((10) < 8 ? ((1 << (10)) << 8) : ((1 << (10)) >> 8)),
  _ISalnum = ((11) < 8 ? ((1 << (11)) << 8) : ((1 << (11)) >> 8))
};
extern const unsigned short int **__ctype_b_loc (void)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern const __int32_t **__ctype_tolower_loc (void)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern const __int32_t **__ctype_toupper_loc (void)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern int isalnum (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isalpha (int) __attribute__ ((__nothrow__ , __leaf__));
extern int iscntrl (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isdigit (int) __attribute__ ((__nothrow__ , __leaf__));
extern int islower (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isgraph (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isprint (int) __attribute__ ((__nothrow__ , __leaf__));
extern int ispunct (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isspace (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isupper (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isxdigit (int) __attribute__ ((__nothrow__ , __leaf__));
extern int tolower (int __c) __attribute__ ((__nothrow__ , __leaf__));
extern int toupper (int __c) __attribute__ ((__nothrow__ , __leaf__));
extern int isblank (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isctype (int __c, int __mask) __attribute__ ((__nothrow__ , __leaf__));
extern int isascii (int __c) __attribute__ ((__nothrow__ , __leaf__));
extern int toascii (int __c) __attribute__ ((__nothrow__ , __leaf__));
extern int _toupper (int) __attribute__ ((__nothrow__ , __leaf__));
extern int _tolower (int) __attribute__ ((__nothrow__ , __leaf__));
extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ , __leaf__)) tolower (int __c)
{
  return __c >= -128 && __c < 256 ? (*__ctype_tolower_loc ())[__c] : __c;
}
extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ , __leaf__)) toupper (int __c)
{
  return __c >= -128 && __c < 256 ? (*__ctype_toupper_loc ())[__c] : __c;
}
extern int isalnum_l (int, locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int isalpha_l (int, locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int iscntrl_l (int, locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int isdigit_l (int, locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int islower_l (int, locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int isgraph_l (int, locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int isprint_l (int, locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int ispunct_l (int, locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int isspace_l (int, locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int isupper_l (int, locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int isxdigit_l (int, locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int isblank_l (int, locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int __tolower_l (int __c, locale_t __l) __attribute__ ((__nothrow__ , __leaf__));
extern int tolower_l (int __c, locale_t __l) __attribute__ ((__nothrow__ , __leaf__));
extern int __toupper_l (int __c, locale_t __l) __attribute__ ((__nothrow__ , __leaf__));
extern int toupper_l (int __c, locale_t __l) __attribute__ ((__nothrow__ , __leaf__));


struct passwd
{
  char *pw_name;
  char *pw_passwd;
  __uid_t pw_uid;
  __gid_t pw_gid;
  char *pw_gecos;
  char *pw_dir;
  char *pw_shell;
};
extern void setpwent (void);
extern void endpwent (void);
extern struct passwd *getpwent (void);
extern struct passwd *fgetpwent (FILE *__stream) __attribute__ ((__nonnull__ (1)));
extern int putpwent (const struct passwd *__restrict __p,
       FILE *__restrict __f);
extern struct passwd *getpwuid (__uid_t __uid);
extern struct passwd *getpwnam (const char *__name) __attribute__ ((__nonnull__ (1)));
extern int getpwent_r (struct passwd *__restrict __resultbuf,
         char *__restrict __buffer, size_t __buflen,
         struct passwd **__restrict __result)
    __attribute__ ((__nonnull__ (1, 2, 4)))
    __attribute__ ((__access__ (__write_only__, 2, 3)));
extern int getpwuid_r (__uid_t __uid,
         struct passwd *__restrict __resultbuf,
         char *__restrict __buffer, size_t __buflen,
         struct passwd **__restrict __result)
    __attribute__ ((__nonnull__ (2, 3, 5)))
    __attribute__ ((__access__ (__write_only__, 3, 4)));
extern int getpwnam_r (const char *__restrict __name,
         struct passwd *__restrict __resultbuf,
         char *__restrict __buffer, size_t __buflen,
         struct passwd **__restrict __result)
    __attribute__ ((__nonnull__ (1, 2, 3, 5)))
    __attribute__ ((__access__ (__write_only__, 3, 4)));
extern int fgetpwent_r (FILE *__restrict __stream,
   struct passwd *__restrict __resultbuf,
   char *__restrict __buffer, size_t __buflen,
   struct passwd **__restrict __result)
    __attribute__ ((__nonnull__ (1, 2, 3, 5)))
    __attribute__ ((__access__ (__write_only__, 3, 4)));
extern int getpw (__uid_t __uid, char *__buffer);


int memfd_create (const char *__name, unsigned int __flags) __attribute__ ((__nothrow__ , __leaf__));
int mlock2 (const void *__addr, size_t __length, unsigned int __flags) __attribute__ ((__nothrow__ , __leaf__))
    __attribute__ ((__access__ (__none__, 1)));
int pkey_alloc (unsigned int __flags, unsigned int __access_restrictions) __attribute__ ((__nothrow__ , __leaf__));
int pkey_set (int __key, unsigned int __access_restrictions) __attribute__ ((__nothrow__ , __leaf__));
int pkey_get (int __key) __attribute__ ((__nothrow__ , __leaf__));
int pkey_free (int __key) __attribute__ ((__nothrow__ , __leaf__));
int pkey_mprotect (void *__addr, size_t __len, int __prot, int __pkey) __attribute__ ((__nothrow__ , __leaf__));
int mseal (void *__addr, size_t __len, unsigned long flags) __attribute__ ((__nothrow__ , __leaf__));


extern void *mmap (void *__addr, size_t __len, int __prot,
     int __flags, int __fd, __off_t __offset) __attribute__ ((__nothrow__ , __leaf__));
extern void *mmap64 (void *__addr, size_t __len, int __prot,
       int __flags, int __fd, __off64_t __offset) __attribute__ ((__nothrow__ , __leaf__));
extern int munmap (void *__addr, size_t __len) __attribute__ ((__nothrow__ , __leaf__));
extern int mprotect (void *__addr, size_t __len, int __prot) __attribute__ ((__nothrow__ , __leaf__));
extern int msync (void *__addr, size_t __len, int __flags);
extern int madvise (void *__addr, size_t __len, int __advice) __attribute__ ((__nothrow__ , __leaf__));
extern int posix_madvise (void *__addr, size_t __len, int __advice) __attribute__ ((__nothrow__ , __leaf__));
extern int mlock (const void *__addr, size_t __len) __attribute__ ((__nothrow__ , __leaf__))
    __attribute__ ((__access__ (__none__, 1)));
extern int munlock (const void *__addr, size_t __len) __attribute__ ((__nothrow__ , __leaf__))
    __attribute__ ((__access__ (__none__, 1)));
extern int mlockall (int __flags) __attribute__ ((__nothrow__ , __leaf__));
extern int munlockall (void) __attribute__ ((__nothrow__ , __leaf__));
extern int mincore (void *__start, size_t __len, unsigned char *__vec)
     __attribute__ ((__nothrow__ , __leaf__));
extern void *mremap (void *__addr, size_t __old_len, size_t __new_len,
       int __flags, ...) __attribute__ ((__nothrow__ , __leaf__));
extern int remap_file_pages (void *__start, size_t __size, int __prot,
        size_t __pgoff, int __flags) __attribute__ ((__nothrow__ , __leaf__));
extern int shm_open (const char *__name, int __oflag, mode_t __mode);
extern int shm_unlink (const char *__name);
struct iovec;
extern __ssize_t process_madvise (int __pid_fd, const struct iovec *__iov,
      size_t __count, int __advice,
      unsigned __flags)
  __attribute__ ((__nothrow__ , __leaf__));
extern int process_mrelease (int pidfd, unsigned int flags) __attribute__ ((__nothrow__ , __leaf__));


struct flock
  {
    short int l_type;
    short int l_whence;
    __off_t l_start;
    __off_t l_len;
    __pid_t l_pid;
  };
struct flock64
  {
    short int l_type;
    short int l_whence;
    __off64_t l_start;
    __off64_t l_len;
    __pid_t l_pid;
  };
enum __pid_type
  {
    F_OWNER_TID = 0,
    F_OWNER_PID,
    F_OWNER_PGRP,
    F_OWNER_GID = F_OWNER_PGRP
  };
struct f_owner_ex
  {
    enum __pid_type type;
    __pid_t pid;
  };
struct file_handle
{
  unsigned int handle_bytes;
  int handle_type;
  unsigned char f_handle[0];
};

extern __ssize_t readahead (int __fd, __off64_t __offset, size_t __count)
    __attribute__ ((__nothrow__ , __leaf__));
extern int sync_file_range (int __fd, __off64_t __offset, __off64_t __count,
       unsigned int __flags);
extern __ssize_t vmsplice (int __fdout, const struct iovec *__iov,
      size_t __count, unsigned int __flags);
extern __ssize_t splice (int __fdin, __off64_t *__offin, int __fdout,
    __off64_t *__offout, size_t __len,
    unsigned int __flags);
extern __ssize_t tee (int __fdin, int __fdout, size_t __len,
        unsigned int __flags);
extern int fallocate (int __fd, int __mode, __off_t __offset, __off_t __len);
extern int fallocate64 (int __fd, int __mode, __off64_t __offset,
   __off64_t __len);
extern int name_to_handle_at (int __dfd, const char *__name,
         struct file_handle *__handle, int *__mnt_id,
         int __flags) __attribute__ ((__nothrow__ , __leaf__));
extern int open_by_handle_at (int __mountdirfd, struct file_handle *__handle,
         int __flags);
struct open_how {
 __u64 flags;
 __u64 mode;
 __u64 resolve;
};
extern int openat2 (int __dfd, const char * __filename,
      const struct open_how * __how,
      long unsigned int __usize)
     __attribute__ ((__nonnull__ (2, 3)));
extern int __openat2_alias (int __dfd, const char *__filename, const struct open_how *__how, size_t __usize) __asm__ ("" "openat2")
     __attribute__ ((__nonnull__ (2, 3)));
extern void __openat2_invalid_size (void) __attribute__((__error__ ("the specified size is larger than sizeof (struct open_how)")));
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
openat2 (int __dfd, const char *__filename, const struct open_how *__how,
  size_t __usize)
    
{
  if (__builtin_constant_p (__usize) && __usize > sizeof (struct open_how))
    __openat2_invalid_size ();
  return __openat2_alias (__dfd, __filename, __how, __usize);
}

extern int fcntl (int __fd, int __cmd, ...);
extern int fcntl64 (int __fd, int __cmd, ...);
extern int open (const char *__file, int __oflag, ...) __attribute__ ((__nonnull__ (1)));
extern int open64 (const char *__file, int __oflag, ...) __attribute__ ((__nonnull__ (1)));
extern int openat (int __fd, const char *__file, int __oflag, ...)
     __attribute__ ((__nonnull__ (2)));
extern int openat64 (int __fd, const char *__file, int __oflag, ...)
     __attribute__ ((__nonnull__ (2)));
extern int creat (const char *__file, mode_t __mode) __attribute__ ((__nonnull__ (1)));
extern int creat64 (const char *__file, mode_t __mode) __attribute__ ((__nonnull__ (1)));
extern int posix_fadvise (int __fd, off_t __offset, off_t __len,
     int __advise) __attribute__ ((__nothrow__ , __leaf__));
extern int posix_fadvise64 (int __fd, off64_t __offset, off64_t __len,
       int __advise) __attribute__ ((__nothrow__ , __leaf__));
extern int posix_fallocate (int __fd, off_t __offset, off_t __len);
extern int posix_fallocate64 (int __fd, off64_t __offset, off64_t __len);
extern int __open_2 (const char *__path, int __oflag) __attribute__ ((__nonnull__ (1)));
extern int __open_alias (const char *__path, int __oflag, ...) __asm__ ("" "open") __attribute__ ((__nonnull__ (1)));
extern void __open_too_many_args (void) __attribute__((__error__ ("open can be called either with 2 or 3 arguments, not more")));
extern void __open_missing_mode (void) __attribute__((__error__ ("open with O_CREAT or O_TMPFILE in second argument needs 3 arguments")));
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
open (const char *__path, int __oflag, ...)
{
  if (__builtin_va_arg_pack_len () > 1)
    __open_too_many_args ();
  if (__builtin_constant_p (__oflag))
    {
      if ((((__oflag) & 0100) != 0 || ((__oflag) & (020000000 | 0200000)) == (020000000 | 0200000)) && __builtin_va_arg_pack_len () < 1)
 {
   __open_missing_mode ();
   return __open_2 (__path, __oflag);
 }
      return __open_alias (__path, __oflag, __builtin_va_arg_pack ());
    }
  if (__builtin_va_arg_pack_len () < 1)
    return __open_2 (__path, __oflag);
  return __open_alias (__path, __oflag, __builtin_va_arg_pack ());
}
extern int __open64_2 (const char *__path, int __oflag) __attribute__ ((__nonnull__ (1)));
extern int __open64_alias (const char *__path, int __oflag, ...) __asm__ ("" "open64") __attribute__ ((__nonnull__ (1)));
extern void __open64_too_many_args (void) __attribute__((__error__ ("open64 can be called either with 2 or 3 arguments, not more")));
extern void __open64_missing_mode (void) __attribute__((__error__ ("open64 with O_CREAT or O_TMPFILE in second argument needs 3 arguments")));
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
open64 (const char *__path, int __oflag, ...)
{
  if (__builtin_va_arg_pack_len () > 1)
    __open64_too_many_args ();
  if (__builtin_constant_p (__oflag))
    {
      if ((((__oflag) & 0100) != 0 || ((__oflag) & (020000000 | 0200000)) == (020000000 | 0200000)) && __builtin_va_arg_pack_len () < 1)
 {
   __open64_missing_mode ();
   return __open64_2 (__path, __oflag);
 }
      return __open64_alias (__path, __oflag, __builtin_va_arg_pack ());
    }
  if (__builtin_va_arg_pack_len () < 1)
    return __open64_2 (__path, __oflag);
  return __open64_alias (__path, __oflag, __builtin_va_arg_pack ());
}
extern int __openat_2 (int __fd, const char *__path, int __oflag)
     __attribute__ ((__nonnull__ (2)));
extern int __openat_alias (int __fd, const char *__path, int __oflag, ...) __asm__ ("" "openat")
     __attribute__ ((__nonnull__ (2)));
extern void __openat_too_many_args (void) __attribute__((__error__ ("openat can be called either with 3 or 4 arguments, not more")));
extern void __openat_missing_mode (void) __attribute__((__error__ ("openat with O_CREAT or O_TMPFILE in third argument needs 4 arguments")));
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
openat (int __fd, const char *__path, int __oflag, ...)
{
  if (__builtin_va_arg_pack_len () > 1)
    __openat_too_many_args ();
  if (__builtin_constant_p (__oflag))
    {
      if ((((__oflag) & 0100) != 0 || ((__oflag) & (020000000 | 0200000)) == (020000000 | 0200000)) && __builtin_va_arg_pack_len () < 1)
 {
   __openat_missing_mode ();
   return __openat_2 (__fd, __path, __oflag);
 }
      return __openat_alias (__fd, __path, __oflag, __builtin_va_arg_pack ());
    }
  if (__builtin_va_arg_pack_len () < 1)
    return __openat_2 (__fd, __path, __oflag);
  return __openat_alias (__fd, __path, __oflag, __builtin_va_arg_pack ());
}
extern int __openat64_2 (int __fd, const char *__path, int __oflag)
     __attribute__ ((__nonnull__ (2)));
extern int __openat64_alias (int __fd, const char *__path, int __oflag, ...) __asm__ ("" "openat64")
     __attribute__ ((__nonnull__ (2)));
extern void __openat64_too_many_args (void) __attribute__((__error__ ("openat64 can be called either with 3 or 4 arguments, not more")));
extern void __openat64_missing_mode (void) __attribute__((__error__ ("openat64 with O_CREAT or O_TMPFILE in third argument needs 4 arguments")));
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
openat64 (int __fd, const char *__path, int __oflag, ...)
{
  if (__builtin_va_arg_pack_len () > 1)
    __openat64_too_many_args ();
  if (__builtin_constant_p (__oflag))
    {
      if ((((__oflag) & 0100) != 0 || ((__oflag) & (020000000 | 0200000)) == (020000000 | 0200000)) && __builtin_va_arg_pack_len () < 1)
 {
   __openat64_missing_mode ();
   return __openat64_2 (__fd, __path, __oflag);
 }
      return __openat64_alias (__fd, __path, __oflag, __builtin_va_arg_pack ());
    }
  if (__builtin_va_arg_pack_len () < 1)
    return __openat64_2 (__fd, __path, __oflag);
  return __openat64_alias (__fd, __path, __oflag, __builtin_va_arg_pack ());
}

typedef uint32_t tcp_seq;
struct tcphdr
  {
    __extension__ union
    {
      struct
      {
 uint16_t th_sport;
 uint16_t th_dport;
 tcp_seq th_seq;
 tcp_seq th_ack;
 uint8_t th_x2:4;
 uint8_t th_off:4;
 uint8_t th_flags;
 uint16_t th_win;
 uint16_t th_sum;
 uint16_t th_urp;
      };
      struct
      {
 uint16_t source;
 uint16_t dest;
 uint32_t seq;
 uint32_t ack_seq;
 uint16_t res1:4;
 uint16_t doff:4;
 uint16_t fin:1;
 uint16_t syn:1;
 uint16_t rst:1;
 uint16_t psh:1;
 uint16_t ack:1;
 uint16_t urg:1;
 uint16_t res2:2;
 uint16_t window;
 uint16_t check;
 uint16_t urg_ptr;
      };
    };
};
enum
{
  TCP_ESTABLISHED = 1,
  TCP_SYN_SENT,
  TCP_SYN_RECV,
  TCP_FIN_WAIT1,
  TCP_FIN_WAIT2,
  TCP_TIME_WAIT,
  TCP_CLOSE,
  TCP_CLOSE_WAIT,
  TCP_LAST_ACK,
  TCP_LISTEN,
  TCP_CLOSING
};
enum tcp_ca_state
{
  TCP_CA_Open = 0,
  TCP_CA_Disorder = 1,
  TCP_CA_CWR = 2,
  TCP_CA_Recovery = 3,
  TCP_CA_Loss = 4
};
struct tcp_info
{
  uint8_t tcpi_state;
  uint8_t tcpi_ca_state;
  uint8_t tcpi_retransmits;
  uint8_t tcpi_probes;
  uint8_t tcpi_backoff;
  uint8_t tcpi_options;
  uint8_t tcpi_snd_wscale : 4, tcpi_rcv_wscale : 4;
  uint32_t tcpi_rto;
  uint32_t tcpi_ato;
  uint32_t tcpi_snd_mss;
  uint32_t tcpi_rcv_mss;
  uint32_t tcpi_unacked;
  uint32_t tcpi_sacked;
  uint32_t tcpi_lost;
  uint32_t tcpi_retrans;
  uint32_t tcpi_fackets;
  uint32_t tcpi_last_data_sent;
  uint32_t tcpi_last_ack_sent;
  uint32_t tcpi_last_data_recv;
  uint32_t tcpi_last_ack_recv;
  uint32_t tcpi_pmtu;
  uint32_t tcpi_rcv_ssthresh;
  uint32_t tcpi_rtt;
  uint32_t tcpi_rttvar;
  uint32_t tcpi_snd_ssthresh;
  uint32_t tcpi_snd_cwnd;
  uint32_t tcpi_advmss;
  uint32_t tcpi_reordering;
  uint32_t tcpi_rcv_rtt;
  uint32_t tcpi_rcv_space;
  uint32_t tcpi_total_retrans;
  uint64_t tcpi_pacing_rate;
  uint64_t tcpi_max_pacing_rate;
  uint64_t tcpi_bytes_acked;
  uint64_t tcpi_bytes_received;
  uint32_t tcpi_segs_out;
  uint32_t tcpi_segs_in;
  uint32_t tcpi_notsent_bytes;
  uint32_t tcpi_min_rtt;
  uint32_t tcpi_data_segs_in;
  uint32_t tcpi_data_segs_out;
  uint64_t tcpi_delivery_rate;
  uint64_t tcpi_busy_time;
  uint64_t tcpi_rwnd_limited;
  uint64_t tcpi_sndbuf_limited;
  uint32_t tcpi_delivered;
  uint32_t tcpi_delivered_ce;
  uint64_t tcpi_bytes_sent;
  uint64_t tcpi_bytes_retrans;
  uint32_t tcpi_dsack_dups;
  uint32_t tcpi_reord_seen;
  uint32_t tcpi_rcv_ooopack;
  uint32_t tcpi_snd_wnd;
  uint32_t tcpi_rcv_wnd;
  uint32_t tcpi_rehash;
  uint16_t tcpi_total_rto;
  uint16_t tcpi_total_rto_recoveries;
  uint32_t tcpi_total_rto_time;
  uint32_t tcpi_received_ce;
  uint32_t tcpi_delivered_e1_bytes;
  uint32_t tcpi_delivered_e0_bytes;
  uint32_t tcpi_delivered_ce_bytes;
  uint32_t tcpi_received_e1_bytes;
  uint32_t tcpi_received_e0_bytes;
  uint32_t tcpi_received_ce_bytes;
  uint16_t tcpi_accecn_fail_mode;
  uint16_t tcpi_accecn_opt_seen;
};
enum {
  TCP_NLA_PAD,
  TCP_NLA_BUSY,
  TCP_NLA_RWND_LIMITED,
  TCP_NLA_SNDBUF_LIMITED,
  TCP_NLA_DATA_SEGS_OUT,
  TCP_NLA_TOTAL_RETRANS,
  TCP_NLA_PACING_RATE,
  TCP_NLA_DELIVERY_RATE,
  TCP_NLA_SND_CWND,
  TCP_NLA_REORDERING,
  TCP_NLA_MIN_RTT,
  TCP_NLA_RECUR_RETRANS,
  TCP_NLA_DELIVERY_RATE_APP_LMT,
  TCP_NLA_SNDQ_SIZE,
  TCP_NLA_CA_STATE,
  TCP_NLA_SND_SSTHRESH,
  TCP_NLA_DELIVERED,
  TCP_NLA_DELIVERED_CE,
  TCP_NLA_BYTES_SENT,
  TCP_NLA_BYTES_RETRANS,
  TCP_NLA_DSACK_DUPS,
  TCP_NLA_REORD_SEEN,
  TCP_NLA_SRTT,
  TCP_NLA_TIMEOUT_REHASH,
  TCP_NLA_BYTES_NOTSENT,
  TCP_NLA_EDT,
  TCP_NLA_TTL,
  TCP_NLA_REHASH,
};
struct tcp_md5sig
{
  struct sockaddr_storage tcpm_addr;
  uint8_t tcpm_flags;
  uint8_t tcpm_prefixlen;
  uint16_t tcpm_keylen;
  int tcpm_ifindex;
  uint8_t tcpm_key[80];
};
struct tcp_diag_md5sig {
  uint8_t tcpm_family;
  uint8_t tcpm_prefixlen;
  uint16_t tcpm_keylen;
  uint32_t tcpm_addr[4];
  uint8_t tcpm_key[80];
};
struct tcp_ao_add {
  struct sockaddr_storage addr;
  int8_t alg_name[64];
  int32_t ifindex;
  uint32_t set_current :1,
            set_rnext :1,
            reserved :30;
  uint16_t reserved2;
  uint8_t prefix;
  uint8_t sndid;
  uint8_t rcvid;
  uint8_t maclen;
  uint8_t keyflags;
  uint8_t keylen;
  uint8_t key[80];
} __attribute__((aligned(8)));
struct tcp_ao_del {
  struct sockaddr_storage addr;
  int32_t ifindex;
  uint32_t set_current :1,
           set_rnext :1,
           del_async :1,
           reserved :29;
  uint16_t reserved2;
  uint8_t prefix;
  uint8_t sndid;
  uint8_t rcvid;
  uint8_t current_key;
  uint8_t rnext;
  uint8_t keyflags;
} __attribute__((aligned(8)));
struct tcp_ao_info_opt {
  uint32_t set_current :1,
            set_rnext :1,
            ao_required :1,
            set_counters :1,
            accept_icmps :1,
            reserved :27;
  uint16_t reserved2;
  uint8_t current_key;
  uint8_t rnext;
  uint64_t pkt_good;
  uint64_t pkt_bad;
  uint64_t pkt_key_not_found;
  uint64_t pkt_ao_required;
  uint64_t pkt_dropped_icmp;
} __attribute__((aligned(8)));
struct tcp_ao_getsockopt {
  struct sockaddr_storage addr;
  uint8_t alg_name[64];
  uint8_t key[80];
  uint32_t nkeys;
  uint16_t is_current :1,
            is_rnext :1,
            get_all :1,
            reserved :13;
  uint8_t sndid;
  uint8_t rcvid;
  uint8_t prefix;
  uint8_t maclen;
  uint8_t keyflags;
  uint8_t keylen;
  int32_t ifindex;
  uint64_t pkt_good;
  uint64_t pkt_bad;
} __attribute__((aligned(8)));
struct tcp_ao_repair {
  uint32_t snt_isn;
  uint32_t rcv_isn;
  uint32_t snd_sne;
  uint32_t rcv_sne;
} __attribute__((aligned(8)));
struct tcp_repair_opt
{
  uint32_t opt_code;
  uint32_t opt_val;
};
enum
{
  TCP_NO_QUEUE,
  TCP_RECV_QUEUE,
  TCP_SEND_QUEUE,
  TCP_QUEUES_NR,
};
struct tcp_cookie_transactions
{
  uint16_t tcpct_flags;
  uint8_t __tcpct_pad1;
  uint8_t tcpct_cookie_desired;
  uint16_t tcpct_s_data_desired;
  uint16_t tcpct_used;
  uint8_t tcpct_value[536U];
};
struct tcp_repair_window
{
  uint32_t snd_wl1;
  uint32_t snd_wnd;
  uint32_t max_window;
  uint32_t rcv_wnd;
  uint32_t rcv_wup;
};
struct tcp_zerocopy_receive
{
  uint64_t address;
  uint32_t length;
  uint32_t recv_skip_hint;
  uint32_t inq;
  int32_t err;
  uint64_t copybuf_address;
  int32_t copybuf_len;
  uint32_t flags;
  uint64_t msg_control;
  uint64_t msg_controllen;
  uint32_t msg_flags;
  uint32_t reserved;
};

extern in_addr_t inet_addr (const char *__cp) __attribute__ ((__nothrow__ , __leaf__));
extern in_addr_t inet_lnaof (struct in_addr __in) __attribute__ ((__nothrow__ , __leaf__));
extern struct in_addr inet_makeaddr (in_addr_t __net, in_addr_t __host)
     __attribute__ ((__nothrow__ , __leaf__));
extern in_addr_t inet_netof (struct in_addr __in) __attribute__ ((__nothrow__ , __leaf__));
extern in_addr_t inet_network (const char *__cp) __attribute__ ((__nothrow__ , __leaf__));
extern char *inet_ntoa (struct in_addr __in) __attribute__ ((__nothrow__ , __leaf__));
extern int inet_pton (int __af, const char *__restrict __cp,
        void *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__));
extern const char *inet_ntop (int __af, const void *__restrict __cp,
         char *__restrict __buf, socklen_t __len)
     __attribute__ ((__nothrow__ , __leaf__));
extern int inet_aton (const char *__cp, struct in_addr *__inp) __attribute__ ((__nothrow__ , __leaf__));
extern char *inet_neta (in_addr_t __net, char *__buf, size_t __len) __attribute__ ((__nothrow__ , __leaf__))
  __attribute__ ((__deprecated__ ("Use inet_ntop instead")));
extern char *inet_net_ntop (int __af, const void *__cp, int __bits,
       char *__buf, size_t __len) __attribute__ ((__nothrow__ , __leaf__));
extern int inet_net_pton (int __af, const char *__cp,
     void *__buf, size_t __len) __attribute__ ((__nothrow__ , __leaf__));
extern unsigned int inet_nsap_addr (const char *__cp,
        unsigned char *__buf, int __len) __attribute__ ((__nothrow__ , __leaf__));
extern char *inet_nsap_ntoa (int __len, const unsigned char *__cp,
        char *__buf) __attribute__ ((__nothrow__ , __leaf__));
extern const char *__inet_ntop_chk (int, const void *, char *, socklen_t, size_t);
extern const char *__inet_ntop_alias (int, const void *, char *, socklen_t) __asm__ ("" "inet_ntop") __attribute__ ((__nothrow__ , __leaf__));
extern const char *__inet_ntop_chk_warn (int, const void *, char *, socklen_t, size_t) __asm__ ("" "__inet_ntop_chk") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__((__warning__ ("inet_ntop called with bigger length than " "size of destination buffer")));
extern int __inet_pton_chk (int, const char *, void *, size_t);
extern int __inet_pton_alias (int, const char *, void *) __asm__ ("" "inet_pton") __attribute__ ((__nothrow__ , __leaf__));
extern int __inet_pton_chk_warn (int, const char *, void *, size_t) __asm__ ("" "__inet_pton_chk") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__((__warning__ ("inet_pton called with a destination buffer size too small")));
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) const char *
__attribute__ ((__nothrow__ , __leaf__)) inet_ntop (int __af, const void * __restrict __src, char *__restrict __dst, socklen_t __dst_size)
   
{
  return (((__builtin_constant_p (__builtin_dynamic_object_size (__dst, 1)) && (__builtin_dynamic_object_size (__dst, 1)) == (long unsigned int) -1) || (((__typeof (__dst_size)) 0 < (__typeof (__dst_size)) -1 || (__builtin_constant_p (__dst_size) && (__dst_size) > 0)) && __builtin_constant_p ((((long unsigned int) (__dst_size)) <= ((__builtin_dynamic_object_size (__dst, 1))) / ((sizeof (char))))) && (((long unsigned int) (__dst_size)) <= ((__builtin_dynamic_object_size (__dst, 1))) / ((sizeof (char)))))) ? __inet_ntop_alias (__af, __src, __dst, __dst_size) : ((((__typeof (__dst_size)) 0 < (__typeof (__dst_size)) -1 || (__builtin_constant_p (__dst_size) && (__dst_size) > 0)) && __builtin_constant_p ((((long unsigned int) (__dst_size)) <= (__builtin_dynamic_object_size (__dst, 1)) / (sizeof (char)))) && !(((long unsigned int) (__dst_size)) <= (__builtin_dynamic_object_size (__dst, 1)) / (sizeof (char)))) ? __inet_ntop_chk_warn (__af, __src, __dst, __dst_size, __builtin_dynamic_object_size (__dst, 1)) : __inet_ntop_chk (__af, __src, __dst, __dst_size, __builtin_dynamic_object_size (__dst, 1))));
};
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
__attribute__ ((__nothrow__ , __leaf__)) inet_pton (int __af, const char *__restrict __src, void * __restrict __dst)
   
{
  size_t __sz = 0;
  if (__af == 2)
    __sz = sizeof (struct in_addr);
  else if (__af == 10)
    __sz = sizeof (struct in6_addr);
  else
    return __inet_pton_alias (__af, __src, __dst);
  return (((__builtin_constant_p (__builtin_dynamic_object_size (__dst, 1)) && (__builtin_dynamic_object_size (__dst, 1)) == (long unsigned int) -1) || (((__typeof (__sz)) 0 < (__typeof (__sz)) -1 || (__builtin_constant_p (__sz) && (__sz) > 0)) && __builtin_constant_p ((((long unsigned int) (__sz)) <= ((__builtin_dynamic_object_size (__dst, 1))) / ((sizeof (char))))) && (((long unsigned int) (__sz)) <= ((__builtin_dynamic_object_size (__dst, 1))) / ((sizeof (char)))))) ? __inet_pton_alias (__af, __src, __dst) : ((((__typeof (__sz)) 0 < (__typeof (__sz)) -1 || (__builtin_constant_p (__sz) && (__sz) > 0)) && __builtin_constant_p ((((long unsigned int) (__sz)) <= (__builtin_dynamic_object_size (__dst, 1)) / (sizeof (char)))) && !(((long unsigned int) (__sz)) <= (__builtin_dynamic_object_size (__dst, 1)) / (sizeof (char)))) ? __inet_pton_chk_warn (__af, __src, __dst, __builtin_dynamic_object_size (__dst, 1)) : __inet_pton_chk (__af, __src, __dst, __builtin_dynamic_object_size (__dst, 1))));
};


typedef struct
  {
    int quot;
    int rem;
  } div_t;
typedef struct
  {
    long int quot;
    long int rem;
  } ldiv_t;
__extension__ typedef struct
  {
    long long int quot;
    long long int rem;
  } lldiv_t;
extern size_t __ctype_get_mb_cur_max (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern double atof (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern int atoi (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern long int atol (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
__extension__ extern long long int atoll (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern double strtod (const char *__restrict __nptr,
        char **__restrict __endptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern float strtof (const char *__restrict __nptr,
       char **__restrict __endptr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern long double strtold (const char *__restrict __nptr,
       char **__restrict __endptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern _Float32 strtof32 (const char *__restrict __nptr,
     char **__restrict __endptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern _Float64 strtof64 (const char *__restrict __nptr,
     char **__restrict __endptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern _Float128 strtof128 (const char *__restrict __nptr,
       char **__restrict __endptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern _Float32x strtof32x (const char *__restrict __nptr,
       char **__restrict __endptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern _Float64x strtof64x (const char *__restrict __nptr,
       char **__restrict __endptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern long int strtol (const char *__restrict __nptr,
   char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern unsigned long int strtoul (const char *__restrict __nptr,
      char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
__extension__
extern long long int strtoq (const char *__restrict __nptr,
        char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
__extension__
extern unsigned long long int strtouq (const char *__restrict __nptr,
           char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
__extension__
extern long long int strtoll (const char *__restrict __nptr,
         char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
__extension__
extern unsigned long long int strtoull (const char *__restrict __nptr,
     char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern long int strtol (const char *__restrict __nptr, char **__restrict __endptr, int __base) __asm__ ("" "__isoc23_strtol") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__nonnull__ (1)));
extern unsigned long int strtoul (const char *__restrict __nptr, char **__restrict __endptr, int __base) __asm__ ("" "__isoc23_strtoul") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__nonnull__ (1)));
__extension__
extern long long int strtoq (const char *__restrict __nptr, char **__restrict __endptr, int __base) __asm__ ("" "__isoc23_strtoll") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__nonnull__ (1)));
__extension__
extern unsigned long long int strtouq (const char *__restrict __nptr, char **__restrict __endptr, int __base) __asm__ ("" "__isoc23_strtoull") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__nonnull__ (1)));
__extension__
extern long long int strtoll (const char *__restrict __nptr, char **__restrict __endptr, int __base) __asm__ ("" "__isoc23_strtoll") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__nonnull__ (1)));
__extension__
extern unsigned long long int strtoull (const char *__restrict __nptr, char **__restrict __endptr, int __base) __asm__ ("" "__isoc23_strtoull") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__nonnull__ (1)));
extern int strfromd (char *__dest, size_t __size, const char *__format,
       double __f)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3)));
extern int strfromf (char *__dest, size_t __size, const char *__format,
       float __f)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3)));
extern int strfroml (char *__dest, size_t __size, const char *__format,
       long double __f)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3)));
extern int strfromf32 (char *__dest, size_t __size, const char * __format,
         _Float32 __f)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3)));
extern int strfromf64 (char *__dest, size_t __size, const char * __format,
         _Float64 __f)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3)));
extern int strfromf128 (char *__dest, size_t __size, const char * __format,
   _Float128 __f)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3)));
extern int strfromf32x (char *__dest, size_t __size, const char * __format,
   _Float32x __f)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3)));
extern int strfromf64x (char *__dest, size_t __size, const char * __format,
   _Float64x __f)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3)));
extern long int strtol_l (const char *__restrict __nptr,
     char **__restrict __endptr, int __base,
     locale_t __loc) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 4)));
extern unsigned long int strtoul_l (const char *__restrict __nptr,
        char **__restrict __endptr,
        int __base, locale_t __loc)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 4)));
__extension__
extern long long int strtoll_l (const char *__restrict __nptr,
    char **__restrict __endptr, int __base,
    locale_t __loc)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 4)));
__extension__
extern unsigned long long int strtoull_l (const char *__restrict __nptr,
       char **__restrict __endptr,
       int __base, locale_t __loc)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 4)));
extern long int strtol_l (const char *__restrict __nptr, char **__restrict __endptr, int __base, locale_t __loc) __asm__ ("" "__isoc23_strtol_l") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__nonnull__ (1, 4)));
extern unsigned long int strtoul_l (const char *__restrict __nptr, char **__restrict __endptr, int __base, locale_t __loc) __asm__ ("" "__isoc23_strtoul_l") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__nonnull__ (1, 4)));
__extension__
extern long long int strtoll_l (const char *__restrict __nptr, char **__restrict __endptr, int __base, locale_t __loc) __asm__ ("" "__isoc23_strtoll_l") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__nonnull__ (1, 4)));
__extension__
extern unsigned long long int strtoull_l (const char *__restrict __nptr, char **__restrict __endptr, int __base, locale_t __loc) __asm__ ("" "__isoc23_strtoull_l") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__nonnull__ (1, 4)));
extern double strtod_l (const char *__restrict __nptr,
   char **__restrict __endptr, locale_t __loc)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 3)));
extern float strtof_l (const char *__restrict __nptr,
         char **__restrict __endptr, locale_t __loc)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 3)));
extern long double strtold_l (const char *__restrict __nptr,
         char **__restrict __endptr,
         locale_t __loc)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 3)));
extern _Float32 strtof32_l (const char *__restrict __nptr,
       char **__restrict __endptr,
       locale_t __loc)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 3)));
extern _Float64 strtof64_l (const char *__restrict __nptr,
       char **__restrict __endptr,
       locale_t __loc)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 3)));
extern _Float128 strtof128_l (const char *__restrict __nptr,
         char **__restrict __endptr,
         locale_t __loc)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 3)));
extern _Float32x strtof32x_l (const char *__restrict __nptr,
         char **__restrict __endptr,
         locale_t __loc)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 3)));
extern _Float64x strtof64x_l (const char *__restrict __nptr,
         char **__restrict __endptr,
         locale_t __loc)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 3)));
extern __inline __attribute__ ((__gnu_inline__)) int
__attribute__ ((__nothrow__ , __leaf__)) atoi (const char *__nptr)
{
  return (int) strtol (__nptr, (char **) ((void *)0), 10);
}
extern __inline __attribute__ ((__gnu_inline__)) long int
__attribute__ ((__nothrow__ , __leaf__)) atol (const char *__nptr)
{
  return strtol (__nptr, (char **) ((void *)0), 10);
}
__extension__ extern __inline __attribute__ ((__gnu_inline__)) long long int
__attribute__ ((__nothrow__ , __leaf__)) atoll (const char *__nptr)
{
  return strtoll (__nptr, (char **) ((void *)0), 10);
}
extern char *l64a (long int __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern long int a64l (const char *__s)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern long int random (void) __attribute__ ((__nothrow__ , __leaf__));
extern void srandom (unsigned int __seed) __attribute__ ((__nothrow__ , __leaf__));
extern char *initstate (unsigned int __seed, char *__statebuf,
   size_t __statelen) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern char *setstate (char *__statebuf) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
struct random_data
  {
    int32_t *fptr;
    int32_t *rptr;
    int32_t *state;
    int rand_type;
    int rand_deg;
    int rand_sep;
    int32_t *end_ptr;
  };
extern int random_r (struct random_data *__restrict __buf,
       int32_t *__restrict __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int srandom_r (unsigned int __seed, struct random_data *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern int initstate_r (unsigned int __seed, char *__restrict __statebuf,
   size_t __statelen,
   struct random_data *__restrict __buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 4)));
extern int setstate_r (char *__restrict __statebuf,
         struct random_data *__restrict __buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int rand (void) __attribute__ ((__nothrow__ , __leaf__));
extern void srand (unsigned int __seed) __attribute__ ((__nothrow__ , __leaf__));
extern int rand_r (unsigned int *__seed) __attribute__ ((__nothrow__ , __leaf__));
extern double drand48 (void) __attribute__ ((__nothrow__ , __leaf__));
extern double erand48 (unsigned short int __xsubi[3]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern long int lrand48 (void) __attribute__ ((__nothrow__ , __leaf__));
extern long int nrand48 (unsigned short int __xsubi[3])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern long int mrand48 (void) __attribute__ ((__nothrow__ , __leaf__));
extern long int jrand48 (unsigned short int __xsubi[3])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern void srand48 (long int __seedval) __attribute__ ((__nothrow__ , __leaf__));
extern unsigned short int *seed48 (unsigned short int __seed16v[3])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern void lcong48 (unsigned short int __param[7]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
struct drand48_data
  {
    unsigned short int __x[3];
    unsigned short int __old_x[3];
    unsigned short int __c;
    unsigned short int __init;
    __extension__ unsigned long long int __a;
  };
extern int drand48_r (struct drand48_data *__restrict __buffer,
        double *__restrict __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int erand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        double *__restrict __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int lrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int nrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int mrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int jrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int srand48_r (long int __seedval, struct drand48_data *__buffer)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern int seed48_r (unsigned short int __seed16v[3],
       struct drand48_data *__buffer) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int lcong48_r (unsigned short int __param[7],
        struct drand48_data *__buffer)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern __uint32_t arc4random (void)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern void arc4random_buf (void *__buf, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern __uint32_t arc4random_uniform (__uint32_t __upper_bound)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern void *malloc (size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__))
     __attribute__ ((__alloc_size__ (1))) __attribute__ ((__warn_unused_result__));
extern void *calloc (size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__alloc_size__ (1, 2))) __attribute__ ((__warn_unused_result__));
extern void *realloc (void *__ptr, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__)) __attribute__ ((__alloc_size__ (2)));
extern void free (void *__ptr) __attribute__ ((__nothrow__ , __leaf__));
extern void free_sized (void *__ptr, size_t __size) __attribute__ ((__nothrow__ , __leaf__));
extern void free_aligned_sized (void *__ptr, size_t __alignment, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__));
extern void *reallocarray (void *__ptr, size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__))
     __attribute__ ((__alloc_size__ (2, 3)))
    __attribute__ ((__malloc__ (__builtin_free, 1)));
extern void *reallocarray (void *__ptr, size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__ (reallocarray, 1)));

extern void *alloca (size_t __size) __attribute__ ((__nothrow__ , __leaf__));

extern void *valloc (size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__))
     __attribute__ ((__alloc_size__ (1))) __attribute__ ((__warn_unused_result__));
extern int posix_memalign (void **__memptr, size_t __alignment, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern void *aligned_alloc (size_t __alignment, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__alloc_align__ (1)))
     __attribute__ ((__alloc_size__ (2))) __attribute__ ((__warn_unused_result__));
extern void abort (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__)) __attribute__ ((__cold__));
extern int atexit (void (*__func) (void)) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int at_quick_exit (void (*__func) (void)) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int on_exit (void (*__func) (int __status, void *__arg), void *__arg)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern void exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));
extern void quick_exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));
extern void _Exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));
extern char *getenv (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern char *secure_getenv (const char *__name)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern int putenv (char *__string) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int setenv (const char *__name, const char *__value, int __replace)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));
extern int unsetenv (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int clearenv (void) __attribute__ ((__nothrow__ , __leaf__));
extern char *mktemp (char *__template) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern int mkstemp (char *__template) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern int mkstemp64 (char *__template) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern int mkstemps (char *__template, int __suffixlen) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern int mkstemps64 (char *__template, int __suffixlen)
     __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern char *mkdtemp (char *__template) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern int mkostemp (char *__template, int __flags) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern int mkostemp64 (char *__template, int __flags) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern int mkostemps (char *__template, int __suffixlen, int __flags)
     __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern int mkostemps64 (char *__template, int __suffixlen, int __flags)
     __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern int system (const char *__command) __attribute__ ((__warn_unused_result__));
extern char *canonicalize_file_name (const char *__name)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__malloc__))
     __attribute__ ((__malloc__ (__builtin_free, 1))) __attribute__ ((__warn_unused_result__));
extern char *realpath (const char *__restrict __name,
         char *__restrict __resolved) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
typedef int (*__compar_fn_t) (const void *, const void *);
typedef __compar_fn_t comparison_fn_t;
typedef int (*__compar_d_fn_t) (const void *, const void *, void *);
extern void *bsearch (const void *__key, const void *__base,
        size_t __nmemb, size_t __size, __compar_fn_t __compar)
     __attribute__ ((__nonnull__ (1, 2, 5))) __attribute__ ((__warn_unused_result__));
extern __inline __attribute__ ((__gnu_inline__)) void *
bsearch (const void *__key, const void *__base, size_t __nmemb, size_t __size,
  __compar_fn_t __compar)
{
  const void *__p;
  int __comparison;
  while (__nmemb)
    {
      __p = (const void *) (((const char *) __base) + ((__nmemb >> 1) * __size));
      __comparison = (*__compar) (__key, __p);
      if (__comparison == 0)
 {
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wcast-qual"
   return (void *) __p;
#pragma GCC diagnostic pop
 }
      if (__comparison > 0)
 {
   __base = ((const char *) __p) + __size;
   --__nmemb;
 }
      __nmemb >>= 1;
    }
  return ((void *)0);
}
extern void qsort (void *__base, size_t __nmemb, size_t __size,
     __compar_fn_t __compar) __attribute__ ((__nonnull__ (1, 4)));
extern void qsort_r (void *__base, size_t __nmemb, size_t __size,
       __compar_d_fn_t __compar, void *__arg)
  __attribute__ ((__nonnull__ (1, 4)));
extern int abs (int __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) __attribute__ ((__warn_unused_result__));
extern long int labs (long int __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) __attribute__ ((__warn_unused_result__));
__extension__ extern long long int llabs (long long int __x)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) __attribute__ ((__warn_unused_result__));
extern unsigned int uabs (int __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) __attribute__ ((__warn_unused_result__));
extern unsigned long int ulabs (long int __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) __attribute__ ((__warn_unused_result__));
__extension__ extern unsigned long long int ullabs (long long int __x)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) __attribute__ ((__warn_unused_result__));
extern div_t div (int __numer, int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) __attribute__ ((__warn_unused_result__));
extern ldiv_t ldiv (long int __numer, long int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) __attribute__ ((__warn_unused_result__));
__extension__ extern lldiv_t lldiv (long long int __numer,
        long long int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) __attribute__ ((__warn_unused_result__));
extern char *ecvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) __attribute__ ((__warn_unused_result__));
extern char *fcvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) __attribute__ ((__warn_unused_result__));
extern char *gcvt (double __value, int __ndigit, char *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3))) __attribute__ ((__warn_unused_result__));
extern char *qecvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) __attribute__ ((__warn_unused_result__));
extern char *qfcvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) __attribute__ ((__warn_unused_result__));
extern char *qgcvt (long double __value, int __ndigit, char *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3))) __attribute__ ((__warn_unused_result__));
extern int ecvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int fcvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int qecvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int qfcvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int mblen (const char *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));
extern int mbtowc (wchar_t *__restrict __pwc,
     const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));
extern int wctomb (char *__s, wchar_t __wchar) __attribute__ ((__nothrow__ , __leaf__));
extern size_t mbstowcs (wchar_t *__restrict __pwcs,
   const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ , __leaf__))
    __attribute__ ((__access__ (__read_only__, 2)));
extern size_t wcstombs (char *__restrict __s,
   const wchar_t *__restrict __pwcs, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__))
 
  __attribute__ ((__access__ (__read_only__, 2)));
extern int rpmatch (const char *__response) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) __attribute__ ((__warn_unused_result__));
extern int getsubopt (char **__restrict __optionp,
        char *const *__restrict __tokens,
        char **__restrict __valuep)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2, 3))) __attribute__ ((__warn_unused_result__));
extern int posix_openpt (int __oflag) __attribute__ ((__warn_unused_result__));
extern int grantpt (int __fd) __attribute__ ((__nothrow__ , __leaf__));
extern int unlockpt (int __fd) __attribute__ ((__nothrow__ , __leaf__));
extern char *ptsname (int __fd) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern int ptsname_r (int __fd, char *__buf, size_t __buflen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2))) ;
extern int getpt (void);
extern int getloadavg (double __loadavg[], int __nelem)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
typedef __once_flag once_flag;
extern void call_once (once_flag *__flag, void (*__func)(void));
extern size_t memalignment (const void *__p);
extern __inline __attribute__ ((__gnu_inline__)) double
__attribute__ ((__nothrow__ , __leaf__)) atof (const char *__nptr)
{
  return strtod (__nptr, (char **) ((void *)0));
}
extern char *__realpath_chk (const char *__restrict __name,
        char *__restrict __resolved,
        size_t __resolvedlen) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern char *__realpath_alias (const char *__restrict __name, char *__restrict __resolved) __asm__ ("" "realpath") __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern char *__realpath_chk_warn (const char *__restrict __name, char *__restrict __resolved, size_t __resolvedlen) __asm__ ("" "__realpath_chk") __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__))
     __attribute__((__warning__ ("second argument of realpath must be either NULL or at " "least PATH_MAX bytes long buffer")));
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) __attribute__ ((__warn_unused_result__)) char *
__attribute__ ((__nothrow__ , __leaf__)) realpath (const char *__restrict __name, char * __restrict __resolved)
    
{
  size_t __sz = __builtin_dynamic_object_size (__resolved, 1);
  if (__sz == (size_t) -1)
    return __realpath_alias (__name, __resolved);
  if ((((__typeof (4096)) 0 < (__typeof (4096)) -1 || (__builtin_constant_p (4096) && (4096) > 0)) && __builtin_constant_p ((((long unsigned int) (4096)) <= (__sz) / (sizeof (char)))) && !(((long unsigned int) (4096)) <= (__sz) / (sizeof (char)))))
    return __realpath_chk_warn (__name, __resolved, __sz);
  return __realpath_chk (__name, __resolved, __sz);
}
extern int __ptsname_r_chk (int __fd, char *__buf, size_t __buflen,
       size_t __nreal) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)))
    __attribute__ ((__access__ (__write_only__, 2, 3)));
extern int __ptsname_r_alias (int __fd, char *__buf, size_t __buflen) __asm__ ("" "ptsname_r") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__nonnull__ (2))) __attribute__ ((__access__ (__write_only__, 2, 3)));
extern int __ptsname_r_chk_warn (int __fd, char *__buf, size_t __buflen, size_t __nreal) __asm__ ("" "__ptsname_r_chk") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__ ((__nonnull__ (2))) __attribute__((__warning__ ("ptsname_r called with buflen bigger than " "size of buf")));
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) int
__attribute__ ((__nothrow__ , __leaf__)) ptsname_r (int __fd, char * __buf, size_t __buflen)
    
{
  return (((__builtin_constant_p (__builtin_dynamic_object_size (__buf, 1)) && (__builtin_dynamic_object_size (__buf, 1)) == (long unsigned int) -1) || (((__typeof (__buflen)) 0 < (__typeof (__buflen)) -1 || (__builtin_constant_p (__buflen) && (__buflen) > 0)) && __builtin_constant_p ((((long unsigned int) (__buflen)) <= ((__builtin_dynamic_object_size (__buf, 1))) / ((sizeof (char))))) && (((long unsigned int) (__buflen)) <= ((__builtin_dynamic_object_size (__buf, 1))) / ((sizeof (char)))))) ? __ptsname_r_alias (__fd, __buf, __buflen) : ((((__typeof (__buflen)) 0 < (__typeof (__buflen)) -1 || (__builtin_constant_p (__buflen) && (__buflen) > 0)) && __builtin_constant_p ((((long unsigned int) (__buflen)) <= (__builtin_dynamic_object_size (__buf, 1)) / (sizeof (char)))) && !(((long unsigned int) (__buflen)) <= (__builtin_dynamic_object_size (__buf, 1)) / (sizeof (char)))) ? __ptsname_r_chk_warn (__fd, __buf, __buflen, __builtin_dynamic_object_size (__buf, 1)) : __ptsname_r_chk (__fd, __buf, __buflen, __builtin_dynamic_object_size (__buf, 1))));
}
extern int __wctomb_chk (char *__s, wchar_t __wchar, size_t __buflen)
  __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern int __wctomb_alias (char *__s, wchar_t __wchar) __asm__ ("" "wctomb") __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__));
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) __attribute__ ((__warn_unused_result__)) int
__attribute__ ((__nothrow__ , __leaf__)) wctomb (char * __s, wchar_t __wchar)
{
  if (__builtin_dynamic_object_size (__s, 1) != (size_t) -1
      && 16 > __builtin_dynamic_object_size (__s, 1))
    return __wctomb_chk (__s, __wchar, __builtin_dynamic_object_size (__s, 1));
  return __wctomb_alias (__s, __wchar);
}
extern size_t __mbstowcs_chk (wchar_t *__restrict __dst,
         const char *__restrict __src,
         size_t __len, size_t __dstlen) __attribute__ ((__nothrow__ , __leaf__))
    __attribute__ ((__access__ (__write_only__, 1, 3))) __attribute__ ((__access__ (__read_only__, 2)));
extern size_t __mbstowcs_nulldst (wchar_t *__restrict __dst, const char *__restrict __src, size_t __len) __asm__ ("" "mbstowcs") __attribute__ ((__nothrow__ , __leaf__))
    __attribute__ ((__access__ (__read_only__, 2)));
extern size_t __mbstowcs_alias (wchar_t *__restrict __dst, const char *__restrict __src, size_t __len) __asm__ ("" "mbstowcs") __attribute__ ((__nothrow__ , __leaf__))
    __attribute__ ((__access__ (__write_only__, 1, 3))) __attribute__ ((__access__ (__read_only__, 2)));
extern size_t __mbstowcs_chk_warn (wchar_t *__restrict __dst, const char *__restrict __src, size_t __len, size_t __dstlen) __asm__ ("" "__mbstowcs_chk") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__((__warning__ ("mbstowcs called with dst buffer smaller than len " "* sizeof (wchar_t)")));
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) size_t
__attribute__ ((__nothrow__ , __leaf__)) mbstowcs (wchar_t * __restrict __dst, const char *__restrict __src, size_t __len)
    
{
  if (__builtin_constant_p (__dst == ((void *)0)) && __dst == ((void *)0))
    return __mbstowcs_nulldst (__dst, __src, __len);
  else
    return (((__builtin_constant_p (__builtin_dynamic_object_size (__dst, 1)) && (__builtin_dynamic_object_size (__dst, 1)) == (long unsigned int) -1) || (((__typeof (__len)) 0 < (__typeof (__len)) -1 || (__builtin_constant_p (__len) && (__len) > 0)) && __builtin_constant_p ((((long unsigned int) (__len)) <= ((__builtin_dynamic_object_size (__dst, 1))) / ((sizeof (wchar_t))))) && (((long unsigned int) (__len)) <= ((__builtin_dynamic_object_size (__dst, 1))) / ((sizeof (wchar_t)))))) ? __mbstowcs_alias (__dst, __src, __len) : ((((__typeof (__len)) 0 < (__typeof (__len)) -1 || (__builtin_constant_p (__len) && (__len) > 0)) && __builtin_constant_p ((((long unsigned int) (__len)) <= (__builtin_dynamic_object_size (__dst, 1)) / (sizeof (wchar_t)))) && !(((long unsigned int) (__len)) <= (__builtin_dynamic_object_size (__dst, 1)) / (sizeof (wchar_t)))) ? __mbstowcs_chk_warn (__dst, __src, __len, (__builtin_dynamic_object_size (__dst, 1)) / (sizeof (wchar_t))) : __mbstowcs_chk (__dst, __src, __len, (__builtin_dynamic_object_size (__dst, 1)) / (sizeof (wchar_t)))));
}
extern size_t __wcstombs_chk (char *__restrict __dst,
         const wchar_t *__restrict __src,
         size_t __len, size_t __dstlen) __attribute__ ((__nothrow__ , __leaf__))
  __attribute__ ((__access__ (__write_only__, 1, 3))) __attribute__ ((__access__ (__read_only__, 2)));
extern size_t __wcstombs_alias (char *__restrict __dst, const wchar_t *__restrict __src, size_t __len) __asm__ ("" "wcstombs") __attribute__ ((__nothrow__ , __leaf__))
  __attribute__ ((__access__ (__write_only__, 1, 3))) __attribute__ ((__access__ (__read_only__, 2)));
extern size_t __wcstombs_chk_warn (char *__restrict __dst, const wchar_t *__restrict __src, size_t __len, size_t __dstlen) __asm__ ("" "__wcstombs_chk") __attribute__ ((__nothrow__ , __leaf__))
     __attribute__((__warning__ ("wcstombs called with dst buffer smaller than len")));
extern __inline __attribute__ ((__always_inline__)) __attribute__ ((__gnu_inline__)) __attribute__ ((__artificial__)) size_t
__attribute__ ((__nothrow__ , __leaf__)) wcstombs (char * __restrict __dst, const wchar_t *__restrict __src, size_t __len)
{
  return (((__builtin_constant_p (__builtin_dynamic_object_size (__dst, 1)) && (__builtin_dynamic_object_size (__dst, 1)) == (long unsigned int) -1) || (((__typeof (__len)) 0 < (__typeof (__len)) -1 || (__builtin_constant_p (__len) && (__len) > 0)) && __builtin_constant_p ((((long unsigned int) (__len)) <= ((__builtin_dynamic_object_size (__dst, 1))) / ((sizeof (char))))) && (((long unsigned int) (__len)) <= ((__builtin_dynamic_object_size (__dst, 1))) / ((sizeof (char)))))) ? __wcstombs_alias (__dst, __src, __len) : ((((__typeof (__len)) 0 < (__typeof (__len)) -1 || (__builtin_constant_p (__len) && (__len) > 0)) && __builtin_constant_p ((((long unsigned int) (__len)) <= (__builtin_dynamic_object_size (__dst, 1)) / (sizeof (char)))) && !(((long unsigned int) (__len)) <= (__builtin_dynamic_object_size (__dst, 1)) / (sizeof (char)))) ? __wcstombs_chk_warn (__dst, __src, __len, __builtin_dynamic_object_size (__dst, 1)) : __wcstombs_chk (__dst, __src, __len, __builtin_dynamic_object_size (__dst, 1))));
}


struct option
{
  const char *name;
  int has_arg;
  int *flag;
  int val;
};
extern int getopt_long (int ___argc, char *const *___argv,
   const char *__shortopts,
          const struct option *__longopts, int *__longind)
       __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));
extern int getopt_long_only (int ___argc, char *const *___argv,
        const char *__shortopts,
               const struct option *__longopts, int *__longind)
       __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));

void *ssl_accept(conn *c, int sfd, bool *fail);
const unsigned char *ssl_get_peer_cn(conn *c, int *len);
int ssl_init(void);
void ssl_init_settings(void);
void ssl_init_conn(conn *c, void *ssl);
void ssl_conn_close(void *ssl_in);
int ssl_pending(void *ssl_in);
bool refresh_certs(char **errmsg);
void ssl_help(void);
bool ssl_set_verify_mode(int verify);
bool ssl_set_min_version(int version);
const char *ssl_proto_text(int version);
void complete_nread_ascii(conn *c);
int try_read_command_asciiauth(conn *c);
int try_read_command_ascii(conn *c);
void process_command_ascii(conn *c, char *command, size_t cmdlen);
int try_read_command_binary(conn *c);
void complete_nread_binary(conn *c);
void write_bin_error(conn *c, protocol_binary_response_status err,
                            const char *errstr, int swallow);
void proxy_stats(void *arg, ADD_STAT add_stats, void *c);
void process_proxy_stats(void *arg, ADD_STAT add_stats, void *c);
void process_proxy_funcstats(void *arg, ADD_STAT add_stats, void *c);
void process_proxy_bestats(void *arg, ADD_STAT add_stats, void *c);
int try_read_command_proxy(conn *c);
void complete_nread_proxy(conn *c);
void proxy_cleanup_conn(conn *c);
void proxy_thread_init(void *ctx, LIBEVENT_THREAD *thr);
void *proxy_init(bool proxy_uring, bool proxy_memprofile);
void proxy_start_reload(void *arg);
int proxy_first_confload(void *arg);
int proxy_load_config(void *arg);
void proxy_worker_reload(void *arg, LIBEVENT_THREAD *thr);
void proxy_gc_poke(LIBEVENT_THREAD *t);
void proxy_submit_cb(io_queue_t *q);
void proxy_complete_cb(io_queue_t *q);
int proxy_register_libs(void *ctx, LIBEVENT_THREAD *t, void *state);
static void drive_machine(conn *c);
static int new_socket(struct addrinfo *ai);
static ssize_t tcp_read(conn *arg, void *buf, size_t count);
static ssize_t tcp_sendmsg(conn *arg, struct msghdr *msg, int flags);
static ssize_t tcp_write(conn *arg, void *buf, size_t count);
enum try_read_result {
    READ_DATA_RECEIVED,
    READ_NO_DATA_RECEIVED,
    READ_ERROR,
    READ_MEMORY_ERROR
};
static int try_read_command_negotiate(conn *c);
static int try_read_command_udp(conn *c);
static enum try_read_result try_read_network(conn *c);
static enum try_read_result try_read_udp(conn *c);
static int start_conn_timeout_thread(void);
static void stats_init(void);
static void conn_to_str(const conn *c, char *addr, char *svr_addr);
static void settings_init(void);
static void event_handler(const int fd, const short which, void *arg);
static void conn_close(conn *c);
static void conn_init(void);
static bool update_event(conn *c, const int new_flags);
static void complete_nread(conn *c);
static void conn_free(conn *c);
struct stats stats;
struct stats_state stats_state;
struct settings settings;
time_t process_started;
conn **conns;
void *ext_storage = ((void *)0);
static conn *listen_conn = ((void *)0);
static int max_fds;
static struct event_base *main_base;
enum transmit_result {
    TRANSMIT_COMPLETE,
    TRANSMIT_INCOMPLETE,
    TRANSMIT_SOFT_ERROR,
    TRANSMIT_HARD_ERROR
};
ssize_t tcp_read(conn *c, void *buf, size_t count) {
    ((void) (0));
    return read(c->sfd, buf, count);
}
ssize_t tcp_sendmsg(conn *c, struct msghdr *msg, int flags) {
    ((void) (0));
    return sendmsg(c->sfd, msg, flags);
}
ssize_t tcp_write(conn *c, void *buf, size_t count) {
    ((void) (0));
    return write(c->sfd, buf, count);
}
static enum transmit_result transmit(conn *c);
static volatile bool allow_new_conns = true;
static int stop_main_loop = NOT_STOP;
static struct event maxconnsevent;
static void maxconns_handler(const int fd, const short which, void *arg) {
    struct timeval t = {.tv_sec = 0, .tv_usec = 10000};
    if (fd == -42 || allow_new_conns == false) {
        event_set((&maxconnsevent), -1, 0, (maxconns_handler), (0));
        event_base_set(main_base, &maxconnsevent);
        event_add((&maxconnsevent), (&t));
    } else {
        event_del(&maxconnsevent);
        accept_new_conns(true);
    }
}
rel_time_t realtime(const time_t exptime) {
    if (exptime == 0) return 0;
    if (exptime > 60*60*24*30) {
        if (exptime <= process_started)
            return (rel_time_t)1;
        return (rel_time_t)(exptime - process_started);
    } else {
        return (rel_time_t)(exptime + current_time);
    }
}
static void stats_init(void) {
    memset(&stats, 0, sizeof(struct stats));
    memset(&stats_state, 0, sizeof(struct stats_state));
    stats_state.accepting_conns = true;
    process_started = time(0) - 60 - 2;
    stats_prefix_init(settings.prefix_delimiter);
}
void stats_reset(void) {
    STATS_LOCK();
    memset(&stats, 0, sizeof(struct stats));
    stats_prefix_clear();
    STATS_UNLOCK();
    threadlocal_stats_reset();
    item_stats_reset();
}
static void settings_init(void) {
    settings.use_cas = true;
    settings.access = 0700;
    settings.port = 11211;
    settings.udpport = 0;
    ssl_init_settings();
    settings.inter = ((void *)0);
    settings.maxbytes = 64 * 1024 * 1024;
    settings.maxconns = 1024;
    settings.verbose = 0;
    settings.oldest_live = 0;
    settings.evict_to_free = 1;
    settings.socketpath = ((void *)0);
    settings.auth_file = ((void *)0);
    settings.factor = 1.25;
    settings.chunk_size = 48;
    settings.num_threads = 4;
    settings.num_threads_per_udp = 0;
    settings.prefix_delimiter = ':';
    settings.detail_enabled = 0;
    settings.reqs_per_event = 20;
    settings.backlog = 1024;
    settings.binding_protocol = negotiating_prot;
    settings.item_size_max = 1024 * 1024;
    settings.slab_page_size = 1024 * 1024;
    settings.slab_chunk_size_max = settings.slab_page_size / 2;
    settings.sasl = false;
    settings.maxconns_fast = true;
    settings.lru_crawler = false;
    settings.lru_crawler_sleep = 100;
    settings.lru_crawler_tocrawl = 0;
    settings.lru_maintainer_thread = false;
    settings.lru_segmented = true;
    settings.hot_lru_pct = 20;
    settings.warm_lru_pct = 40;
    settings.hot_max_factor = 0.2;
    settings.warm_max_factor = 2.0;
    settings.temp_lru = false;
    settings.temporary_ttl = 61;
    settings.idle_timeout = 0;
    settings.hashpower_init = 0;
    settings.slab_reassign = true;
    settings.slab_automove = 1;
    settings.slab_automove_version = 0;
    settings.slab_automove_ratio = 0.8;
    settings.slab_automove_window = 10;
    settings.shutdown_command = false;
    settings.tail_repair_time = 0;
    settings.flush_enabled = true;
    settings.dump_enabled = true;
    settings.crawls_persleep = 1000;
    settings.logger_watcher_buf_size = 1024 * 256;
    settings.logger_buf_size = 1024 * 64;
    settings.drop_privileges = false;
    settings.watch_enabled = true;
    settings.read_buf_mem_limit = 0;
    settings.num_napi_ids = 0;
    settings.memory_file = ((void *)0);
    settings.sock_cookie_id = 0;
}
extern pthread_mutex_t conn_lock;
static pthread_t conn_timeout_tid;
static int do_run_conn_timeout_thread;
static pthread_cond_t conn_timeout_cond = { { {0}, {0}, {0, 0}, 0, 0, {0, 0}, 0, 0 } };
static pthread_mutex_t conn_timeout_lock = { { 0, 0, 0, 0, PTHREAD_MUTEX_TIMED_NP, 0, 0, { ((void *)0), ((void *)0) } } };
static void *conn_timeout_thread(void *arg) {
    int i;
    conn *c;
    rel_time_t oldest_last_cmd;
    int sleep_time;
    int sleep_slice = max_fds / 100;
    if (sleep_slice == 0)
        sleep_slice = 100;
    useconds_t timeslice = 1000000 / sleep_slice;
    pthread_mutex_lock(&conn_timeout_lock);
    while(do_run_conn_timeout_thread) {
        if (settings.verbose > 2)
            fprintf(stderr, "idle timeout thread at top of connection list\n");
        oldest_last_cmd = current_time;
        for (i = 0; i < max_fds; i++) {
            if ((i % 100) == 0) {
                if (settings.verbose > 2)
                    fprintf(stderr, "idle timeout thread sleeping for %ulus\n",
                        (unsigned int)timeslice);
                usleep(timeslice);
            }
            if (!conns[i])
                continue;
            c = conns[i];
            if (!(c->transport == tcp_transport))
                continue;
            if (c->state != conn_new_cmd && c->state != conn_read)
                continue;
            if ((current_time - c->last_cmd_time) > settings.idle_timeout) {
                timeout_conn(c);
            } else {
                if (c->last_cmd_time < oldest_last_cmd)
                    oldest_last_cmd = c->last_cmd_time;
            }
        }
        sleep_time = settings.idle_timeout - (current_time - oldest_last_cmd) + 1;
        if (sleep_time <= 0)
            sleep_time = 1;
        if (settings.verbose > 2)
            fprintf(stderr,
                    "idle timeout thread finished pass, sleeping for %ds\n",
                    sleep_time);
        struct timeval now;
        struct timespec to_sleep;
        gettimeofday(&now, ((void *)0));
        to_sleep.tv_sec = now.tv_sec + sleep_time;
        to_sleep.tv_nsec = 0;
        pthread_cond_timedwait(&conn_timeout_cond, &conn_timeout_lock, &to_sleep);
    }
    pthread_mutex_unlock(&conn_timeout_lock);
    return ((void *)0);
}
static int start_conn_timeout_thread(void) {
    int ret;
    if (settings.idle_timeout == 0)
        return -1;
    do_run_conn_timeout_thread = 1;
    if ((ret = pthread_create(&conn_timeout_tid, ((void *)0),
        conn_timeout_thread, ((void *)0))) != 0) {
        fprintf(stderr, "Can't create idle connection timeout thread: %s\n",
            strerror(ret));
        return -1;
    }
    thread_setname(conn_timeout_tid, "mc-idletimeout");
    return 0;
}
int stop_conn_timeout_thread(void) {
    if (!do_run_conn_timeout_thread)
        return -1;
    pthread_mutex_lock(&conn_timeout_lock);
    do_run_conn_timeout_thread = 0;
    pthread_cond_signal(&conn_timeout_cond);
    pthread_mutex_unlock(&conn_timeout_lock);
    pthread_join(conn_timeout_tid, ((void *)0));
    return 0;
}
static void rbuf_release(conn *c) {
    if (c->rbuf != ((void *)0) && c->rbytes == 0 && !(c->transport == udp_transport)) {
        if (c->rbuf_malloced) {
            free(c->rbuf);
            c->rbuf_malloced = false;
        } else {
            do_cache_free(c->thread->rbuf_cache, c->rbuf);
        }
        c->rsize = 0;
        c->rbuf = ((void *)0);
        c->rcurr = ((void *)0);
    }
}
static bool rbuf_alloc(conn *c) {
    if (c->rbuf == ((void *)0)) {
        c->rbuf = do_cache_alloc(c->thread->rbuf_cache);
        if (!c->rbuf) {
            pthread_mutex_lock(&c->thread->stats.mutex);
            c->thread->stats.read_buf_oom++;
            pthread_mutex_unlock(&c->thread->stats.mutex);
            return false;
        }
        c->rsize = 16384;
        c->rcurr = c->rbuf;
    }
    return true;
}
bool rbuf_switch_to_malloc(conn *c) {
    size_t size = c->rsize * 2;
    char *tmp = malloc(size);
    if (!tmp)
        return false;
    memcpy(tmp, c->rcurr, c->rbytes);
    do_cache_free(c->thread->rbuf_cache, c->rbuf);
    c->rcurr = c->rbuf = tmp;
    c->rsize = size;
    c->rbuf_malloced = true;
    return true;
}
static void conn_init(void) {
    int next_fd = dup(1);
    if (next_fd < 0) {
        perror("Failed to duplicate file descriptor\n");
        exit(1);
    }
    int headroom = 10;
    struct rlimit rl;
    max_fds = settings.maxconns + headroom + next_fd;
    if (getrlimit(RLIMIT_NOFILE, &rl) == 0) {
        max_fds = rl.rlim_max;
    } else {
        fprintf(stderr, "Failed to query maximum file descriptor; "
                        "falling back to maxconns\n");
    }
    close(next_fd);
    if ((conns = calloc(max_fds, sizeof(conn *))) == ((void *)0)) {
        fprintf(stderr, "Failed to allocate connection structures\n");
        exit(1);
    }
}
static const char *prot_text(enum protocol prot) {
    char *rv = "unknown";
    switch(prot) {
        case ascii_prot:
            rv = "ascii";
            break;
        case binary_prot:
            rv = "binary";
            break;
        case negotiating_prot:
            rv = "auto-negotiate";
            break;
        case proxy_prot:
            rv = "proxy";
            break;
    }
    return rv;
}
void conn_close_idle(conn *c) {
    if (settings.idle_timeout > 0 &&
        (current_time - c->last_cmd_time) > settings.idle_timeout) {
        if (c->state != conn_new_cmd && c->state != conn_read) {
            if (settings.verbose > 1)
                fprintf(stderr,
                    "fd %d wants to timeout, but isn't in read state", c->sfd);
            return;
        }
        if (settings.verbose > 1)
            fprintf(stderr, "Closing idle fd %d\n", c->sfd);
        pthread_mutex_lock(&c->thread->stats.mutex);
        c->thread->stats.idle_kicks++;
        pthread_mutex_unlock(&c->thread->stats.mutex);
        c->close_reason = IDLE_TIMEOUT_CLOSE;
        conn_set_state(c, conn_closing);
        drive_machine(c);
    }
}
static void _conn_event_readd(conn *c) {
    c->ev_flags = 0x02 | 0x10;
    event_set(&c->event, c->sfd, c->ev_flags, event_handler, (void *)c);
    event_base_set(c->thread->base, &c->event);
    if (event_add(&c->event, 0) == -1) {
        perror("event_add");
    }
}
void conn_worker_readd(conn *c) {
    ((void) (0));
    switch (c->state) {
        case conn_closing:
            drive_machine(c);
            break;
        case conn_io_pending:
            _conn_event_readd(c);
        case conn_io_queue:
            conn_set_state(c, conn_io_resume);
            event_active(&c->event, 0, 0);
            break;
        case conn_nread:
        case conn_write:
        case conn_mwrite:
        case conn_read:
        case conn_parse_cmd:
            break;
        default:
            event_del(&c->event);
            _conn_event_readd(c);
            conn_set_state(c, conn_new_cmd);
    }
}
void thread_io_queue_add(LIBEVENT_THREAD *t, int type, void *ctx, io_queue_stack_cb cb) {
    io_queue_t *q = t->io_queues;
    while (q->type != 0) {
        q++;
    }
    q->type = type;
    q->ctx = ctx;
    q->submit_cb = cb;
    do { (((&q->stack))->stqh_first) = ((void *)0); (&q->stack)->stqh_last = &(((&q->stack))->stqh_first); } while (0);
    return;
}
io_queue_t *thread_io_queue_get(LIBEVENT_THREAD *t, int type) {
    io_queue_t *q = t->io_queues;
    while (q->type != 0) {
        if (q->type == type) {
            return q;
        }
        q++;
    }
    return ((void *)0);
}
void thread_io_queue_submit(LIBEVENT_THREAD *t) {
    t->conns_tosubmit = 0;
    for (io_queue_t *q = t->io_queues; q->type != 0; q++) {
        if (!((&q->stack)->stqh_first == ((void *)0))) {
            q->submit_cb(q);
            ((void) (0));
        }
    }
}
void conn_io_queue_return(io_pending_t *io) {
    io->return_cb(io);
}
conn *conn_new(const int sfd, enum conn_states init_state,
                const int event_flags,
                const int read_buffer_size, enum network_transport transport,
                struct event_base *base, void *ssl, uint64_t conntag,
                enum protocol bproto) {
    conn *c;
    ((void) (0));
    c = conns[sfd];
    if (((void *)0) == c) {
        if (!(c = (conn *)calloc(1, sizeof(conn)))) {
            STATS_LOCK();
            stats.malloc_fails++;
            STATS_UNLOCK();
            fprintf(stderr, "Failed to allocate connection object\n");
            return ((void *)0);
        }
        ;
        c->read = ((void *)0);
        c->sendmsg = ((void *)0);
        c->write = ((void *)0);
        c->rbuf = ((void *)0);
        c->rsize = read_buffer_size;
        if (c->rsize) {
            c->rbuf = (char *)malloc((size_t)c->rsize);
        }
        if (c->rsize && c->rbuf == ((void *)0)) {
            conn_free(c);
            STATS_LOCK();
            stats.malloc_fails++;
            STATS_UNLOCK();
            fprintf(stderr, "Failed to allocate buffers for connection\n");
            return ((void *)0);
        }
        STATS_LOCK();
        stats_state.conn_structs++;
        STATS_UNLOCK();
        c->sfd = sfd;
        conns[sfd] = c;
    }
    c->transport = transport;
    c->protocol = bproto;
    c->tag = conntag;
    if (!settings.socketpath) {
        c->request_addr_size = sizeof(c->request_addr);
    } else {
        c->request_addr_size = 0;
    }
    if (transport == tcp_transport && init_state == conn_new_cmd) {
        if (getpeername(sfd, (struct sockaddr *) &c->request_addr,
                        &c->request_addr_size)) {
            perror("getpeername");
            memset(&c->request_addr, 0, sizeof(c->request_addr));
        }
    }
    if (init_state == conn_new_cmd) {
        do { logger *myl = ((void *)0); if (((void *)0) == ((void *)0)) myl = ((logger *) pthread_getspecific(logger_key));; if (myl->eflags & (1<<5)) logger_log(myl, LOGGER_CONNECTION_NEW, ((void *)0), &c->request_addr, c->request_addr_size, c->transport, 0, sfd); } while (0);
    }
    if (settings.verbose > 1) {
        if (init_state == conn_listening) {
            fprintf(stderr, "<%d server listening (%s)\n", sfd,
                prot_text(c->protocol));
        } else if ((transport == udp_transport)) {
            fprintf(stderr, "<%d server listening (udp)\n", sfd);
        } else if (c->protocol == negotiating_prot) {
            fprintf(stderr, "<%d new auto-negotiating client connection\n",
                    sfd);
        } else if (c->protocol == ascii_prot) {
            fprintf(stderr, "<%d new ascii client connection.\n", sfd);
        } else if (c->protocol == binary_prot) {
            fprintf(stderr, "<%d new binary client connection.\n", sfd);
        } else if (c->protocol == proxy_prot) {
            fprintf(stderr, "<%d new proxy client connection.\n", sfd);
        } else {
            fprintf(stderr, "<%d new unknown (%d) client connection\n",
                sfd, c->protocol);
            ((void) (0));
        }
    }
    c->state = init_state;
    c->rlbytes = 0;
    c->cmd = -1;
    c->rbytes = 0;
    c->rcurr = c->rbuf;
    c->ritem = 0;
    c->rbuf_malloced = false;
    c->item_malloced = false;
    c->sasl_started = false;
    c->close_after_write = false;
    c->last_cmd_time = current_time;
    ((void) (0));
    c->item = 0;
    c->ssl = ((void *)0);
    c->ssl_wbuf = ((void *)0);
    if (ssl) {
        ((void) (0));
        ssl_init_conn(c, ssl);
        c->ssl_enabled = true;
    } else {
        c->read = tcp_read;
        c->sendmsg = tcp_sendmsg;
        c->write = tcp_write;
        c->ssl_enabled = false;
    }
    if ((transport == udp_transport)) {
        c->try_read_command = try_read_command_udp;
    } else {
        switch (c->protocol) {
            case ascii_prot:
                if (settings.auth_file == ((void *)0)) {
                    c->authenticated = true;
                    c->try_read_command = try_read_command_ascii;
                } else {
                    c->authenticated = false;
                    c->try_read_command = try_read_command_asciiauth;
                }
                break;
            case binary_prot:
                c->authenticated = false;
                c->try_read_command = try_read_command_binary;
                break;
            case negotiating_prot:
                c->try_read_command = try_read_command_negotiate;
                break;
            case proxy_prot:
                c->try_read_command = try_read_command_proxy;
                break;
        }
    }
    event_set(&c->event, sfd, event_flags, event_handler, (void *)c);
    event_base_set(base, &c->event);
    c->ev_flags = event_flags;
    if (event_add(&c->event, 0) == -1) {
        perror("event_add");
        return ((void *)0);
    }
    STATS_LOCK();
    stats_state.curr_conns++;
    stats.total_conns++;
    STATS_UNLOCK();
    ;
    return c;
}
void conn_release_items(conn *c) {
    ((void) (0));
    if (c->item) {
        if (c->item_malloced) {
            free(c->item);
            c->item_malloced = false;
        } else {
            item_remove(c->item);
        }
        c->item = 0;
    }
    if (c->resp_head) {
        mc_resp *resp = c->resp_head;
        while (resp) {
            if (resp->free) {
                fprintf(stderr, "ERROR: double free detected during conn_release_items(): [%d] [%s]\n",
                        c->sfd, c->protocol == binary_prot ? "binary" : "ascii");
                c->resp_head = ((void *)0);
                c->resp = ((void *)0);
                break;
            }
            resp = resp_finish(c, resp);
        }
    }
}
static void conn_cleanup(conn *c) {
    ((void) (0));
    conn_release_items(c);
    if (c->proxy_rctx) {
        proxy_cleanup_conn(c);
    }
    if (c->sasl_conn) {
        ((void) (0));
        {};
        c->sasl_conn = ((void *)0);
    }
    if ((c->transport == udp_transport)) {
        conn_set_state(c, conn_read);
    }
}
void conn_free(conn *c) {
    if (c) {
        ((void) (0));
        ((void) (0));
        ;
        conns[c->sfd] = ((void *)0);
        if (c->rbuf)
            free(c->rbuf);
        if (c->ssl_wbuf)
            c->ssl_wbuf = ((void *)0);
        free(c);
    }
}
static void conn_close(conn *c) {
    ((void) (0));
    if (c->thread) {
        do { logger *myl = c->thread->l; if (c->thread->l == ((void *)0)) myl = ((logger *) pthread_getspecific(logger_key));; if (myl->eflags & (1<<5)) logger_log(myl, LOGGER_CONNECTION_CLOSE, ((void *)0), &c->request_addr, c->request_addr_size, c->transport, c->close_reason, c->sfd); } while (0);
    }
    event_del(&c->event);
    if (settings.verbose > 1)
        fprintf(stderr, "<%d connection closed.\n", c->sfd);
    conn_cleanup(c);
    if (c->thread) {
        c->rbytes = 0;
        rbuf_release(c);
    }
    ;
    conn_set_state(c, conn_closed);
    if (c->ssl_enabled) {
        ssl_conn_close(c->ssl);
    }
    close(c->sfd);
    c->close_reason = 0;
    pthread_mutex_lock(&conn_lock);
    allow_new_conns = true;
    pthread_mutex_unlock(&conn_lock);
    STATS_LOCK();
    stats_state.curr_conns--;
    STATS_UNLOCK();
    return;
}
void conn_close_all(void) {
    int i;
    for (i = 0; i < max_fds; i++) {
        if (conns[i] && conns[i]->state != conn_closed) {
            conn_close(conns[i]);
        }
    }
}
static const char *state_text(enum conn_states state) {
    const char* const statenames[] = { "conn_listening",
                                       "conn_new_cmd",
                                       "conn_waiting",
                                       "conn_read",
                                       "conn_parse_cmd",
                                       "conn_write",
                                       "conn_nread",
                                       "conn_swallow",
                                       "conn_closing",
                                       "conn_mwrite",
                                       "conn_closed",
                                       "conn_watch",
                                       "conn_io_queue",
                                       "conn_io_resume",
                                       "conn_io_pending" };
    return statenames[state];
}
void conn_set_state(conn *c, enum conn_states state) {
    ((void) (0));
    ((void) (0));
    if (state != c->state) {
        if (settings.verbose > 2) {
            fprintf(stderr, "%d: going from %s to %s\n",
                    c->sfd, state_text(c->state),
                    state_text(state));
        }
        if (state == conn_write || state == conn_mwrite) {
            ;
        }
        c->state = state;
    }
}
void resp_reset(mc_resp *resp) {
    if (resp->item) {
        item_remove(resp->item);
        resp->item = ((void *)0);
    }
    if (resp->write_and_free) {
        if (resp->proxy_res) {
            LIBEVENT_THREAD *t = resp->bundle->thread;
            t->proxy_buffer_memory_used -= resp->wbytes;
        }
        free(resp->write_and_free);
        resp->write_and_free = ((void *)0);
    }
    resp->wbytes = 0;
    resp->tosend = 0;
    resp->iovcnt = 0;
    resp->chunked_data_iov = 0;
    resp->chunked_total = 0;
    resp->skip = false;
}
void resp_add_iov(mc_resp *resp, const void *buf, int len) {
    ((void) (0));
    int x = resp->iovcnt;
    resp->iov[x].iov_base = (void *)buf;
    resp->iov[x].iov_len = len;
    resp->iovcnt++;
    resp->tosend += len;
}
void resp_add_chunked_iov(mc_resp *resp, const void *buf, int len) {
    resp->chunked_data_iov = resp->iovcnt;
    resp->chunked_total = len;
    resp_add_iov(resp, buf, len);
}
static mc_resp* resp_allocate(conn *c) {
    LIBEVENT_THREAD *th = c->thread;
    mc_resp *resp = ((void *)0);
    mc_resp_bundle *b = th->open_bundle;
    if (b != ((void *)0)) {
        for (int i = 0; i < ((16384 - sizeof(mc_resp_bundle)) / sizeof(mc_resp)); i++) {
            int x = (i + b->next_check) % ((16384 - sizeof(mc_resp_bundle)) / sizeof(mc_resp));
            if (b->r[x].free) {
                resp = &b->r[x];
                b->next_check = x+1;
                break;
            }
        }
        if (resp != ((void *)0)) {
            b->refcount++;
            memset(resp, 0, sizeof(*resp));
            resp->free = false;
            resp->bundle = b;
            if (b->refcount == ((16384 - sizeof(mc_resp_bundle)) / sizeof(mc_resp))) {
                ((void) (0));
                th->open_bundle = b->next;
                if (b->next) {
                    b->next->prev = 0;
                    b->next = 0;
                }
            }
        }
    }
    if (resp == ((void *)0)) {
        ((void) (0));
        b = do_cache_alloc(th->rbuf_cache);
        if (b) {
            pthread_mutex_lock(&th->stats.mutex);
            th->stats.response_obj_bytes += 16384;
            pthread_mutex_unlock(&th->stats.mutex);
            b->next_check = 1;
            b->refcount = 1;
            for (int i = 0; i < ((16384 - sizeof(mc_resp_bundle)) / sizeof(mc_resp)); i++) {
                b->r[i].free = true;
            }
            b->next = 0;
            b->prev = 0;
            b->thread = th;
            th->open_bundle = b;
            resp = &b->r[0];
            memset(resp, 0, sizeof(*resp));
            resp->free = false;
            resp->bundle = b;
        } else {
            return ((void *)0);
        }
    }
    return resp;
}
void resp_free(LIBEVENT_THREAD *th, mc_resp *resp) {
    mc_resp_bundle *b = resp->bundle;
    resp->free = true;
    b->refcount--;
    if (b->refcount == 0) {
        if (b == th->open_bundle && b->next == 0) {
            ((void) (0));
            b->next_check = 0;
        } else {
            ((void) (0));
            mc_resp_bundle **head = &th->open_bundle;
            if (*head == b) *head = b->next;
            ((void) (0));
            if (b->next) b->next->prev = b->prev;
            if (b->prev) b->prev->next = b->next;
            do_cache_free(th->rbuf_cache, b);
            pthread_mutex_lock(&th->stats.mutex);
            th->stats.response_obj_bytes -= 16384;
            pthread_mutex_unlock(&th->stats.mutex);
        }
    } else {
        mc_resp_bundle **head = &th->open_bundle;
        if (b == th->open_bundle || (b->prev || b->next)) {
        } else {
            b->prev = 0;
            b->next = *head;
            if (b->next) b->next->prev = b;
            *head = b;
        }
    }
    pthread_mutex_lock(&th->stats.mutex);
    th->stats.response_obj_count--;
    pthread_mutex_unlock(&th->stats.mutex);
}
bool resp_start(conn *c) {
    mc_resp *resp = resp_allocate(c);
    if (!resp) {
        pthread_mutex_lock(&c->thread->stats.mutex);
        c->thread->stats.response_obj_oom++;
        pthread_mutex_unlock(&c->thread->stats.mutex);
        return false;
    }
    pthread_mutex_lock(&c->thread->stats.mutex);
    c->thread->stats.response_obj_count++;
    pthread_mutex_unlock(&c->thread->stats.mutex);
    if (!c->resp_head) {
        c->resp_head = resp;
    }
    if (!c->resp) {
        c->resp = resp;
    } else {
        c->resp->next = resp;
        c->resp = resp;
    }
    if ((c->transport == udp_transport)) {
        c->resp->request_id = c->request_id;
        c->resp->request_addr = c->request_addr;
        c->resp->request_addr_size = c->request_addr_size;
    }
    return true;
}
mc_resp *resp_start_unlinked(conn *c) {
    mc_resp *resp = resp_allocate(c);
    if (!resp) {
        pthread_mutex_lock(&c->thread->stats.mutex);
        c->thread->stats.response_obj_oom++;
        pthread_mutex_unlock(&c->thread->stats.mutex);
        return false;
    }
    pthread_mutex_lock(&c->thread->stats.mutex);
    c->thread->stats.response_obj_count++;
    pthread_mutex_unlock(&c->thread->stats.mutex);
    if ((c->transport == udp_transport)) {
        c->resp->request_id = c->request_id;
        c->resp->request_addr = c->request_addr;
        c->resp->request_addr_size = c->request_addr_size;
    }
    return resp;
}
mc_resp* resp_finish(conn *c, mc_resp *resp) {
    mc_resp *next = resp->next;
    if (resp->item) {
        item_remove(resp->item);
        resp->item = ((void *)0);
    }
    if (resp->write_and_free) {
        if (resp->proxy_res) {
            LIBEVENT_THREAD *t = resp->bundle->thread;
            t->proxy_buffer_memory_used -= resp->wbytes;
        }
        free(resp->write_and_free);
    }
    if (resp->io_pending) {
        io_pending_t *io = resp->io_pending;
        io->finalize_cb(io);
        do_cache_free(c->thread->io_cache, io);
        resp->io_pending = ((void *)0);
    }
    if (c->resp_head == resp) {
        c->resp_head = next;
    }
    if (c->resp == resp) {
        c->resp = ((void *)0);
    }
    resp_free(c->thread, resp);
    return next;
}
bool resp_has_stack(conn *c) {
    return c->resp_head->next != ((void *)0) ? true : false;
}
void out_string(conn *c, const char *str) {
    size_t len;
    ((void) (0));
    mc_resp *resp = c->resp;
    resp_reset(resp);
    if (resp->noreply) {
        resp->skip = true;
        if (settings.verbose > 1)
            fprintf(stderr, ">%d NOREPLY %s\n", c->sfd, str);
        conn_set_state(c, conn_new_cmd);
        return;
    }
    if (settings.verbose > 1)
        fprintf(stderr, ">%d %s\n", c->sfd, str);
    len = strlen(str);
    if ((len + 2) > 1024) {
        str = "SERVER_ERROR output line too long";
        len = strlen(str);
    }
    memcpy(resp->wbuf, str, len);
    memcpy(resp->wbuf + len, "\r\n", 2);
    resp_add_iov(resp, resp->wbuf, len + 2);
    conn_set_state(c, conn_new_cmd);
    return;
}
void out_errstring(conn *c, const char *str) {
    c->resp->noreply = false;
    out_string(c, str);
}
void out_of_memory(conn *c, char *ascii_error) {
    const static char error_prefix[] = "SERVER_ERROR ";
    const static int error_prefix_len = sizeof(error_prefix) - 1;
    if (c->protocol == binary_prot) {
        if (!strncmp(ascii_error, error_prefix, error_prefix_len)) {
            ascii_error += error_prefix_len;
        }
        write_bin_error(c, PROTOCOL_BINARY_RESPONSE_ENOMEM, ascii_error, 0);
    } else {
        out_string(c, ascii_error);
    }
}
static void append_bin_stats(const char *key, const uint16_t klen,
                             const char *val, const uint32_t vlen,
                             conn *c) {
    char *buf = c->stats.buffer + c->stats.offset;
    uint32_t bodylen = klen + vlen;
    protocol_binary_response_header header = {
        .response.magic = (uint8_t)PROTOCOL_BINARY_RES,
        .response.opcode = PROTOCOL_BINARY_CMD_STAT,
        .response.keylen = (uint16_t)__bswap_16 (klen),
        .response.datatype = (uint8_t)PROTOCOL_BINARY_RAW_BYTES,
        .response.bodylen = __bswap_32 (bodylen),
        .response.opaque = c->opaque
    };
    memcpy(buf, header.bytes, sizeof(header.response));
    buf += sizeof(header.response);
    if (klen > 0) {
        memcpy(buf, key, klen);
        buf += klen;
        if (vlen > 0) {
            memcpy(buf, val, vlen);
        }
    }
    c->stats.offset += sizeof(header.response) + bodylen;
}
static void append_ascii_stats(const char *key, const uint16_t klen,
                               const char *val, const uint32_t vlen,
                               conn *c) {
    char *pos = c->stats.buffer + c->stats.offset;
    uint32_t nbytes = 0;
    int remaining = c->stats.size - c->stats.offset;
    int room = remaining - 1;
    if (klen == 0 && vlen == 0) {
        nbytes = snprintf(pos, room, "END\r\n");
    } else if (vlen == 0) {
        nbytes = snprintf(pos, room, "STAT %s\r\n", key);
    } else {
        nbytes = snprintf(pos, room, "STAT %s %s\r\n", key, val);
    }
    c->stats.offset += nbytes;
}
static bool grow_stats_buf(conn *c, size_t needed) {
    size_t nsize = c->stats.size;
    size_t available = nsize - c->stats.offset;
    bool rv = true;
    if (c->stats.buffer == ((void *)0)) {
        nsize = 1024;
        available = c->stats.size = c->stats.offset = 0;
    }
    while (needed > available) {
        ((void) (0));
        nsize = nsize << 1;
        available = nsize - c->stats.offset;
    }
    if (nsize != c->stats.size) {
        char *ptr = realloc(c->stats.buffer, nsize);
        if (ptr) {
            c->stats.buffer = ptr;
            c->stats.size = nsize;
        } else {
            STATS_LOCK();
            stats.malloc_fails++;
            STATS_UNLOCK();
            rv = false;
        }
    }
    return rv;
}
void append_stats(const char *key, const uint16_t klen,
                  const char *val, const uint32_t vlen,
                  const void *cookie)
{
    if (klen == 0 && vlen > 0) {
        return;
    }
    conn *c = (conn*)cookie;
    if (c->protocol == binary_prot) {
        size_t needed = vlen + klen + sizeof(protocol_binary_response_header);
        if (!grow_stats_buf(c, needed)) {
            return;
        }
        append_bin_stats(key, klen, val, vlen, c);
    } else {
        size_t needed = vlen + klen + 10;
        if (!grow_stats_buf(c, needed)) {
            return;
        }
        append_ascii_stats(key, klen, val, vlen, c);
    }
    ((void) (0));
}
static void reset_cmd_handler(conn *c) {
    c->cmd = -1;
    c->substate = bin_no_state;
    if (c->item != ((void *)0)) {
        if (c->item_malloced) {
            free(c->item);
            c->item_malloced = false;
        } else {
            item_remove(c->item);
        }
        c->item = ((void *)0);
    }
    if (c->rbytes > 0) {
        conn_set_state(c, conn_parse_cmd);
    } else if (c->resp_head) {
        conn_set_state(c, conn_mwrite);
    } else if (c->ssl_enabled && ssl_pending(c->ssl)) {
        conn_set_state(c, conn_read);
    } else {
        conn_set_state(c, conn_waiting);
    }
}
static void complete_nread(conn *c) {
    ((void) (0));
    ((void) (0));
    if (c->protocol == ascii_prot) {
        complete_nread_ascii(c);
    } else if (c->protocol == binary_prot) {
        complete_nread_binary(c);
    } else if (c->protocol == proxy_prot) {
        complete_nread_proxy(c);
    }
}
static int _store_item_copy_chunks(item *d_it, item *s_it, const int len) {
    item_chunk *dch = (item_chunk *) ((char*) &((d_it)->data) + (d_it)->nkey + 1 + (((d_it)->it_flags & 256) ? sizeof(client_flags_t) : 0) + (((d_it)->it_flags & 2) ? sizeof(uint64_t) : 0));
    while (dch->size == dch->used) {
        if (dch->next) {
            dch = dch->next;
        } else {
            break;
        }
    }
    if (s_it->it_flags & 32) {
        int remain = len;
        item_chunk *sch = (item_chunk *) ((char*) &((s_it)->data) + (s_it)->nkey + 1 + (((s_it)->it_flags & 256) ? sizeof(client_flags_t) : 0) + (((s_it)->it_flags & 2) ? sizeof(uint64_t) : 0));
        int copied = 0;
        while (sch && dch && remain) {
            ((void) (0));
            int todo = (dch->size - dch->used < sch->used - copied)
                ? dch->size - dch->used : sch->used - copied;
            if (remain < todo)
                todo = remain;
            memcpy(dch->data + dch->used, sch->data + copied, todo);
            dch->used += todo;
            copied += todo;
            remain -= todo;
            ((void) (0));
            if (dch->size == dch->used) {
                item_chunk *tch = do_item_alloc_chunk(dch, remain);
                if (tch) {
                    dch = tch;
                } else {
                    return -1;
                }
            }
            ((void) (0));
            if (copied == sch->used) {
                copied = 0;
                sch = sch->next;
            }
        }
        ((void) (0));
    } else {
        int done = 0;
        while (len > done && dch) {
            int todo = (dch->size - dch->used < len - done)
                ? dch->size - dch->used : len - done;
            memcpy(dch->data + dch->used, ((char*) &((s_it)->data) + (s_it)->nkey + 1 + (((s_it)->it_flags & 256) ? sizeof(client_flags_t) : 0) + (((s_it)->it_flags & 2) ? sizeof(uint64_t) : 0)) + done, todo);
            done += todo;
            dch->used += todo;
            ((void) (0));
            if (dch->size == dch->used) {
                item_chunk *tch = do_item_alloc_chunk(dch, len - done);
                if (tch) {
                    dch = tch;
                } else {
                    return -1;
                }
            }
        }
        ((void) (0));
    }
    return 0;
}
static int _store_item_copy_data(int comm, item *old_it, item *new_it, item *add_it) {
    if (comm == 4 || comm == 7) {
        if (new_it->it_flags & 32) {
            if (_store_item_copy_chunks(new_it, old_it, old_it->nbytes - 2) == -1 ||
                _store_item_copy_chunks(new_it, add_it, add_it->nbytes) == -1) {
                return -1;
            }
        } else {
            memcpy(((char*) &((new_it)->data) + (new_it)->nkey + 1 + (((new_it)->it_flags & 256) ? sizeof(client_flags_t) : 0) + (((new_it)->it_flags & 2) ? sizeof(uint64_t) : 0)), ((char*) &((old_it)->data) + (old_it)->nkey + 1 + (((old_it)->it_flags & 256) ? sizeof(client_flags_t) : 0) + (((old_it)->it_flags & 2) ? sizeof(uint64_t) : 0)), old_it->nbytes);
            memcpy(((char*) &((new_it)->data) + (new_it)->nkey + 1 + (((new_it)->it_flags & 256) ? sizeof(client_flags_t) : 0) + (((new_it)->it_flags & 2) ? sizeof(uint64_t) : 0)) + old_it->nbytes - 2 , ((char*) &((add_it)->data) + (add_it)->nkey + 1 + (((add_it)->it_flags & 256) ? sizeof(client_flags_t) : 0) + (((add_it)->it_flags & 2) ? sizeof(uint64_t) : 0)), add_it->nbytes);
        }
    } else {
        if (new_it->it_flags & 32) {
            if (_store_item_copy_chunks(new_it, add_it, add_it->nbytes - 2) == -1 ||
                _store_item_copy_chunks(new_it, old_it, old_it->nbytes) == -1) {
                return -1;
            }
        } else {
            memcpy(((char*) &((new_it)->data) + (new_it)->nkey + 1 + (((new_it)->it_flags & 256) ? sizeof(client_flags_t) : 0) + (((new_it)->it_flags & 2) ? sizeof(uint64_t) : 0)), ((char*) &((add_it)->data) + (add_it)->nkey + 1 + (((add_it)->it_flags & 256) ? sizeof(client_flags_t) : 0) + (((add_it)->it_flags & 2) ? sizeof(uint64_t) : 0)), add_it->nbytes);
            memcpy(((char*) &((new_it)->data) + (new_it)->nkey + 1 + (((new_it)->it_flags & 256) ? sizeof(client_flags_t) : 0) + (((new_it)->it_flags & 2) ? sizeof(uint64_t) : 0)) + add_it->nbytes - 2 , ((char*) &((old_it)->data) + (old_it)->nkey + 1 + (((old_it)->it_flags & 256) ? sizeof(client_flags_t) : 0) + (((old_it)->it_flags & 2) ? sizeof(uint64_t) : 0)), old_it->nbytes);
        }
    }
    return 0;
}
enum store_item_type do_store_item(item *it, int comm, LIBEVENT_THREAD *t, const uint32_t hv, int *nbytes, uint64_t *cas, uint64_t cas_in, bool cas_stale) {
    char *key = (((char*)&((it)->data)) + (((it)->it_flags & 2) ? sizeof(uint64_t) : 0));
    item *old_it = do_item_get(key, it->nkey, hv, t, false);
    enum store_item_type stored = NOT_STORED;
    enum cas_result { CAS_NONE, CAS_MATCH, CAS_BADVAL, CAS_STALE, CAS_MISS };
    item *new_it = ((void *)0);
    client_flags_t flags;
    enum cas_result cas_res = CAS_NONE;
    bool do_store = false;
    if (old_it != ((void *)0)) {
        uint64_t it_cas = (((it)->it_flags & 2) ? (it)->data->cas : (uint64_t)0);
        uint64_t old_cas = (((old_it)->it_flags & 2) ? (old_it)->data->cas : (uint64_t)0);
        if (it_cas == 0) {
            cas_res = CAS_NONE;
        } else if (it_cas == old_cas) {
            cas_res = CAS_MATCH;
        } else if (cas_stale && it_cas < old_cas) {
            cas_res = CAS_STALE;
        } else {
            cas_res = CAS_BADVAL;
        }
        switch (comm) {
            case 1:
                do_item_update(old_it);
                break;
            case 6:
                if (cas_res == CAS_MATCH) {
                    pthread_mutex_lock(&t->stats.mutex);
                    t->stats.slab_stats[((old_it)->slabs_clsid & ~(3<<6))].cas_hits++;
                    pthread_mutex_unlock(&t->stats.mutex);
                    do_store = true;
                } else if (cas_res == CAS_STALE) {
                    it->exptime = old_it->exptime;
                    it->it_flags |= 2048;
                    if (old_it->it_flags & 512) {
                        it->it_flags |= 512;
                    }
                    pthread_mutex_lock(&t->stats.mutex);
                    t->stats.slab_stats[((old_it)->slabs_clsid & ~(3<<6))].cas_hits++;
                    pthread_mutex_unlock(&t->stats.mutex);
                    do_store = true;
                } else {
                    pthread_mutex_lock(&t->stats.mutex);
                    t->stats.slab_stats[((old_it)->slabs_clsid & ~(3<<6))].cas_badval++;
                    pthread_mutex_unlock(&t->stats.mutex);
                    if (settings.verbose > 1) {
                        fprintf(stderr, "CAS:  failure: expected %llu, got %llu\n",
                                (unsigned long long)(((old_it)->it_flags & 2) ? (old_it)->data->cas : (uint64_t)0),
                                (unsigned long long)(((it)->it_flags & 2) ? (it)->data->cas : (uint64_t)0));
                    }
                    stored = EXISTS;
                }
                break;
            case 4:
            case 5:
            case 7:
            case 8:
                if (cas_res != CAS_NONE && cas_res != CAS_MATCH) {
                    stored = EXISTS;
                    break;
                }
                if ((old_it->it_flags & 128) != 0) {
                    break;
                }
                { if ((old_it)->it_flags & 256) { flags = *((client_flags_t *)((char*) &(((old_it))->data) + ((old_it))->nkey + 1 + ((((old_it))->it_flags & 2) ? sizeof(uint64_t) : 0))); } else { flags = 0; } };
                new_it = do_item_alloc(key, it->nkey, flags, old_it->exptime, it->nbytes + old_it->nbytes - 2 );
                if (new_it == ((void *)0))
                    break;
                if (_store_item_copy_data(comm, old_it, new_it, it) == -1) {
                    break;
                } else {
                    it = new_it;
                    do_store = true;
                    if (nbytes != ((void *)0)) {
                        *nbytes = it->nbytes;
                    }
                }
                break;
            case 3:
            case 2:
                do_store = true;
                break;
        }
        if (do_store) {
            do { storage_delete(t->storage, old_it); } while (0);
            item_replace(old_it, it, hv, cas_in);
            stored = STORED;
        }
        do_item_remove(old_it);
        if (new_it != ((void *)0)) {
            do_item_remove(new_it);
        }
    } else {
        if ((((it)->it_flags & 2) ? (it)->data->cas : (uint64_t)0) != 0) {
            cas_res = CAS_MISS;
        }
        switch (comm) {
            case 1:
            case 2:
            case 7:
            case 8:
                do_store = true;
                break;
            case 6:
                stored = NOT_FOUND;
                pthread_mutex_lock(&t->stats.mutex);
                t->stats.cas_misses++;
                pthread_mutex_unlock(&t->stats.mutex);
                break;
            case 3:
            case 4:
            case 5:
                break;
        }
        if (do_store) {
            do_item_link(it, hv, cas_in);
            stored = STORED;
        }
    }
    if (stored == STORED && cas != ((void *)0)) {
        *cas = (((it)->it_flags & 2) ? (it)->data->cas : (uint64_t)0);
    }
    do { logger *myl = t->l; if (t->l == ((void *)0)) myl = ((logger *) pthread_getspecific(logger_key));; if (myl->eflags & (1<<3)) logger_log(myl, LOGGER_ITEM_STORE, ((void *)0), stored, comm, (((char*)&((it)->data)) + (((it)->it_flags & 2) ? sizeof(uint64_t) : 0)), it->nkey, it->nbytes, it->exptime, ((it)->slabs_clsid & ~(3<<6)), t->cur_sfd); } while (0);
    return stored;
}
void write_and_free(conn *c, char *buf, int bytes) {
    if (buf) {
        mc_resp *resp = c->resp;
        resp->write_and_free = buf;
        resp_add_iov(resp, buf, bytes);
        conn_set_state(c, conn_new_cmd);
    } else {
        out_of_memory(c, "SERVER_ERROR out of memory writing stats");
    }
}
void append_stat(const char *name, ADD_STAT add_stats, conn *c,
                 const char *fmt, ...) {
    char val_str[128];
    int vlen;
    va_list ap;
    ((void) (0));
    ((void) (0));
    ((void) (0));
    ((void) (0));
    __builtin_c23_va_start(ap, fmt);
    vlen = vsnprintf(val_str, sizeof(val_str) - 1, fmt, ap);
    __builtin_va_end(ap);
    add_stats(name, strlen(name), val_str, vlen, c);
}
void server_stats(ADD_STAT add_stats, void *c) {
    pid_t pid = getpid();
    rel_time_t now = current_time;
    struct thread_stats thread_stats;
    threadlocal_stats_aggregate(&thread_stats);
    struct slab_stats slab_stats;
    slab_stats_aggregate(&thread_stats, &slab_stats);
    struct rusage usage;
    getrusage(RUSAGE_SELF, &usage);
    STATS_LOCK();
    append_stat("pid", add_stats, c, "%lu", (long)pid);;
    append_stat("uptime", add_stats, c, "%u", now - 60);;
    append_stat("time", add_stats, c, "%ld", now + (long)process_started);;
    append_stat("version", add_stats, c, "%s", "1.6.45");;
    append_stat("libevent", add_stats, c, "%s", event_get_version());;
    append_stat("pointer_size", add_stats, c, "%d", (int)(8 * sizeof(void *)));;
    append_stat("rusage_user", add_stats, c, "%ld.%06ld",
                (long)usage.ru_utime.tv_sec,
                (long)usage.ru_utime.tv_usec);
    append_stat("rusage_system", add_stats, c, "%ld.%06ld",
                (long)usage.ru_stime.tv_sec,
                (long)usage.ru_stime.tv_usec);
    append_stat("max_connections", add_stats, c, "%d", settings.maxconns);;
    append_stat("curr_connections", add_stats, c, "%llu", (unsigned long long)stats_state.curr_conns - 1);;
    append_stat("total_connections", add_stats, c, "%llu", (unsigned long long)stats.total_conns);;
    if (settings.maxconns_fast) {
        append_stat("rejected_connections", add_stats, c, "%llu", (unsigned long long)stats.rejected_conns);;
    }
    append_stat("connection_structures", add_stats, c, "%u", stats_state.conn_structs);;
    append_stat("response_obj_oom", add_stats, c, "%llu", (unsigned long long)thread_stats.response_obj_oom);;
    append_stat("response_obj_count", add_stats, c, "%llu", (unsigned long long)thread_stats.response_obj_count);;
    append_stat("response_obj_bytes", add_stats, c, "%llu", (unsigned long long)thread_stats.response_obj_bytes);;
    append_stat("read_buf_count", add_stats, c, "%llu", (unsigned long long)thread_stats.read_buf_count);;
    append_stat("read_buf_bytes", add_stats, c, "%llu", (unsigned long long)thread_stats.read_buf_bytes);;
    append_stat("read_buf_bytes_free", add_stats, c, "%llu", (unsigned long long)thread_stats.read_buf_bytes_free);;
    append_stat("read_buf_oom", add_stats, c, "%llu", (unsigned long long)thread_stats.read_buf_oom);;
    append_stat("reserved_fds", add_stats, c, "%u", stats_state.reserved_fds);;
    if (settings.proxy_enabled) {
        append_stat("proxy_conn_requests", add_stats, c, "%llu", (unsigned long long)thread_stats.proxy_conn_requests);;
        append_stat("proxy_conn_errors", add_stats, c, "%llu", (unsigned long long)thread_stats.proxy_conn_errors);;
        append_stat("proxy_conn_oom", add_stats, c, "%llu", (unsigned long long)thread_stats.proxy_conn_oom);;
        append_stat("proxy_req_active", add_stats, c, "%lld", (long long int)thread_stats.proxy_req_active);;
    }
    append_stat("cmd_get", add_stats, c, "%llu", (unsigned long long)thread_stats.get_cmds);;
    append_stat("cmd_set", add_stats, c, "%llu", (unsigned long long)slab_stats.set_cmds);;
    append_stat("cmd_flush", add_stats, c, "%llu", (unsigned long long)thread_stats.flush_cmds);;
    append_stat("cmd_touch", add_stats, c, "%llu", (unsigned long long)thread_stats.touch_cmds);;
    append_stat("cmd_meta", add_stats, c, "%llu", (unsigned long long)thread_stats.meta_cmds);;
    append_stat("get_hits", add_stats, c, "%llu", (unsigned long long)slab_stats.get_hits);;
    append_stat("get_misses", add_stats, c, "%llu", (unsigned long long)thread_stats.get_misses);;
    append_stat("get_expired", add_stats, c, "%llu", (unsigned long long)thread_stats.get_expired);;
    append_stat("get_flushed", add_stats, c, "%llu", (unsigned long long)thread_stats.get_flushed);;
    if (ext_storage) {
        append_stat("get_extstore", add_stats, c, "%llu", (unsigned long long)thread_stats.get_extstore);;
        append_stat("get_aborted_extstore", add_stats, c, "%llu", (unsigned long long)thread_stats.get_aborted_extstore);;
        append_stat("get_oom_extstore", add_stats, c, "%llu", (unsigned long long)thread_stats.get_oom_extstore);;
        append_stat("recache_from_extstore", add_stats, c, "%llu", (unsigned long long)thread_stats.recache_from_extstore);;
        append_stat("miss_from_extstore", add_stats, c, "%llu", (unsigned long long)thread_stats.miss_from_extstore);;
        append_stat("badcrc_from_extstore", add_stats, c, "%llu", (unsigned long long)thread_stats.badcrc_from_extstore);;
    }
    append_stat("delete_misses", add_stats, c, "%llu", (unsigned long long)thread_stats.delete_misses);;
    append_stat("delete_hits", add_stats, c, "%llu", (unsigned long long)slab_stats.delete_hits);;
    append_stat("incr_misses", add_stats, c, "%llu", (unsigned long long)thread_stats.incr_misses);;
    append_stat("incr_hits", add_stats, c, "%llu", (unsigned long long)slab_stats.incr_hits);;
    append_stat("decr_misses", add_stats, c, "%llu", (unsigned long long)thread_stats.decr_misses);;
    append_stat("decr_hits", add_stats, c, "%llu", (unsigned long long)slab_stats.decr_hits);;
    append_stat("cas_misses", add_stats, c, "%llu", (unsigned long long)thread_stats.cas_misses);;
    append_stat("cas_hits", add_stats, c, "%llu", (unsigned long long)slab_stats.cas_hits);;
    append_stat("cas_badval", add_stats, c, "%llu", (unsigned long long)slab_stats.cas_badval);;
    append_stat("touch_hits", add_stats, c, "%llu", (unsigned long long)slab_stats.touch_hits);;
    append_stat("touch_misses", add_stats, c, "%llu", (unsigned long long)thread_stats.touch_misses);;
    append_stat("store_too_large", add_stats, c, "%llu", (unsigned long long)thread_stats.store_too_large);;
    append_stat("store_no_memory", add_stats, c, "%llu", (unsigned long long)thread_stats.store_no_memory);;
    append_stat("auth_cmds", add_stats, c, "%llu", (unsigned long long)thread_stats.auth_cmds);;
    append_stat("auth_errors", add_stats, c, "%llu", (unsigned long long)thread_stats.auth_errors);;
    if (settings.idle_timeout) {
        append_stat("idle_kicks", add_stats, c, "%llu", (unsigned long long)thread_stats.idle_kicks);;
    }
    append_stat("bytes_read", add_stats, c, "%llu", (unsigned long long)thread_stats.bytes_read);;
    append_stat("bytes_written", add_stats, c, "%llu", (unsigned long long)thread_stats.bytes_written);;
    append_stat("limit_maxbytes", add_stats, c, "%llu", (unsigned long long)settings.maxbytes);;
    append_stat("accepting_conns", add_stats, c, "%u", stats_state.accepting_conns);;
    append_stat("listen_disabled_num", add_stats, c, "%llu", (unsigned long long)stats.listen_disabled_num);;
    append_stat("time_in_listen_disabled_us", add_stats, c, "%llu", stats.time_in_listen_disabled_us);;
    append_stat("threads", add_stats, c, "%d", settings.num_threads);;
    append_stat("conn_yields", add_stats, c, "%llu", (unsigned long long)thread_stats.conn_yields);;
    append_stat("hash_power_level", add_stats, c, "%u", stats_state.hash_power_level);;
    append_stat("hash_bytes", add_stats, c, "%llu", (unsigned long long)stats_state.hash_bytes);;
    append_stat("hash_is_expanding", add_stats, c, "%u", stats_state.hash_is_expanding);;
    if (settings.slab_reassign) {
        const char *busy_status = stats.slab_reassign_last_busy_status;
        if (!busy_status) {
            busy_status = "none";
        }
        append_stat("slab_reassign_rescues", add_stats, c, "%llu", stats.slab_reassign_rescues);;
        append_stat("slab_reassign_chunk_rescues", add_stats, c, "%llu", stats.slab_reassign_chunk_rescues);;
        append_stat("slab_reassign_inline_reclaim", add_stats, c, "%llu", stats.slab_reassign_inline_reclaim);;
        append_stat("slab_reassign_busy_items", add_stats, c, "%llu", stats.slab_reassign_busy_items);;
        append_stat("slab_reassign_busy_deletes", add_stats, c, "%llu", stats.slab_reassign_busy_deletes);;
        append_stat("slab_reassign_busy_nomem", add_stats, c, "%llu", stats.slab_reassign_busy_nomem);;
        append_stat("slab_reassign_last_busy_status", add_stats, c, "%s", busy_status);;
        append_stat("slab_reassign_running", add_stats, c, "%u", stats_state.slab_reassign_running);;
        append_stat("slabs_moved", add_stats, c, "%llu", stats.slabs_moved);;
    }
    if (settings.lru_crawler) {
        append_stat("lru_crawler_running", add_stats, c, "%u", stats_state.lru_crawler_running);;
        append_stat("lru_crawler_starts", add_stats, c, "%u", stats.lru_crawler_starts);;
    }
    if (settings.lru_maintainer_thread) {
        append_stat("lru_maintainer_juggles", add_stats, c, "%llu", (unsigned long long)stats.lru_maintainer_juggles);;
    }
    append_stat("malloc_fails", add_stats, c, "%llu", (unsigned long long)stats.malloc_fails);;
    append_stat("log_worker_dropped", add_stats, c, "%llu", (unsigned long long)stats.log_worker_dropped);;
    append_stat("log_worker_written", add_stats, c, "%llu", (unsigned long long)stats.log_worker_written);;
    append_stat("log_watcher_skipped", add_stats, c, "%llu", (unsigned long long)stats.log_watcher_skipped);;
    append_stat("log_watcher_sent", add_stats, c, "%llu", (unsigned long long)stats.log_watcher_sent);;
    append_stat("log_watchers", add_stats, c, "%llu", (unsigned long long)stats_state.log_watchers);;
    STATS_UNLOCK();
    storage_stats(add_stats, c);
    proxy_stats(settings.proxy_ctx, add_stats, c);
    if (settings.ssl_enabled) {
        if (settings.ssl_session_cache) {
            append_stat("ssl_new_sessions", add_stats, c, "%llu", (unsigned long long)stats.ssl_new_sessions);;
        }
        append_stat("ssl_handshake_errors", add_stats, c, "%llu", (unsigned long long)stats.ssl_handshake_errors);;
        append_stat("ssl_proto_errors", add_stats, c, "%llu", (unsigned long long)stats.ssl_proto_errors);;
        append_stat("time_since_server_cert_refresh", add_stats, c, "%u", now - settings.ssl_last_cert_refresh_time);;
    }
    append_stat("unexpected_napi_ids", add_stats, c, "%llu", (unsigned long long)stats.unexpected_napi_ids);;
    append_stat("round_robin_fallback", add_stats, c, "%llu", (unsigned long long)stats.round_robin_fallback);;
}
void process_stat_settings(ADD_STAT add_stats, void *c) {
    ((void) (0));
    append_stat("maxbytes", add_stats, c, "%llu", (unsigned long long)settings.maxbytes);;
    append_stat("maxconns", add_stats, c, "%d", settings.maxconns);;
    append_stat("tcpport", add_stats, c, "%d", settings.port);;
    append_stat("udpport", add_stats, c, "%d", settings.udpport);;
    append_stat("inter", add_stats, c, "%s", settings.inter ? settings.inter : "NULL");;
    append_stat("verbosity", add_stats, c, "%d", settings.verbose);;
    append_stat("oldest", add_stats, c, "%lu", (unsigned long)settings.oldest_live);;
    append_stat("evictions", add_stats, c, "%s", settings.evict_to_free ? "on" : "off");;
    append_stat("domain_socket", add_stats, c, "%s", settings.socketpath ? settings.socketpath : "NULL");;
    append_stat("umask", add_stats, c, "%o", settings.access);;
    append_stat("shutdown_command", add_stats, c, "%s", settings.shutdown_command ? "yes" : "no");;
    append_stat("growth_factor", add_stats, c, "%.2f", settings.factor);;
    append_stat("chunk_size", add_stats, c, "%d", settings.chunk_size);;
    append_stat("num_threads", add_stats, c, "%d", settings.num_threads);;
    append_stat("num_threads_per_udp", add_stats, c, "%d", settings.num_threads_per_udp);;
    append_stat("stat_key_prefix", add_stats, c, "%c", settings.prefix_delimiter);;
    append_stat("detail_enabled", add_stats, c, "%s", settings.detail_enabled ? "yes" : "no");;
    append_stat("reqs_per_event", add_stats, c, "%d", settings.reqs_per_event);;
    append_stat("cas_enabled", add_stats, c, "%s", settings.use_cas ? "yes" : "no");;
    append_stat("tcp_backlog", add_stats, c, "%d", settings.backlog);;
    append_stat("binding_protocol", add_stats, c, "%s", prot_text(settings.binding_protocol));;
    append_stat("auth_enabled_sasl", add_stats, c, "%s", settings.sasl ? "yes" : "no");;
    append_stat("auth_enabled_ascii", add_stats, c, "%s", settings.auth_file ? settings.auth_file : "no");;
    append_stat("item_size_max", add_stats, c, "%d", settings.item_size_max);;
    append_stat("maxconns_fast", add_stats, c, "%s", settings.maxconns_fast ? "yes" : "no");;
    append_stat("hashpower_init", add_stats, c, "%d", settings.hashpower_init);;
    append_stat("slab_reassign", add_stats, c, "%s", settings.slab_reassign ? "yes" : "no");;
    append_stat("slab_automove", add_stats, c, "%d", settings.slab_automove);;
    append_stat("slab_automove_ratio", add_stats, c, "%.2f", settings.slab_automove_ratio);;
    append_stat("slab_automove_window", add_stats, c, "%u", settings.slab_automove_window);;
    append_stat("slab_chunk_max", add_stats, c, "%d", settings.slab_chunk_size_max);;
    append_stat("lru_crawler", add_stats, c, "%s", settings.lru_crawler ? "yes" : "no");;
    append_stat("lru_crawler_sleep", add_stats, c, "%d", settings.lru_crawler_sleep);;
    append_stat("lru_crawler_tocrawl", add_stats, c, "%lu", (unsigned long)settings.lru_crawler_tocrawl);;
    append_stat("tail_repair_time", add_stats, c, "%d", settings.tail_repair_time);;
    append_stat("flush_enabled", add_stats, c, "%s", settings.flush_enabled ? "yes" : "no");;
    append_stat("dump_enabled", add_stats, c, "%s", settings.dump_enabled ? "yes" : "no");;
    append_stat("hash_algorithm", add_stats, c, "%s", settings.hash_algorithm);;
    append_stat("lru_maintainer_thread", add_stats, c, "%s", settings.lru_maintainer_thread ? "yes" : "no");;
    append_stat("lru_segmented", add_stats, c, "%s", settings.lru_segmented ? "yes" : "no");;
    append_stat("hot_lru_pct", add_stats, c, "%d", settings.hot_lru_pct);;
    append_stat("warm_lru_pct", add_stats, c, "%d", settings.warm_lru_pct);;
    append_stat("hot_max_factor", add_stats, c, "%.2f", settings.hot_max_factor);;
    append_stat("warm_max_factor", add_stats, c, "%.2f", settings.warm_max_factor);;
    append_stat("temp_lru", add_stats, c, "%s", settings.temp_lru ? "yes" : "no");;
    append_stat("temporary_ttl", add_stats, c, "%u", settings.temporary_ttl);;
    append_stat("idle_timeout", add_stats, c, "%d", settings.idle_timeout);;
    append_stat("watcher_logbuf_size", add_stats, c, "%u", settings.logger_watcher_buf_size);;
    append_stat("worker_logbuf_size", add_stats, c, "%u", settings.logger_buf_size);;
    append_stat("read_buf_mem_limit", add_stats, c, "%u", settings.read_buf_mem_limit);;
    append_stat("track_sizes", add_stats, c, "%s", item_stats_sizes_status() ? "yes" : "no");;
    append_stat("inline_ascii_response", add_stats, c, "%s", "no");;
    append_stat("ext_item_size", add_stats, c, "%u", settings.ext_item_size);;
    append_stat("ext_item_age", add_stats, c, "%u", settings.ext_item_age);;
    append_stat("ext_low_ttl", add_stats, c, "%u", settings.ext_low_ttl);;
    append_stat("ext_recache_rate", add_stats, c, "%u", settings.ext_recache_rate);;
    append_stat("ext_wbuf_size", add_stats, c, "%u", settings.ext_wbuf_size);;
    append_stat("ext_compact_under", add_stats, c, "%u", settings.ext_compact_under);;
    append_stat("ext_drop_under", add_stats, c, "%u", settings.ext_drop_under);;
    append_stat("ext_max_sleep", add_stats, c, "%u", settings.ext_max_sleep);;
    append_stat("ext_max_frag", add_stats, c, "%.2f", settings.ext_max_frag);;
    append_stat("slab_automove_freeratio", add_stats, c, "%.3f", settings.slab_automove_freeratio);;
    append_stat("ext_drop_unread", add_stats, c, "%s", settings.ext_drop_unread ? "yes" : "no");;
    append_stat("ssl_enabled", add_stats, c, "%s", settings.ssl_enabled ? "yes" : "no");;
    append_stat("ssl_chain_cert", add_stats, c, "%s", settings.ssl_chain_cert);;
    append_stat("ssl_key", add_stats, c, "%s", settings.ssl_key);;
    append_stat("ssl_verify_mode", add_stats, c, "%d", settings.ssl_verify_mode);;
    append_stat("ssl_keyformat", add_stats, c, "%d", settings.ssl_keyformat);;
    append_stat("ssl_ciphers", add_stats, c, "%s", settings.ssl_ciphers ? settings.ssl_ciphers : "NULL");;
    append_stat("ssl_ca_cert", add_stats, c, "%s", settings.ssl_ca_cert ? settings.ssl_ca_cert : "NULL");;
    append_stat("ssl_wbuf_size", add_stats, c, "%u", settings.ssl_wbuf_size);;
    append_stat("ssl_session_cache", add_stats, c, "%s", settings.ssl_session_cache ? "yes" : "no");;
    append_stat("ssl_kernel_tls", add_stats, c, "%s", settings.ssl_kernel_tls ? "yes" : "no");;
    append_stat("ssl_min_version", add_stats, c, "%s", ssl_proto_text(settings.ssl_min_version));;
    append_stat("proxy_enabled", add_stats, c, "%s", settings.proxy_enabled ? "yes" : "no");;
    append_stat("proxy_uring_enabled", add_stats, c, "%s", settings.proxy_uring ? "yes" : "no");;
    append_stat("num_napi_ids", add_stats, c, "%d", settings.num_napi_ids);;
    append_stat("memory_file", add_stats, c, "%s", settings.memory_file);;
    append_stat("client_flags_size", add_stats, c, "%d", sizeof(client_flags_t));;
}
static int nz_strcmp(int nzlength, const char *nz, const char *z) {
    int zlength=strlen(z);
    return (zlength == nzlength) && (strncmp(nz, z, zlength) == 0) ? 0 : -1;
}
bool get_stats(const char *stat_type, int nkey, ADD_STAT add_stats, void *c) {
    bool ret = true;
    if (add_stats != ((void *)0)) {
        if (!stat_type) {
            STATS_LOCK();
            append_stat("bytes", add_stats, c, "%llu", (unsigned long long)stats_state.curr_bytes);;
            append_stat("curr_items", add_stats, c, "%llu", (unsigned long long)stats_state.curr_items);;
            append_stat("total_items", add_stats, c, "%llu", (unsigned long long)stats.total_items);;
            STATS_UNLOCK();
            append_stat("slab_global_page_pool", add_stats, c, "%u", global_page_pool_size(((void *)0)));;
            item_stats_totals(add_stats, c);
        } else if (nz_strcmp(nkey, stat_type, "items") == 0) {
            item_stats(add_stats, c);
        } else if (nz_strcmp(nkey, stat_type, "slabs") == 0) {
            slabs_stats(add_stats, c);
        } else if (nz_strcmp(nkey, stat_type, "sizes") == 0) {
            item_stats_sizes(add_stats, c);
        } else {
            ret = false;
        }
    } else {
        ret = false;
    }
    return ret;
}
static inline void get_conn_text(const conn *c, const int af,
                char* addr, struct sockaddr *sock_addr) {
    char addr_text[4096];
    addr_text[0] = '\0';
    const char *protoname = "?";
    unsigned short port = 0;
    switch (af) {
        case 2:
            (void) inet_ntop(af,
                    &((struct sockaddr_in *)sock_addr)->sin_addr,
                    addr_text,
                    sizeof(addr_text) - 1);
            port = __bswap_16 (((struct sockaddr_in *)sock_addr)->sin_port);
            protoname = (c->transport == udp_transport) ? "udp" : "tcp";
            break;
        case 10:
            addr_text[0] = '[';
            addr_text[1] = '\0';
            if (inet_ntop(af,
                    &((struct sockaddr_in6 *)sock_addr)->sin6_addr,
                    addr_text + 1,
                    sizeof(addr_text) - 2)) {
                strncat(addr_text, "]", 2);
            }
            port = __bswap_16 (((struct sockaddr_in6 *)sock_addr)->sin6_port);
            protoname = (c->transport == udp_transport) ? "udp6" : "tcp6";
            break;
        case 1:
        {
            size_t pathlen = 0;
            pathlen = sizeof(((struct sockaddr_un *)sock_addr)->sun_path);
            if (4096 <= pathlen) {
                pathlen = 4096 - 1;
            }
            strncpy(addr_text,
                    ((struct sockaddr_un *)sock_addr)->sun_path,
                    pathlen);
            addr_text[pathlen] = '\0';
            protoname = "unix";
        }
            break;
    }
    if (strlen(addr_text) < 2) {
        snprintf(addr_text, 4096, "<AF %d>", af);
    }
    if (port) {
        snprintf(addr, 4096 + 11, "%s:%s:%u", protoname, addr_text, port);
    } else {
        snprintf(addr, 4096 + 11, "%s:%s", protoname, addr_text);
    }
}
static void conn_to_str(const conn *c, char *addr, char *svr_addr) {
    if (!c) {
        memcpy(addr, "<null>", 6);
    } else if (c->state == conn_closed) {
        memcpy(addr, "<closed>", 8);
    } else {
        struct sockaddr_in6 local_addr;
        struct sockaddr *sock_addr = (void *)&c->request_addr;
        if (c->state == conn_listening ||
                ((c->transport == udp_transport) &&
                 c->state == conn_read)) {
            memset(&local_addr, 0, sizeof(local_addr));
            socklen_t local_addr_len = sizeof(local_addr);
            if (getsockname(c->sfd,
                        (struct sockaddr *)&local_addr,
                        &local_addr_len) == 0) {
                sock_addr = (struct sockaddr *)&local_addr;
            }
        }
        get_conn_text(c, sock_addr->sa_family, addr, sock_addr);
        if (c->state != conn_listening && !((c->transport == udp_transport) &&
                 c->state == conn_read)) {
            struct sockaddr_storage svr_sock_addr;
            memset(&svr_sock_addr, 0, sizeof(svr_sock_addr));
            socklen_t svr_addr_len = sizeof(svr_sock_addr);
            getsockname(c->sfd, (struct sockaddr *)&svr_sock_addr, &svr_addr_len);
            get_conn_text(c, svr_sock_addr.ss_family, svr_addr, (struct sockaddr *)&svr_sock_addr);
        }
    }
}
void process_stats_conns(ADD_STAT add_stats, void *c) {
    int i;
    char key_str[128];
    char val_str[128];
    size_t extras_len = sizeof(":unix:") + sizeof("65535");
    char addr[4096 + extras_len];
    char svr_addr[4096 + extras_len];
    memset(addr, 0, sizeof(addr));
    memset(svr_addr, 0, sizeof(svr_addr));
    int klen = 0, vlen = 0;
    ((void) (0));
    for (i = 0; i < max_fds; i++) {
        if (conns[i]) {
            if ((conns[i]->transport == udp_transport)) {
                klen = snprintf(key_str, 128, "%d:%s", i, "UDP"); vlen = snprintf(val_str, 128, "%s", "UDP"); add_stats(key_str, klen, val_str, vlen, c);;
            }
            if (conns[i]->state != conn_closed) {
                conn *sc = conns[i];
                conn_to_str(sc, addr, svr_addr);
                klen = snprintf(key_str, 128, "%d:%s", i, "addr"); vlen = snprintf(val_str, 128, "%s", addr); add_stats(key_str, klen, val_str, vlen, c);;
                if (sc->state != conn_listening &&
                    !((sc->transport == udp_transport) && sc->state == conn_read)) {
                    klen = snprintf(key_str, 128, "%d:%s", i, "listen_addr"); vlen = snprintf(val_str, 128, "%s", svr_addr); add_stats(key_str, klen, val_str, vlen, c);;
                }
                klen = snprintf(key_str, 128, "%d:%s", i, "state"); vlen = snprintf(val_str, 128, "%s", state_text(sc->state)); add_stats(key_str, klen, val_str, vlen, c);;
                if (sc->resps_suspended) {
                    klen = snprintf(key_str, 128, "%d:%s", i, "resps_waiting"); vlen = snprintf(val_str, 128, "%d", sc->resps_suspended); add_stats(key_str, klen, val_str, vlen, c);;
                }
                klen = snprintf(key_str, 128, "%d:%s", i, "secs_since_last_cmd"); vlen = snprintf(val_str, 128, "%d", current_time - sc->last_cmd_time); add_stats(key_str, klen, val_str, vlen, c);;
            }
        }
    }
}
item* limited_get(const char *key, size_t nkey, LIBEVENT_THREAD *t, uint32_t exptime, bool should_touch, bool do_update, bool *overflow) {
    item *it;
    if (should_touch) {
        it = item_touch(key, nkey, exptime, t);
    } else {
        it = item_get(key, nkey, t, do_update);
    }
    if (it && it->refcount > 60000) {
        item_remove(it);
        it = ((void *)0);
        *overflow = true;
    } else {
        *overflow = false;
    }
    return it;
}
item* limited_get_locked(const char *key, size_t nkey, LIBEVENT_THREAD *t, bool do_update, uint32_t *hv, bool *overflow) {
    item *it;
    it = item_get_locked(key, nkey, t, do_update, hv);
    if (it && it->refcount > 60000) {
        do_item_remove(it);
        it = ((void *)0);
        item_unlock(*hv);
        *overflow = true;
    } else {
        *overflow = false;
    }
    return it;
}
enum delta_result_type do_add_delta(LIBEVENT_THREAD *t, const char *key, const size_t nkey,
                                    const bool incr, const int64_t delta,
                                    char *buf, uint64_t *cas,
                                    const uint32_t hv,
                                    item **it_ret) {
    char *ptr;
    uint64_t value;
    int res;
    item *it;
    it = do_item_get(key, nkey, hv, t, false);
    if (!it) {
        return DELTA_ITEM_NOT_FOUND;
    }
    if (it->nbytes <= 2 || (it->it_flags & (32|128)) != 0) {
        do_item_remove(it);
        return NON_NUMERIC;
    }
    if (cas != ((void *)0) && *cas != 0 && (((it)->it_flags & 2) ? (it)->data->cas : (uint64_t)0) != *cas) {
        do_item_remove(it);
        return DELTA_ITEM_CAS_MISMATCH;
    }
    ptr = ((char*) &((it)->data) + (it)->nkey + 1 + (((it)->it_flags & 256) ? sizeof(client_flags_t) : 0) + (((it)->it_flags & 2) ? sizeof(uint64_t) : 0));
    if (!safe_strtoull(ptr, &value)) {
        do_item_remove(it);
        return NON_NUMERIC;
    }
    if (incr) {
        value += delta;
    } else {
        if(delta > value) {
            value = 0;
        } else {
            value -= delta;
        }
    }
    pthread_mutex_lock(&t->stats.mutex);
    if (incr) {
        t->stats.slab_stats[((it)->slabs_clsid & ~(3<<6))].incr_hits++;
    } else {
        t->stats.slab_stats[((it)->slabs_clsid & ~(3<<6))].decr_hits++;
    }
    pthread_mutex_unlock(&t->stats.mutex);
    itoa_u64(value, buf);
    res = strlen(buf);
    if (res + 2 <= it->nbytes && it->refcount == 2) {
        item_stats_sizes_remove(it);
        { if ((it)->it_flags & 2) { (it)->data->cas = (settings.use_cas) ? get_cas_id() : 0; } };
        item_stats_sizes_add(it);
        memcpy(((char*) &((it)->data) + (it)->nkey + 1 + (((it)->it_flags & 256) ? sizeof(client_flags_t) : 0) + (((it)->it_flags & 2) ? sizeof(uint64_t) : 0)), buf, res);
        memset(((char*) &((it)->data) + (it)->nkey + 1 + (((it)->it_flags & 256) ? sizeof(client_flags_t) : 0) + (((it)->it_flags & 2) ? sizeof(uint64_t) : 0)) + res, ' ', it->nbytes - res - 2);
        do_item_update(it);
    } else if (it->refcount > 1) {
        item *new_it;
        client_flags_t flags;
        { if ((it)->it_flags & 256) { flags = *((client_flags_t *)((char*) &(((it))->data) + ((it))->nkey + 1 + ((((it))->it_flags & 2) ? sizeof(uint64_t) : 0))); } else { flags = 0; } };
        new_it = do_item_alloc((((char*)&((it)->data)) + (((it)->it_flags & 2) ? sizeof(uint64_t) : 0)), it->nkey, flags, it->exptime, res + 2);
        if (new_it == 0) {
            do_item_remove(it);
            return EOM;
        }
        memcpy(((char*) &((new_it)->data) + (new_it)->nkey + 1 + (((new_it)->it_flags & 256) ? sizeof(client_flags_t) : 0) + (((new_it)->it_flags & 2) ? sizeof(uint64_t) : 0)), buf, res);
        memcpy(((char*) &((new_it)->data) + (new_it)->nkey + 1 + (((new_it)->it_flags & 256) ? sizeof(client_flags_t) : 0) + (((new_it)->it_flags & 2) ? sizeof(uint64_t) : 0)) + res, "\r\n", 2);
        item_replace(it, new_it, hv, (settings.use_cas) ? get_cas_id() : 0);
        { if ((it)->it_flags & 2) { (it)->data->cas = (settings.use_cas) ? (((new_it)->it_flags & 2) ? (new_it)->data->cas : (uint64_t)0) : 0; } };
        do_item_remove(new_it);
    } else {
        if (settings.verbose) {
            fprintf(stderr, "Tried to do incr/decr on invalid item\n");
        }
        if (it->refcount == 1)
            do_item_remove(it);
        return DELTA_ITEM_NOT_FOUND;
    }
    if (cas) {
        *cas = (((it)->it_flags & 2) ? (it)->data->cas : (uint64_t)0);
    }
    if (it_ret != ((void *)0)) {
        *it_ret = it;
    } else {
        do_item_remove(it);
    }
    return OK;
}
static int try_read_command_negotiate(conn *c) {
    ((void) (0));
    ((void) (0));
    ((void) (0));
    ((void) (0));
    if ((unsigned char)c->rbuf[0] == (unsigned char)PROTOCOL_BINARY_REQ) {
        c->protocol = binary_prot;
        c->try_read_command = try_read_command_binary;
    } else {
        c->protocol = ascii_prot;
        c->try_read_command = try_read_command_ascii;
    }
    if (settings.verbose > 1) {
        fprintf(stderr, "%d: Client using the %s protocol\n", c->sfd,
                prot_text(c->protocol));
    }
    return c->try_read_command(c);
}
static int try_read_command_udp(conn *c) {
    ((void) (0));
    ((void) (0));
    ((void) (0));
    if ((unsigned char)c->rbuf[0] == (unsigned char)PROTOCOL_BINARY_REQ) {
        c->protocol = binary_prot;
        return try_read_command_binary(c);
    } else {
        c->protocol = ascii_prot;
        return try_read_command_ascii(c);
    }
}
static enum try_read_result try_read_udp(conn *c) {
    int res;
    ((void) (0));
    c->request_addr_size = sizeof(c->request_addr);
    res = recvfrom(c->sfd, c->rbuf, c->rsize,
                   0, (struct sockaddr *)&c->request_addr,
                   &c->request_addr_size);
    if (res > 8) {
        unsigned char *buf = (unsigned char *)c->rbuf;
        pthread_mutex_lock(&c->thread->stats.mutex);
        c->thread->stats.bytes_read += res;
        pthread_mutex_unlock(&c->thread->stats.mutex);
        c->request_id = buf[0] * 256 + buf[1];
        if (buf[4] != 0 || buf[5] != 1) {
            return READ_NO_DATA_RECEIVED;
        }
        res -= 8;
        memmove(c->rbuf, c->rbuf + 8, res);
        c->rbytes = res;
        c->rcurr = c->rbuf;
        return READ_DATA_RECEIVED;
    }
    return READ_NO_DATA_RECEIVED;
}
static enum try_read_result try_read_network(conn *c) {
    enum try_read_result gotdata = READ_NO_DATA_RECEIVED;
    int res;
    int num_allocs = 0;
    ((void) (0));
    if (c->rcurr != c->rbuf) {
        if (c->rbytes > 0)
            memmove(c->rbuf, c->rcurr, c->rbytes);
        c->rcurr = c->rbuf;
    }
    while (1) {
        if (c->rbytes >= c->rsize && c->rbuf_malloced) {
            if (num_allocs == 4) {
                return gotdata;
            }
            ++num_allocs;
            char *new_rbuf = realloc(c->rbuf, c->rsize * 2);
            if (!new_rbuf) {
                STATS_LOCK();
                stats.malloc_fails++;
                STATS_UNLOCK();
                if (settings.verbose > 0) {
                    fprintf(stderr, "Couldn't realloc input buffer\n");
                }
                c->rbytes = 0;
                if (!resp_start(c)) {
                    return READ_ERROR;
                } else {
                    out_of_memory(c, "SERVER_ERROR out of memory reading request");
                    c->close_after_write = true;
                    return READ_MEMORY_ERROR;
                }
            }
            c->rcurr = c->rbuf = new_rbuf;
            c->rsize *= 2;
        }
        int avail = c->rsize - c->rbytes;
        res = c->read(c, c->rbuf + c->rbytes, avail);
        if (res > 0) {
            pthread_mutex_lock(&c->thread->stats.mutex);
            c->thread->stats.bytes_read += res;
            pthread_mutex_unlock(&c->thread->stats.mutex);
            gotdata = READ_DATA_RECEIVED;
            c->rbytes += res;
            if (res == avail && c->rbuf_malloced) {
                continue;
            } else {
                break;
            }
        }
        if (res == 0) {
            c->close_reason = NORMAL_CLOSE;
            return READ_ERROR;
        }
        if (res == -1) {
            if ((*__errno_location ()) == 11 || (*__errno_location ()) == 11) {
                break;
            }
            return READ_ERROR;
        }
    }
    return gotdata;
}
static bool update_event(conn *c, const int new_flags) {
    ((void) (0));
    struct event_base *base = c->event.ev_base;
    if (c->ev_flags == new_flags)
        return true;
    if (event_del(&c->event) == -1) return false;
    event_set(&c->event, c->sfd, new_flags, event_handler, (void *)c);
    event_base_set(base, &c->event);
    c->ev_flags = new_flags;
    if (event_add(&c->event, 0) == -1) return false;
    return true;
}
void do_accept_new_conns(const bool do_accept) {
    conn *next;
    for (next = listen_conn; next; next = next->next) {
        if (do_accept) {
            update_event(next, 0x02 | 0x10);
            if (listen(next->sfd, settings.backlog) != 0) {
                perror("listen");
            }
        }
        else {
            update_event(next, 0);
            if (listen(next->sfd, 0) != 0) {
                perror("listen");
            }
        }
    }
    if (do_accept) {
        struct timeval maxconns_exited;
        uint64_t elapsed_us;
        gettimeofday(&maxconns_exited,((void *)0));
        STATS_LOCK();
        elapsed_us =
            (maxconns_exited.tv_sec - stats.maxconns_entered.tv_sec) * 1000000
            + (maxconns_exited.tv_usec - stats.maxconns_entered.tv_usec);
        stats.time_in_listen_disabled_us += elapsed_us;
        stats_state.accepting_conns = true;
        STATS_UNLOCK();
    } else {
        STATS_LOCK();
        stats_state.accepting_conns = false;
        gettimeofday(&stats.maxconns_entered,((void *)0));
        stats.listen_disabled_num++;
        STATS_UNLOCK();
        allow_new_conns = false;
        maxconns_handler(-42, 0, 0);
    }
}
static int _transmit_pre(conn *c, struct iovec *iovs, int iovused, bool one_resp) {
    mc_resp *resp = c->resp_head;
    while (resp && iovused + resp->iovcnt < 1024 -1) {
        if (resp->skip) {
            resp = resp->next;
            continue;
        }
        if (resp->chunked_data_iov) {
            item_chunk *ch = (item_chunk *)((char*) &(((item *)resp->iov[resp->chunked_data_iov].iov_base)->data) + ((item *)resp->iov[resp->chunked_data_iov].iov_base)->nkey + 1 + ((((item *)resp->iov[resp->chunked_data_iov].iov_base)->it_flags & 256) ? sizeof(client_flags_t) : 0) + ((((item *)resp->iov[resp->chunked_data_iov].iov_base)->it_flags & 2) ? sizeof(uint64_t) : 0));
            int x;
            for (x = 0; x < resp->iovcnt; x++) {
                if (x == resp->chunked_data_iov) {
                    int done = resp->chunked_total - resp->iov[x].iov_len;
                    int todo = resp->iov[x].iov_len;
                    while (ch && todo > 0 && iovused < 1024 -1) {
                        int skip = 0;
                        if (!ch->used) {
                            ch = ch->next;
                            continue;
                        }
                        if (done >= ch->used) {
                            done -= ch->used;
                            ch = ch->next;
                            continue;
                        } else if (done) {
                            skip = done;
                            done = 0;
                        }
                        iovs[iovused].iov_base = ch->data + skip;
                        iovs[iovused].iov_len = ch->used - skip > todo ? todo : ch->used - skip;
                        iovused++;
                        todo -= ch->used - skip;
                        ch = ch->next;
                    }
                } else {
                    iovs[iovused].iov_base = resp->iov[x].iov_base;
                    iovs[iovused].iov_len = resp->iov[x].iov_len;
                    iovused++;
                }
                if (iovused >= 1024 -1)
                    break;
            }
        } else {
            memcpy(&iovs[iovused], resp->iov, sizeof(struct iovec)*resp->iovcnt);
            iovused += resp->iovcnt;
        }
        resp = resp->next;
        if (one_resp)
            break;
    }
    return iovused;
}
static void _transmit_post(conn *c, ssize_t res) {
    mc_resp *resp = c->resp_head;
    while (resp) {
        int x;
        if (resp->skip) {
            resp = resp_finish(c, resp);
            continue;
        }
        if (res >= resp->tosend) {
            res -= resp->tosend;
            resp = resp_finish(c, resp);
            continue;
        }
        for (x = 0; x < resp->iovcnt; x++) {
            struct iovec *iov = &resp->iov[x];
            if (res >= iov->iov_len) {
                resp->tosend -= iov->iov_len;
                res -= iov->iov_len;
                iov->iov_len = 0;
            } else {
                if (!resp->chunked_data_iov || x != resp->chunked_data_iov) {
                    iov->iov_base = (char *)iov->iov_base + res;
                }
                iov->iov_len -= res;
                resp->tosend -= res;
                res = 0;
                break;
            }
        }
        if (resp->tosend == 0) {
            resp = resp_finish(c, resp);
        } else {
            break;
        }
    }
}
static enum transmit_result transmit(conn *c) {
    ((void) (0));
    struct iovec iovs[1024];
    struct msghdr msg;
    int iovused = 0;
    memset(&msg, 0, sizeof(struct msghdr));
    msg.msg_iov = iovs;
    iovused = _transmit_pre(c, iovs, iovused, false);
    if (iovused == 0) {
        _transmit_post(c, 0);
        return TRANSMIT_COMPLETE;
    }
    ssize_t res;
    msg.msg_iovlen = iovused;
    res = c->sendmsg(c, &msg, 0);
    if (res >= 0) {
        pthread_mutex_lock(&c->thread->stats.mutex);
        c->thread->stats.bytes_written += res;
        pthread_mutex_unlock(&c->thread->stats.mutex);
        _transmit_post(c, res);
        if (c->resp_head) {
            return TRANSMIT_INCOMPLETE;
        } else {
            return TRANSMIT_COMPLETE;
        }
    }
    if (res == -1 && ((*__errno_location ()) == 11 || (*__errno_location ()) == 11)) {
        if (!update_event(c, 0x04 | 0x10)) {
            if (settings.verbose > 0)
                fprintf(stderr, "Couldn't update event\n");
            conn_set_state(c, conn_closing);
            return TRANSMIT_HARD_ERROR;
        }
        return TRANSMIT_SOFT_ERROR;
    }
    if (settings.verbose > 0)
        perror("Failed to write, and not due to blocking");
    conn_set_state(c, conn_closing);
    return TRANSMIT_HARD_ERROR;
}
static void build_udp_header(unsigned char *hdr, mc_resp *resp) {
    if (!resp->udp_total) {
        uint32_t total;
        total = resp->tosend / 1392;
        if (resp->tosend % 1392)
            total++;
        if (total > (0x7fff * 2 + 1)) {
            total = (0x7fff * 2 + 1);
        }
        resp->udp_total = total;
    }
    *hdr++ = resp->request_id / 256;
    *hdr++ = resp->request_id % 256;
    *hdr++ = resp->udp_sequence / 256;
    *hdr++ = resp->udp_sequence % 256;
    *hdr++ = resp->udp_total / 256;
    *hdr++ = resp->udp_total % 256;
    *hdr++ = 0;
    *hdr++ = 0;
    resp->udp_sequence++;
}
static enum transmit_result transmit_udp(conn *c) {
    ((void) (0));
    struct iovec iovs[1024];
    struct msghdr msg;
    mc_resp *resp;
    int iovused = 0;
    unsigned char udp_hdr[8];
    resp = c->resp_head;
    if (!resp) {
        return TRANSMIT_COMPLETE;
    }
    if (resp->skip) {
        resp = resp_finish(c, resp);
        return TRANSMIT_INCOMPLETE;
    }
    memset(&msg, 0, sizeof(struct msghdr));
    msg.msg_iov = iovs;
    msg.msg_name = &resp->request_addr;
    msg.msg_namelen = resp->request_addr_size;
    iovs[0].iov_base = (void *)udp_hdr;
    iovs[0].iov_len = 8;
    build_udp_header(udp_hdr, resp);
    iovused++;
    iovused = _transmit_pre(c, iovs, iovused, true);
    {
        int x = 0;
        int len = 0;
        for (x = 0; x < iovused; x++) {
            if (len + iovs[x].iov_len >= 1400) {
                iovs[x].iov_len = 1400 - len;
                x++;
                break;
            } else {
                len += iovs[x].iov_len;
            }
        }
        iovused = x;
    }
    ssize_t res;
    msg.msg_iovlen = iovused;
    res = sendmsg(c->sfd, &msg, 0);
    if (res >= 0) {
        pthread_mutex_lock(&c->thread->stats.mutex);
        c->thread->stats.bytes_written += res;
        pthread_mutex_unlock(&c->thread->stats.mutex);
        res -= 8;
        _transmit_post(c, res);
        if (c->resp_head) {
            return TRANSMIT_INCOMPLETE;
        } else {
            return TRANSMIT_COMPLETE;
        }
    }
    if (res == -1 && ((*__errno_location ()) == 11 || (*__errno_location ()) == 11)) {
        if (!update_event(c, 0x04 | 0x10)) {
            if (settings.verbose > 0)
                fprintf(stderr, "Couldn't update event\n");
            conn_set_state(c, conn_closing);
            return TRANSMIT_HARD_ERROR;
        }
        return TRANSMIT_SOFT_ERROR;
    }
    if (settings.verbose > 0)
        perror("Failed to write, and not due to blocking");
    conn_set_state(c, conn_read);
    return TRANSMIT_HARD_ERROR;
}
static int read_into_chunked_item(conn *c) {
    int total = 0;
    int res;
    ((void) (0));
    while (c->rlbytes > 0) {
        item_chunk *ch = (item_chunk *)c->ritem;
        if (ch->size == ch->used) {
            if (ch->next) {
                c->ritem = (char *) ch->next;
            } else {
                c->ritem = (char *) do_item_alloc_chunk(ch, c->rlbytes +
                       ((c->protocol == binary_prot) ? 2 : 0));
                if (!c->ritem) {
                    total = -2;
                    break;
                }
                continue;
            }
        }
        int unused = ch->size - ch->used;
        if (c->rbytes > 0) {
            total = 0;
            int tocopy = c->rbytes > c->rlbytes ? c->rlbytes : c->rbytes;
            tocopy = tocopy > unused ? unused : tocopy;
            if (c->ritem != c->rcurr) {
                memmove(ch->data + ch->used, c->rcurr, tocopy);
            }
            total += tocopy;
            c->rlbytes -= tocopy;
            c->rcurr += tocopy;
            c->rbytes -= tocopy;
            ch->used += tocopy;
            if (c->rlbytes == 0) {
                break;
            }
        } else {
            res = c->read(c, ch->data + ch->used,
                    (unused > c->rlbytes ? c->rlbytes : unused));
            if (res > 0) {
                pthread_mutex_lock(&c->thread->stats.mutex);
                c->thread->stats.bytes_read += res;
                pthread_mutex_unlock(&c->thread->stats.mutex);
                ch->used += res;
                total += res;
                c->rlbytes -= res;
            } else {
                total = res;
                break;
            }
        }
    }
    if (c->rlbytes == 0 && c->protocol == binary_prot && total >= 0) {
        item_chunk *ch = (item_chunk *)c->ritem;
        if (ch->size - ch->used < 2) {
            c->ritem = (char *) do_item_alloc_chunk(ch, 2);
            if (!c->ritem) {
                total = -2;
            }
        }
    }
    return total;
}
static void drive_machine(conn *c) {
    bool stop = false;
    int sfd;
    socklen_t addrlen;
    struct sockaddr_storage addr;
    int nreqs = settings.reqs_per_event;
    int res;
    const char *str;
    static int use_accept4 = 1;
    ((void) (0));
    while (!stop) {
        switch(c->state) {
        case conn_listening:
            addrlen = sizeof(addr);
            if (use_accept4) {
                sfd = accept4(c->sfd, (struct sockaddr *)&addr, &addrlen, SOCK_NONBLOCK);
            } else {
                sfd = accept(c->sfd, (struct sockaddr *)&addr, &addrlen);
            }
            if (sfd == -1) {
                if (use_accept4 && (*__errno_location ()) == 38) {
                    use_accept4 = 0;
                    continue;
                }
                perror(use_accept4 ? "accept4()" : "accept()");
                if ((*__errno_location ()) == 11 || (*__errno_location ()) == 11) {
                    stop = true;
                } else if ((*__errno_location ()) == 24) {
                    if (settings.verbose > 0)
                        fprintf(stderr, "Too many open connections\n");
                    accept_new_conns(false);
                    stop = true;
                } else {
                    perror("accept()");
                    stop = true;
                }
                break;
            }
            if (!use_accept4) {
                if (fcntl(sfd, 4, fcntl(sfd, 3) | 04000) < 0) {
                    perror("setting O_NONBLOCK");
                    close(sfd);
                    break;
                }
            }
            bool reject;
            if (settings.maxconns_fast) {
                reject = sfd >= settings.maxconns - 1;
                if (reject) {
                    STATS_LOCK();
                    stats.rejected_conns++;
                    STATS_UNLOCK();
                }
            } else {
                reject = false;
            }
            if (reject) {
                str = "ERROR Too many open connections\r\n";
                res = write(sfd, str, strlen(str));
                close(sfd);
            } else {
                bool fail = false;
                void *ssl_v = ssl_accept(c, sfd, &fail);
                if (fail) {
                    close(sfd);
                    break;
                }
                dispatch_conn_new(sfd, conn_new_cmd, 0x02 | 0x10,
                                     0, c->transport, ssl_v, c->tag, c->protocol);
            }
            stop = true;
            break;
        case conn_waiting:
            rbuf_release(c);
            if (!update_event(c, 0x02 | 0x10)) {
                if (settings.verbose > 0)
                    fprintf(stderr, "Couldn't update event\n");
                conn_set_state(c, conn_closing);
                break;
            }
            conn_set_state(c, conn_read);
            stop = true;
            break;
        case conn_read:
            if (!(c->transport == udp_transport)) {
                if (!rbuf_alloc(c)) {
                    conn_set_state(c, conn_closing);
                    break;
                }
                res = try_read_network(c);
            } else {
                res = try_read_udp(c);
            }
            switch (res) {
            case READ_NO_DATA_RECEIVED:
                conn_set_state(c, conn_waiting);
                break;
            case READ_DATA_RECEIVED:
                conn_set_state(c, conn_parse_cmd);
                break;
            case READ_ERROR:
                conn_set_state(c, conn_closing);
                break;
            case READ_MEMORY_ERROR:
                break;
            }
            break;
        case conn_parse_cmd:
            if (c->try_read_command(c) == 0) {
                if (c->resp_head) {
                    conn_set_state(c, conn_mwrite);
                } else {
                    conn_set_state(c, conn_waiting);
                }
            }
            break;
        case conn_new_cmd:
            --nreqs;
            if (nreqs >= 0) {
                reset_cmd_handler(c);
            } else if (c->resp_head) {
                conn_set_state(c, conn_mwrite);
            } else {
                pthread_mutex_lock(&c->thread->stats.mutex);
                c->thread->stats.conn_yields++;
                pthread_mutex_unlock(&c->thread->stats.mutex);
                if (c->rbytes > 0) {
                    if (!update_event(c, 0x04 | 0x10)) {
                        if (settings.verbose > 0)
                            fprintf(stderr, "Couldn't update event\n");
                        conn_set_state(c, conn_closing);
                        break;
                    }
                }
                stop = true;
            }
            break;
        case conn_nread:
            if (c->rlbytes == 0) {
                complete_nread(c);
                break;
            }
            if (c->rlbytes < 0) {
                if (settings.verbose) {
                    fprintf(stderr, "Invalid rlbytes to read: len %d\n", c->rlbytes);
                }
                conn_set_state(c, conn_closing);
                break;
            }
            if (c->item_malloced || ((((item *)c->item)->it_flags & 32) == 0) ) {
                if (c->rbytes > 0) {
                    int tocopy = c->rbytes > c->rlbytes ? c->rlbytes : c->rbytes;
                    memmove(c->ritem, c->rcurr, tocopy);
                    c->ritem += tocopy;
                    c->rlbytes -= tocopy;
                    c->rcurr += tocopy;
                    c->rbytes -= tocopy;
                    if (c->rlbytes == 0) {
                        break;
                    }
                }
                res = c->read(c, c->ritem, c->rlbytes);
                if (res > 0) {
                    pthread_mutex_lock(&c->thread->stats.mutex);
                    c->thread->stats.bytes_read += res;
                    pthread_mutex_unlock(&c->thread->stats.mutex);
                    if (c->rcurr == c->ritem) {
                        c->rcurr += res;
                    }
                    c->ritem += res;
                    c->rlbytes -= res;
                    break;
                }
            } else {
                res = read_into_chunked_item(c);
                if (res > 0)
                    break;
            }
            if (res == 0) {
                c->close_reason = NORMAL_CLOSE;
                conn_set_state(c, conn_closing);
                break;
            }
            if (res == -1 && ((*__errno_location ()) == 11 || (*__errno_location ()) == 11)) {
                if (!update_event(c, 0x02 | 0x10)) {
                    if (settings.verbose > 0)
                        fprintf(stderr, "Couldn't update event\n");
                    conn_set_state(c, conn_closing);
                    break;
                }
                stop = true;
                break;
            }
            if (res == -2) {
                out_of_memory(c, "SERVER_ERROR Out of memory during read");
                c->sbytes = c->rlbytes;
                conn_set_state(c, conn_swallow);
                break;
            }
            if (settings.verbose > 0) {
                fprintf(stderr, "Failed to read, and not due to blocking:\n"
                        "errno: %d %s \n"
                        "rcurr=%p ritem=%p rbuf=%p rlbytes=%d rsize=%d\n",
                        (*__errno_location ()), strerror((*__errno_location ())),
                        (void *)c->rcurr, (void *)c->ritem, (void *)c->rbuf,
                        (int)c->rlbytes, (int)c->rsize);
            }
            conn_set_state(c, conn_closing);
            break;
        case conn_swallow:
            if (c->sbytes <= 0) {
                conn_set_state(c, conn_new_cmd);
                break;
            }
            if (c->rbytes > 0) {
                int tocopy = c->rbytes > c->sbytes ? c->sbytes : c->rbytes;
                c->sbytes -= tocopy;
                c->rcurr += tocopy;
                c->rbytes -= tocopy;
                break;
            }
            res = c->read(c, c->rbuf, c->rsize > c->sbytes ? c->sbytes : c->rsize);
            if (res > 0) {
                pthread_mutex_lock(&c->thread->stats.mutex);
                c->thread->stats.bytes_read += res;
                pthread_mutex_unlock(&c->thread->stats.mutex);
                c->sbytes -= res;
                break;
            }
            if (res == 0) {
                c->close_reason = NORMAL_CLOSE;
                conn_set_state(c, conn_closing);
                break;
            }
            if (res == -1 && ((*__errno_location ()) == 11 || (*__errno_location ()) == 11)) {
                if (!update_event(c, 0x02 | 0x10)) {
                    if (settings.verbose > 0)
                        fprintf(stderr, "Couldn't update event\n");
                    conn_set_state(c, conn_closing);
                    break;
                }
                stop = true;
                break;
            }
            if (settings.verbose > 0)
                fprintf(stderr, "Failed to read, and not due to blocking\n");
            conn_set_state(c, conn_closing);
            break;
        case conn_write:
        case conn_mwrite:
            if (c->resps_suspended) {
                LIBEVENT_THREAD *t = c->thread;
                conn_set_state(c, conn_io_queue);
                if (t->conns_tosubmit++ > 20) {
                    thread_io_queue_submit(c->thread);
                }
                stop = true;
                break;
            }
            switch (!(c->transport == udp_transport) ? transmit(c) : transmit_udp(c)) {
            case TRANSMIT_COMPLETE:
                if (c->state == conn_mwrite) {
                    conn_release_items(c);
                    conn_set_state(c, conn_new_cmd);
                    if (c->close_after_write) {
                        conn_set_state(c, conn_closing);
                    }
                } else {
                    if (settings.verbose > 0)
                        fprintf(stderr, "Unexpected state %d\n", c->state);
                    conn_set_state(c, conn_closing);
                }
                break;
            case TRANSMIT_INCOMPLETE:
            case TRANSMIT_HARD_ERROR:
                break;
            case TRANSMIT_SOFT_ERROR:
                stop = true;
                break;
            }
            break;
        case conn_closing:
            if (!c->resps_suspended) {
                if ((c->transport == udp_transport))
                    conn_cleanup(c);
                else
                    conn_close(c);
            }
            stop = true;
            break;
        case conn_closed:
            abort();
            break;
        case conn_watch:
            stop = true;
            break;
        case conn_io_queue:
            event_del(&c->event);
            conn_set_state(c, conn_io_pending);
            stop = true;
            break;
        case conn_io_pending:
            ((void) (0));
            break;
        case conn_io_resume:
            conn_set_state(c, conn_mwrite);
            break;
        case conn_max_state:
            ((void) (0));
            break;
        }
    }
    return;
}
void event_handler(const int fd, const short which, void *arg) {
    conn *c;
    c = (conn *)arg;
    ((void) (0));
    c->which = which;
    if (fd != c->sfd) {
        if (settings.verbose > 0)
            fprintf(stderr, "Catastrophic: event fd doesn't match conn fd!\n");
        conn_close(c);
        return;
    }
    drive_machine(c);
    return;
}
static int new_socket(struct addrinfo *ai) {
    int sfd;
    int flags;
    if ((sfd = socket(ai->ai_family, ai->ai_socktype, ai->ai_protocol)) == -1) {
        return -1;
    }
    if ((flags = fcntl(sfd, 3, 0)) < 0 ||
        fcntl(sfd, 4, flags | 04000) < 0) {
        perror("setting O_NONBLOCK");
        close(sfd);
        return -1;
    }
    return sfd;
}
static void maximize_sndbuf(const int sfd) {
    socklen_t intsize = sizeof(int);
    int last_good = 0;
    int min, max, avg;
    int old_size;
    if (getsockopt(sfd, 1, 7, &old_size, &intsize) != 0) {
        if (settings.verbose > 0)
            perror("getsockopt(SO_SNDBUF)");
        return;
    }
    min = old_size;
    max = (256 * 1024 * 1024);
    while (min <= max) {
        avg = ((unsigned int)(min + max)) / 2;
        if (setsockopt(sfd, 1, 7, (void *)&avg, intsize) == 0) {
            last_good = avg;
            min = avg + 1;
        } else {
            max = avg - 1;
        }
    }
    if (settings.verbose > 1)
        fprintf(stderr, "<%d send buffer was %d, now %d\n", sfd, old_size, last_good);
}
static int server_socket(const char *interface,
                         int port,
                         enum network_transport transport,
                         FILE *portnumber_file, uint8_t ssl_enabled,
                         uint64_t conntag,
                         enum protocol bproto) {
    int sfd;
    struct linger ling = {0, 0};
    struct addrinfo *ai;
    struct addrinfo *next;
    struct addrinfo hints = { .ai_flags = 0x0001,
                              .ai_family = 0 };
    char port_buf[32];
    int error;
    int success = 0;
    int flags =1;
    hints.ai_socktype = (transport == udp_transport) ? SOCK_DGRAM : SOCK_STREAM;
    if (port == -1) {
        port = 0;
    }
    snprintf(port_buf, sizeof(port_buf), "%d", port);
    error= getaddrinfo(interface, port_buf, &hints, &ai);
    if (error != 0) {
        if (error != -11)
          fprintf(stderr, "getaddrinfo(): %s\n", gai_strerror(error));
        else
          perror("getaddrinfo()");
        return 1;
    }
    for (next= ai; next; next= next->ai_next) {
        conn *listen_conn_add;
        if ((sfd = new_socket(next)) == -1) {
            if ((*__errno_location ()) == 24) {
                perror("server_socket");
                exit(71);
            }
            continue;
        }
        if (settings.num_napi_ids) {
            socklen_t len = sizeof(socklen_t);
            int napi_id;
            error = getsockopt(sfd, 1, 56, &napi_id, &len);
            if (error != 0) {
                fprintf(stderr, "-N <num_napi_ids> option not supported\n");
                exit(1);
            }
        }
        if (next->ai_family == 10) {
            error = setsockopt(sfd, IPPROTO_IPV6, 26, (char *) &flags, sizeof(flags));
            if (error != 0) {
                perror("setsockopt");
                close(sfd);
                continue;
            }
        }
        if (settings.sock_cookie_id != 0) {
            error = setsockopt(sfd, 1, 36, (void *)&settings.sock_cookie_id, sizeof(uint32_t));
            if (error != 0)
                perror("setsockopt");
        }
        setsockopt(sfd, 1, 2, (void *)&flags, sizeof(flags));
        if ((transport == udp_transport)) {
            maximize_sndbuf(sfd);
        } else {
            error = setsockopt(sfd, 1, 9, (void *)&flags, sizeof(flags));
            if (error != 0)
                perror("setsockopt");
            error = setsockopt(sfd, 1, 13, (void *)&ling, sizeof(ling));
            if (error != 0)
                perror("setsockopt");
            error = setsockopt(sfd, IPPROTO_TCP, 1, (void *)&flags, sizeof(flags));
            if (error != 0)
                perror("setsockopt");
        }
        if (bind(sfd, next->ai_addr, next->ai_addrlen) == -1) {
            if ((*__errno_location ()) != 98) {
                perror("bind()");
                close(sfd);
                freeaddrinfo(ai);
                return 1;
            }
            close(sfd);
            continue;
        } else {
            success++;
            if (!(transport == udp_transport) && listen(sfd, settings.backlog) == -1) {
                perror("listen()");
                close(sfd);
                freeaddrinfo(ai);
                return 1;
            }
            if (portnumber_file != ((void *)0) &&
                (next->ai_addr->sa_family == 2 ||
                 next->ai_addr->sa_family == 10)) {
                union {
                    struct sockaddr_in in;
                    struct sockaddr_in6 in6;
                } my_sockaddr;
                socklen_t len = sizeof(my_sockaddr);
                if (getsockname(sfd, (struct sockaddr*)&my_sockaddr, &len)==0) {
                    if (next->ai_addr->sa_family == 2) {
                        fprintf(portnumber_file, "%s INET: %u\n",
                                (transport == udp_transport) ? "UDP" : "TCP",
                                __bswap_16 (my_sockaddr.in.sin_port));
                    } else {
                        fprintf(portnumber_file, "%s INET6: %u\n",
                                (transport == udp_transport) ? "UDP" : "TCP",
                                __bswap_16 (my_sockaddr.in6.sin6_port));
                    }
                }
            }
        }
        if ((transport == udp_transport)) {
            int c;
            for (c = 0; c < settings.num_threads_per_udp; c++) {
                int per_thread_fd;
                if (c == 0) {
                    per_thread_fd = sfd;
                } else {
                    per_thread_fd = dup(sfd);
                    if (per_thread_fd < 0) {
                        perror("Failed to duplicate file descriptor");
                        exit(1);
                    }
                }
                dispatch_conn_new(per_thread_fd, conn_read,
                                  0x02 | 0x10,
                                  65536, transport, ((void *)0), conntag, bproto);
            }
        } else {
            if (!(listen_conn_add = conn_new(sfd, conn_listening,
                                             0x02 | 0x10, 1,
                                             transport, main_base, ((void *)0), conntag, bproto))) {
                fprintf(stderr, "failed to create listening connection\n");
                exit(1);
            }
            listen_conn_add->ssl_enabled = ssl_enabled;
            listen_conn_add->next = listen_conn;
            listen_conn = listen_conn_add;
        }
    }
    freeaddrinfo(ai);
    return success == 0;
}
static int server_sockets(int port, enum network_transport transport,
                          FILE *portnumber_file) {
    uint8_t ssl_enabled = 0;
    const char *notls = "notls";
    const char *btls = "btls";
    const char *mtls = "mtls";
    if (settings.ssl_enabled) {
        ssl_enabled = 1;
    }
    if (settings.inter == ((void *)0)) {
        return server_socket(settings.inter, port, transport, portnumber_file, ssl_enabled, 0, settings.binding_protocol);
    } else {
        char *b;
        int ret = 0;
        char *list = strdup(settings.inter);
        if (list == ((void *)0)) {
            fprintf(stderr, "Failed to allocate memory for parsing server interface string\n");
            return 1;
        }
        int errno_save = 0;
        for (char *p = strtok_r(list, ";,", &b);
            p != ((void *)0);
            p = strtok_r(((void *)0), ";,", &b)) {
            uint64_t conntag = 0;
            int the_port = port;
            if (settings.ssl_enabled) {
                ssl_enabled = 1;
            }
            if (strncmp(p, notls, strlen(notls)) == 0) {
                if (!settings.ssl_enabled) {
                    fprintf(stderr, "'notls' option is valid only when SSL is enabled\n");
                    free(list);
                    return 1;
                }
                ssl_enabled = 0;
                p += strlen(notls) + 1;
            } else if (strncmp(p, btls, strlen(btls)) == 0) {
                 if (!settings.ssl_enabled) {
                    fprintf(stderr, "'btls' option is valid only when SSL is enabled\n");
                    free(list);
                    return 1;
                }
                ssl_enabled = 2;
                p += strlen(btls) + 1;
            } else if (strncmp(p, mtls, strlen(mtls)) == 0) {
                if (!settings.ssl_enabled) {
                    fprintf(stderr, "'otls' option is valid only when SSL is enabled\n");
                    free(list);
                    return 1;
                }
                ssl_enabled = 3;
                p += strlen(mtls) + 1;
            }
            const char *protostr = "proto";
            enum protocol bproto = settings.binding_protocol;
            if (strncmp(p, protostr, strlen(protostr)) == 0) {
                p += strlen(protostr);
                if (*p == '[') {
                    char *e = _Generic (0 ? (p) : (void *) 1, const void *: (const char *) (strchr (p, ']')), default: strchr (p, ']'));
                    if (e == ((void *)0)) {
                        fprintf(stderr, "Invalid protocol spec: \"%s\"\n", p);
                        free(list);
                        return 1;
                    }
                    char *st = ++p;
                    *e = '\0';
                    size_t len = e - st;
                    p = ++e;
                    p++;
                    if (strncmp(st, "ascii", len) == 0) {
                        bproto = ascii_prot;
                    } else if (strncmp(st, "binary", len) == 0) {
                        if (settings.auth_file) {
                            fprintf(stderr, "Cannot use binary protocol when ascii authentication enabled\n");
                            free(list);
                            return 1;
                        }
                        bproto = binary_prot;
                    } else if (strncmp(st, "negotiating", len) == 0) {
                        if (settings.auth_file) {
                            fprintf(stderr, "WARNING: negotiating ports are ascii only when ascii authentication enabled\n");
                            bproto = ascii_prot;
                        } else {
                            bproto = negotiating_prot;
                        }
                    } else if (strncmp(st, "proxy", len) == 0) {
                        if (settings.proxy_enabled) {
                            bproto = proxy_prot;
                        } else {
                            fprintf(stderr, "Proxy must be enabled to use: \"%s\"\n", list);
                            free(list);
                            return 1;
                        }
                    }
                }
            }
            const char *tagstr = "tag";
            if (strncmp(p, tagstr, strlen(tagstr)) == 0) {
                p += strlen(tagstr);
                if (*p == '[' || *p == '_') {
                    char *e = _Generic (0 ? (p) : (void *) 1, const void *: (const char *) (strchr (p, ']')), default: strchr (p, ']'));
                    if (e == ((void *)0)) {
                        e = _Generic (0 ? (p+1) : (void *) 1, const void *: (const char *) (strchr (p+1, '_')), default: strchr (p+1, '_'));
                    }
                    if (e == ((void *)0)) {
                        fprintf(stderr, "Invalid tag in socket config: \"%s\"\n", p);
                        free(list);
                        return 1;
                    }
                    char *st = ++p;
                    *e = '\0';
                    size_t len = e - st;
                    p = ++e;
                    p++;
                    if (len > 8 || len < 1) {
                        fprintf(stderr, "Listener tags must be between 1 and 8 characters: \"%s\"\n", st);
                        free(list);
                        return 1;
                    }
                    memcpy(&conntag, st, len);
                }
            }
            char *h = ((void *)0);
            if (*p == '[') {
                char *e = _Generic (0 ? (p) : (void *) 1, const void *: (const char *) (strchr (p, ']')), default: strchr (p, ']'));
                if (e == ((void *)0)) {
                    fprintf(stderr, "Invalid IPV6 address: \"%s\"", p);
                    free(list);
                    return 1;
                }
                h = ++p;
                *e = '\0';
                p = ++e;
            }
            char *s = _Generic (0 ? (p) : (void *) 1, const void *: (const char *) (strchr (p, ':')), default: strchr (p, ':'));
            if (s != ((void *)0)) {
                if (_Generic (0 ? (s + 1) : (void *) 1, const void *: (const char *) (strchr (s + 1, ':')), default: strchr (s + 1, ':')) == ((void *)0) || h != ((void *)0)) {
                    *s = '\0';
                    ++s;
                    if (!safe_strtol(s, &the_port)) {
                        fprintf(stderr, "Invalid port number: \"%s\"\n", s);
                        free(list);
                        return 1;
                    }
                }
            }
            if (h != ((void *)0))
                p = h;
            if (strcmp(p, "*") == 0) {
                p = ((void *)0);
            }
            ret |= server_socket(p, the_port, transport, portnumber_file, ssl_enabled, conntag, bproto);
            if (ret != 0 && errno_save == 0) errno_save = (*__errno_location ());
        }
        free(list);
        (*__errno_location ()) = errno_save;
        return ret;
    }
}
static int new_socket_unix(void) {
    int sfd;
    int flags;
    if ((sfd = socket(1, SOCK_STREAM, 0)) == -1) {
        perror("socket()");
        return -1;
    }
    if ((flags = fcntl(sfd, 3, 0)) < 0 ||
        fcntl(sfd, 4, flags | 04000) < 0) {
        perror("setting O_NONBLOCK");
        close(sfd);
        return -1;
    }
    return sfd;
}
static int server_socket_unix(const char *path, int access_mask) {
    int sfd;
    struct linger ling = {0, 0};
    struct sockaddr_un addr;
    struct stat tstat;
    int flags =1;
    int old_umask;
    if (!path) {
        return 1;
    }
    if ((sfd = new_socket_unix()) == -1) {
        return 1;
    }
    if (lstat(path, &tstat) == 0) {
        if (((((tstat.st_mode)) & 0170000) == (0140000)))
            unlink(path);
    }
    setsockopt(sfd, 1, 2, (void *)&flags, sizeof(flags));
    setsockopt(sfd, 1, 9, (void *)&flags, sizeof(flags));
    setsockopt(sfd, 1, 13, (void *)&ling, sizeof(ling));
    memset(&addr, 0, sizeof(addr));
    addr.sun_family = 1;
    strncpy(addr.sun_path, path, sizeof(addr.sun_path) - 1);
    ((void) (0));
    old_umask = umask( ~(access_mask&0777));
    if (bind(sfd, (struct sockaddr *)&addr, sizeof(addr)) == -1) {
        perror("bind()");
        close(sfd);
        umask(old_umask);
        return 1;
    }
    umask(old_umask);
    if (listen(sfd, settings.backlog) == -1) {
        perror("listen()");
        close(sfd);
        return 1;
    }
    if (!(listen_conn = conn_new(sfd, conn_listening,
                                 0x02 | 0x10, 1,
                                 local_transport, main_base, ((void *)0), 0, settings.binding_protocol))) {
        fprintf(stderr, "failed to create listening connection\n");
        exit(1);
    }
    return 0;
}
volatile rel_time_t current_time;
static struct event clockevent;
static bool monotonic = false;
static int64_t monotonic_start;
static void clock_handler(const int fd, const short which, void *arg) {
    struct timeval t = {.tv_sec = 1, .tv_usec = 0};
    static bool initialized = false;
    if (initialized) {
        event_del(&clockevent);
    } else {
        initialized = true;
    }
    assoc_start_expand(stats_state.curr_items);
    if (settings.sig_hup) {
        settings.sig_hup = false;
        authfile_load(settings.auth_file);
        if (settings.ssl_ctx != ((void *)0)) {
            char *errmsg = ((void *)0);
            refresh_certs(&errmsg);
            if (errmsg != ((void *)0)) {
                vperror("Could not reload TLS certificates on SIGHUP: %s", errmsg);
                free(errmsg);
            }
        }
        if (settings.proxy_ctx) {
            proxy_start_reload(settings.proxy_ctx);
        }
    }
    event_set((&clockevent), -1, 0, (clock_handler), (0));
    event_base_set(main_base, &clockevent);
    event_add((&clockevent), (&t));
    if (monotonic) {
        struct timespec ts;
        if (clock_gettime(1, &ts) == -1)
            return;
        current_time = (rel_time_t) (ts.tv_sec - monotonic_start);
        return;
    }
    {
        struct timeval tv;
        gettimeofday(&tv, ((void *)0));
        current_time = (rel_time_t) (tv.tv_sec - process_started);
    }
}
static const char* flag_enabled_disabled(bool flag) {
    return (flag ? "enabled" : "disabled");
}
void verify_default(const char* param, bool condition) {
    if (!condition) {
        printf("Default value of [%s] has changed."
            " Modify the help text and default value check.\n", param);
        exit(1);
    }
}
static void usage(void) {
    printf("memcached" " " "1.6.45" "\n");
    printf("-p, --port=<num>          TCP port to listen on (default: %d)\n"
           "-U, --udp-port=<num>      UDP port to listen on (default: %d, off)\n",
           settings.port, settings.udpport);
    printf("-s, --unix-socket=<file>  UNIX socket to listen on (disables network support)\n");
    printf("-a, --unix-mask=<mask>    access mask for UNIX socket, in octal (default: %o)\n",
            settings.access);
    printf("-A, --enable-shutdown     enable ascii \"shutdown\" command\n");
    printf("-l, --listen=<addr>       interface to listen on (default: INADDR_ANY)\n"
           "                          can specify multiple comma separated listeners configured with different protocols\n"
           "                          format: proto[<protcol>]:tag[<name>]:ip:port\n"
           "                          i.e -l proto[binary]:tag[services]:127.0.0.1:11211,proto[ascii]:tag_tools_:127.0.0.1:11212\n");
    printf("                          if TLS/SSL is enabled, 'notls', 'btls', 'mtls' prefix can be used to\n"
           "                          specify for specific listeners no tls, basic tls, or peer-auth tls (i.e -l mtls:proto[ascii]:tag_tools_:127.0.0.1:11212\n");
    printf("-d, --daemon              run as a daemon\n"
           "-r, --enable-coredumps    maximize core file limit\n"
           "-u, --user=<user>         assume identity of <username> (only when run as root)\n"
           "-m, --memory-limit=<num>  item memory in megabytes (default: %lu)\n"
           "-M, --disable-evictions   return error on memory exhausted instead of evicting\n"
           "-c, --conn-limit=<num>    max simultaneous connections (default: %d)\n"
           "-k, --lock-memory         lock down all paged memory\n"
           "-v, --verbose             verbose (print errors/warnings while in event loop)\n"
           "-vv                       very verbose (also print client commands/responses)\n"
           "-vvv                      extremely verbose (internal state transitions)\n"
           "-h, --help                print this help and exit\n"
           "-i, --license             print memcached and libevent license\n"
           "-V, --version             print version and exit\n"
           "-P, --pidfile=<file>      save PID in <file>, only used with -d option\n"
           "-f, --slab-growth-factor=<num> chunk size growth factor (default: %2.2f)\n"
           "-n, --slab-min-size=<bytes> min space used for key+value+flags (default: %d)\n",
           (unsigned long) settings.maxbytes / (1 << 20),
           settings.maxconns, settings.factor, settings.chunk_size);
    verify_default("udp-port",settings.udpport == 0);
    printf("-L, --enable-largepages  try to use large memory pages (if available)\n");
    printf("-D <char>     Use <char> as the delimiter between key prefixes and IDs.\n"
           "              This is used for per-prefix stats reporting. The default is\n"
           "              \"%c\" (colon). If this option is specified, stats collection\n"
           "              is turned on automatically; if not, then it may be turned on\n"
           "              by sending the \"stats detail on\" command to the server.\n",
           settings.prefix_delimiter);
    printf("-t, --threads=<num>       number of threads to use (default: %d)\n", settings.num_threads);
    printf("-R, --max-reqs-per-event  maximum number of requests per event, limits the\n"
           "                          requests processed per connection to prevent \n"
           "                          starvation (default: %d)\n", settings.reqs_per_event);
    printf("-C, --disable-cas         disable use of CAS\n");
    printf("-b, --listen-backlog=<num> set the backlog queue limit (default: %d)\n", settings.backlog);
    printf("-B, --protocol=<name>     protocol - one of ascii, binary, or auto (default: %s)\n",
           prot_text(settings.binding_protocol));
    printf("-I, --max-item-size=<num> adjusts max item size\n"
           "                          (default: %dm, min: %dk, max: %dm)\n",
           settings.item_size_max/ (1 << 20), 1024 / (1 << 10), 1024 * 1024 * 1024 / (1 << 20));
    printf("-F, --disable-flush-all   disable flush_all command\n");
    printf("-X, --disable-dumping     disable stats cachedump, stats detail, and lru_crawler metadump\n");
    printf("-W  --disable-watch       disable watch commands (live logging)\n");
    printf("-Y, --auth-file=<file>    (EXPERIMENTAL) enable ASCII protocol authentication. format:\n"
           "                          user:pass\\nuser2:pass2\\n\n");
    printf("-e, --memory-file=<file>  (EXPERIMENTAL) mmap a file for item memory.\n"
           "                          use only in ram disks or persistent memory mounts!\n"
           "                          enables restartable cache (stop with SIGUSR1)\n");
    printf("-Z, --enable-ssl          enable TLS/SSL\n");
    printf("-o, --extended            comma separated list of extended options\n"
           "                          most options have a 'no_' prefix to disable\n"
           "   - maxconns_fast:       immediately close new connections after limit (default: %s)\n"
           "   - hashpower:           an integer multiplier for how large the hash\n"
           "                          table should be. normally grows at runtime. (default starts at: %d)\n"
           "                          set based on \"STAT hash_power_level\"\n"
           "   - tail_repair_time:    time in seconds for how long to wait before\n"
           "                          forcefully killing LRU tail item.\n"
           "                          disabled by default; very dangerous option.\n"
           "   - hash_algorithm:      the hash table algorithm\n"
           "                          default is murmur3 hash.\n"
           "                          options: jenkins, murmur3, xxh3\n"
           "   - no_lru_crawler:      disable LRU Crawler background thread.\n"
           "   - lru_crawler_sleep:   microseconds to sleep between items\n"
           "                          default is %d.\n"
           "   - lru_crawler_tocrawl: max items to crawl per slab per run\n"
           "                          default is %u (unlimited)\n",
           flag_enabled_disabled(settings.maxconns_fast), settings.hashpower_init,
           settings.lru_crawler_sleep, settings.lru_crawler_tocrawl);
    printf("   - read_buf_mem_limit:  limit in megabytes for connection read/response buffers.\n"
           "                          do not adjust unless you have high (20k+) conn. limits.\n"
           "                          0 means unlimited (default: %u)\n",
           settings.read_buf_mem_limit);
    verify_default("read_buf_mem_limit", settings.read_buf_mem_limit == 0);
    printf("   - no_lru_maintainer:   disable new LRU system + background thread.\n"
           "   - hot_lru_pct:         pct of slab memory to reserve for hot lru.\n"
           "                          (requires lru_maintainer, default pct: %d)\n"
           "   - warm_lru_pct:        pct of slab memory to reserve for warm lru.\n"
           "                          (requires lru_maintainer, default pct: %d)\n"
           "   - hot_max_factor:      items idle > cold lru age * drop from hot lru. (default: %.2f)\n"
           "   - warm_max_factor:     items idle > cold lru age * this drop from warm. (default: %.2f)\n"
           "   - temporary_ttl:       TTL's below get separate LRU, can't be evicted.\n"
           "                          (requires lru_maintainer, default: %d)\n"
           "   - idle_timeout:        timeout for idle connections. (default: %d, no timeout)\n",
           settings.hot_lru_pct, settings.warm_lru_pct, settings.hot_max_factor, settings.warm_max_factor,
           settings.temporary_ttl, settings.idle_timeout);
    printf("   - slab_chunk_max:      (EXPERIMENTAL) maximum slab size in kilobytes. use extreme care. (default: %d)\n"
           "   - watcher_logbuf_size: size in kilobytes of per-watcher write buffer. (default: %u)\n"
           "   - worker_logbuf_size:  size in kilobytes of per-worker-thread buffer\n"
           "                          read by background thread, then written to watchers. (default: %u)\n"
           "   - track_sizes:         enable dynamic reports for 'stats sizes' command.\n"
           "                          note that counts for each size are approximate.\n"
           "   - no_hashexpand:       disables hash table expansion (dangerous)\n"
           "   - modern:              enables options which will be default in future.\n"
           "                          currently: nothing\n"
           "   - no_modern:           uses defaults of previous major version (1.4.x)\n",
           settings.slab_chunk_size_max / (1 << 10), settings.logger_watcher_buf_size / (1 << 10),
           settings.logger_buf_size / (1 << 10));
    verify_default("tail_repair_time", settings.tail_repair_time == 0);
    verify_default("lru_crawler_tocrawl", settings.lru_crawler_tocrawl == 0);
    verify_default("idle_timeout", settings.idle_timeout == 0);
    printf("   - sock_cookie_id:      attributes an ID to a socket for ip filtering/firewalls \n");
    printf("\n   - External storage (ext_*) related options (see: https://memcached.org/extstore)\n");
    printf("   - ext_path:            file to write to for external storage.\n"
           "                          ie: ext_path=/mnt/d1/extstore:1G\n"
           "   - ext_page_size:       size in megabytes of storage pages. (default: %u)\n"
           "   - ext_wbuf_size:       size in megabytes of page write buffers. (default: %u)\n"
           "   - ext_threads:         number of IO threads to run. (default: %u)\n"
           "   - ext_item_size:       store items larger than this (bytes, default %u)\n"
           "   - ext_item_age:        store items idle at least this long (seconds, default: no age limit)\n"
           "   - ext_low_ttl:         consider TTLs lower than this specially (default: %u)\n"
           "   - ext_drop_unread:     don't re-write unread values during compaction (default: %s)\n"
           "   - ext_recache_rate:    recache an item every N accesses (default: %u)\n"
           "   - ext_compact_under:   compact when fewer than this many free pages\n"
           "                          (default: 1 percent of the assigned storage)\n"
           "   - ext_drop_under:      drop COLD items when fewer than this many free pages\n"
           "                          (default: 1/4th of the assigned storage)\n"
           "   - ext_max_frag:        only defrag pages if they are less full than this pct-wise (default: %.2f)\n"
           "   - ext_max_sleep:       max sleep time of background threads in us (default: %u)\n"
           "   - slab_automove_freeratio: ratio of memory to hold free as buffer.\n"
           "                          (see doc/storage.txt for more info, default: %.3f)\n",
           settings.ext_page_size / (1 << 20), settings.ext_wbuf_size / (1 << 20), settings.ext_io_threadcount,
           settings.ext_item_size, settings.ext_low_ttl,
           flag_enabled_disabled(settings.ext_drop_unread), settings.ext_recache_rate,
           settings.ext_max_frag, settings.ext_max_sleep, settings.slab_automove_freeratio);
    verify_default("ext_item_age", settings.ext_item_age == (0x7fffffff * 2U + 1U));
    printf("   - proxy_config:        path to lua library file. separate with ':' for multiple files\n"
           "                          use proxy_config=routelib to use built-in library\n"
           "                          see https://memcached.org/proxy for information\n"
            );
    printf("   - proxy_arg:           argument string (file path) to pass to proxy config\n"
            );
    ssl_help();
    printf("-N, --napi_ids            number of napi ids. see doc/napi_ids.txt for more details\n");
    return;
}
static void usage_license(void) {
    printf("memcached" " " "1.6.45" "\n\n");
    printf(
    "Copyright (c) 2003, Danga Interactive, Inc. <http://www.danga.com/>\n"
    "All rights reserved.\n"
    "\n"
    "Redistribution and use in source and binary forms, with or without\n"
    "modification, are permitted provided that the following conditions are\n"
    "met:\n"
    "\n"
    "    * Redistributions of source code must retain the above copyright\n"
    "notice, this list of conditions and the following disclaimer.\n"
    "\n"
    "    * Redistributions in binary form must reproduce the above\n"
    "copyright notice, this list of conditions and the following disclaimer\n"
    "in the documentation and/or other materials provided with the\n"
    "distribution.\n"
    "\n"
    "    * Neither the name of the Danga Interactive nor the names of its\n"
    "contributors may be used to endorse or promote products derived from\n"
    "this software without specific prior written permission.\n"
    "\n"
    "THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS\n"
    "\"AS IS\" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT\n"
    "LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR\n"
    "A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT\n"
    "OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,\n"
    "SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT\n"
    "LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,\n"
    "DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY\n"
    "THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT\n"
    "(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE\n"
    "OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.\n"
    );
    return;
}
static void save_pid(const char *pid_file) {
    FILE *fp;
    if (access(pid_file, 0) == 0) {
        if ((fp = fopen(pid_file, "r")) != ((void *)0)) {
            char buffer[1024];
            if (fgets(buffer, sizeof(buffer), fp) != ((void *)0)) {
                unsigned int pid;
                if (safe_strtoul(buffer, &pid) && kill((pid_t)pid, 0) == 0) {
                    fprintf(stderr, "WARNING: The pid file contained the following (running) pid: %u\n", pid);
                }
            }
            fclose(fp);
        }
    }
    char tmp_pid_file[1024];
    snprintf(tmp_pid_file, sizeof(tmp_pid_file), "%s.tmp", pid_file);
    if ((fp = fopen(tmp_pid_file, "w")) == ((void *)0)) {
        vperror("Could not open the pid file %s for writing", tmp_pid_file);
        return;
    }
    fprintf(fp,"%ld\n", (long)getpid());
    if (fclose(fp) == -1) {
        vperror("Could not close the pid file %s", tmp_pid_file);
    }
    if (rename(tmp_pid_file, pid_file) != 0) {
        vperror("Could not rename the pid file from %s to %s",
                tmp_pid_file, pid_file);
    }
}
static void remove_pidfile(const char *pid_file) {
  if (pid_file == ((void *)0))
      return;
  if (unlink(pid_file) != 0) {
      vperror("Could not remove the pid file %s", pid_file);
  }
}
static void sig_handler(const int sig) {
    stop_main_loop = EXIT_NORMALLY;
}
static void sighup_handler(const int sig) {
    settings.sig_hup = true;
}
static void sig_usrhandler(const int sig) {
    stop_main_loop = GRACE_STOP;
}
static int enable_large_pages(void) {
    static const char *mm_thp_paths[] = {
        "/sys/kernel/mm/transparent_hugepage/enabled",
        "/sys/kernel/mm/redhat_transparent_hugepage/enabled",
        ((void *)0)
    };
    char thpb[128] = {0};
    int pfd = -1;
    for (const char **p = mm_thp_paths; *p; p++) {
        if ((pfd = open(*p, 00)) != -1)
            break;
    }
    if (pfd == -1) {
        fprintf(stderr, "Transparent huge pages support not detected.\n");
        fprintf(stderr, "Will use default page size.\n");
        return -1;
    }
    ssize_t rd = read(pfd, thpb, sizeof(thpb));
    close(pfd);
    if (rd <= 0) {
        fprintf(stderr, "Transparent huge pages could not read the configuration.\n");
        fprintf(stderr, "Will use default page size.\n");
        return -1;
    }
    thpb[rd] = 0;
    if (_Generic (0 ? (thpb) : (void *) 1, const void *: (const char *) (strstr (thpb, "[never]")), default: strstr (thpb, "[never]"))) {
        fprintf(stderr, "Transparent huge pages support disabled.\n");
        fprintf(stderr, "Will use default page size.\n");
        return -1;
    }
    return 0;
}
static bool sanitycheck(void) {
    const char *ever = event_get_version();
    if (ever != ((void *)0)) {
        if (strncmp(ever, "1.", 2) == 0) {
            fprintf(stderr, "You are using libevent %s.\nPlease upgrade to 2.x"
                        " or newer\n", event_get_version());
            return false;
        }
    }
    return true;
}
static bool _parse_slab_sizes(char *s, uint32_t *slab_sizes) {
    char *b = ((void *)0);
    uint32_t size = 0;
    int i = 0;
    uint32_t last_size = 0;
    if (strlen(s) < 1)
        return false;
    for (char *p = strtok_r(s, "-", &b);
         p != ((void *)0);
         p = strtok_r(((void *)0), "-", &b)) {
        if (!safe_strtoul(p, &size) || size < settings.chunk_size
             || size > settings.slab_chunk_size_max) {
            fprintf(stderr, "slab size %u is out of valid range\n", size);
            return false;
        }
        if (last_size >= size) {
            fprintf(stderr, "slab size %u cannot be lower than or equal to a previous class size\n", size);
            return false;
        }
        if (size <= last_size + 8) {
            fprintf(stderr, "slab size %u must be at least %d bytes larger than previous class\n",
                    size, 8);
            return false;
        }
        slab_sizes[i++] = size;
        last_size = size;
        if (i >= (63 + 1)-1) {
            fprintf(stderr, "too many slab classes specified\n");
            return false;
        }
    }
    slab_sizes[i] = 0;
    return true;
}
struct _mc_meta_data {
    void *mmap_base;
    uint64_t old_base;
    char *slab_config;
    int64_t time_delta;
    uint64_t process_started;
    uint32_t current_time;
};
static int _mc_meta_save_cb(const char *tag, void *ctx, void *data) {
    struct _mc_meta_data *meta = (struct _mc_meta_data *)data;
    restart_set_kv(ctx, "slab_config", "%s", meta->slab_config);
    restart_set_kv(ctx, "maxbytes", "%llu", (unsigned long long) settings.maxbytes);
    restart_set_kv(ctx, "chunk_size", "%d", settings.chunk_size);
    restart_set_kv(ctx, "item_size_max", "%d", settings.item_size_max);
    restart_set_kv(ctx, "slab_chunk_size_max", "%d", settings.slab_chunk_size_max);
    restart_set_kv(ctx, "slab_page_size", "%d", settings.slab_page_size);
    restart_set_kv(ctx, "use_cas", "%s", settings.use_cas ? "true" : "false");
    restart_set_kv(ctx, "slab_reassign", "%s", settings.slab_reassign ? "true" : "false");
    restart_set_kv(ctx, "current_time", "%u", current_time);
    restart_set_kv(ctx, "process_started", "%llu", (unsigned long long) process_started);
    {
        struct timeval tv;
        gettimeofday(&tv, ((void *)0));
        restart_set_kv(ctx, "stop_time", "%llu", (unsigned long long) tv.tv_sec);
    }
    restart_set_kv(ctx, "current_cas", "%llu", (unsigned long long) get_cas_id());
    restart_set_kv(ctx, "logger_gid", "%llu", logger_get_gid());
    restart_set_kv(ctx, "hashpower", "%u", stats_state.hash_power_level);
    restart_set_kv(ctx, "oldest_live", "%u", settings.oldest_live);
    restart_set_kv(ctx, "mmap_oldbase", "%p", meta->mmap_base);
    return 0;
}
static int _mc_meta_load_cb(const char *tag, void *ctx, void *data) {
    struct _mc_meta_data *meta = (struct _mc_meta_data *)data;
    char *key;
    char *val;
    int reuse_mmap = 0;
    meta->process_started = 0;
    meta->time_delta = 0;
    meta->current_time = 0;
    int lines_seen = 0;
    enum {
        R_MMAP_OLDBASE = 0,
        R_MAXBYTES,
        R_CHUNK_SIZE,
        R_ITEM_SIZE_MAX,
        R_SLAB_CHUNK_SIZE_MAX,
        R_SLAB_PAGE_SIZE,
        R_SLAB_CONFIG,
        R_USE_CAS,
        R_SLAB_REASSIGN,
        R_CURRENT_CAS,
        R_OLDEST_LIVE,
        R_LOGGER_GID,
        R_CURRENT_TIME,
        R_STOP_TIME,
        R_PROCESS_STARTED,
        R_HASHPOWER,
    };
    const char *opts[] = {
        [R_MMAP_OLDBASE] = "mmap_oldbase",
        [R_MAXBYTES] = "maxbytes",
        [R_CHUNK_SIZE] = "chunk_size",
        [R_ITEM_SIZE_MAX] = "item_size_max",
        [R_SLAB_CHUNK_SIZE_MAX] = "slab_chunk_size_max",
        [R_SLAB_PAGE_SIZE] = "slab_page_size",
        [R_SLAB_CONFIG] = "slab_config",
        [R_USE_CAS] = "use_cas",
        [R_SLAB_REASSIGN] = "slab_reassign",
        [R_CURRENT_CAS] = "current_cas",
        [R_OLDEST_LIVE] = "oldest_live",
        [R_LOGGER_GID] = "logger_gid",
        [R_CURRENT_TIME] = "current_time",
        [R_STOP_TIME] = "stop_time",
        [R_PROCESS_STARTED] = "process_started",
        [R_HASHPOWER] = "hashpower",
        ((void *)0)
    };
    while (restart_get_kv(ctx, &key, &val) == RESTART_OK) {
        int type = 0;
        int32_t val_int = 0;
        uint32_t val_uint = 0;
        int64_t bigval_int = 0;
        uint64_t bigval_uint = 0;
        while (opts[type] != ((void *)0) && strcmp(key, opts[type]) != 0) {
            type++;
        }
        if (opts[type] == ((void *)0)) {
            fprintf(stderr, "[restart] unknown/unhandled key: %s\n", key);
            continue;
        }
        lines_seen++;
        bool val_bool = false;
        bool is_bool = true;
        if (strcmp(val, "false") == 0) {
            val_bool = false;
        } else if (strcmp(val, "true") == 0) {
            val_bool = true;
        } else {
            is_bool = false;
        }
        switch (type) {
        case R_MMAP_OLDBASE:
            if (!safe_strtoull_hex(val, &meta->old_base)) {
                fprintf(stderr, "[restart] failed to parse %s: %s\n", key, val);
                reuse_mmap = -1;
            }
            break;
        case R_MAXBYTES:
            if (!safe_strtoll(val, &bigval_int) || settings.maxbytes != bigval_int) {
                reuse_mmap = -1;
            }
            break;
        case R_CHUNK_SIZE:
            if (!safe_strtol(val, &val_int) || settings.chunk_size != val_int) {
                reuse_mmap = -1;
            }
            break;
        case R_ITEM_SIZE_MAX:
            if (!safe_strtol(val, &val_int) || settings.item_size_max != val_int) {
                reuse_mmap = -1;
            }
            break;
        case R_SLAB_CHUNK_SIZE_MAX:
            if (!safe_strtol(val, &val_int) || settings.slab_chunk_size_max != val_int) {
                reuse_mmap = -1;
            }
            break;
        case R_SLAB_PAGE_SIZE:
            if (!safe_strtol(val, &val_int) || settings.slab_page_size != val_int) {
                reuse_mmap = -1;
            }
            break;
        case R_SLAB_CONFIG:
            if (strcmp(val, meta->slab_config) != 0) {
                reuse_mmap = -1;
            }
            break;
        case R_USE_CAS:
            if (!is_bool || settings.use_cas != val_bool) {
                reuse_mmap = -1;
            }
            break;
        case R_SLAB_REASSIGN:
            if (!is_bool || settings.slab_reassign != val_bool) {
                reuse_mmap = -1;
            }
            break;
        case R_CURRENT_CAS:
            if (!safe_strtoull(val, &bigval_uint)) {
                reuse_mmap = -1;
            } else {
                set_cas_id(bigval_uint);
            }
            break;
        case R_OLDEST_LIVE:
            if (!safe_strtoul(val, &val_uint)) {
                reuse_mmap = -1;
            } else {
                settings.oldest_live = val_uint;
            }
            break;
        case R_LOGGER_GID:
            if (!safe_strtoull(val, &bigval_uint)) {
                reuse_mmap = -1;
            } else {
                logger_set_gid(bigval_uint);
            }
            break;
        case R_PROCESS_STARTED:
            if (!safe_strtoull(val, &bigval_uint)) {
                reuse_mmap = -1;
            } else {
                meta->process_started = bigval_uint;
            }
            break;
        case R_CURRENT_TIME:
            if (!safe_strtoul(val, &val_uint)) {
                reuse_mmap = -1;
            } else {
                meta->current_time = val_uint;
            }
            break;
        case R_STOP_TIME:
            if (!safe_strtoll(val, &bigval_int)) {
                reuse_mmap = -1;
            } else {
                struct timeval t;
                gettimeofday(&t, ((void *)0));
                meta->time_delta = t.tv_sec - bigval_int;
                if (meta->time_delta <= 0) {
                    reuse_mmap = -1;
                }
            }
            break;
        case R_HASHPOWER:
            if (!safe_strtoul(val, &val_uint)) {
                reuse_mmap = -1;
            } else {
                settings.hashpower_init = val_uint;
            }
            break;
        default:
            fprintf(stderr, "[restart] unhandled key: %s\n", key);
        }
        if (reuse_mmap != 0) {
            fprintf(stderr, "[restart] restart incompatible due to setting for [%s] [old value: %s]\n", key, val);
            break;
        }
    }
    if (lines_seen < 16) {
        fprintf(stderr, "[restart] missing some metadata lines\n");
        reuse_mmap = -1;
    }
    return reuse_mmap;
}
int main (int argc, char **argv) {
    int c;
    bool lock_memory = false;
    bool do_daemonize = false;
    bool preallocate = false;
    int maxcore = 0;
    char *username = ((void *)0);
    char *pid_file = ((void *)0);
    struct passwd *pw;
    struct rlimit rlim;
    char *buf;
    char unit = '\0';
    int size_max = 0;
    int retval = 0;
    bool protocol_specified = false;
    bool tcp_specified = false;
    bool udp_specified = false;
    bool start_lru_maintainer = true;
    bool start_lru_crawler = true;
    bool start_assoc_maint = true;
    enum hashfunc_type hash_type = MURMUR3_HASH;
    uint32_t tocrawl;
    uint32_t slab_sizes[(63 + 1)];
    bool use_slab_sizes = false;
    char *slab_sizes_unparsed = ((void *)0);
    bool slab_chunk_size_changed = false;
    struct _mc_meta_data *meta = malloc(sizeof(struct _mc_meta_data));
    meta->slab_config = ((void *)0);
    char *subopts, *subopts_orig;
    char *subopts_value;
    enum {
        MAXCONNS_FAST = 0,
        HASHPOWER_INIT,
        NO_HASHEXPAND,
        SLAB_REASSIGN,
        SLAB_AUTOMOVE,
        SLAB_AUTOMOVE_RATIO,
        SLAB_AUTOMOVE_WINDOW,
        TAIL_REPAIR_TIME,
        HASH_ALGORITHM,
        LRU_CRAWLER,
        LRU_CRAWLER_SLEEP,
        LRU_CRAWLER_TOCRAWL,
        LRU_MAINTAINER,
        HOT_LRU_PCT,
        WARM_LRU_PCT,
        HOT_MAX_FACTOR,
        WARM_MAX_FACTOR,
        TEMPORARY_TTL,
        IDLE_TIMEOUT,
        WATCHER_LOGBUF_SIZE,
        WORKER_LOGBUF_SIZE,
        SLAB_SIZES,
        SLAB_CHUNK_MAX,
        TRACK_SIZES,
        NO_INLINE_ASCII_RESP,
        MODERN,
        NO_MODERN,
        NO_CHUNKED_ITEMS,
        NO_SLAB_REASSIGN,
        NO_SLAB_AUTOMOVE,
        NO_MAXCONNS_FAST,
        INLINE_ASCII_RESP,
        NO_LRU_CRAWLER,
        NO_LRU_MAINTAINER,
        NO_DROP_PRIVILEGES,
        DROP_PRIVILEGES,
        RESP_OBJ_MEM_LIMIT,
        READ_BUF_MEM_LIMIT,
        SSL_CERT,
        SSL_KEY,
        SSL_VERIFY_MODE,
        SSL_KEYFORM,
        SSL_CIPHERS,
        SSL_CA_CERT,
        SSL_WBUF_SIZE,
        SSL_SESSION_CACHE,
        SSL_KERNEL_TLS,
        SSL_MIN_VERSION,
        PROXY_CONFIG,
        PROXY_ARG,
        PROXY_URING,
        PROXY_MEMPROFILE,
        COOKIE_ID,
    };
    char *const subopts_tokens[] = {
        [MAXCONNS_FAST] = "maxconns_fast",
        [HASHPOWER_INIT] = "hashpower",
        [NO_HASHEXPAND] = "no_hashexpand",
        [SLAB_REASSIGN] = "slab_reassign",
        [SLAB_AUTOMOVE] = "slab_automove",
        [SLAB_AUTOMOVE_RATIO] = "slab_automove_ratio",
        [SLAB_AUTOMOVE_WINDOW] = "slab_automove_window",
        [TAIL_REPAIR_TIME] = "tail_repair_time",
        [HASH_ALGORITHM] = "hash_algorithm",
        [LRU_CRAWLER] = "lru_crawler",
        [LRU_CRAWLER_SLEEP] = "lru_crawler_sleep",
        [LRU_CRAWLER_TOCRAWL] = "lru_crawler_tocrawl",
        [LRU_MAINTAINER] = "lru_maintainer",
        [HOT_LRU_PCT] = "hot_lru_pct",
        [WARM_LRU_PCT] = "warm_lru_pct",
        [HOT_MAX_FACTOR] = "hot_max_factor",
        [WARM_MAX_FACTOR] = "warm_max_factor",
        [TEMPORARY_TTL] = "temporary_ttl",
        [IDLE_TIMEOUT] = "idle_timeout",
        [WATCHER_LOGBUF_SIZE] = "watcher_logbuf_size",
        [WORKER_LOGBUF_SIZE] = "worker_logbuf_size",
        [SLAB_SIZES] = "slab_sizes",
        [SLAB_CHUNK_MAX] = "slab_chunk_max",
        [TRACK_SIZES] = "track_sizes",
        [NO_INLINE_ASCII_RESP] = "no_inline_ascii_resp",
        [MODERN] = "modern",
        [NO_MODERN] = "no_modern",
        [NO_CHUNKED_ITEMS] = "no_chunked_items",
        [NO_SLAB_REASSIGN] = "no_slab_reassign",
        [NO_SLAB_AUTOMOVE] = "no_slab_automove",
        [NO_MAXCONNS_FAST] = "no_maxconns_fast",
        [INLINE_ASCII_RESP] = "inline_ascii_resp",
        [NO_LRU_CRAWLER] = "no_lru_crawler",
        [NO_LRU_MAINTAINER] = "no_lru_maintainer",
        [NO_DROP_PRIVILEGES] = "no_drop_privileges",
        [DROP_PRIVILEGES] = "drop_privileges",
        [RESP_OBJ_MEM_LIMIT] = "resp_obj_mem_limit",
        [READ_BUF_MEM_LIMIT] = "read_buf_mem_limit",
        [SSL_CERT] = "ssl_chain_cert",
        [SSL_KEY] = "ssl_key",
        [SSL_VERIFY_MODE] = "ssl_verify_mode",
        [SSL_KEYFORM] = "ssl_keyformat",
        [SSL_CIPHERS] = "ssl_ciphers",
        [SSL_CA_CERT] = "ssl_ca_cert",
        [SSL_WBUF_SIZE] = "ssl_wbuf_size",
        [SSL_SESSION_CACHE] = "ssl_session_cache",
        [SSL_KERNEL_TLS] = "ssl_kernel_tls",
        [SSL_MIN_VERSION] = "ssl_min_version",
        [PROXY_CONFIG] = "proxy_config",
        [PROXY_ARG] = "proxy_arg",
        [PROXY_URING] = "proxy_uring",
        [PROXY_MEMPROFILE] = "proxy_memprofile",
        [COOKIE_ID] = "sock_cookie_id",
        ((void *)0)
    };
    if (!sanitycheck()) {
        free(meta);
        return 71;
    }
    signal(2, sig_handler);
    signal(15, sig_handler);
    signal(1, sighup_handler);
    signal(10, sig_usrhandler);
    settings_init();
    verify_default("hash_algorithm", hash_type == MURMUR3_HASH);
    void *storage = ((void *)0);
    void *storage_cf = storage_init_config(&settings);
    bool storage_enabled = false;
    if (storage_cf == ((void *)0)) {
        fprintf(stderr, "failed to allocate extstore config\n");
        return 1;
    }
    setbuf(stderr, ((void *)0));
    char *shortopts =
          "a:"
          "A"
          "Z"
          "p:"
          "s:"
          "U:"
          "m:"
          "M"
          "c:"
          "k"
          "hiV"
          "r"
          "v"
          "d"
          "l:"
          "u:"
          "P:"
          "f:"
          "n:"
          "t:"
          "D:"
          "L"
          "R:"
          "C"
          "b:"
          "B:"
          "I:"
          "S"
          "F"
          "X"
          "W"
          "Y:"
          "e:"
          "o:"
          "N:"
          ;
    const struct option longopts[] = {
        {"unix-mask", 1, 0, 'a'},
        {"enable-shutdown", 0, 0, 'A'},
        {"enable-ssl", 0, 0, 'Z'},
        {"port", 1, 0, 'p'},
        {"unix-socket", 1, 0, 's'},
        {"udp-port", 1, 0, 'U'},
        {"memory-limit", 1, 0, 'm'},
        {"disable-evictions", 0, 0, 'M'},
        {"conn-limit", 1, 0, 'c'},
        {"lock-memory", 0, 0, 'k'},
        {"help", 0, 0, 'h'},
        {"license", 0, 0, 'i'},
        {"version", 0, 0, 'V'},
        {"enable-coredumps", 0, 0, 'r'},
        {"verbose", 2, 0, 'v'},
        {"daemon", 0, 0, 'd'},
        {"listen", 1, 0, 'l'},
        {"user", 1, 0, 'u'},
        {"pidfile", 1, 0, 'P'},
        {"slab-growth-factor", 1, 0, 'f'},
        {"slab-min-size", 1, 0, 'n'},
        {"threads", 1, 0, 't'},
        {"enable-largepages", 0, 0, 'L'},
        {"max-reqs-per-event", 1, 0, 'R'},
        {"disable-cas", 0, 0, 'C'},
        {"listen-backlog", 1, 0, 'b'},
        {"protocol", 1, 0, 'B'},
        {"max-item-size", 1, 0, 'I'},
        {"enable-sasl", 0, 0, 'S'},
        {"disable-flush-all", 0, 0, 'F'},
        {"disable-dumping", 0, 0, 'X'},
        {"disable-watch", 0, 0, 'W'},
        {"auth-file", 1, 0, 'Y'},
        {"memory-file", 1, 0, 'e'},
        {"extended", 1, 0, 'o'},
        {"napi-ids", 1, 0, 'N'},
        {0, 0, 0, 0}
    };
    int optindex;
    while (-1 != (c = getopt_long(argc, argv, shortopts,
                    longopts, &optindex))) {
        if (optarg) {
            while(((*__ctype_b_loc ())[(int) ((optarg[0]))] & (unsigned short int) _ISspace)) {
                optarg++;
            }
        }
        switch (c) {
        case 'A':
            settings.shutdown_command = true;
            break;
        case 'Z':
            settings.ssl_enabled = true;
            break;
        case 'a':
            settings.access= strtol(optarg,((void *)0),8);
            break;
        case 'U':
            settings.udpport = atoi(optarg);
            udp_specified = true;
            break;
        case 'p':
            settings.port = atoi(optarg);
            tcp_specified = true;
            break;
        case 's':
            settings.socketpath = optarg;
            break;
        case 'm':
            settings.maxbytes = ((size_t)atoi(optarg)) * 1024 * 1024;
            break;
        case 'M':
            settings.evict_to_free = 0;
            break;
        case 'c':
            settings.maxconns = atoi(optarg);
            if (settings.maxconns <= 0) {
                fprintf(stderr, "Maximum connections must be greater than 0\n");
                return 1;
            }
            break;
        case 'h':
            usage();
            exit(0);
        case 'i':
            usage_license();
            exit(0);
        case 'V':
            printf("memcached" " " "1.6.45" "\n");
            exit(0);
        case 'k':
            lock_memory = true;
            break;
        case 'v':
            settings.verbose++;
            break;
        case 'l':
            if (settings.inter != ((void *)0)) {
                if (_Generic (0 ? (settings.inter) : (void *) 1, const void *: (const char *) (strstr (settings.inter, optarg)), default: strstr (settings.inter, optarg)) != ((void *)0)) {
                    break;
                }
                size_t len = strlen(settings.inter) + strlen(optarg) + 2;
                char *p = malloc(len);
                if (p == ((void *)0)) {
                    fprintf(stderr, "Failed to allocate memory\n");
                    return 1;
                }
                snprintf(p, len, "%s,%s", settings.inter, optarg);
                free(settings.inter);
                settings.inter = p;
            } else {
                settings.inter= strdup(optarg);
            }
            break;
        case 'd':
            do_daemonize = true;
            break;
        case 'r':
            maxcore = 1;
            break;
        case 'R':
            settings.reqs_per_event = atoi(optarg);
            if (settings.reqs_per_event <= 0) {
                fprintf(stderr, "Number of requests per event must be greater than 0\n");
                return 1;
            }
            break;
        case 'u':
            username = optarg;
            break;
        case 'P':
            pid_file = optarg;
            break;
        case 'e':
            settings.memory_file = optarg;
            break;
        case 'f':
            settings.factor = atof(optarg);
            if (settings.factor <= 1.0) {
                fprintf(stderr, "Factor must be greater than 1\n");
                return 1;
            }
            meta->slab_config = strdup(optarg);
            break;
        case 'n':
            settings.chunk_size = atoi(optarg);
            if (settings.chunk_size <= 0) {
                fprintf(stderr, "Chunk size must be greater than 0\n");
                return 1;
            }
            break;
        case 't':
            settings.num_threads = atoi(optarg);
            if (settings.num_threads <= 0) {
                fprintf(stderr, "Number of threads must be greater than 0\n");
                return 1;
            }
            if (settings.num_threads > 64) {
                fprintf(stderr, "WARNING: Setting a high number of worker"
                                "threads is not recommended.\n"
                                " Set this value to the number of cores in"
                                " your machine or less.\n");
            }
            break;
        case 'D':
            if (! optarg || ! optarg[0]) {
                fprintf(stderr, "No delimiter specified\n");
                return 1;
            }
            settings.prefix_delimiter = optarg[0];
            settings.detail_enabled = 1;
            break;
        case 'L' :
            if (enable_large_pages() == 0) {
                preallocate = true;
            } else {
                fprintf(stderr, "Cannot enable large pages on this system\n"
                    "(There is no support as of this version)\n");
                return 1;
            }
            break;
        case 'C' :
            settings.use_cas = false;
            break;
        case 'b' :
            settings.backlog = atoi(optarg);
            break;
        case 'B':
            protocol_specified = true;
            if (strcmp(optarg, "auto") == 0) {
                settings.binding_protocol = negotiating_prot;
            } else if (strcmp(optarg, "binary") == 0) {
                settings.binding_protocol = binary_prot;
            } else if (strcmp(optarg, "ascii") == 0) {
                settings.binding_protocol = ascii_prot;
            } else {
                fprintf(stderr, "Invalid value for binding protocol: %s\n"
                        " -- should be one of auto, binary, or ascii\n", optarg);
                exit(64);
            }
            break;
        case 'I':
            buf = strdup(optarg);
            unit = buf[strlen(buf)-1];
            if (unit == 'k' || unit == 'm' ||
                unit == 'K' || unit == 'M') {
                buf[strlen(buf)-1] = '\0';
                size_max = atoi(buf);
                if (unit == 'k' || unit == 'K')
                    size_max *= 1024;
                if (unit == 'm' || unit == 'M')
                    size_max *= 1024 * 1024;
                settings.item_size_max = size_max;
            } else {
                settings.item_size_max = atoi(buf);
            }
            free(buf);
            break;
        case 'S':
            fprintf(stderr, "This server is not built with SASL support.\n");
            exit(64);
            settings.sasl = true;
            break;
       case 'F' :
            settings.flush_enabled = false;
            break;
       case 'X' :
            settings.dump_enabled = false;
            break;
       case 'W' :
            settings.watch_enabled = false;
            break;
       case 'Y' :
            settings.auth_file = strdup(optarg);
            break;
       case 'N':
            settings.num_napi_ids = atoi(optarg);
            if (settings.num_napi_ids <= 0) {
                fprintf(stderr, "Maximum number of NAPI IDs must be greater than 0\n");
                return 1;
            }
            break;
        case 'o':
            subopts_orig = subopts = strdup(optarg);
            while (*subopts != '\0') {
            char *subopts_temp_o = ((void *)0);
            char *subopts_temp = subopts_temp_o = strdup(subopts);
            switch (getsubopt(&subopts, subopts_tokens, &subopts_value)) {
            case MAXCONNS_FAST:
                settings.maxconns_fast = true;
                break;
            case HASHPOWER_INIT:
                if (subopts_value == ((void *)0)) {
                    fprintf(stderr, "Missing numeric argument for hashpower\n");
                    goto error;
                }
                settings.hashpower_init = atoi(subopts_value);
                if (settings.hashpower_init < 12) {
                    fprintf(stderr, "Initial hashtable multiplier of %d is too low\n",
                        settings.hashpower_init);
                    goto error;
                } else if (settings.hashpower_init > 32) {
                    fprintf(stderr, "Initial hashtable multiplier of %d is too high\n"
                        "Choose a value based on \"STAT hash_power_level\" from a running instance\n",
                        settings.hashpower_init);
                    goto error;
                }
                break;
            case NO_HASHEXPAND:
                start_assoc_maint = false;
                break;
            case SLAB_REASSIGN:
                settings.slab_reassign = true;
                break;
            case SLAB_AUTOMOVE:
                if (subopts_value == ((void *)0)) {
                    settings.slab_automove = 1;
                    break;
                }
                settings.slab_automove = atoi(subopts_value);
                if (settings.slab_automove < 0 || settings.slab_automove > 2) {
                    fprintf(stderr, "slab_automove must be between 0 and 2\n");
                    goto error;
                }
                break;
            case SLAB_AUTOMOVE_RATIO:
                if (subopts_value == ((void *)0)) {
                    fprintf(stderr, "Missing slab_automove_ratio argument\n");
                    goto error;
                }
                settings.slab_automove_ratio = atof(subopts_value);
                if (settings.slab_automove_ratio <= 0 || settings.slab_automove_ratio > 1) {
                    fprintf(stderr, "slab_automove_ratio must be > 0 and < 1\n");
                    goto error;
                }
                break;
            case SLAB_AUTOMOVE_WINDOW:
                if (subopts_value == ((void *)0)) {
                    fprintf(stderr, "Missing slab_automove_window argument\n");
                    goto error;
                }
                settings.slab_automove_window = atoi(subopts_value);
                if (settings.slab_automove_window < 3 || settings.slab_automove_window > 1800) {
                    fprintf(stderr, "slab_automove_window must be > 2 and < 1800\n");
                    goto error;
                }
                break;
            case TAIL_REPAIR_TIME:
                if (subopts_value == ((void *)0)) {
                    fprintf(stderr, "Missing numeric argument for tail_repair_time\n");
                    goto error;
                }
                settings.tail_repair_time = atoi(subopts_value);
                if (settings.tail_repair_time < 10) {
                    fprintf(stderr, "Cannot set tail_repair_time to less than 10 seconds\n");
                    goto error;
                }
                break;
            case HASH_ALGORITHM:
                if (subopts_value == ((void *)0)) {
                    fprintf(stderr, "Missing hash_algorithm argument\n");
                    goto error;
                };
                if (strcmp(subopts_value, "jenkins") == 0) {
                    hash_type = JENKINS_HASH;
                } else if (strcmp(subopts_value, "murmur3") == 0) {
                    hash_type = MURMUR3_HASH;
                } else if (strcmp(subopts_value, "xxh3") == 0) {
                    hash_type = XXH3_HASH;
                } else {
                    fprintf(stderr, "Unknown hash_algorithm option (jenkins, murmur3, xxh3)\n");
                    goto error;
                }
                break;
            case LRU_CRAWLER:
                start_lru_crawler = true;
                break;
            case LRU_CRAWLER_SLEEP:
                if (subopts_value == ((void *)0)) {
                    fprintf(stderr, "Missing lru_crawler_sleep value\n");
                    goto error;
                }
                settings.lru_crawler_sleep = atoi(subopts_value);
                if (settings.lru_crawler_sleep > 1000000 || settings.lru_crawler_sleep < 0) {
                    fprintf(stderr, "LRU crawler sleep must be between 0 and 1 second\n");
                    goto error;
                }
                break;
            case LRU_CRAWLER_TOCRAWL:
                if (subopts_value == ((void *)0)) {
                    fprintf(stderr, "Missing lru_crawler_tocrawl value\n");
                    goto error;
                }
                if (!safe_strtoul(subopts_value, &tocrawl)) {
                    fprintf(stderr, "lru_crawler_tocrawl takes a numeric 32bit value\n");
                    goto error;
                }
                settings.lru_crawler_tocrawl = tocrawl;
                break;
            case LRU_MAINTAINER:
                start_lru_maintainer = true;
                settings.lru_segmented = true;
                break;
            case HOT_LRU_PCT:
                if (subopts_value == ((void *)0)) {
                    fprintf(stderr, "Missing hot_lru_pct argument\n");
                    goto error;
                }
                settings.hot_lru_pct = atoi(subopts_value);
                if (settings.hot_lru_pct < 1 || settings.hot_lru_pct >= 80) {
                    fprintf(stderr, "hot_lru_pct must be > 1 and < 80\n");
                    goto error;
                }
                break;
            case WARM_LRU_PCT:
                if (subopts_value == ((void *)0)) {
                    fprintf(stderr, "Missing warm_lru_pct argument\n");
                    goto error;
                }
                settings.warm_lru_pct = atoi(subopts_value);
                if (settings.warm_lru_pct < 1 || settings.warm_lru_pct >= 80) {
                    fprintf(stderr, "warm_lru_pct must be > 1 and < 80\n");
                    goto error;
                }
                break;
            case HOT_MAX_FACTOR:
                if (subopts_value == ((void *)0)) {
                    fprintf(stderr, "Missing hot_max_factor argument\n");
                    goto error;
                }
                settings.hot_max_factor = atof(subopts_value);
                if (settings.hot_max_factor <= 0) {
                    fprintf(stderr, "hot_max_factor must be > 0\n");
                    goto error;
                }
                break;
            case WARM_MAX_FACTOR:
                if (subopts_value == ((void *)0)) {
                    fprintf(stderr, "Missing warm_max_factor argument\n");
                    goto error;
                }
                settings.warm_max_factor = atof(subopts_value);
                if (settings.warm_max_factor <= 0) {
                    fprintf(stderr, "warm_max_factor must be > 0\n");
                    goto error;
                }
                break;
            case TEMPORARY_TTL:
                if (subopts_value == ((void *)0)) {
                    fprintf(stderr, "Missing temporary_ttl argument\n");
                    goto error;
                }
                settings.temp_lru = true;
                settings.temporary_ttl = atoi(subopts_value);
                break;
            case IDLE_TIMEOUT:
                if (subopts_value == ((void *)0)) {
                    fprintf(stderr, "Missing numeric argument for idle_timeout\n");
                    goto error;
                }
                settings.idle_timeout = atoi(subopts_value);
                break;
            case WATCHER_LOGBUF_SIZE:
                if (subopts_value == ((void *)0)) {
                    fprintf(stderr, "Missing watcher_logbuf_size argument\n");
                    goto error;
                }
                if (!safe_strtoul(subopts_value, &settings.logger_watcher_buf_size)) {
                    fprintf(stderr, "could not parse argument to watcher_logbuf_size\n");
                    goto error;
                }
                settings.logger_watcher_buf_size *= 1024;
                break;
            case WORKER_LOGBUF_SIZE:
                if (subopts_value == ((void *)0)) {
                    fprintf(stderr, "Missing worker_logbuf_size argument\n");
                    goto error;
                }
                if (!safe_strtoul(subopts_value, &settings.logger_buf_size)) {
                    fprintf(stderr, "could not parse argument to worker_logbuf_size\n");
                    goto error;
                }
                settings.logger_buf_size *= 1024;
                break;
            case SLAB_SIZES:
                slab_sizes_unparsed = strdup(subopts_value);
                break;
            case SLAB_CHUNK_MAX:
                if (subopts_value == ((void *)0)) {
                    fprintf(stderr, "Missing slab_chunk_max argument\n");
                    goto error;
                }
                if (!safe_strtol(subopts_value, &settings.slab_chunk_size_max)) {
                    fprintf(stderr, "could not parse argument to slab_chunk_max\n");
                    goto error;
                }
                if (settings.slab_chunk_size_max <= 0) {
                    fprintf(stderr, "slab_chunk_max must be >= 0\n");
                    goto error;
                }
                if (settings.slab_chunk_size_max > (1 << 10)) {
                    fprintf(stderr, "slab_chunk_max must be specified in kilobytes.\n");
                    goto error;
                }
                settings.slab_chunk_size_max *= (1 << 10);
                slab_chunk_size_changed = true;
                break;
            case TRACK_SIZES:
                item_stats_sizes_init();
                break;
            case NO_INLINE_ASCII_RESP:
                break;
            case INLINE_ASCII_RESP:
                break;
            case NO_CHUNKED_ITEMS:
                settings.slab_chunk_size_max = settings.slab_page_size;
                break;
            case NO_SLAB_REASSIGN:
                settings.slab_reassign = false;
                break;
            case NO_SLAB_AUTOMOVE:
                settings.slab_automove = 0;
                break;
            case NO_MAXCONNS_FAST:
                settings.maxconns_fast = false;
                break;
            case NO_LRU_CRAWLER:
                settings.lru_crawler = false;
                start_lru_crawler = false;
                break;
            case NO_LRU_MAINTAINER:
                start_lru_maintainer = false;
                settings.lru_segmented = false;
                break;
            case SSL_CERT:
                if (subopts_value == ((void *)0)) {
                    fprintf(stderr, "Missing ssl_chain_cert argument\n");
                    goto error;
                }
                settings.ssl_chain_cert = strdup(subopts_value);
                break;
            case SSL_KEY:
                if (subopts_value == ((void *)0)) {
                    fprintf(stderr, "Missing ssl_key argument\n");
                    goto error;
                }
                settings.ssl_key = strdup(subopts_value);
                break;
            case SSL_VERIFY_MODE:
            {
                if (subopts_value == ((void *)0)) {
                    fprintf(stderr, "Missing ssl_verify_mode argument\n");
                    goto error;
                }
                int verify = 0;
                if (!safe_strtol(subopts_value, &verify)) {
                    fprintf(stderr, "could not parse argument to ssl_verify_mode\n");
                    goto error;
                }
                if (!ssl_set_verify_mode(verify)) {
                    fprintf(stderr, "Invalid ssl_verify_mode. Use help to see valid options.\n");
                    goto error;
                }
                break;
            }
            case SSL_KEYFORM:
                if (subopts_value == ((void *)0)) {
                    fprintf(stderr, "Missing ssl_keyformat argument\n");
                    goto error;
                }
                if (!safe_strtol(subopts_value, &settings.ssl_keyformat)) {
                    fprintf(stderr, "could not parse argument to ssl_keyformat\n");
                    goto error;
                }
                break;
            case SSL_CIPHERS:
                if (subopts_value == ((void *)0)) {
                    fprintf(stderr, "Missing ssl_ciphers argument\n");
                    goto error;
                }
                settings.ssl_ciphers = strdup(subopts_value);
                break;
            case SSL_CA_CERT:
                if (subopts_value == ((void *)0)) {
                    fprintf(stderr, "Missing ssl_ca_cert argument\n");
                    goto error;
                }
                settings.ssl_ca_cert = strdup(subopts_value);
                break;
            case SSL_WBUF_SIZE:
                if (subopts_value == ((void *)0)) {
                    fprintf(stderr, "Missing ssl_wbuf_size argument\n");
                    goto error;
                }
                if (!safe_strtoul(subopts_value, &settings.ssl_wbuf_size)) {
                    fprintf(stderr, "could not parse argument to ssl_wbuf_size\n");
                    goto error;
                }
                settings.ssl_wbuf_size *= 1024;
                break;
            case SSL_SESSION_CACHE:
                settings.ssl_session_cache = true;
                break;
            case SSL_KERNEL_TLS:
                settings.ssl_kernel_tls = true;
                break;
            case SSL_MIN_VERSION: {
                int min_version;
                if (subopts_value == ((void *)0)) {
                    fprintf(stderr, "Missing ssl_min_version argument\n");
                    goto error;
                }
                if (!safe_strtol(subopts_value, &min_version)) {
                    fprintf(stderr, "could not parse argument to ssl_min_version\n");
                    goto error;
                }
                if (!ssl_set_min_version(min_version)) {
                    fprintf(stderr, "Invalid ssl_min_version. Use help to see valid options.\n");
                    goto error;
                }
                break;
            }
            case MODERN:
                break;
            case NO_MODERN:
                if (!slab_chunk_size_changed) {
                    settings.slab_chunk_size_max = settings.slab_page_size;
                }
                settings.slab_reassign = false;
                settings.slab_automove = 0;
                settings.maxconns_fast = false;
                settings.lru_segmented = false;
                hash_type = JENKINS_HASH;
                start_lru_crawler = false;
                start_lru_maintainer = false;
                break;
            case NO_DROP_PRIVILEGES:
                settings.drop_privileges = false;
                break;
            case DROP_PRIVILEGES:
                settings.drop_privileges = true;
                break;
            case RESP_OBJ_MEM_LIMIT:
                fprintf(stderr, "DEPRECATED: resp_obj_mem_limit no longer used. See read_buf_mem_limit,\n");
                break;
            case READ_BUF_MEM_LIMIT:
                if (subopts_value == ((void *)0)) {
                    fprintf(stderr, "Missing read_buf_mem_limit argument\n");
                    goto error;
                }
                if (!safe_strtoul(subopts_value, &settings.read_buf_mem_limit)) {
                    fprintf(stderr, "could not parse argument to read_buf_mem_limit\n");
                    goto error;
                }
                settings.read_buf_mem_limit *= 1024 * 1024;
                break;
            case PROXY_CONFIG:
                if (subopts_value == ((void *)0)) {
                    fprintf(stderr, "Missing proxy_config file argument\n");
                    goto error;
                }
                if (protocol_specified) {
                    fprintf(stderr, "Cannot specify a protocol with proxy mode enabled\n");
                    goto error;
                }
                settings.proxy_startfile = strdup(subopts_value);
                settings.proxy_enabled = true;
                settings.binding_protocol = proxy_prot;
                protocol_specified = true;
                break;
            case PROXY_ARG:
                settings.proxy_startarg = strdup(subopts_value);
                break;
            case PROXY_URING:
                settings.proxy_uring = true;
                break;
            case PROXY_MEMPROFILE:
                settings.proxy_memprofile = true;
                break;
            case COOKIE_ID:
                (void)safe_strtoul(subopts_value, &settings.sock_cookie_id);
                break;
            default:
                if (storage_read_config(storage_cf, &subopts_temp)) {
                    goto error;
                }
            }
            if (subopts_temp_o) {
                free(subopts_temp_o);
            }
            }
            free(subopts_orig);
            break;
        default:
            fprintf(stderr, "Illegal argument \"%c\"\n", c);
            return 1;
        }
    }
    if (settings.num_napi_ids > settings.num_threads) {
        fprintf(stderr, "Number of napi_ids(%d) cannot be greater than number of threads(%d)\n",
                settings.num_napi_ids, settings.num_threads);
        exit(64);
    }
    if (settings.item_size_max < 1024) {
        fprintf(stderr, "Item max size cannot be less than 1024 bytes.\n");
        exit(64);
    }
    if (settings.item_size_max > (settings.maxbytes / 2)) {
        fprintf(stderr, "Cannot set item size limit higher than 1/2 of memory max.\n");
        exit(64);
    }
    if (settings.item_size_max > (1024 * 1024 * 1024)) {
        fprintf(stderr, "Cannot set item size limit higher than a gigabyte.\n");
        exit(64);
    }
    if (settings.item_size_max > 1024 * 1024) {
        if (!slab_chunk_size_changed) {
            settings.slab_chunk_size_max = settings.slab_page_size / 2;
        }
    }
    if (settings.slab_chunk_size_max > settings.item_size_max) {
        fprintf(stderr, "slab_chunk_max (bytes: %d) cannot be larger than -I (item_size_max %d)\n",
                settings.slab_chunk_size_max, settings.item_size_max);
        exit(64);
    }
    if (settings.item_size_max % settings.slab_chunk_size_max != 0) {
        fprintf(stderr, "-I (item_size_max: %d) must be evenly divisible by slab_chunk_max (bytes: %d)\n",
                settings.item_size_max, settings.slab_chunk_size_max);
        exit(64);
    }
    if (settings.slab_page_size % settings.slab_chunk_size_max != 0) {
        fprintf(stderr, "slab_chunk_max (bytes: %d) must divide evenly into %d (slab_page_size)\n",
                settings.slab_chunk_size_max, settings.slab_page_size);
        exit(64);
    }
    switch (storage_check_config(storage_cf)) {
        case 0:
            storage_enabled = true;
            break;
        case 1:
            exit(64);
            break;
    }
    if (slab_sizes_unparsed != ((void *)0)) {
        char *temp = strdup(slab_sizes_unparsed);
        if (_parse_slab_sizes(slab_sizes_unparsed, slab_sizes)) {
            use_slab_sizes = true;
            if (meta->slab_config) {
                free(meta->slab_config);
            }
            meta->slab_config = temp;
        } else {
            exit(64);
        }
    } else if (!meta->slab_config) {
        meta->slab_config = "1.25";
    }
    if (settings.hot_lru_pct + settings.warm_lru_pct > 80) {
        fprintf(stderr, "hot_lru_pct + warm_lru_pct cannot be more than 80%% combined\n");
        exit(64);
    }
    if (settings.temp_lru && !start_lru_maintainer) {
        fprintf(stderr, "temporary_ttl requires lru_maintainer to be enabled\n");
        exit(64);
    }
    if (hash_init(hash_type) != 0) {
        fprintf(stderr, "Failed to initialize hash_algorithm!\n");
        exit(64);
    }
    if (settings.inter != ((void *)0) && _Generic (0 ? (settings.inter) : (void *) 1, const void *: (const char *) (strchr (settings.inter, ',')), default: strchr (settings.inter, ','))) {
        settings.num_threads_per_udp = 1;
    } else {
        settings.num_threads_per_udp = settings.num_threads;
    }
    if (settings.sasl) {
        if (!protocol_specified) {
            settings.binding_protocol = binary_prot;
        } else {
            if (settings.binding_protocol != binary_prot) {
                fprintf(stderr, "ERROR: You cannot allow the ASCII protocol while using SASL.\n");
                exit(64);
            }
        }
        if (settings.udpport) {
            fprintf(stderr, "ERROR: Cannot enable UDP while using binary SASL authentication.\n");
            exit(64);
        }
    }
    if (settings.auth_file) {
        if (!protocol_specified) {
            settings.binding_protocol = ascii_prot;
        } else {
            if (settings.binding_protocol != ascii_prot) {
                fprintf(stderr, "ERROR: You cannot allow the BINARY protocol while using ascii authentication tokens.\n");
                exit(64);
            }
        }
    }
    if (udp_specified && settings.udpport != 0 && !tcp_specified) {
        settings.port = settings.udpport;
    }
    if (settings.port > 65535) {
        fprintf(stderr, "ERROR: Invalid port number %d.\n", settings.port);
        exit(64);
    }
    if (settings.ssl_enabled) {
        if (!settings.port) {
            fprintf(stderr, "ERROR: You cannot enable SSL without a TCP port.\n");
            exit(64);
        }
        ssl_init();
    }
    if (maxcore != 0) {
        struct rlimit rlim_new;
        if (getrlimit(RLIMIT_CORE, &rlim) == 0) {
            rlim_new.rlim_cur = rlim_new.rlim_max = ((__rlim_t) -1);
            if (setrlimit(RLIMIT_CORE, &rlim_new)!= 0) {
                rlim_new.rlim_cur = rlim_new.rlim_max = rlim.rlim_max;
                (void)setrlimit(RLIMIT_CORE, &rlim_new);
            }
        }
        if ((getrlimit(RLIMIT_CORE, &rlim) != 0) || rlim.rlim_cur == 0) {
            fprintf(stderr, "failed to ensure corefile creation\n");
            exit(71);
        }
    }
    if (getrlimit(RLIMIT_NOFILE, &rlim) != 0) {
        fprintf(stderr, "failed to getrlimit number of files\n");
        exit(71);
    } else {
        rlim.rlim_cur = settings.maxconns;
        rlim.rlim_max = settings.maxconns;
        if (setrlimit(RLIMIT_NOFILE, &rlim) != 0) {
            fprintf(stderr, "failed to set rlimit for open files. Try starting as root or requesting smaller maxconns value.\n");
            exit(71);
        }
    }
    if (getuid() == 0 || geteuid() == 0) {
        if (username == 0 || *username == '\0') {
            fprintf(stderr, "must add '-u root' to start as root\n");
            exit(64);
        }
        if ((pw = getpwnam(username)) == 0) {
            fprintf(stderr, "can't find the user %s to switch to\n", username);
            exit(67);
        }
        if (setgroups(0, ((void *)0)) < 0) {
            bool should_exit = (*__errno_location ()) != 1;
            fprintf(stderr, "failed to drop supplementary groups: %s\n",
                    strerror((*__errno_location ())));
            if (should_exit) {
                exit(71);
            }
        }
        if (setgid(pw->pw_gid) < 0 || setuid(pw->pw_uid) < 0) {
            fprintf(stderr, "failed to assume identity of user %s\n", username);
            exit(71);
        }
    }
    if (settings.sasl) {
        {};
    }
    if (do_daemonize) {
        if (daemonize(maxcore, settings.verbose) == -1) {
            fprintf(stderr, "failed to daemon() in order to daemonize\n");
            exit(1);
        }
    }
    if (lock_memory) {
        int res = mlockall(1 | 2);
        if (res != 0) {
            fprintf(stderr, "warning: -k invalid, mlockall() failed: %s\n",
                    strerror((*__errno_location ())));
        }
    }
    struct event_config *ev_config;
    ev_config = event_config_new();
    event_config_set_flag(ev_config, EVENT_BASE_FLAG_NOLOCK);
    main_base = event_base_new_with_config(ev_config);
    event_config_free(ev_config);
    if (settings.auth_file) {
        if (settings.udpport) {
            fprintf(stderr, "Cannot use UDP with ascii authentication enabled (-U 0 to disable)\n");
            exit(64);
        }
        switch (authfile_load(settings.auth_file)) {
            case AUTHFILE_STATFAIL:
                vperror("Could not stat authfile [%s], error %s", settings.auth_file
                                                            , strerror((*__errno_location ())));
                exit(1);
                break;
            case AUTHFILE_OPENFAIL:
                vperror("Could not open authfile [%s] for reading, error %s", settings.auth_file
                                                                           , strerror((*__errno_location ())));
                exit(1);
                break;
            case AUTHFILE_OOM:
                fprintf(stderr, "Out of memory reading password file: %s", settings.auth_file);
                exit(1);
                break;
            case AUTHFILE_MALFORMED:
                fprintf(stderr, "Authfile [%s] has a malformed entry. Should be 'user:password'", settings.auth_file);
                exit(1);
                break;
            case AUTHFILE_OK:
                break;
        }
    }
    stats_init();
    logger_init();
    logger_create();
    conn_init();
    bool reuse_mem = false;
    void *mem_base = ((void *)0);
    bool prefill = false;
    if (settings.memory_file != ((void *)0)) {
        preallocate = true;
        prefill = true;
        restart_register("main", _mc_meta_load_cb, _mc_meta_save_cb, meta);
        reuse_mem = restart_mmap_open(settings.maxbytes,
                        settings.memory_file,
                        &mem_base);
        meta->mmap_base = mem_base;
    }
    assoc_init(settings.hashpower_init);
    if (storage_enabled && reuse_mem) {
        fprintf(stderr, "[restart] memory restart with extstore not presently supported.\n");
        reuse_mem = false;
    }
    slabs_init(settings.maxbytes, settings.factor, preallocate,
            use_slab_sizes ? slab_sizes : ((void *)0), mem_base, reuse_mem);
    if (storage_enabled) {
        storage = storage_init(storage_cf);
        if (storage == ((void *)0)) {
            exit(1);
        }
        ext_storage = storage;
        prefill = true;
    }
    if (settings.drop_privileges) {
        ;
    }
    if (prefill)
        slabs_prefill_global();
    if (settings.memory_file != ((void *)0) && reuse_mem) {
        mc_ptr_t old_base = meta->old_base;
        ((void) (0));
        process_started = meta->process_started;
        restart_fixup((void *)old_base);
    }
    if (signal(13, ((__sighandler_t) 1)) == ((__sighandler_t) -1)) {
        perror("failed to ignore SIGPIPE; sigaction");
        exit(71);
    }
    if (settings.proxy_enabled) {
        settings.proxy_ctx = proxy_init(settings.proxy_uring, settings.proxy_memprofile);
    }
    memcached_thread_init(settings.num_threads, storage);
    init_lru_crawler(storage);
    if (settings.proxy_enabled) {
        if (proxy_first_confload(settings.proxy_ctx) != 0) {
            exit(1);
        }
    }
    if (start_assoc_maint && start_assoc_maintenance_thread() == -1) {
        exit(1);
    }
    if (start_lru_crawler && start_item_crawler_thread() != 0) {
        fprintf(stderr, "Failed to enable LRU crawler thread\n");
        exit(1);
    }
    if (storage && start_storage_compact_thread(storage) != 0) {
        fprintf(stderr, "Failed to start storage compaction thread\n");
        exit(1);
    }
    if (storage && start_storage_write_thread(storage) != 0) {
        fprintf(stderr, "Failed to start storage writer thread\n");
        exit(1);
    }
    if (start_lru_maintainer && start_lru_maintainer_thread(storage) != 0) {
        fprintf(stderr, "Failed to enable LRU maintainer thread\n");
        free(meta);
        return 1;
    }
    if (settings.slab_reassign) {
        settings.slab_rebal = start_slab_maintenance_thread(storage);
        if (!settings.slab_rebal) {
            exit(1);
        }
    }
    if (settings.idle_timeout && start_conn_timeout_thread() == -1) {
        exit(1);
    }
    {
        struct timespec ts;
        if (clock_gettime(1, &ts) == 0) {
            monotonic = true;
            monotonic_start = ts.tv_sec;
            if (reuse_mem) {
                monotonic_start -= meta->current_time + meta->time_delta;
            } else {
                monotonic_start -= 60 + 2;
            }
        }
    }
    clock_handler(0, 0, 0);
    if (settings.socketpath != ((void *)0)) {
        (*__errno_location ()) = 0;
        if (server_socket_unix(settings.socketpath,settings.access)) {
            vperror("failed to listen on UNIX socket: %s", settings.socketpath);
            exit(71);
        }
    }
    if (settings.socketpath == ((void *)0)) {
        const char *portnumber_filename = getenv("MEMCACHED_PORT_FILENAME");
        char *temp_portnumber_filename = ((void *)0);
        size_t len;
        FILE *portnumber_file = ((void *)0);
        if (portnumber_filename != ((void *)0)) {
            len = strlen(portnumber_filename)+4+1;
            temp_portnumber_filename = malloc(len);
            if (temp_portnumber_filename == ((void *)0)) {
                vperror("Failed to allocate memory for portnumber file");
                exit(71);
            }
            snprintf(temp_portnumber_filename,
                     len,
                     "%s.lck", portnumber_filename);
            portnumber_file = fopen(temp_portnumber_filename, "a");
            if (portnumber_file == ((void *)0)) {
                fprintf(stderr, "Failed to open \"%s\": %s\n",
                        temp_portnumber_filename, strerror((*__errno_location ())));
            }
        }
        (*__errno_location ()) = 0;
        if (settings.port && server_sockets(settings.port, tcp_transport,
                                           portnumber_file)) {
            if (settings.inter == ((void *)0)) {
                vperror("failed to listen on TCP port %d", settings.port);
            } else {
                vperror("failed to listen on one of interface(s) %s", settings.inter);
            }
            free(temp_portnumber_filename);
            exit(71);
        }
        (*__errno_location ()) = 0;
        if (settings.udpport && server_sockets(settings.udpport, udp_transport,
                                              portnumber_file)) {
            if (settings.inter == ((void *)0)) {
                vperror("failed to listen on UDP port %d", settings.udpport);
            } else {
                vperror("failed to listen on one of interface(s) %s", settings.inter);
            }
            free(temp_portnumber_filename);
            exit(71);
        }
        if (portnumber_file) {
            fclose(portnumber_file);
            rename(temp_portnumber_filename, portnumber_filename);
        }
        if (temp_portnumber_filename)
            free(temp_portnumber_filename);
    }
    usleep(1000);
    if (stats_state.curr_conns + stats_state.reserved_fds >= settings.maxconns - 1) {
        fprintf(stderr, "Maxconns setting is too low, use -c to increase.\n");
        exit(1);
    }
    if (pid_file != ((void *)0)) {
        save_pid(pid_file);
    }
    if (settings.drop_privileges) {
        ;
    }
    uriencode_init();
    while (!stop_main_loop) {
        if (event_base_loop(main_base, 0x01) != 0) {
            retval = 1;
            break;
        }
    }
    switch (stop_main_loop) {
        case GRACE_STOP:
            fprintf(stderr, "Gracefully stopping\n");
        break;
        case EXIT_NORMALLY:
            if (settings.verbose) {
                fprintf(stderr, "Exiting normally\n");
            }
        break;
        default:
            fprintf(stderr, "Exiting on error\n");
        break;
    }
    if (stop_main_loop == GRACE_STOP) {
        stop_threads();
        if (settings.memory_file != ((void *)0)) {
            restart_mmap_close();
        }
    }
    if (do_daemonize)
        remove_pidfile(pid_file);
    if (settings.inter)
      free(settings.inter);
    event_base_free(main_base);
    free(meta);
    return retval;
error:
    if (subopts_orig)
        free(subopts_orig);
    return 1;
}
