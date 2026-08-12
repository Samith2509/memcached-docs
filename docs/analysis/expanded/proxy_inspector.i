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
struct extstore_page_data {
    uint64_t version;
    uint64_t bytes_used;
    unsigned int bucket;
    unsigned int free_bucket;
    bool active;
};
struct extstore_stats {
    uint64_t page_allocs;
    uint64_t page_count;
    uint64_t page_evictions;
    uint64_t page_reclaims;
    uint64_t page_size;
    uint64_t pages_free;
    uint64_t pages_used;
    uint64_t objects_evicted;
    uint64_t objects_read;
    uint64_t objects_written;
    uint64_t objects_used;
    uint64_t bytes_evicted;
    uint64_t bytes_written;
    uint64_t bytes_read;
    uint64_t bytes_used;
    uint64_t bytes_fragmented;
    uint64_t io_queue;
    struct extstore_page_data *page_data;
};
struct extstore_conf {
    unsigned int page_size;
    unsigned int page_count;
    unsigned int page_buckets;
    unsigned int free_page_buckets;
    unsigned int wbuf_size;
    unsigned int wbuf_count;
    unsigned int io_threadcount;
    unsigned int io_depth;
};
struct extstore_conf_file {
    unsigned int page_count;
    char *file;
    int fd;
    uint64_t offset;
    uint64_t total_size;
    unsigned int bucket;
    unsigned int free_bucket;
    struct extstore_conf_file *next;
};
enum obj_io_mode {
    OBJ_IO_READ = 0,
    OBJ_IO_WRITE,
};
typedef struct _obj_io obj_io;
typedef void (*obj_io_cb)(void *e, obj_io *io, int ret);
struct _obj_io {
    void *data;
    struct _obj_io *next;
    char *buf;
    struct iovec *iov;
    unsigned int iovcnt;
    unsigned int page_version;
    unsigned int len;
    unsigned int offset;
    unsigned short page_id;
    enum obj_io_mode mode;
    obj_io_cb cb;
};
enum extstore_res {
    EXTSTORE_INIT_BAD_WBUF_SIZE = 1,
    EXTSTORE_INIT_NEED_MORE_WBUF,
    EXTSTORE_INIT_NEED_MORE_BUCKETS,
    EXTSTORE_INIT_PAGE_WBUF_ALIGNMENT,
    EXTSTORE_INIT_TOO_MANY_PAGES,
    EXTSTORE_INIT_OOM,
    EXTSTORE_INIT_OPEN_FAIL,
    EXTSTORE_INIT_THREAD_FAIL
};
const char *extstore_err(enum extstore_res res);
void *extstore_init(struct extstore_conf_file *fh, struct extstore_conf *cf, enum extstore_res *res);
int extstore_write_request(void *ptr, unsigned int bucket, unsigned int free_bucket, obj_io *io);
void extstore_write(void *ptr, obj_io *io);
int extstore_submit(void *ptr, obj_io *io);
int extstore_submit_bg(void *ptr, obj_io *io);
int extstore_check(void *ptr, unsigned int page_id, uint64_t page_version);
int extstore_delete(void *ptr, unsigned int page_id, uint64_t page_version, unsigned int count, unsigned int bytes);
void extstore_get_stats(void *ptr, struct extstore_stats *st);
void extstore_get_page_data(void *ptr, struct extstore_stats *st);
void extstore_close_page(void *ptr, unsigned int page_id, uint64_t page_version);
void extstore_evict_page(void *ptr, unsigned int page_id, uint64_t page_version);

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

typedef struct lua_State lua_State;
typedef double lua_Number;
typedef long long lua_Integer;
typedef unsigned long long lua_Unsigned;
typedef intptr_t lua_KContext;
typedef int (*lua_CFunction) (lua_State *L);
typedef int (*lua_KFunction) (lua_State *L, int status, lua_KContext ctx);
typedef const char * (*lua_Reader) (lua_State *L, void *ud, size_t *sz);
typedef int (*lua_Writer) (lua_State *L, const void *p, size_t sz, void *ud);
typedef void * (*lua_Alloc) (void *ud, void *ptr, size_t osize, size_t nsize);
typedef void (*lua_WarnFunction) (void *ud, const char *msg, int tocont);
extern const char lua_ident[];
extern lua_State *(lua_newstate) (lua_Alloc f, void *ud);
extern void (lua_close) (lua_State *L);
extern lua_State *(lua_newthread) (lua_State *L);
extern int (lua_resetthread) (lua_State *L);
extern lua_CFunction (lua_atpanic) (lua_State *L, lua_CFunction panicf);
extern lua_Number (lua_version) (lua_State *L);
extern int (lua_absindex) (lua_State *L, int idx);
extern int (lua_gettop) (lua_State *L);
extern void (lua_settop) (lua_State *L, int idx);
extern void (lua_pushvalue) (lua_State *L, int idx);
extern void (lua_rotate) (lua_State *L, int idx, int n);
extern void (lua_copy) (lua_State *L, int fromidx, int toidx);
extern int (lua_checkstack) (lua_State *L, int n);
extern void (lua_xmove) (lua_State *from, lua_State *to, int n);
extern int (lua_isnumber) (lua_State *L, int idx);
extern int (lua_isstring) (lua_State *L, int idx);
extern int (lua_iscfunction) (lua_State *L, int idx);
extern int (lua_isinteger) (lua_State *L, int idx);
extern int (lua_isuserdata) (lua_State *L, int idx);
extern int (lua_type) (lua_State *L, int idx);
extern const char *(lua_typename) (lua_State *L, int tp);
extern lua_Number (lua_tonumberx) (lua_State *L, int idx, int *isnum);
extern lua_Integer (lua_tointegerx) (lua_State *L, int idx, int *isnum);
extern int (lua_toboolean) (lua_State *L, int idx);
extern const char *(lua_tolstring) (lua_State *L, int idx, size_t *len);
extern lua_Unsigned (lua_rawlen) (lua_State *L, int idx);
extern lua_CFunction (lua_tocfunction) (lua_State *L, int idx);
extern void *(lua_touserdata) (lua_State *L, int idx);
extern lua_State *(lua_tothread) (lua_State *L, int idx);
extern const void *(lua_topointer) (lua_State *L, int idx);
extern void (lua_arith) (lua_State *L, int op);
extern int (lua_rawequal) (lua_State *L, int idx1, int idx2);
extern int (lua_compare) (lua_State *L, int idx1, int idx2, int op);
extern void (lua_pushnil) (lua_State *L);
extern void (lua_pushnumber) (lua_State *L, lua_Number n);
extern void (lua_pushinteger) (lua_State *L, lua_Integer n);
extern const char *(lua_pushlstring) (lua_State *L, const char *s, size_t len);
extern const char *(lua_pushstring) (lua_State *L, const char *s);
extern const char *(lua_pushvfstring) (lua_State *L, const char *fmt,
                                                      va_list argp);
extern const char *(lua_pushfstring) (lua_State *L, const char *fmt, ...);
extern void (lua_pushcclosure) (lua_State *L, lua_CFunction fn, int n);
extern void (lua_pushboolean) (lua_State *L, int b);
extern void (lua_pushlightuserdata) (lua_State *L, void *p);
extern int (lua_pushthread) (lua_State *L);
extern int (lua_getglobal) (lua_State *L, const char *name);
extern int (lua_gettable) (lua_State *L, int idx);
extern int (lua_getfield) (lua_State *L, int idx, const char *k);
extern int (lua_geti) (lua_State *L, int idx, lua_Integer n);
extern int (lua_rawget) (lua_State *L, int idx);
extern int (lua_rawgeti) (lua_State *L, int idx, lua_Integer n);
extern int (lua_rawgetp) (lua_State *L, int idx, const void *p);
extern void (lua_createtable) (lua_State *L, int narr, int nrec);
extern void *(lua_newuserdatauv) (lua_State *L, size_t sz, int nuvalue);
extern int (lua_getmetatable) (lua_State *L, int objindex);
extern int (lua_getiuservalue) (lua_State *L, int idx, int n);
extern void (lua_setglobal) (lua_State *L, const char *name);
extern void (lua_settable) (lua_State *L, int idx);
extern void (lua_setfield) (lua_State *L, int idx, const char *k);
extern void (lua_seti) (lua_State *L, int idx, lua_Integer n);
extern void (lua_rawset) (lua_State *L, int idx);
extern void (lua_rawseti) (lua_State *L, int idx, lua_Integer n);
extern void (lua_rawsetp) (lua_State *L, int idx, const void *p);
extern int (lua_setmetatable) (lua_State *L, int objindex);
extern int (lua_setiuservalue) (lua_State *L, int idx, int n);
extern void (lua_callk) (lua_State *L, int nargs, int nresults,
                           lua_KContext ctx, lua_KFunction k);
extern int (lua_pcallk) (lua_State *L, int nargs, int nresults, int errfunc,
                            lua_KContext ctx, lua_KFunction k);
extern int (lua_load) (lua_State *L, lua_Reader reader, void *dt,
                          const char *chunkname, const char *mode);
extern int (lua_dump) (lua_State *L, lua_Writer writer, void *data, int strip);
extern int (lua_yieldk) (lua_State *L, int nresults, lua_KContext ctx,
                               lua_KFunction k);
extern int (lua_resume) (lua_State *L, lua_State *from, int narg,
                               int *nres);
extern int (lua_status) (lua_State *L);
extern int (lua_isyieldable) (lua_State *L);
extern void (lua_setwarnf) (lua_State *L, lua_WarnFunction f, void *ud);
extern void (lua_warning) (lua_State *L, const char *msg, int tocont);
extern int (lua_gc) (lua_State *L, int what, ...);
extern int (lua_error) (lua_State *L);
extern int (lua_next) (lua_State *L, int idx);
extern void (lua_concat) (lua_State *L, int n);
extern void (lua_len) (lua_State *L, int idx);
extern size_t (lua_stringtonumber) (lua_State *L, const char *s);
extern lua_Alloc (lua_getallocf) (lua_State *L, void **ud);
extern void (lua_setallocf) (lua_State *L, lua_Alloc f, void *ud);
extern void (lua_toclose) (lua_State *L, int idx);
extern void (lua_closeslot) (lua_State *L, int idx);
typedef struct lua_Debug lua_Debug;
typedef void (*lua_Hook) (lua_State *L, lua_Debug *ar);
extern int (lua_getstack) (lua_State *L, int level, lua_Debug *ar);
extern int (lua_getinfo) (lua_State *L, const char *what, lua_Debug *ar);
extern const char *(lua_getlocal) (lua_State *L, const lua_Debug *ar, int n);
extern const char *(lua_setlocal) (lua_State *L, const lua_Debug *ar, int n);
extern const char *(lua_getupvalue) (lua_State *L, int funcindex, int n);
extern const char *(lua_setupvalue) (lua_State *L, int funcindex, int n);
extern void *(lua_upvalueid) (lua_State *L, int fidx, int n);
extern void (lua_upvaluejoin) (lua_State *L, int fidx1, int n1,
                                               int fidx2, int n2);
extern void (lua_sethook) (lua_State *L, lua_Hook func, int mask, int count);
extern lua_Hook (lua_gethook) (lua_State *L);
extern int (lua_gethookmask) (lua_State *L);
extern int (lua_gethookcount) (lua_State *L);
extern int (lua_setcstacklimit) (lua_State *L, unsigned int limit);
struct lua_Debug {
  int event;
  const char *name;
  const char *namewhat;
  const char *what;
  const char *source;
  size_t srclen;
  int currentline;
  int linedefined;
  int lastlinedefined;
  unsigned char nups;
  unsigned char nparams;
  char isvararg;
  char istailcall;
  unsigned short ftransfer;
  unsigned short ntransfer;
  char short_src[60];
  struct CallInfo *i_ci;
};
extern int (luaopen_base) (lua_State *L);
extern int (luaopen_coroutine) (lua_State *L);
extern int (luaopen_table) (lua_State *L);
extern int (luaopen_io) (lua_State *L);
extern int (luaopen_os) (lua_State *L);
extern int (luaopen_string) (lua_State *L);
extern int (luaopen_utf8) (lua_State *L);
extern int (luaopen_math) (lua_State *L);
extern int (luaopen_debug) (lua_State *L);
extern int (luaopen_package) (lua_State *L);
extern void (luaL_openlibs) (lua_State *L);
typedef struct luaL_Buffer luaL_Buffer;
typedef struct luaL_Reg {
  const char *name;
  lua_CFunction func;
} luaL_Reg;
extern void (luaL_checkversion_) (lua_State *L, lua_Number ver, size_t sz);
extern int (luaL_getmetafield) (lua_State *L, int obj, const char *e);
extern int (luaL_callmeta) (lua_State *L, int obj, const char *e);
extern const char *(luaL_tolstring) (lua_State *L, int idx, size_t *len);
extern int (luaL_argerror) (lua_State *L, int arg, const char *extramsg);
extern int (luaL_typeerror) (lua_State *L, int arg, const char *tname);
extern const char *(luaL_checklstring) (lua_State *L, int arg,
                                                          size_t *l);
extern const char *(luaL_optlstring) (lua_State *L, int arg,
                                          const char *def, size_t *l);
extern lua_Number (luaL_checknumber) (lua_State *L, int arg);
extern lua_Number (luaL_optnumber) (lua_State *L, int arg, lua_Number def);
extern lua_Integer (luaL_checkinteger) (lua_State *L, int arg);
extern lua_Integer (luaL_optinteger) (lua_State *L, int arg,
                                          lua_Integer def);
extern void (luaL_checkstack) (lua_State *L, int sz, const char *msg);
extern void (luaL_checktype) (lua_State *L, int arg, int t);
extern void (luaL_checkany) (lua_State *L, int arg);
extern int (luaL_newmetatable) (lua_State *L, const char *tname);
extern void (luaL_setmetatable) (lua_State *L, const char *tname);
extern void *(luaL_testudata) (lua_State *L, int ud, const char *tname);
extern void *(luaL_checkudata) (lua_State *L, int ud, const char *tname);
extern void (luaL_where) (lua_State *L, int lvl);
extern int (luaL_error) (lua_State *L, const char *fmt, ...);
extern int (luaL_checkoption) (lua_State *L, int arg, const char *def,
                                   const char *const lst[]);
extern int (luaL_fileresult) (lua_State *L, int stat, const char *fname);
extern int (luaL_execresult) (lua_State *L, int stat);
extern int (luaL_ref) (lua_State *L, int t);
extern void (luaL_unref) (lua_State *L, int t, int ref);
extern int (luaL_loadfilex) (lua_State *L, const char *filename,
                                               const char *mode);
extern int (luaL_loadbufferx) (lua_State *L, const char *buff, size_t sz,
                                   const char *name, const char *mode);
extern int (luaL_loadstring) (lua_State *L, const char *s);
extern lua_State *(luaL_newstate) (void);
extern lua_Integer (luaL_len) (lua_State *L, int idx);
extern void luaL_addgsub (luaL_Buffer *b, const char *s,
                                     const char *p, const char *r);
extern const char *(luaL_gsub) (lua_State *L, const char *s,
                                    const char *p, const char *r);
extern void (luaL_setfuncs) (lua_State *L, const luaL_Reg *l, int nup);
extern int (luaL_getsubtable) (lua_State *L, int idx, const char *fname);
extern void (luaL_traceback) (lua_State *L, lua_State *L1,
                                  const char *msg, int level);
extern void (luaL_requiref) (lua_State *L, const char *modname,
                                 lua_CFunction openf, int glb);
struct luaL_Buffer {
  char *b;
  size_t size;
  size_t n;
  lua_State *L;
  union {
    lua_Number n; double u; void *s; lua_Integer i; long l;
    char b[((int)(16 * sizeof(void*) * sizeof(lua_Number)))];
  } init;
};
extern void (luaL_buffinit) (lua_State *L, luaL_Buffer *B);
extern char *(luaL_prepbuffsize) (luaL_Buffer *B, size_t sz);
extern void (luaL_addlstring) (luaL_Buffer *B, const char *s, size_t l);
extern void (luaL_addstring) (luaL_Buffer *B, const char *s);
extern void (luaL_addvalue) (luaL_Buffer *B);
extern void (luaL_pushresult) (luaL_Buffer *B);
extern void (luaL_pushresultsize) (luaL_Buffer *B, size_t sz);
extern char *(luaL_buffinitsize) (lua_State *L, luaL_Buffer *B, size_t sz);
typedef struct luaL_Stream {
  FILE *f;
  lua_CFunction closef;
} luaL_Stream;
enum
  {
    EFD_SEMAPHORE = 00000001,
    EFD_CLOEXEC = 02000000,
    EFD_NONBLOCK = 00004000
  };
typedef uint64_t eventfd_t;

extern int eventfd (unsigned int __count, int __flags) __attribute__ ((__nothrow__ , __leaf__));
extern int eventfd_read (int __fd, eventfd_t *__value);
extern int eventfd_write (int __fd, eventfd_t __value);

typedef struct mcmc_resp_s {
    short type;
    short code;
    char *value;
    size_t reslen;
    size_t vlen_read;
    size_t vlen;
    union {
        struct {
            const char *rline;
            size_t rlen;
        };
        struct {
            const char *key;
            size_t klen;
            uint32_t flags;
            uint64_t cas;
        };
        struct {
            const char *sname;
            size_t snamelen;
            const char *stat;
            size_t statlen;
        };
    };
} mcmc_resp_t;
typedef struct mcmc_tokenizer_s {
    uint8_t ntokens;
    uint8_t mstart;
    uint16_t tokens[24];
    uint64_t metaflags;
} mcmc_tokenizer_t;
typedef struct mcmc_req_s {
    const char *request;
    uint8_t command;
    uint8_t cmd_type;
    uint8_t keytoken;
    uint8_t klen;
    uint8_t modeflags;
    int16_t llen;
    int32_t vlen;
} mcmc_req_t;
int mcmc_fd(void *c);
size_t mcmc_size(int options);
size_t mcmc_min_buffer_size(int options);
int mcmc_parse_buf(const char *buf, size_t read, mcmc_resp_t *r);
int mcmc_connect(void *c, char *host, char *port, int options);
int mcmc_check_nonblock_connect(void *c, int *err);
int mcmc_send_request(void *c, const char *request, int len, int count);
int mcmc_request_writev(void *c, const struct iovec *iov, int iovcnt, ssize_t *sent, int count);
int mcmc_disconnect(void *c);
void mcmc_get_error(void *c, char *code, size_t clen, char *msg, size_t mlen);
int mcmc_tokenize_res(const char *l, size_t len, mcmc_tokenizer_t *t);
int mcmc_tokenize(const char *l, size_t len, mcmc_tokenizer_t *t, int meta_offset);
const char *mcmc_token_get(const char *l, mcmc_tokenizer_t *t, int idx, int *len);
int mcmc_token_get_u32(const char *l, mcmc_tokenizer_t *t, int idx, uint32_t *val);
int mcmc_token_get_u64(const char *l, mcmc_tokenizer_t *t, int idx, uint64_t *val);
int mcmc_token_get_32(const char *l, mcmc_tokenizer_t *t, int idx, int32_t *val);
int mcmc_token_get_64(const char *l, mcmc_tokenizer_t *t, int idx, int64_t *val);
int mcmc_token_has_flag(const char *l, mcmc_tokenizer_t *t, char flag);
const char *mcmc_token_get_flag(const char *l, mcmc_tokenizer_t *t, char flag, int *len);
int mcmc_token_get_flag_u32(const char *l, mcmc_tokenizer_t *t, char flag, uint32_t *val);
int mcmc_token_get_flag_u64(const char *l, mcmc_tokenizer_t *t, char flag, uint64_t *val);
int mcmc_token_get_flag_32(const char *l, mcmc_tokenizer_t *t, char flag, int32_t *val);
int mcmc_token_get_flag_64(const char *l, mcmc_tokenizer_t *t, char flag, int64_t *val);
int mcmc_token_get_flag_idx(const char *l, mcmc_tokenizer_t *t, char flag);
int mcmc_token_get_flag_arg_u32(const char *l, mcmc_tokenizer_t *t, int idx, uint32_t *val);
int mcmc_token_get_flag_arg_u64(const char *l, mcmc_tokenizer_t *t, int idx, uint64_t *val);
int mcmc_token_get_flag_arg_32(const char *l, mcmc_tokenizer_t *t, int idx, int32_t *val);
int mcmc_token_get_flag_arg_64(const char *l, mcmc_tokenizer_t *t, int idx, int64_t *val);
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
void complete_nread_ascii(conn *c);
int try_read_command_asciiauth(conn *c);
int try_read_command_ascii(conn *c);
void process_command_ascii(conn *c, char *command, size_t cmdlen);
typedef struct mcp_parser_s mcp_parser_t;
struct mcp_parser_s {
    const char *request;
    void *vbuf;
    mcmc_tokenizer_t tok;
    uint8_t command;
    uint8_t cmd_type;
    uint8_t keytoken;
    uint32_t reqlen;
    int vlen;
    uint32_t klen;
    bool noreply;
};
enum proxy_cmd_types {
    CMD_TYPE_GENERIC = 0,
    CMD_TYPE_GET,
    CMD_TYPE_META,
};
enum proxy_defines {
    CMD_BASE = 0,
    CMD_MG, CMD_MS, CMD_MD, CMD_MN, CMD_MA, CMD_ME, CMD_GET, CMD_GAT, CMD_SET, CMD_ADD, CMD_CAS, CMD_GETS, CMD_GATS, CMD_INCR, CMD_DECR, CMD_TOUCH, CMD_APPEND, CMD_DELETE, CMD_REPLACE, CMD_PREPEND, CMD_END_STORAGE, CMD_QUIT, CMD_STATS, CMD_SLABS, CMD_WATCH, CMD_LRU, CMD_VERSION, CMD_SHUTDOWN, CMD_EXTSTORE, CMD_FLUSH_ALL, CMD_VERBOSITY, CMD_LRU_CRAWLER, CMD_REFRESH_CERTS, CMD_CACHE_MEMLIMIT,
    CMD_SIZE,
    CMD_ANY,
    CMD_ANY_STORAGE,
    CMD_FINAL,
};
int process_request(mcp_parser_t *pr, const char *command, size_t cmdlen);
int mc_prcmp(mcp_parser_t *pr, int token, const char *s);
bool mc_toktou32(mcp_parser_t *pr, int token, uint32_t *val);
bool mc_tokto32(mcp_parser_t *pr, int token, int32_t *val);
bool mc_toktod(mcp_parser_t *pr, int token, double *val);
bool mc_parse_exptime(mc_resp *resp, mcp_parser_t *pr, int token, rel_time_t *exptime);
typedef int (*parser_storage_get_cb)(LIBEVENT_THREAD *t, item *it, mc_resp *resp);
int process_get_cmd(LIBEVENT_THREAD *t, const char *key, const int nkey, mc_resp *resp, parser_storage_get_cb storage_cb, rel_time_t exptime, bool return_cas, bool should_touch);
item *process_update_cmd_start(LIBEVENT_THREAD *t, mcp_parser_t *pr, mc_resp *resp, int comm, bool handle_cas);
void process_update_cmd(LIBEVENT_THREAD *t, mcp_parser_t *pr, mc_resp *resp, int comm, bool handle_cas);
void process_arithmetic_cmd(LIBEVENT_THREAD *t, mcp_parser_t *pr, mc_resp *resp, const bool incr);
void process_delete_cmd(LIBEVENT_THREAD *t, mcp_parser_t *pr, mc_resp *resp);
void process_touch_cmd(LIBEVENT_THREAD *t, mcp_parser_t *pr, mc_resp *resp);
void process_mget_cmd(LIBEVENT_THREAD *t, mcp_parser_t *pr, mc_resp *resp, parser_storage_get_cb storage_cb);
item *process_mset_cmd_start(LIBEVENT_THREAD *t, mcp_parser_t *pr, mc_resp *resp,
        uint64_t *cas_in, bool *has_cas_in, short *comm);
void process_mset_cmd(LIBEVENT_THREAD *t, mcp_parser_t *pr, mc_resp *resp);
void process_mdelete_cmd(LIBEVENT_THREAD *t, mcp_parser_t *pr, mc_resp *resp);
void process_marithmetic_cmd(LIBEVENT_THREAD *t, mcp_parser_t *pr, mc_resp *resp);
static __inline __attribute__((unused)) unsigned XXH_INLINE_XXH_versionNumber (void);
typedef enum { XXH_INLINE_XXH_OK=0, XXH_INLINE_XXH_ERROR } XXH_INLINE_XXH_errorcode;
    typedef uint32_t XXH32_hash_t;
static __inline __attribute__((unused)) XXH32_hash_t XXH_INLINE_XXH32 (const void* input, size_t length, XXH32_hash_t seed);
typedef struct XXH_INLINE_XXH32_state_s XXH_INLINE_XXH32_state_t;
static __inline __attribute__((unused)) XXH_INLINE_XXH32_state_t* XXH_INLINE_XXH32_createState(void);
static __inline __attribute__((unused)) XXH_INLINE_XXH_errorcode XXH_INLINE_XXH32_freeState(XXH_INLINE_XXH32_state_t* statePtr);
static __inline __attribute__((unused)) void XXH_INLINE_XXH32_copyState(XXH_INLINE_XXH32_state_t* dst_state, const XXH_INLINE_XXH32_state_t* src_state);
static __inline __attribute__((unused)) XXH_INLINE_XXH_errorcode XXH_INLINE_XXH32_reset (XXH_INLINE_XXH32_state_t* statePtr, XXH32_hash_t seed);
static __inline __attribute__((unused)) XXH_INLINE_XXH_errorcode XXH_INLINE_XXH32_update (XXH_INLINE_XXH32_state_t* statePtr, const void* input, size_t length);
static __inline __attribute__((unused)) XXH32_hash_t XXH_INLINE_XXH32_digest (const XXH_INLINE_XXH32_state_t* statePtr);
typedef struct {
    unsigned char digest[4];
} XXH_INLINE_XXH32_canonical_t;
static __inline __attribute__((unused)) void XXH_INLINE_XXH32_canonicalFromHash(XXH_INLINE_XXH32_canonical_t* dst, XXH32_hash_t hash);
static __inline __attribute__((unused)) XXH32_hash_t XXH_INLINE_XXH32_hashFromCanonical(const XXH_INLINE_XXH32_canonical_t* src);
   typedef uint64_t XXH64_hash_t;
static __inline __attribute__((unused)) XXH64_hash_t XXH_INLINE_XXH64(const void* input, size_t length, XXH64_hash_t seed);
typedef struct XXH_INLINE_XXH64_state_s XXH_INLINE_XXH64_state_t;
static __inline __attribute__((unused)) XXH_INLINE_XXH64_state_t* XXH_INLINE_XXH64_createState(void);
static __inline __attribute__((unused)) XXH_INLINE_XXH_errorcode XXH_INLINE_XXH64_freeState(XXH_INLINE_XXH64_state_t* statePtr);
static __inline __attribute__((unused)) void XXH_INLINE_XXH64_copyState(XXH_INLINE_XXH64_state_t* dst_state, const XXH_INLINE_XXH64_state_t* src_state);
static __inline __attribute__((unused)) XXH_INLINE_XXH_errorcode XXH_INLINE_XXH64_reset (XXH_INLINE_XXH64_state_t* statePtr, XXH64_hash_t seed);
static __inline __attribute__((unused)) XXH_INLINE_XXH_errorcode XXH_INLINE_XXH64_update (XXH_INLINE_XXH64_state_t* statePtr, const void* input, size_t length);
static __inline __attribute__((unused)) XXH64_hash_t XXH_INLINE_XXH64_digest (const XXH_INLINE_XXH64_state_t* statePtr);
typedef struct { unsigned char digest[sizeof(XXH64_hash_t)]; } XXH_INLINE_XXH64_canonical_t;
static __inline __attribute__((unused)) void XXH_INLINE_XXH64_canonicalFromHash(XXH_INLINE_XXH64_canonical_t* dst, XXH64_hash_t hash);
static __inline __attribute__((unused)) XXH64_hash_t XXH_INLINE_XXH64_hashFromCanonical(const XXH_INLINE_XXH64_canonical_t* src);
static __inline __attribute__((unused)) XXH64_hash_t XXH_INLINE_XXH3_64bits(const void* data, size_t len);
static __inline __attribute__((unused)) XXH64_hash_t XXH_INLINE_XXH3_64bits_withSeed(const void* data, size_t len, XXH64_hash_t seed);
static __inline __attribute__((unused)) XXH64_hash_t XXH_INLINE_XXH3_64bits_withSecret(const void* data, size_t len, const void* secret, size_t secretSize);
typedef struct XXH_INLINE_XXH3_state_s XXH_INLINE_XXH3_state_t;
static __inline __attribute__((unused)) XXH_INLINE_XXH3_state_t* XXH_INLINE_XXH3_createState(void);
static __inline __attribute__((unused)) XXH_INLINE_XXH_errorcode XXH_INLINE_XXH3_freeState(XXH_INLINE_XXH3_state_t* statePtr);
static __inline __attribute__((unused)) void XXH_INLINE_XXH3_copyState(XXH_INLINE_XXH3_state_t* dst_state, const XXH_INLINE_XXH3_state_t* src_state);
static __inline __attribute__((unused)) XXH_INLINE_XXH_errorcode XXH_INLINE_XXH3_64bits_reset(XXH_INLINE_XXH3_state_t* statePtr);
static __inline __attribute__((unused)) XXH_INLINE_XXH_errorcode XXH_INLINE_XXH3_64bits_reset_withSeed(XXH_INLINE_XXH3_state_t* statePtr, XXH64_hash_t seed);
static __inline __attribute__((unused)) XXH_INLINE_XXH_errorcode XXH_INLINE_XXH3_64bits_reset_withSecret(XXH_INLINE_XXH3_state_t* statePtr, const void* secret, size_t secretSize);
static __inline __attribute__((unused)) XXH_INLINE_XXH_errorcode XXH_INLINE_XXH3_64bits_update (XXH_INLINE_XXH3_state_t* statePtr, const void* input, size_t length);
static __inline __attribute__((unused)) XXH64_hash_t XXH_INLINE_XXH3_64bits_digest (const XXH_INLINE_XXH3_state_t* statePtr);
typedef struct {
    XXH64_hash_t low64;
    XXH64_hash_t high64;
} XXH_INLINE_XXH128_hash_t;
static __inline __attribute__((unused)) XXH_INLINE_XXH128_hash_t XXH_INLINE_XXH3_128bits(const void* data, size_t len);
static __inline __attribute__((unused)) XXH_INLINE_XXH128_hash_t XXH_INLINE_XXH3_128bits_withSeed(const void* data, size_t len, XXH64_hash_t seed);
static __inline __attribute__((unused)) XXH_INLINE_XXH128_hash_t XXH_INLINE_XXH3_128bits_withSecret(const void* data, size_t len, const void* secret, size_t secretSize);
static __inline __attribute__((unused)) XXH_INLINE_XXH_errorcode XXH_INLINE_XXH3_128bits_reset(XXH_INLINE_XXH3_state_t* statePtr);
static __inline __attribute__((unused)) XXH_INLINE_XXH_errorcode XXH_INLINE_XXH3_128bits_reset_withSeed(XXH_INLINE_XXH3_state_t* statePtr, XXH64_hash_t seed);
static __inline __attribute__((unused)) XXH_INLINE_XXH_errorcode XXH_INLINE_XXH3_128bits_reset_withSecret(XXH_INLINE_XXH3_state_t* statePtr, const void* secret, size_t secretSize);
static __inline __attribute__((unused)) XXH_INLINE_XXH_errorcode XXH_INLINE_XXH3_128bits_update (XXH_INLINE_XXH3_state_t* statePtr, const void* input, size_t length);
static __inline __attribute__((unused)) XXH_INLINE_XXH128_hash_t XXH_INLINE_XXH3_128bits_digest (const XXH_INLINE_XXH3_state_t* statePtr);
static __inline __attribute__((unused)) int XXH_INLINE_XXH128_isEqual(XXH_INLINE_XXH128_hash_t h1, XXH_INLINE_XXH128_hash_t h2);
static __inline __attribute__((unused)) int XXH_INLINE_XXH128_cmp(const void* h128_1, const void* h128_2);
typedef struct { unsigned char digest[sizeof(XXH_INLINE_XXH128_hash_t)]; } XXH_INLINE_XXH128_canonical_t;
static __inline __attribute__((unused)) void XXH_INLINE_XXH128_canonicalFromHash(XXH_INLINE_XXH128_canonical_t* dst, XXH_INLINE_XXH128_hash_t hash);
static __inline __attribute__((unused)) XXH_INLINE_XXH128_hash_t XXH_INLINE_XXH128_hashFromCanonical(const XXH_INLINE_XXH128_canonical_t* src);
struct XXH_INLINE_XXH32_state_s {
   XXH32_hash_t total_len_32;
   XXH32_hash_t large_len;
   XXH32_hash_t v1;
   XXH32_hash_t v2;
   XXH32_hash_t v3;
   XXH32_hash_t v4;
   XXH32_hash_t mem32[4];
   XXH32_hash_t memsize;
   XXH32_hash_t reserved;
};
struct XXH_INLINE_XXH64_state_s {
   XXH64_hash_t total_len;
   XXH64_hash_t v1;
   XXH64_hash_t v2;
   XXH64_hash_t v3;
   XXH64_hash_t v4;
   XXH64_hash_t mem64[4];
   XXH32_hash_t memsize;
   XXH32_hash_t reserved32;
   XXH64_hash_t reserved64;
};
struct XXH_INLINE_XXH3_state_s {
   alignas(64) XXH64_hash_t acc[8];
   alignas(64) unsigned char customSecret[192];
   alignas(64) unsigned char buffer[256];
   XXH32_hash_t bufferedSize;
   XXH32_hash_t reserved32;
   size_t nbStripesSoFar;
   XXH64_hash_t totalLen;
   size_t nbStripesPerBlock;
   size_t secretLimit;
   XXH64_hash_t seed;
   XXH64_hash_t reserved64;
   const unsigned char* extSecret;
};
static __inline __attribute__((unused)) void XXH_INLINE_XXH3_generateSecret(void* secretBuffer, const void* customSeed, size_t customSeedSize);
static __inline __attribute__((unused)) XXH_INLINE_XXH128_hash_t XXH_INLINE_XXH128(const void* data, size_t len, XXH64_hash_t seed);
static void* XXH_malloc(size_t s) { return malloc(s); }
static void XXH_free(void* p) { free(p); }
static void* XXH_memcpy(void* dest, const void* src, size_t size)
{
    return memcpy(dest,src,size);
}
  typedef uint8_t xxh_u8;
typedef XXH32_hash_t xxh_u32;
static xxh_u32 XXH_read32(const void* memPtr)
{
    xxh_u32 val;
    memcpy(&val, memPtr, sizeof(val));
    return val;
}
typedef enum { XXH_bigEndian=0, XXH_littleEndian=1 } XXH_endianess;
typedef enum {
    XXH_aligned,
    XXH_unaligned
} XXH_alignment;
static __inline__ __attribute__((always_inline, unused)) xxh_u32 XXH_readLE32(const void* ptr)
{
    return 1 ? XXH_read32(ptr) : __builtin_bswap32(XXH_read32(ptr));
}
static xxh_u32 XXH_readBE32(const void* ptr)
{
    return 1 ? __builtin_bswap32(XXH_read32(ptr)) : XXH_read32(ptr);
}
static __inline__ __attribute__((always_inline, unused)) xxh_u32
XXH_readLE32_align(const void* ptr, XXH_alignment align)
{
    if (align==XXH_unaligned) {
        return XXH_readLE32(ptr);
    } else {
        return 1 ? *(const xxh_u32*)ptr : __builtin_bswap32(*(const xxh_u32*)ptr);
    }
}
static __inline __attribute__((unused)) unsigned XXH_INLINE_XXH_versionNumber (void) { return (0 *100*100 + 8 *100 + 0); }
static xxh_u32 XXH32_round(xxh_u32 acc, xxh_u32 input)
{
    acc += input * 0x85EBCA77U;
    acc = (((acc) << (13)) | ((acc) >> (32 - (13))));
    acc *= 0x9E3779B1U;
    return acc;
}
static xxh_u32 XXH32_avalanche(xxh_u32 h32)
{
    h32 ^= h32 >> 15;
    h32 *= 0x85EBCA77U;
    h32 ^= h32 >> 13;
    h32 *= 0xC2B2AE3DU;
    h32 ^= h32 >> 16;
    return(h32);
}
static xxh_u32
XXH32_finalize(xxh_u32 h32, const xxh_u8* ptr, size_t len, XXH_alignment align)
{
    if (0) {
        len &= 15;
        while (len >= 4) {
            do { h32 += XXH_readLE32_align(ptr, align) * 0xC2B2AE3DU; ptr += 4; h32 = (((h32) << (17)) | ((h32) >> (32 - (17)))) * 0x27D4EB2FU; } while (0);
            len -= 4;
        }
        while (len > 0) {
            do { h32 += (*ptr++) * 0x165667B1U; h32 = (((h32) << (11)) | ((h32) >> (32 - (11)))) * 0x9E3779B1U; } while (0);
            --len;
        }
        return XXH32_avalanche(h32);
    } else {
         switch(len&15) {
           case 12: do { h32 += XXH_readLE32_align(ptr, align) * 0xC2B2AE3DU; ptr += 4; h32 = (((h32) << (17)) | ((h32) >> (32 - (17)))) * 0x27D4EB2FU; } while (0);
           case 8: do { h32 += XXH_readLE32_align(ptr, align) * 0xC2B2AE3DU; ptr += 4; h32 = (((h32) << (17)) | ((h32) >> (32 - (17)))) * 0x27D4EB2FU; } while (0);
           case 4: do { h32 += XXH_readLE32_align(ptr, align) * 0xC2B2AE3DU; ptr += 4; h32 = (((h32) << (17)) | ((h32) >> (32 - (17)))) * 0x27D4EB2FU; } while (0);
                         return XXH32_avalanche(h32);
           case 13: do { h32 += XXH_readLE32_align(ptr, align) * 0xC2B2AE3DU; ptr += 4; h32 = (((h32) << (17)) | ((h32) >> (32 - (17)))) * 0x27D4EB2FU; } while (0);
           case 9: do { h32 += XXH_readLE32_align(ptr, align) * 0xC2B2AE3DU; ptr += 4; h32 = (((h32) << (17)) | ((h32) >> (32 - (17)))) * 0x27D4EB2FU; } while (0);
           case 5: do { h32 += XXH_readLE32_align(ptr, align) * 0xC2B2AE3DU; ptr += 4; h32 = (((h32) << (17)) | ((h32) >> (32 - (17)))) * 0x27D4EB2FU; } while (0);
                         do { h32 += (*ptr++) * 0x165667B1U; h32 = (((h32) << (11)) | ((h32) >> (32 - (11)))) * 0x9E3779B1U; } while (0);
                         return XXH32_avalanche(h32);
           case 14: do { h32 += XXH_readLE32_align(ptr, align) * 0xC2B2AE3DU; ptr += 4; h32 = (((h32) << (17)) | ((h32) >> (32 - (17)))) * 0x27D4EB2FU; } while (0);
           case 10: do { h32 += XXH_readLE32_align(ptr, align) * 0xC2B2AE3DU; ptr += 4; h32 = (((h32) << (17)) | ((h32) >> (32 - (17)))) * 0x27D4EB2FU; } while (0);
           case 6: do { h32 += XXH_readLE32_align(ptr, align) * 0xC2B2AE3DU; ptr += 4; h32 = (((h32) << (17)) | ((h32) >> (32 - (17)))) * 0x27D4EB2FU; } while (0);
                         do { h32 += (*ptr++) * 0x165667B1U; h32 = (((h32) << (11)) | ((h32) >> (32 - (11)))) * 0x9E3779B1U; } while (0);
                         do { h32 += (*ptr++) * 0x165667B1U; h32 = (((h32) << (11)) | ((h32) >> (32 - (11)))) * 0x9E3779B1U; } while (0);
                         return XXH32_avalanche(h32);
           case 15: do { h32 += XXH_readLE32_align(ptr, align) * 0xC2B2AE3DU; ptr += 4; h32 = (((h32) << (17)) | ((h32) >> (32 - (17)))) * 0x27D4EB2FU; } while (0);
           case 11: do { h32 += XXH_readLE32_align(ptr, align) * 0xC2B2AE3DU; ptr += 4; h32 = (((h32) << (17)) | ((h32) >> (32 - (17)))) * 0x27D4EB2FU; } while (0);
           case 7: do { h32 += XXH_readLE32_align(ptr, align) * 0xC2B2AE3DU; ptr += 4; h32 = (((h32) << (17)) | ((h32) >> (32 - (17)))) * 0x27D4EB2FU; } while (0);
           case 3: do { h32 += (*ptr++) * 0x165667B1U; h32 = (((h32) << (11)) | ((h32) >> (32 - (11)))) * 0x9E3779B1U; } while (0);
           case 2: do { h32 += (*ptr++) * 0x165667B1U; h32 = (((h32) << (11)) | ((h32) >> (32 - (11)))) * 0x9E3779B1U; } while (0);
           case 1: do { h32 += (*ptr++) * 0x165667B1U; h32 = (((h32) << (11)) | ((h32) >> (32 - (11)))) * 0x9E3779B1U; } while (0);
           case 0: return XXH32_avalanche(h32);
        }
        ((void)0);
        return h32;
    }
}
static __inline__ __attribute__((always_inline, unused)) xxh_u32
XXH32_endian_align(const xxh_u8* input, size_t len, xxh_u32 seed, XXH_alignment align)
{
    const xxh_u8* bEnd = input + len;
    xxh_u32 h32;
    if (len>=16) {
        const xxh_u8* const limit = bEnd - 15;
        xxh_u32 v1 = seed + 0x9E3779B1U + 0x85EBCA77U;
        xxh_u32 v2 = seed + 0x85EBCA77U;
        xxh_u32 v3 = seed + 0;
        xxh_u32 v4 = seed - 0x9E3779B1U;
        do {
            v1 = XXH32_round(v1, XXH_readLE32_align(input, align)); input += 4;
            v2 = XXH32_round(v2, XXH_readLE32_align(input, align)); input += 4;
            v3 = XXH32_round(v3, XXH_readLE32_align(input, align)); input += 4;
            v4 = XXH32_round(v4, XXH_readLE32_align(input, align)); input += 4;
        } while (input < limit);
        h32 = (((v1) << (1)) | ((v1) >> (32 - (1)))) + (((v2) << (7)) | ((v2) >> (32 - (7))))
            + (((v3) << (12)) | ((v3) >> (32 - (12)))) + (((v4) << (18)) | ((v4) >> (32 - (18))));
    } else {
        h32 = seed + 0x165667B1U;
    }
    h32 += (xxh_u32)len;
    return XXH32_finalize(h32, input, len&15, align);
}
static __inline __attribute__((unused)) XXH32_hash_t XXH_INLINE_XXH32 (const void* input, size_t len, XXH32_hash_t seed)
{
    if (0) {
        if ((((size_t)input) & 3) == 0) {
            return XXH32_endian_align((const xxh_u8*)input, len, seed, XXH_aligned);
    } }
    return XXH32_endian_align((const xxh_u8*)input, len, seed, XXH_unaligned);
}
static __inline __attribute__((unused)) XXH_INLINE_XXH32_state_t* XXH_INLINE_XXH32_createState(void)
{
    return (XXH_INLINE_XXH32_state_t*)XXH_malloc(sizeof(XXH_INLINE_XXH32_state_t));
}
static __inline __attribute__((unused)) XXH_INLINE_XXH_errorcode XXH_INLINE_XXH32_freeState(XXH_INLINE_XXH32_state_t* statePtr)
{
    XXH_free(statePtr);
    return XXH_INLINE_XXH_OK;
}
static __inline __attribute__((unused)) void XXH_INLINE_XXH32_copyState(XXH_INLINE_XXH32_state_t* dstState, const XXH_INLINE_XXH32_state_t* srcState)
{
    memcpy(dstState, srcState, sizeof(*dstState));
}
static __inline __attribute__((unused)) XXH_INLINE_XXH_errorcode XXH_INLINE_XXH32_reset(XXH_INLINE_XXH32_state_t* statePtr, XXH32_hash_t seed)
{
    XXH_INLINE_XXH32_state_t state;
    memset(&state, 0, sizeof(state));
    state.v1 = seed + 0x9E3779B1U + 0x85EBCA77U;
    state.v2 = seed + 0x85EBCA77U;
    state.v3 = seed + 0;
    state.v4 = seed - 0x9E3779B1U;
    memcpy(statePtr, &state, sizeof(state) - sizeof(state.reserved));
    return XXH_INLINE_XXH_OK;
}
static __inline __attribute__((unused)) XXH_INLINE_XXH_errorcode
XXH_INLINE_XXH32_update(XXH_INLINE_XXH32_state_t* state, const void* input, size_t len)
{
    if (input==((void *)0))
        return XXH_INLINE_XXH_ERROR;
    { const xxh_u8* p = (const xxh_u8*)input;
        const xxh_u8* const bEnd = p + len;
        state->total_len_32 += (XXH32_hash_t)len;
        state->large_len |= (XXH32_hash_t)((len>=16) | (state->total_len_32>=16));
        if (state->memsize + len < 16) {
            XXH_memcpy((xxh_u8*)(state->mem32) + state->memsize, input, len);
            state->memsize += (XXH32_hash_t)len;
            return XXH_INLINE_XXH_OK;
        }
        if (state->memsize) {
            XXH_memcpy((xxh_u8*)(state->mem32) + state->memsize, input, 16-state->memsize);
            { const xxh_u32* p32 = state->mem32;
                state->v1 = XXH32_round(state->v1, XXH_readLE32(p32)); p32++;
                state->v2 = XXH32_round(state->v2, XXH_readLE32(p32)); p32++;
                state->v3 = XXH32_round(state->v3, XXH_readLE32(p32)); p32++;
                state->v4 = XXH32_round(state->v4, XXH_readLE32(p32));
            }
            p += 16-state->memsize;
            state->memsize = 0;
        }
        if (p <= bEnd-16) {
            const xxh_u8* const limit = bEnd - 16;
            xxh_u32 v1 = state->v1;
            xxh_u32 v2 = state->v2;
            xxh_u32 v3 = state->v3;
            xxh_u32 v4 = state->v4;
            do {
                v1 = XXH32_round(v1, XXH_readLE32(p)); p+=4;
                v2 = XXH32_round(v2, XXH_readLE32(p)); p+=4;
                v3 = XXH32_round(v3, XXH_readLE32(p)); p+=4;
                v4 = XXH32_round(v4, XXH_readLE32(p)); p+=4;
            } while (p<=limit);
            state->v1 = v1;
            state->v2 = v2;
            state->v3 = v3;
            state->v4 = v4;
        }
        if (p < bEnd) {
            XXH_memcpy(state->mem32, p, (size_t)(bEnd-p));
            state->memsize = (unsigned)(bEnd-p);
        }
    }
    return XXH_INLINE_XXH_OK;
}
static __inline __attribute__((unused)) XXH32_hash_t XXH_INLINE_XXH32_digest(const XXH_INLINE_XXH32_state_t* state)
{
    xxh_u32 h32;
    if (state->large_len) {
        h32 = (((state->v1) << (1)) | ((state->v1) >> (32 - (1))))
            + (((state->v2) << (7)) | ((state->v2) >> (32 - (7))))
            + (((state->v3) << (12)) | ((state->v3) >> (32 - (12))))
            + (((state->v4) << (18)) | ((state->v4) >> (32 - (18))));
    } else {
        h32 = state->v3 + 0x165667B1U;
    }
    h32 += state->total_len_32;
    return XXH32_finalize(h32, (const xxh_u8*)state->mem32, state->memsize, XXH_aligned);
}
static __inline __attribute__((unused)) void XXH_INLINE_XXH32_canonicalFromHash(XXH_INLINE_XXH32_canonical_t* dst, XXH32_hash_t hash)
{
    do { enum { XXH_sa = 1/(int)(!!(sizeof(XXH_INLINE_XXH32_canonical_t) == sizeof(XXH32_hash_t))) }; } while (0);
    if (1) hash = __builtin_bswap32(hash);
    memcpy(dst, &hash, sizeof(*dst));
}
static __inline __attribute__((unused)) XXH32_hash_t XXH_INLINE_XXH32_hashFromCanonical(const XXH_INLINE_XXH32_canonical_t* src)
{
    return XXH_readBE32(src);
}
typedef XXH64_hash_t xxh_u64;
static xxh_u64 XXH_read64(const void* memPtr)
{
    xxh_u64 val;
    memcpy(&val, memPtr, sizeof(val));
    return val;
}
static __inline__ __attribute__((always_inline, unused)) xxh_u64 XXH_readLE64(const void* ptr)
{
    return 1 ? XXH_read64(ptr) : __builtin_bswap64(XXH_read64(ptr));
}
static xxh_u64 XXH_readBE64(const void* ptr)
{
    return 1 ? __builtin_bswap64(XXH_read64(ptr)) : XXH_read64(ptr);
}
static __inline__ __attribute__((always_inline, unused)) xxh_u64
XXH_readLE64_align(const void* ptr, XXH_alignment align)
{
    if (align==XXH_unaligned)
        return XXH_readLE64(ptr);
    else
        return 1 ? *(const xxh_u64*)ptr : __builtin_bswap64(*(const xxh_u64*)ptr);
}
static xxh_u64 XXH64_round(xxh_u64 acc, xxh_u64 input)
{
    acc += input * 0xC2B2AE3D27D4EB4FULL;
    acc = (((acc) << (31)) | ((acc) >> (64 - (31))));
    acc *= 0x9E3779B185EBCA87ULL;
    return acc;
}
static xxh_u64 XXH64_mergeRound(xxh_u64 acc, xxh_u64 val)
{
    val = XXH64_round(0, val);
    acc ^= val;
    acc = acc * 0x9E3779B185EBCA87ULL + 0x85EBCA77C2B2AE63ULL;
    return acc;
}
static xxh_u64 XXH64_avalanche(xxh_u64 h64)
{
    h64 ^= h64 >> 33;
    h64 *= 0xC2B2AE3D27D4EB4FULL;
    h64 ^= h64 >> 29;
    h64 *= 0x165667B19E3779F9ULL;
    h64 ^= h64 >> 32;
    return h64;
}
static xxh_u64
XXH64_finalize(xxh_u64 h64, const xxh_u8* ptr, size_t len, XXH_alignment align)
{
    len &= 31;
    while (len >= 8) {
        xxh_u64 const k1 = XXH64_round(0, XXH_readLE64_align(ptr, align));
        ptr += 8;
        h64 ^= k1;
        h64 = (((h64) << (27)) | ((h64) >> (64 - (27)))) * 0x9E3779B185EBCA87ULL + 0x85EBCA77C2B2AE63ULL;
        len -= 8;
    }
    if (len >= 4) {
        h64 ^= (xxh_u64)(XXH_readLE32_align(ptr, align)) * 0x9E3779B185EBCA87ULL;
        ptr += 4;
        h64 = (((h64) << (23)) | ((h64) >> (64 - (23)))) * 0xC2B2AE3D27D4EB4FULL + 0x165667B19E3779F9ULL;
        len -= 4;
    }
    while (len > 0) {
        h64 ^= (*ptr++) * 0x27D4EB2F165667C5ULL;
        h64 = (((h64) << (11)) | ((h64) >> (64 - (11)))) * 0x9E3779B185EBCA87ULL;
        --len;
    }
    return XXH64_avalanche(h64);
}
static __inline__ __attribute__((always_inline, unused)) xxh_u64
XXH64_endian_align(const xxh_u8* input, size_t len, xxh_u64 seed, XXH_alignment align)
{
    const xxh_u8* bEnd = input + len;
    xxh_u64 h64;
    if (len>=32) {
        const xxh_u8* const limit = bEnd - 32;
        xxh_u64 v1 = seed + 0x9E3779B185EBCA87ULL + 0xC2B2AE3D27D4EB4FULL;
        xxh_u64 v2 = seed + 0xC2B2AE3D27D4EB4FULL;
        xxh_u64 v3 = seed + 0;
        xxh_u64 v4 = seed - 0x9E3779B185EBCA87ULL;
        do {
            v1 = XXH64_round(v1, XXH_readLE64_align(input, align)); input+=8;
            v2 = XXH64_round(v2, XXH_readLE64_align(input, align)); input+=8;
            v3 = XXH64_round(v3, XXH_readLE64_align(input, align)); input+=8;
            v4 = XXH64_round(v4, XXH_readLE64_align(input, align)); input+=8;
        } while (input<=limit);
        h64 = (((v1) << (1)) | ((v1) >> (64 - (1)))) + (((v2) << (7)) | ((v2) >> (64 - (7)))) + (((v3) << (12)) | ((v3) >> (64 - (12)))) + (((v4) << (18)) | ((v4) >> (64 - (18))));
        h64 = XXH64_mergeRound(h64, v1);
        h64 = XXH64_mergeRound(h64, v2);
        h64 = XXH64_mergeRound(h64, v3);
        h64 = XXH64_mergeRound(h64, v4);
    } else {
        h64 = seed + 0x27D4EB2F165667C5ULL;
    }
    h64 += (xxh_u64) len;
    return XXH64_finalize(h64, input, len, align);
}
static __inline __attribute__((unused)) XXH64_hash_t XXH_INLINE_XXH64 (const void* input, size_t len, XXH64_hash_t seed)
{
    if (0) {
        if ((((size_t)input) & 7)==0) {
            return XXH64_endian_align((const xxh_u8*)input, len, seed, XXH_aligned);
    } }
    return XXH64_endian_align((const xxh_u8*)input, len, seed, XXH_unaligned);
}
static __inline __attribute__((unused)) XXH_INLINE_XXH64_state_t* XXH_INLINE_XXH64_createState(void)
{
    return (XXH_INLINE_XXH64_state_t*)XXH_malloc(sizeof(XXH_INLINE_XXH64_state_t));
}
static __inline __attribute__((unused)) XXH_INLINE_XXH_errorcode XXH_INLINE_XXH64_freeState(XXH_INLINE_XXH64_state_t* statePtr)
{
    XXH_free(statePtr);
    return XXH_INLINE_XXH_OK;
}
static __inline __attribute__((unused)) void XXH_INLINE_XXH64_copyState(XXH_INLINE_XXH64_state_t* dstState, const XXH_INLINE_XXH64_state_t* srcState)
{
    memcpy(dstState, srcState, sizeof(*dstState));
}
static __inline __attribute__((unused)) XXH_INLINE_XXH_errorcode XXH_INLINE_XXH64_reset(XXH_INLINE_XXH64_state_t* statePtr, XXH64_hash_t seed)
{
    XXH_INLINE_XXH64_state_t state;
    memset(&state, 0, sizeof(state));
    state.v1 = seed + 0x9E3779B185EBCA87ULL + 0xC2B2AE3D27D4EB4FULL;
    state.v2 = seed + 0xC2B2AE3D27D4EB4FULL;
    state.v3 = seed + 0;
    state.v4 = seed - 0x9E3779B185EBCA87ULL;
    memcpy(statePtr, &state, sizeof(state) - sizeof(state.reserved64));
    return XXH_INLINE_XXH_OK;
}
static __inline __attribute__((unused)) XXH_INLINE_XXH_errorcode
XXH_INLINE_XXH64_update (XXH_INLINE_XXH64_state_t* state, const void* input, size_t len)
{
    if (input==((void *)0))
        return XXH_INLINE_XXH_ERROR;
    { const xxh_u8* p = (const xxh_u8*)input;
        const xxh_u8* const bEnd = p + len;
        state->total_len += len;
        if (state->memsize + len < 32) {
            XXH_memcpy(((xxh_u8*)state->mem64) + state->memsize, input, len);
            state->memsize += (xxh_u32)len;
            return XXH_INLINE_XXH_OK;
        }
        if (state->memsize) {
            XXH_memcpy(((xxh_u8*)state->mem64) + state->memsize, input, 32-state->memsize);
            state->v1 = XXH64_round(state->v1, XXH_readLE64(state->mem64+0));
            state->v2 = XXH64_round(state->v2, XXH_readLE64(state->mem64+1));
            state->v3 = XXH64_round(state->v3, XXH_readLE64(state->mem64+2));
            state->v4 = XXH64_round(state->v4, XXH_readLE64(state->mem64+3));
            p += 32 - state->memsize;
            state->memsize = 0;
        }
        if (p+32 <= bEnd) {
            const xxh_u8* const limit = bEnd - 32;
            xxh_u64 v1 = state->v1;
            xxh_u64 v2 = state->v2;
            xxh_u64 v3 = state->v3;
            xxh_u64 v4 = state->v4;
            do {
                v1 = XXH64_round(v1, XXH_readLE64(p)); p+=8;
                v2 = XXH64_round(v2, XXH_readLE64(p)); p+=8;
                v3 = XXH64_round(v3, XXH_readLE64(p)); p+=8;
                v4 = XXH64_round(v4, XXH_readLE64(p)); p+=8;
            } while (p<=limit);
            state->v1 = v1;
            state->v2 = v2;
            state->v3 = v3;
            state->v4 = v4;
        }
        if (p < bEnd) {
            XXH_memcpy(state->mem64, p, (size_t)(bEnd-p));
            state->memsize = (unsigned)(bEnd-p);
        }
    }
    return XXH_INLINE_XXH_OK;
}
static __inline __attribute__((unused)) XXH64_hash_t XXH_INLINE_XXH64_digest(const XXH_INLINE_XXH64_state_t* state)
{
    xxh_u64 h64;
    if (state->total_len >= 32) {
        xxh_u64 const v1 = state->v1;
        xxh_u64 const v2 = state->v2;
        xxh_u64 const v3 = state->v3;
        xxh_u64 const v4 = state->v4;
        h64 = (((v1) << (1)) | ((v1) >> (64 - (1)))) + (((v2) << (7)) | ((v2) >> (64 - (7)))) + (((v3) << (12)) | ((v3) >> (64 - (12)))) + (((v4) << (18)) | ((v4) >> (64 - (18))));
        h64 = XXH64_mergeRound(h64, v1);
        h64 = XXH64_mergeRound(h64, v2);
        h64 = XXH64_mergeRound(h64, v3);
        h64 = XXH64_mergeRound(h64, v4);
    } else {
        h64 = state->v3 + 0x27D4EB2F165667C5ULL;
    }
    h64 += (xxh_u64) state->total_len;
    return XXH64_finalize(h64, (const xxh_u8*)state->mem64, (size_t)state->total_len, XXH_aligned);
}
static __inline __attribute__((unused)) void XXH_INLINE_XXH64_canonicalFromHash(XXH_INLINE_XXH64_canonical_t* dst, XXH64_hash_t hash)
{
    do { enum { XXH_sa = 1/(int)(!!(sizeof(XXH_INLINE_XXH64_canonical_t) == sizeof(XXH64_hash_t))) }; } while (0);
    if (1) hash = __builtin_bswap64(hash);
    memcpy(dst, &hash, sizeof(*dst));
}
static __inline __attribute__((unused)) XXH64_hash_t XXH_INLINE_XXH64_hashFromCanonical(const XXH_INLINE_XXH64_canonical_t* src)
{
    return XXH_readBE64(src);
}
typedef int __m64 __attribute__ ((__vector_size__ (8), __may_alias__));
typedef int __m32 __attribute__ ((__vector_size__ (4), __may_alias__));
typedef short __m16 __attribute__ ((__vector_size__ (2), __may_alias__));
typedef int __m64_u __attribute__ ((__vector_size__ (8), __may_alias__, __aligned__ (1)));
typedef int __m32_u __attribute__ ((__vector_size__ (4), __may_alias__, __aligned__ (1)));
typedef short __m16_u __attribute__ ((__vector_size__ (2), __may_alias__, __aligned__ (1)));
typedef int __v2si __attribute__ ((__vector_size__ (8)));
typedef short __v4hi __attribute__ ((__vector_size__ (8)));
typedef char __v8qi __attribute__ ((__vector_size__ (8)));
typedef long long __v1di __attribute__ ((__vector_size__ (8)));
typedef float __v2sf __attribute__ ((__vector_size__ (8)));
extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_empty (void)
{
  __builtin_ia32_emms ();
}
extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_empty (void)
{
  _mm_empty ();
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvtsi32_si64 (int __i)
{
  return (__m64) __builtin_ia32_vec_init_v2si (__i, 0);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_from_int (int __i)
{
  return _mm_cvtsi32_si64 (__i);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_from_int64 (long long __i)
{
  return (__m64) __i;
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvtsi64_m64 (long long __i)
{
  return (__m64) __i;
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvtsi64x_si64 (long long __i)
{
  return (__m64) __i;
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_set_pi64x (long long __i)
{
  return (__m64) __i;
}
extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvtsi64_si32 (__m64 __i)
{
  return __builtin_ia32_vec_ext_v2si ((__v2si)__i, 0);
}
extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_to_int (__m64 __i)
{
  return _mm_cvtsi64_si32 (__i);
}
extern __inline long long __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_to_int64 (__m64 __i)
{
  return (long long)__i;
}
extern __inline long long __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvtm64_si64 (__m64 __i)
{
  return (long long)__i;
}
extern __inline long long __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvtsi64_si64x (__m64 __i)
{
  return (long long)__i;
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_packs_pi16 (__m64 __m1, __m64 __m2)
{
  return (__m64) __builtin_ia32_packsswb ((__v4hi)__m1, (__v4hi)__m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_packsswb (__m64 __m1, __m64 __m2)
{
  return _mm_packs_pi16 (__m1, __m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_packs_pi32 (__m64 __m1, __m64 __m2)
{
  return (__m64) __builtin_ia32_packssdw ((__v2si)__m1, (__v2si)__m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_packssdw (__m64 __m1, __m64 __m2)
{
  return _mm_packs_pi32 (__m1, __m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_packs_pu16 (__m64 __m1, __m64 __m2)
{
  return (__m64) __builtin_ia32_packuswb ((__v4hi)__m1, (__v4hi)__m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_packuswb (__m64 __m1, __m64 __m2)
{
  return _mm_packs_pu16 (__m1, __m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_unpackhi_pi8 (__m64 __m1, __m64 __m2)
{
  return (__m64) __builtin_ia32_punpckhbw ((__v8qi)__m1, (__v8qi)__m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_punpckhbw (__m64 __m1, __m64 __m2)
{
  return _mm_unpackhi_pi8 (__m1, __m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_unpackhi_pi16 (__m64 __m1, __m64 __m2)
{
  return (__m64) __builtin_ia32_punpckhwd ((__v4hi)__m1, (__v4hi)__m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_punpckhwd (__m64 __m1, __m64 __m2)
{
  return _mm_unpackhi_pi16 (__m1, __m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_unpackhi_pi32 (__m64 __m1, __m64 __m2)
{
  return (__m64) __builtin_ia32_punpckhdq ((__v2si)__m1, (__v2si)__m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_punpckhdq (__m64 __m1, __m64 __m2)
{
  return _mm_unpackhi_pi32 (__m1, __m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_unpacklo_pi8 (__m64 __m1, __m64 __m2)
{
  return (__m64) __builtin_ia32_punpcklbw ((__v8qi)__m1, (__v8qi)__m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_punpcklbw (__m64 __m1, __m64 __m2)
{
  return _mm_unpacklo_pi8 (__m1, __m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_unpacklo_pi16 (__m64 __m1, __m64 __m2)
{
  return (__m64) __builtin_ia32_punpcklwd ((__v4hi)__m1, (__v4hi)__m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_punpcklwd (__m64 __m1, __m64 __m2)
{
  return _mm_unpacklo_pi16 (__m1, __m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_unpacklo_pi32 (__m64 __m1, __m64 __m2)
{
  return (__m64) __builtin_ia32_punpckldq ((__v2si)__m1, (__v2si)__m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_punpckldq (__m64 __m1, __m64 __m2)
{
  return _mm_unpacklo_pi32 (__m1, __m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_add_pi8 (__m64 __m1, __m64 __m2)
{
  return (__m64) __builtin_ia32_paddb ((__v8qi)__m1, (__v8qi)__m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_paddb (__m64 __m1, __m64 __m2)
{
  return _mm_add_pi8 (__m1, __m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_add_pi16 (__m64 __m1, __m64 __m2)
{
  return (__m64) __builtin_ia32_paddw ((__v4hi)__m1, (__v4hi)__m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_paddw (__m64 __m1, __m64 __m2)
{
  return _mm_add_pi16 (__m1, __m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_add_pi32 (__m64 __m1, __m64 __m2)
{
  return (__m64) __builtin_ia32_paddd ((__v2si)__m1, (__v2si)__m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_paddd (__m64 __m1, __m64 __m2)
{
  return _mm_add_pi32 (__m1, __m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_add_si64 (__m64 __m1, __m64 __m2)
{
  return (__m64) __builtin_ia32_paddq ((__v1di)__m1, (__v1di)__m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_adds_pi8 (__m64 __m1, __m64 __m2)
{
  return (__m64) __builtin_ia32_paddsb ((__v8qi)__m1, (__v8qi)__m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_paddsb (__m64 __m1, __m64 __m2)
{
  return _mm_adds_pi8 (__m1, __m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_adds_pi16 (__m64 __m1, __m64 __m2)
{
  return (__m64) __builtin_ia32_paddsw ((__v4hi)__m1, (__v4hi)__m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_paddsw (__m64 __m1, __m64 __m2)
{
  return _mm_adds_pi16 (__m1, __m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_adds_pu8 (__m64 __m1, __m64 __m2)
{
  return (__m64) __builtin_ia32_paddusb ((__v8qi)__m1, (__v8qi)__m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_paddusb (__m64 __m1, __m64 __m2)
{
  return _mm_adds_pu8 (__m1, __m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_adds_pu16 (__m64 __m1, __m64 __m2)
{
  return (__m64) __builtin_ia32_paddusw ((__v4hi)__m1, (__v4hi)__m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_paddusw (__m64 __m1, __m64 __m2)
{
  return _mm_adds_pu16 (__m1, __m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_sub_pi8 (__m64 __m1, __m64 __m2)
{
  return (__m64) __builtin_ia32_psubb ((__v8qi)__m1, (__v8qi)__m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_psubb (__m64 __m1, __m64 __m2)
{
  return _mm_sub_pi8 (__m1, __m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_sub_pi16 (__m64 __m1, __m64 __m2)
{
  return (__m64) __builtin_ia32_psubw ((__v4hi)__m1, (__v4hi)__m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_psubw (__m64 __m1, __m64 __m2)
{
  return _mm_sub_pi16 (__m1, __m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_sub_pi32 (__m64 __m1, __m64 __m2)
{
  return (__m64) __builtin_ia32_psubd ((__v2si)__m1, (__v2si)__m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_psubd (__m64 __m1, __m64 __m2)
{
  return _mm_sub_pi32 (__m1, __m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_sub_si64 (__m64 __m1, __m64 __m2)
{
  return (__m64) __builtin_ia32_psubq ((__v1di)__m1, (__v1di)__m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_subs_pi8 (__m64 __m1, __m64 __m2)
{
  return (__m64) __builtin_ia32_psubsb ((__v8qi)__m1, (__v8qi)__m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_psubsb (__m64 __m1, __m64 __m2)
{
  return _mm_subs_pi8 (__m1, __m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_subs_pi16 (__m64 __m1, __m64 __m2)
{
  return (__m64) __builtin_ia32_psubsw ((__v4hi)__m1, (__v4hi)__m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_psubsw (__m64 __m1, __m64 __m2)
{
  return _mm_subs_pi16 (__m1, __m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_subs_pu8 (__m64 __m1, __m64 __m2)
{
  return (__m64) __builtin_ia32_psubusb ((__v8qi)__m1, (__v8qi)__m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_psubusb (__m64 __m1, __m64 __m2)
{
  return _mm_subs_pu8 (__m1, __m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_subs_pu16 (__m64 __m1, __m64 __m2)
{
  return (__m64) __builtin_ia32_psubusw ((__v4hi)__m1, (__v4hi)__m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_psubusw (__m64 __m1, __m64 __m2)
{
  return _mm_subs_pu16 (__m1, __m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_madd_pi16 (__m64 __m1, __m64 __m2)
{
  return (__m64) __builtin_ia32_pmaddwd ((__v4hi)__m1, (__v4hi)__m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_pmaddwd (__m64 __m1, __m64 __m2)
{
  return _mm_madd_pi16 (__m1, __m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_mulhi_pi16 (__m64 __m1, __m64 __m2)
{
  return (__m64) __builtin_ia32_pmulhw ((__v4hi)__m1, (__v4hi)__m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_pmulhw (__m64 __m1, __m64 __m2)
{
  return _mm_mulhi_pi16 (__m1, __m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_mullo_pi16 (__m64 __m1, __m64 __m2)
{
  return (__m64) __builtin_ia32_pmullw ((__v4hi)__m1, (__v4hi)__m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_pmullw (__m64 __m1, __m64 __m2)
{
  return _mm_mullo_pi16 (__m1, __m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_sll_pi16 (__m64 __m, __m64 __count)
{
  return (__m64) __builtin_ia32_psllw ((__v4hi)__m, (__v4hi)__count);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_psllw (__m64 __m, __m64 __count)
{
  return _mm_sll_pi16 (__m, __count);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_slli_pi16 (__m64 __m, int __count)
{
  return (__m64) __builtin_ia32_psllwi ((__v4hi)__m, __count);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_psllwi (__m64 __m, int __count)
{
  return _mm_slli_pi16 (__m, __count);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_sll_pi32 (__m64 __m, __m64 __count)
{
  return (__m64) __builtin_ia32_pslld ((__v2si)__m, (__v2si)__count);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_pslld (__m64 __m, __m64 __count)
{
  return _mm_sll_pi32 (__m, __count);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_slli_pi32 (__m64 __m, int __count)
{
  return (__m64) __builtin_ia32_pslldi ((__v2si)__m, __count);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_pslldi (__m64 __m, int __count)
{
  return _mm_slli_pi32 (__m, __count);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_sll_si64 (__m64 __m, __m64 __count)
{
  return (__m64) __builtin_ia32_psllq ((__v1di)__m, (__v1di)__count);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_psllq (__m64 __m, __m64 __count)
{
  return _mm_sll_si64 (__m, __count);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_slli_si64 (__m64 __m, int __count)
{
  return (__m64) __builtin_ia32_psllqi ((__v1di)__m, __count);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_psllqi (__m64 __m, int __count)
{
  return _mm_slli_si64 (__m, __count);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_sra_pi16 (__m64 __m, __m64 __count)
{
  return (__m64) __builtin_ia32_psraw ((__v4hi)__m, (__v4hi)__count);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_psraw (__m64 __m, __m64 __count)
{
  return _mm_sra_pi16 (__m, __count);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_srai_pi16 (__m64 __m, int __count)
{
  return (__m64) __builtin_ia32_psrawi ((__v4hi)__m, __count);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_psrawi (__m64 __m, int __count)
{
  return _mm_srai_pi16 (__m, __count);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_sra_pi32 (__m64 __m, __m64 __count)
{
  return (__m64) __builtin_ia32_psrad ((__v2si)__m, (__v2si)__count);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_psrad (__m64 __m, __m64 __count)
{
  return _mm_sra_pi32 (__m, __count);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_srai_pi32 (__m64 __m, int __count)
{
  return (__m64) __builtin_ia32_psradi ((__v2si)__m, __count);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_psradi (__m64 __m, int __count)
{
  return _mm_srai_pi32 (__m, __count);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_srl_pi16 (__m64 __m, __m64 __count)
{
  return (__m64) __builtin_ia32_psrlw ((__v4hi)__m, (__v4hi)__count);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_psrlw (__m64 __m, __m64 __count)
{
  return _mm_srl_pi16 (__m, __count);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_srli_pi16 (__m64 __m, int __count)
{
  return (__m64) __builtin_ia32_psrlwi ((__v4hi)__m, __count);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_psrlwi (__m64 __m, int __count)
{
  return _mm_srli_pi16 (__m, __count);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_srl_pi32 (__m64 __m, __m64 __count)
{
  return (__m64) __builtin_ia32_psrld ((__v2si)__m, (__v2si)__count);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_psrld (__m64 __m, __m64 __count)
{
  return _mm_srl_pi32 (__m, __count);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_srli_pi32 (__m64 __m, int __count)
{
  return (__m64) __builtin_ia32_psrldi ((__v2si)__m, __count);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_psrldi (__m64 __m, int __count)
{
  return _mm_srli_pi32 (__m, __count);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_srl_si64 (__m64 __m, __m64 __count)
{
  return (__m64) __builtin_ia32_psrlq ((__v1di)__m, (__v1di)__count);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_psrlq (__m64 __m, __m64 __count)
{
  return _mm_srl_si64 (__m, __count);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_srli_si64 (__m64 __m, int __count)
{
  return (__m64) __builtin_ia32_psrlqi ((__v1di)__m, __count);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_psrlqi (__m64 __m, int __count)
{
  return _mm_srli_si64 (__m, __count);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_and_si64 (__m64 __m1, __m64 __m2)
{
  return __builtin_ia32_pand (__m1, __m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_pand (__m64 __m1, __m64 __m2)
{
  return _mm_and_si64 (__m1, __m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_andnot_si64 (__m64 __m1, __m64 __m2)
{
  return __builtin_ia32_pandn (__m1, __m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_pandn (__m64 __m1, __m64 __m2)
{
  return _mm_andnot_si64 (__m1, __m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_or_si64 (__m64 __m1, __m64 __m2)
{
  return __builtin_ia32_por (__m1, __m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_por (__m64 __m1, __m64 __m2)
{
  return _mm_or_si64 (__m1, __m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_xor_si64 (__m64 __m1, __m64 __m2)
{
  return __builtin_ia32_pxor (__m1, __m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_pxor (__m64 __m1, __m64 __m2)
{
  return _mm_xor_si64 (__m1, __m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmpeq_pi8 (__m64 __m1, __m64 __m2)
{
  return (__m64) __builtin_ia32_pcmpeqb ((__v8qi)__m1, (__v8qi)__m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_pcmpeqb (__m64 __m1, __m64 __m2)
{
  return _mm_cmpeq_pi8 (__m1, __m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmpgt_pi8 (__m64 __m1, __m64 __m2)
{
  return (__m64) __builtin_ia32_pcmpgtb ((__v8qi)__m1, (__v8qi)__m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_pcmpgtb (__m64 __m1, __m64 __m2)
{
  return _mm_cmpgt_pi8 (__m1, __m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmpeq_pi16 (__m64 __m1, __m64 __m2)
{
  return (__m64) __builtin_ia32_pcmpeqw ((__v4hi)__m1, (__v4hi)__m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_pcmpeqw (__m64 __m1, __m64 __m2)
{
  return _mm_cmpeq_pi16 (__m1, __m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmpgt_pi16 (__m64 __m1, __m64 __m2)
{
  return (__m64) __builtin_ia32_pcmpgtw ((__v4hi)__m1, (__v4hi)__m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_pcmpgtw (__m64 __m1, __m64 __m2)
{
  return _mm_cmpgt_pi16 (__m1, __m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmpeq_pi32 (__m64 __m1, __m64 __m2)
{
  return (__m64) __builtin_ia32_pcmpeqd ((__v2si)__m1, (__v2si)__m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_pcmpeqd (__m64 __m1, __m64 __m2)
{
  return _mm_cmpeq_pi32 (__m1, __m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmpgt_pi32 (__m64 __m1, __m64 __m2)
{
  return (__m64) __builtin_ia32_pcmpgtd ((__v2si)__m1, (__v2si)__m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_pcmpgtd (__m64 __m1, __m64 __m2)
{
  return _mm_cmpgt_pi32 (__m1, __m2);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_setzero_si64 (void)
{
  return (__m64)0LL;
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_set_pi32 (int __i1, int __i0)
{
  return (__m64) __builtin_ia32_vec_init_v2si (__i0, __i1);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_set_pi16 (short __w3, short __w2, short __w1, short __w0)
{
  return (__m64) __builtin_ia32_vec_init_v4hi (__w0, __w1, __w2, __w3);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_set_pi8 (char __b7, char __b6, char __b5, char __b4,
      char __b3, char __b2, char __b1, char __b0)
{
  return (__m64) __builtin_ia32_vec_init_v8qi (__b0, __b1, __b2, __b3,
            __b4, __b5, __b6, __b7);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_setr_pi32 (int __i0, int __i1)
{
  return _mm_set_pi32 (__i1, __i0);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_setr_pi16 (short __w0, short __w1, short __w2, short __w3)
{
  return _mm_set_pi16 (__w3, __w2, __w1, __w0);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_setr_pi8 (char __b0, char __b1, char __b2, char __b3,
       char __b4, char __b5, char __b6, char __b7)
{
  return _mm_set_pi8 (__b7, __b6, __b5, __b4, __b3, __b2, __b1, __b0);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_set1_pi32 (int __i)
{
  return _mm_set_pi32 (__i, __i);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_set1_pi16 (short __w)
{
  return _mm_set_pi16 (__w, __w, __w, __w);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_set1_pi8 (char __b)
{
  return _mm_set_pi8 (__b, __b, __b, __b, __b, __b, __b, __b);
}
extern int posix_memalign (void **, size_t, size_t);
static __inline void *
_mm_malloc (size_t __size, size_t __alignment)
{
  void *__ptr;
  if (__alignment == 1)
    return malloc (__size);
  if (__alignment == 2 || (sizeof (void *) == 8 && __alignment == 4))
    __alignment = sizeof (void *);
  if (posix_memalign (&__ptr, __alignment, __size) == 0)
    return __ptr;
  else
    return ((void *)0);
}
static __inline void
_mm_free (void *__ptr)
{
  free (__ptr);
}
enum _mm_hint
{
  _MM_HINT_IT0 = 19,
  _MM_HINT_IT1 = 18,
  _MM_HINT_RST2 = 9,
  _MM_HINT_ET0 = 7,
  _MM_HINT_T0 = 3,
  _MM_HINT_T1 = 2,
  _MM_HINT_T2 = 1,
  _MM_HINT_NTA = 0
};
extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_prefetch (const void *__P, enum _mm_hint __I)
{
  __builtin_ia32_prefetch (__P, (__I & 0xC) >> 2,
      __I & 0x3, (__I & 0x10) >> 4);
}
typedef float __m128 __attribute__ ((__vector_size__ (16), __may_alias__));
typedef float __m128_u __attribute__ ((__vector_size__ (16), __may_alias__, __aligned__ (1)));
typedef float __x86_float_u __attribute__ ((__may_alias__, __aligned__ (1)));
typedef float __v4sf __attribute__ ((__vector_size__ (16)));
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_undefined_ps (void)
{
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Winit-self"
  __m128 __Y = __Y;
#pragma GCC diagnostic pop
  return __Y;
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_setzero_ps (void)
{
  return __extension__ (__m128){ 0.0f, 0.0f, 0.0f, 0.0f };
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_add_ss (__m128 __A, __m128 __B)
{
  return (__m128) __builtin_ia32_addss ((__v4sf)__A, (__v4sf)__B);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_sub_ss (__m128 __A, __m128 __B)
{
  return (__m128) __builtin_ia32_subss ((__v4sf)__A, (__v4sf)__B);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_mul_ss (__m128 __A, __m128 __B)
{
  return (__m128) __builtin_ia32_mulss ((__v4sf)__A, (__v4sf)__B);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_div_ss (__m128 __A, __m128 __B)
{
  return (__m128) __builtin_ia32_divss ((__v4sf)__A, (__v4sf)__B);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_sqrt_ss (__m128 __A)
{
  return (__m128) __builtin_ia32_sqrtss ((__v4sf)__A);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_rcp_ss (__m128 __A)
{
  return (__m128) __builtin_ia32_rcpss ((__v4sf)__A);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_rsqrt_ss (__m128 __A)
{
  return (__m128) __builtin_ia32_rsqrtss ((__v4sf)__A);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_min_ss (__m128 __A, __m128 __B)
{
  return (__m128) __builtin_ia32_minss ((__v4sf)__A, (__v4sf)__B);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_max_ss (__m128 __A, __m128 __B)
{
  return (__m128) __builtin_ia32_maxss ((__v4sf)__A, (__v4sf)__B);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_add_ps (__m128 __A, __m128 __B)
{
  return (__m128) ((__v4sf)__A + (__v4sf)__B);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_sub_ps (__m128 __A, __m128 __B)
{
  return (__m128) ((__v4sf)__A - (__v4sf)__B);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_mul_ps (__m128 __A, __m128 __B)
{
  return (__m128) ((__v4sf)__A * (__v4sf)__B);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_div_ps (__m128 __A, __m128 __B)
{
  return (__m128) ((__v4sf)__A / (__v4sf)__B);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_sqrt_ps (__m128 __A)
{
  return (__m128) __builtin_ia32_sqrtps ((__v4sf)__A);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_rcp_ps (__m128 __A)
{
  return (__m128) __builtin_ia32_rcpps ((__v4sf)__A);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_rsqrt_ps (__m128 __A)
{
  return (__m128) __builtin_ia32_rsqrtps ((__v4sf)__A);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_min_ps (__m128 __A, __m128 __B)
{
  return (__m128) __builtin_ia32_minps ((__v4sf)__A, (__v4sf)__B);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_max_ps (__m128 __A, __m128 __B)
{
  return (__m128) __builtin_ia32_maxps ((__v4sf)__A, (__v4sf)__B);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_and_ps (__m128 __A, __m128 __B)
{
  return __builtin_ia32_andps (__A, __B);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_andnot_ps (__m128 __A, __m128 __B)
{
  return __builtin_ia32_andnps (__A, __B);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_or_ps (__m128 __A, __m128 __B)
{
  return __builtin_ia32_orps (__A, __B);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_xor_ps (__m128 __A, __m128 __B)
{
  return __builtin_ia32_xorps (__A, __B);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmpeq_ss (__m128 __A, __m128 __B)
{
  return (__m128) __builtin_ia32_cmpeqss ((__v4sf)__A, (__v4sf)__B);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmplt_ss (__m128 __A, __m128 __B)
{
  return (__m128) __builtin_ia32_cmpltss ((__v4sf)__A, (__v4sf)__B);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmple_ss (__m128 __A, __m128 __B)
{
  return (__m128) __builtin_ia32_cmpless ((__v4sf)__A, (__v4sf)__B);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmpgt_ss (__m128 __A, __m128 __B)
{
  return (__m128) __builtin_ia32_movss ((__v4sf) __A,
     (__v4sf)
     __builtin_ia32_cmpltss ((__v4sf) __B,
        (__v4sf)
        __A));
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmpge_ss (__m128 __A, __m128 __B)
{
  return (__m128) __builtin_ia32_movss ((__v4sf) __A,
     (__v4sf)
     __builtin_ia32_cmpless ((__v4sf) __B,
        (__v4sf)
        __A));
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmpneq_ss (__m128 __A, __m128 __B)
{
  return (__m128) __builtin_ia32_cmpneqss ((__v4sf)__A, (__v4sf)__B);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmpnlt_ss (__m128 __A, __m128 __B)
{
  return (__m128) __builtin_ia32_cmpnltss ((__v4sf)__A, (__v4sf)__B);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmpnle_ss (__m128 __A, __m128 __B)
{
  return (__m128) __builtin_ia32_cmpnless ((__v4sf)__A, (__v4sf)__B);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmpngt_ss (__m128 __A, __m128 __B)
{
  return (__m128) __builtin_ia32_movss ((__v4sf) __A,
     (__v4sf)
     __builtin_ia32_cmpnltss ((__v4sf) __B,
         (__v4sf)
         __A));
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmpnge_ss (__m128 __A, __m128 __B)
{
  return (__m128) __builtin_ia32_movss ((__v4sf) __A,
     (__v4sf)
     __builtin_ia32_cmpnless ((__v4sf) __B,
         (__v4sf)
         __A));
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmpord_ss (__m128 __A, __m128 __B)
{
  return (__m128) __builtin_ia32_cmpordss ((__v4sf)__A, (__v4sf)__B);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmpunord_ss (__m128 __A, __m128 __B)
{
  return (__m128) __builtin_ia32_cmpunordss ((__v4sf)__A, (__v4sf)__B);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmpeq_ps (__m128 __A, __m128 __B)
{
  return (__m128) __builtin_ia32_cmpeqps ((__v4sf)__A, (__v4sf)__B);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmplt_ps (__m128 __A, __m128 __B)
{
  return (__m128) __builtin_ia32_cmpltps ((__v4sf)__A, (__v4sf)__B);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmple_ps (__m128 __A, __m128 __B)
{
  return (__m128) __builtin_ia32_cmpleps ((__v4sf)__A, (__v4sf)__B);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmpgt_ps (__m128 __A, __m128 __B)
{
  return (__m128) __builtin_ia32_cmpgtps ((__v4sf)__A, (__v4sf)__B);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmpge_ps (__m128 __A, __m128 __B)
{
  return (__m128) __builtin_ia32_cmpgeps ((__v4sf)__A, (__v4sf)__B);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmpneq_ps (__m128 __A, __m128 __B)
{
  return (__m128) __builtin_ia32_cmpneqps ((__v4sf)__A, (__v4sf)__B);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmpnlt_ps (__m128 __A, __m128 __B)
{
  return (__m128) __builtin_ia32_cmpnltps ((__v4sf)__A, (__v4sf)__B);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmpnle_ps (__m128 __A, __m128 __B)
{
  return (__m128) __builtin_ia32_cmpnleps ((__v4sf)__A, (__v4sf)__B);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmpngt_ps (__m128 __A, __m128 __B)
{
  return (__m128) __builtin_ia32_cmpngtps ((__v4sf)__A, (__v4sf)__B);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmpnge_ps (__m128 __A, __m128 __B)
{
  return (__m128) __builtin_ia32_cmpngeps ((__v4sf)__A, (__v4sf)__B);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmpord_ps (__m128 __A, __m128 __B)
{
  return (__m128) __builtin_ia32_cmpordps ((__v4sf)__A, (__v4sf)__B);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmpunord_ps (__m128 __A, __m128 __B)
{
  return (__m128) __builtin_ia32_cmpunordps ((__v4sf)__A, (__v4sf)__B);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmp_ps (__m128 __X, __m128 __Y, const int __P)
{
  return (__m128) __builtin_ia32_cmpps ((__v4sf)__X, (__v4sf)__Y, __P);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmp_ss (__m128 __X, __m128 __Y, const int __P)
{
  return (__m128) __builtin_ia32_cmpss ((__v4sf)__X, (__v4sf)__Y, __P);
}
extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_comieq_ss (__m128 __A, __m128 __B)
{
  return __builtin_ia32_comieq ((__v4sf)__A, (__v4sf)__B);
}
extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_comilt_ss (__m128 __A, __m128 __B)
{
  return __builtin_ia32_comilt ((__v4sf)__A, (__v4sf)__B);
}
extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_comile_ss (__m128 __A, __m128 __B)
{
  return __builtin_ia32_comile ((__v4sf)__A, (__v4sf)__B);
}
extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_comigt_ss (__m128 __A, __m128 __B)
{
  return __builtin_ia32_comigt ((__v4sf)__A, (__v4sf)__B);
}
extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_comige_ss (__m128 __A, __m128 __B)
{
  return __builtin_ia32_comige ((__v4sf)__A, (__v4sf)__B);
}
extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_comineq_ss (__m128 __A, __m128 __B)
{
  return __builtin_ia32_comineq ((__v4sf)__A, (__v4sf)__B);
}
extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_ucomieq_ss (__m128 __A, __m128 __B)
{
  return __builtin_ia32_ucomieq ((__v4sf)__A, (__v4sf)__B);
}
extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_ucomilt_ss (__m128 __A, __m128 __B)
{
  return __builtin_ia32_ucomilt ((__v4sf)__A, (__v4sf)__B);
}
extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_ucomile_ss (__m128 __A, __m128 __B)
{
  return __builtin_ia32_ucomile ((__v4sf)__A, (__v4sf)__B);
}
extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_ucomigt_ss (__m128 __A, __m128 __B)
{
  return __builtin_ia32_ucomigt ((__v4sf)__A, (__v4sf)__B);
}
extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_ucomige_ss (__m128 __A, __m128 __B)
{
  return __builtin_ia32_ucomige ((__v4sf)__A, (__v4sf)__B);
}
extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_ucomineq_ss (__m128 __A, __m128 __B)
{
  return __builtin_ia32_ucomineq ((__v4sf)__A, (__v4sf)__B);
}
extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvtss_si32 (__m128 __A)
{
  return __builtin_ia32_cvtss2si ((__v4sf) __A);
}
extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvt_ss2si (__m128 __A)
{
  return _mm_cvtss_si32 (__A);
}
extern __inline long long __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvtss_si64 (__m128 __A)
{
  return __builtin_ia32_cvtss2si64 ((__v4sf) __A);
}
extern __inline long long __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvtss_si64x (__m128 __A)
{
  return __builtin_ia32_cvtss2si64 ((__v4sf) __A);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvtps_pi32 (__m128 __A)
{
  return (__m64) __builtin_ia32_cvtps2pi ((__v4sf) __A);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvt_ps2pi (__m128 __A)
{
  return _mm_cvtps_pi32 (__A);
}
extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvttss_si32 (__m128 __A)
{
  return __builtin_ia32_cvttss2si ((__v4sf) __A);
}
extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvtt_ss2si (__m128 __A)
{
  return _mm_cvttss_si32 (__A);
}
extern __inline long long __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvttss_si64 (__m128 __A)
{
  return __builtin_ia32_cvttss2si64 ((__v4sf) __A);
}
extern __inline long long __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvttss_si64x (__m128 __A)
{
  return __builtin_ia32_cvttss2si64 ((__v4sf) __A);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvttps_pi32 (__m128 __A)
{
  return (__m64) __builtin_ia32_cvttps2pi ((__v4sf) __A);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvtt_ps2pi (__m128 __A)
{
  return _mm_cvttps_pi32 (__A);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvtsi32_ss (__m128 __A, int __B)
{
  return (__m128) __builtin_ia32_cvtsi2ss ((__v4sf) __A, __B);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvt_si2ss (__m128 __A, int __B)
{
  return _mm_cvtsi32_ss (__A, __B);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvtsi64_ss (__m128 __A, long long __B)
{
  return (__m128) __builtin_ia32_cvtsi642ss ((__v4sf) __A, __B);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvtsi64x_ss (__m128 __A, long long __B)
{
  return (__m128) __builtin_ia32_cvtsi642ss ((__v4sf) __A, __B);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvtpi32_ps (__m128 __A, __m64 __B)
{
  return (__m128) __builtin_ia32_cvtpi2ps ((__v4sf) __A, (__v2si)__B);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvt_pi2ps (__m128 __A, __m64 __B)
{
  return _mm_cvtpi32_ps (__A, __B);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvtpi16_ps (__m64 __A)
{
  __v4hi __sign;
  __v2si __hisi, __losi;
  __v4sf __zero, __ra, __rb;
  __sign = __builtin_ia32_pcmpgtw ((__v4hi)0LL, (__v4hi)__A);
  __losi = (__v2si) __builtin_ia32_punpcklwd ((__v4hi)__A, __sign);
  __hisi = (__v2si) __builtin_ia32_punpckhwd ((__v4hi)__A, __sign);
  __zero = (__v4sf) _mm_setzero_ps ();
  __ra = __builtin_ia32_cvtpi2ps (__zero, __losi);
  __rb = __builtin_ia32_cvtpi2ps (__ra, __hisi);
  return (__m128) __builtin_ia32_movlhps (__ra, __rb);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvtpu16_ps (__m64 __A)
{
  __v2si __hisi, __losi;
  __v4sf __zero, __ra, __rb;
  __losi = (__v2si) __builtin_ia32_punpcklwd ((__v4hi)__A, (__v4hi)0LL);
  __hisi = (__v2si) __builtin_ia32_punpckhwd ((__v4hi)__A, (__v4hi)0LL);
  __zero = (__v4sf) _mm_setzero_ps ();
  __ra = __builtin_ia32_cvtpi2ps (__zero, __losi);
  __rb = __builtin_ia32_cvtpi2ps (__ra, __hisi);
  return (__m128) __builtin_ia32_movlhps (__ra, __rb);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvtpi8_ps (__m64 __A)
{
  __v8qi __sign;
  __sign = __builtin_ia32_pcmpgtb ((__v8qi)0LL, (__v8qi)__A);
  __A = (__m64) __builtin_ia32_punpcklbw ((__v8qi)__A, __sign);
  return _mm_cvtpi16_ps(__A);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvtpu8_ps(__m64 __A)
{
  __A = (__m64) __builtin_ia32_punpcklbw ((__v8qi)__A, (__v8qi)0LL);
  return _mm_cvtpu16_ps(__A);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvtpi32x2_ps(__m64 __A, __m64 __B)
{
  __v4sf __zero = (__v4sf) _mm_setzero_ps ();
  __v4sf __sfa = __builtin_ia32_cvtpi2ps (__zero, (__v2si)__A);
  __v4sf __sfb = __builtin_ia32_cvtpi2ps (__sfa, (__v2si)__B);
  return (__m128) __builtin_ia32_movlhps (__sfa, __sfb);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvtps_pi16(__m128 __A)
{
  __v4sf __hisf = (__v4sf)__A;
  __v4sf __losf = __builtin_ia32_movhlps (__hisf, __hisf);
  __v2si __hisi = __builtin_ia32_cvtps2pi (__hisf);
  __v2si __losi = __builtin_ia32_cvtps2pi (__losf);
  return (__m64) __builtin_ia32_packssdw (__hisi, __losi);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvtps_pi8(__m128 __A)
{
  __v4hi __tmp = (__v4hi) _mm_cvtps_pi16 (__A);
  return (__m64) __builtin_ia32_packsswb (__tmp, (__v4hi)0LL);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_shuffle_ps (__m128 __A, __m128 __B, int const __mask)
{
  return (__m128) __builtin_ia32_shufps ((__v4sf)__A, (__v4sf)__B, __mask);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_unpackhi_ps (__m128 __A, __m128 __B)
{
  return (__m128) __builtin_ia32_unpckhps ((__v4sf)__A, (__v4sf)__B);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_unpacklo_ps (__m128 __A, __m128 __B)
{
  return (__m128) __builtin_ia32_unpcklps ((__v4sf)__A, (__v4sf)__B);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_loadh_pi (__m128 __A, __m64_u const *__P)
{
  return (__m128) __builtin_ia32_loadhps ((__v4sf)__A, (const __v2sf *)__P);
}
extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_storeh_pi (__m64 *__P, __m128 __A)
{
  __builtin_ia32_storehps ((__v2sf *)__P, (__v4sf)__A);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_movehl_ps (__m128 __A, __m128 __B)
{
  return (__m128) __builtin_ia32_movhlps ((__v4sf)__A, (__v4sf)__B);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_movelh_ps (__m128 __A, __m128 __B)
{
  return (__m128) __builtin_ia32_movlhps ((__v4sf)__A, (__v4sf)__B);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_loadl_pi (__m128 __A, __m64_u const *__P)
{
  return (__m128) __builtin_ia32_loadlps ((__v4sf)__A, (const __v2sf *)__P);
}
extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_storel_pi (__m64 *__P, __m128 __A)
{
  __builtin_ia32_storelps ((__v2sf *)__P, (__v4sf)__A);
}
extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_movemask_ps (__m128 __A)
{
  return __builtin_ia32_movmskps ((__v4sf)__A);
}
extern __inline unsigned int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_getcsr (void)
{
  return __builtin_ia32_stmxcsr ();
}
extern __inline unsigned int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_MM_GET_EXCEPTION_STATE (void)
{
  return _mm_getcsr() & 0x003f;
}
extern __inline unsigned int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_MM_GET_EXCEPTION_MASK (void)
{
  return _mm_getcsr() & 0x1f80;
}
extern __inline unsigned int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_MM_GET_ROUNDING_MODE (void)
{
  return _mm_getcsr() & 0x6000;
}
extern __inline unsigned int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_MM_GET_FLUSH_ZERO_MODE (void)
{
  return _mm_getcsr() & 0x8000;
}
extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_setcsr (unsigned int __I)
{
  __builtin_ia32_ldmxcsr (__I);
}
extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_MM_SET_EXCEPTION_STATE(unsigned int __mask)
{
  _mm_setcsr((_mm_getcsr() & ~0x003f) | __mask);
}
extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_MM_SET_EXCEPTION_MASK (unsigned int __mask)
{
  _mm_setcsr((_mm_getcsr() & ~0x1f80) | __mask);
}
extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_MM_SET_ROUNDING_MODE (unsigned int __mode)
{
  _mm_setcsr((_mm_getcsr() & ~0x6000) | __mode);
}
extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_MM_SET_FLUSH_ZERO_MODE (unsigned int __mode)
{
  _mm_setcsr((_mm_getcsr() & ~0x8000) | __mode);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_set_ss (float __F)
{
  return __extension__ (__m128)(__v4sf){ __F, 0.0f, 0.0f, 0.0f };
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_set1_ps (float __F)
{
  return __extension__ (__m128)(__v4sf){ __F, __F, __F, __F };
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_set_ps1 (float __F)
{
  return _mm_set1_ps (__F);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_load_ss (float const *__P)
{
  return __extension__ (__m128) (__v4sf){ *(__x86_float_u *)__P, 0.0f, 0.0f, 0.0f };
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_load1_ps (float const *__P)
{
  return _mm_set1_ps (*__P);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_load_ps1 (float const *__P)
{
  return _mm_load1_ps (__P);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_load_ps (float const *__P)
{
  return *(__m128 *)__P;
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_loadu_ps (float const *__P)
{
  return *(__m128_u *)__P;
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_loadr_ps (float const *__P)
{
  __v4sf __tmp = *(__v4sf *)__P;
  return (__m128) __builtin_ia32_shufps (__tmp, __tmp, (((0) << 6) | ((1) << 4) | ((2) << 2) | (3)));
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_set_ps (const float __Z, const float __Y, const float __X, const float __W)
{
  return __extension__ (__m128)(__v4sf){ __W, __X, __Y, __Z };
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_setr_ps (float __Z, float __Y, float __X, float __W)
{
  return __extension__ (__m128)(__v4sf){ __Z, __Y, __X, __W };
}
extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_store_ss (float *__P, __m128 __A)
{
  *(__x86_float_u *)__P = ((__v4sf)__A)[0];
}
extern __inline float __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvtss_f32 (__m128 __A)
{
  return ((__v4sf)__A)[0];
}
extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_store_ps (float *__P, __m128 __A)
{
  *(__m128 *)__P = __A;
}
extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_storeu_ps (float *__P, __m128 __A)
{
  *(__m128_u *)__P = __A;
}
extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_store1_ps (float *__P, __m128 __A)
{
  __v4sf __va = (__v4sf)__A;
  __v4sf __tmp = __builtin_ia32_shufps (__va, __va, (((0) << 6) | ((0) << 4) | ((0) << 2) | (0)));
  _mm_storeu_ps (__P, __tmp);
}
extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_store_ps1 (float *__P, __m128 __A)
{
  _mm_store1_ps (__P, __A);
}
extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_storer_ps (float *__P, __m128 __A)
{
  __v4sf __va = (__v4sf)__A;
  __v4sf __tmp = __builtin_ia32_shufps (__va, __va, (((0) << 6) | ((1) << 4) | ((2) << 2) | (3)));
  _mm_store_ps (__P, __tmp);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_move_ss (__m128 __A, __m128 __B)
{
  return (__m128) __builtin_shuffle ((__v4sf)__A, (__v4sf)__B,
                                     __extension__
                                     (__attribute__((__vector_size__ (16))) int)
                                     {4,1,2,3});
}
extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_extract_pi16 (__m64 const __A, int const __N)
{
  return (unsigned short) __builtin_ia32_vec_ext_v4hi ((__v4hi)__A, __N);
}
extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_pextrw (__m64 const __A, int const __N)
{
  return _mm_extract_pi16 (__A, __N);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_insert_pi16 (__m64 const __A, int const __D, int const __N)
{
  return (__m64) __builtin_ia32_vec_set_v4hi ((__v4hi)__A, __D, __N);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_pinsrw (__m64 const __A, int const __D, int const __N)
{
  return _mm_insert_pi16 (__A, __D, __N);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_max_pi16 (__m64 __A, __m64 __B)
{
  return (__m64) __builtin_ia32_pmaxsw ((__v4hi)__A, (__v4hi)__B);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_pmaxsw (__m64 __A, __m64 __B)
{
  return _mm_max_pi16 (__A, __B);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_max_pu8 (__m64 __A, __m64 __B)
{
  return (__m64) __builtin_ia32_pmaxub ((__v8qi)__A, (__v8qi)__B);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_pmaxub (__m64 __A, __m64 __B)
{
  return _mm_max_pu8 (__A, __B);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_min_pi16 (__m64 __A, __m64 __B)
{
  return (__m64) __builtin_ia32_pminsw ((__v4hi)__A, (__v4hi)__B);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_pminsw (__m64 __A, __m64 __B)
{
  return _mm_min_pi16 (__A, __B);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_min_pu8 (__m64 __A, __m64 __B)
{
  return (__m64) __builtin_ia32_pminub ((__v8qi)__A, (__v8qi)__B);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_pminub (__m64 __A, __m64 __B)
{
  return _mm_min_pu8 (__A, __B);
}
extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_movemask_pi8 (__m64 __A)
{
  return __builtin_ia32_pmovmskb ((__v8qi)__A);
}
extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_pmovmskb (__m64 __A)
{
  return _mm_movemask_pi8 (__A);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_mulhi_pu16 (__m64 __A, __m64 __B)
{
  return (__m64) __builtin_ia32_pmulhuw ((__v4hi)__A, (__v4hi)__B);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_pmulhuw (__m64 __A, __m64 __B)
{
  return _mm_mulhi_pu16 (__A, __B);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_shuffle_pi16 (__m64 __A, int const __N)
{
  return (__m64) __builtin_ia32_pshufw ((__v4hi)__A, __N);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_pshufw (__m64 __A, int const __N)
{
  return _mm_shuffle_pi16 (__A, __N);
}
extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_maskmove_si64 (__m64 __A, __m64 __N, char *__P)
{
  typedef long long __v2di __attribute__ ((__vector_size__ (16)));
  typedef char __v16qi __attribute__ ((__vector_size__ (16)));
  __v2di __A128 = __extension__ (__v2di) { ((__v1di) __A)[0], 0 };
  __v2di __N128 = __extension__ (__v2di) { ((__v1di) __N)[0], 0 };
  long unsigned int __offset = ((long unsigned int) __P) & 0xf;
  if (__offset)
    {
      if (__offset > 8)
 __offset = 8;
      __P = (char *) (((long unsigned int) __P) - __offset);
      switch (__offset)
 {
 case 1:
   __A128 = __builtin_ia32_pslldqi128 (__A128, 8);
   __N128 = __builtin_ia32_pslldqi128 (__N128, 8);
   break;
 case 2:
   __A128 = __builtin_ia32_pslldqi128 (__A128, 2 * 8);
   __N128 = __builtin_ia32_pslldqi128 (__N128, 2 * 8);
   break;
 case 3:
   __A128 = __builtin_ia32_pslldqi128 (__A128, 3 * 8);
   __N128 = __builtin_ia32_pslldqi128 (__N128, 3 * 8);
   break;
 case 4:
   __A128 = __builtin_ia32_pslldqi128 (__A128, 4 * 8);
   __N128 = __builtin_ia32_pslldqi128 (__N128, 4 * 8);
   break;
 case 5:
   __A128 = __builtin_ia32_pslldqi128 (__A128, 5 * 8);
   __N128 = __builtin_ia32_pslldqi128 (__N128, 5 * 8);
   break;
 case 6:
   __A128 = __builtin_ia32_pslldqi128 (__A128, 6 * 8);
   __N128 = __builtin_ia32_pslldqi128 (__N128, 6 * 8);
   break;
 case 7:
   __A128 = __builtin_ia32_pslldqi128 (__A128, 7 * 8);
   __N128 = __builtin_ia32_pslldqi128 (__N128, 7 * 8);
   break;
 case 8:
   __A128 = __builtin_ia32_pslldqi128 (__A128, 8 * 8);
   __N128 = __builtin_ia32_pslldqi128 (__N128, 8 * 8);
   break;
 default:
   break;
 }
    }
  __builtin_ia32_maskmovdqu ((__v16qi)__A128, (__v16qi)__N128, __P);
}
extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_maskmovq (__m64 __A, __m64 __N, char *__P)
{
  _mm_maskmove_si64 (__A, __N, __P);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_avg_pu8 (__m64 __A, __m64 __B)
{
  return (__m64) __builtin_ia32_pavgb ((__v8qi)__A, (__v8qi)__B);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_pavgb (__m64 __A, __m64 __B)
{
  return _mm_avg_pu8 (__A, __B);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_avg_pu16 (__m64 __A, __m64 __B)
{
  return (__m64) __builtin_ia32_pavgw ((__v4hi)__A, (__v4hi)__B);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_pavgw (__m64 __A, __m64 __B)
{
  return _mm_avg_pu16 (__A, __B);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_sad_pu8 (__m64 __A, __m64 __B)
{
  return (__m64) __builtin_ia32_psadbw ((__v8qi)__A, (__v8qi)__B);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_m_psadbw (__m64 __A, __m64 __B)
{
  return _mm_sad_pu8 (__A, __B);
}
extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_stream_pi (__m64 *__P, __m64 __A)
{
  __builtin_ia32_movntq ((unsigned long long *)__P, (unsigned long long)__A);
}
extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_stream_ps (float *__P, __m128 __A)
{
  __builtin_ia32_movntps (__P, (__v4sf)__A);
}
extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_sfence (void)
{
  __builtin_ia32_sfence ();
}
extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_pause (void)
{
  __builtin_ia32_pause ();
}
typedef double __v2df __attribute__ ((__vector_size__ (16)));
typedef long long __v2di __attribute__ ((__vector_size__ (16)));
typedef unsigned long long __v2du __attribute__ ((__vector_size__ (16)));
typedef int __v4si __attribute__ ((__vector_size__ (16)));
typedef unsigned int __v4su __attribute__ ((__vector_size__ (16)));
typedef short __v8hi __attribute__ ((__vector_size__ (16)));
typedef unsigned short __v8hu __attribute__ ((__vector_size__ (16)));
typedef char __v16qi __attribute__ ((__vector_size__ (16)));
typedef signed char __v16qs __attribute__ ((__vector_size__ (16)));
typedef unsigned char __v16qu __attribute__ ((__vector_size__ (16)));
typedef long long __m128i __attribute__ ((__vector_size__ (16), __may_alias__));
typedef double __m128d __attribute__ ((__vector_size__ (16), __may_alias__));
typedef long long __m128i_u __attribute__ ((__vector_size__ (16), __may_alias__, __aligned__ (1)));
typedef double __m128d_u __attribute__ ((__vector_size__ (16), __may_alias__, __aligned__ (1)));
typedef double __x86_double_u __attribute__ ((__may_alias__, __aligned__ (1)));
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_set_sd (double __F)
{
  return __extension__ (__m128d){ __F, 0.0 };
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_set1_pd (double __F)
{
  return __extension__ (__m128d){ __F, __F };
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_set_pd1 (double __F)
{
  return _mm_set1_pd (__F);
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_set_pd (double __W, double __X)
{
  return __extension__ (__m128d){ __X, __W };
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_setr_pd (double __W, double __X)
{
  return __extension__ (__m128d){ __W, __X };
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_undefined_pd (void)
{
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Winit-self"
  __m128d __Y = __Y;
#pragma GCC diagnostic pop
  return __Y;
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_setzero_pd (void)
{
  return __extension__ (__m128d){ 0.0, 0.0 };
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_move_sd (__m128d __A, __m128d __B)
{
  return __extension__ (__m128d) __builtin_shuffle ((__v2df)__A, (__v2df)__B, (__v2di){2, 1});
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_load_pd (double const *__P)
{
  return *(__m128d *)__P;
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_loadu_pd (double const *__P)
{
  return *(__m128d_u *)__P;
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_load1_pd (double const *__P)
{
  return _mm_set1_pd (*__P);
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_load_sd (double const *__P)
{
  return __extension__ (__m128d) { *(__x86_double_u *)__P, 0.0 };
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_load_pd1 (double const *__P)
{
  return _mm_load1_pd (__P);
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_loadr_pd (double const *__P)
{
  __m128d __tmp = _mm_load_pd (__P);
  return __builtin_ia32_shufpd (__tmp, __tmp, (((0) << 1) | (1)));
}
extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_store_pd (double *__P, __m128d __A)
{
  *(__m128d *)__P = __A;
}
extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_storeu_pd (double *__P, __m128d __A)
{
  *(__m128d_u *)__P = __A;
}
extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_store_sd (double *__P, __m128d __A)
{
  *(__x86_double_u *)__P = ((__v2df)__A)[0] ;
}
extern __inline double __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvtsd_f64 (__m128d __A)
{
  return ((__v2df)__A)[0];
}
extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_storel_pd (double *__P, __m128d __A)
{
  *__P = ((__v2df)__A)[0];
}
extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_storeh_pd (double *__P, __m128d __A)
{
  *__P = ((__v2df)__A)[1];
}
extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_store1_pd (double *__P, __m128d __A)
{
  _mm_store_pd (__P, __builtin_ia32_shufpd (__A, __A, (((0) << 1) | (0))));
}
extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_store_pd1 (double *__P, __m128d __A)
{
  _mm_store1_pd (__P, __A);
}
extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_storer_pd (double *__P, __m128d __A)
{
  _mm_store_pd (__P, __builtin_ia32_shufpd (__A, __A, (((0) << 1) | (1))));
}
extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvtsi128_si32 (__m128i __A)
{
  return __builtin_ia32_vec_ext_v4si ((__v4si)__A, 0);
}
extern __inline long long __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvtsi128_si64 (__m128i __A)
{
  return ((__v2di)__A)[0];
}
extern __inline long long __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvtsi128_si64x (__m128i __A)
{
  return ((__v2di)__A)[0];
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_add_pd (__m128d __A, __m128d __B)
{
  return (__m128d) ((__v2df)__A + (__v2df)__B);
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_add_sd (__m128d __A, __m128d __B)
{
  return (__m128d)__builtin_ia32_addsd ((__v2df)__A, (__v2df)__B);
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_sub_pd (__m128d __A, __m128d __B)
{
  return (__m128d) ((__v2df)__A - (__v2df)__B);
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_sub_sd (__m128d __A, __m128d __B)
{
  return (__m128d)__builtin_ia32_subsd ((__v2df)__A, (__v2df)__B);
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_mul_pd (__m128d __A, __m128d __B)
{
  return (__m128d) ((__v2df)__A * (__v2df)__B);
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_mul_sd (__m128d __A, __m128d __B)
{
  return (__m128d)__builtin_ia32_mulsd ((__v2df)__A, (__v2df)__B);
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_div_pd (__m128d __A, __m128d __B)
{
  return (__m128d) ((__v2df)__A / (__v2df)__B);
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_div_sd (__m128d __A, __m128d __B)
{
  return (__m128d)__builtin_ia32_divsd ((__v2df)__A, (__v2df)__B);
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_sqrt_pd (__m128d __A)
{
  return (__m128d)__builtin_ia32_sqrtpd ((__v2df)__A);
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_sqrt_sd (__m128d __A, __m128d __B)
{
  __v2df __tmp = __builtin_ia32_movsd ((__v2df)__A, (__v2df)__B);
  return (__m128d)__builtin_ia32_sqrtsd ((__v2df)__tmp);
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_min_pd (__m128d __A, __m128d __B)
{
  return (__m128d)__builtin_ia32_minpd ((__v2df)__A, (__v2df)__B);
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_min_sd (__m128d __A, __m128d __B)
{
  return (__m128d)__builtin_ia32_minsd ((__v2df)__A, (__v2df)__B);
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_max_pd (__m128d __A, __m128d __B)
{
  return (__m128d)__builtin_ia32_maxpd ((__v2df)__A, (__v2df)__B);
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_max_sd (__m128d __A, __m128d __B)
{
  return (__m128d)__builtin_ia32_maxsd ((__v2df)__A, (__v2df)__B);
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_and_pd (__m128d __A, __m128d __B)
{
  return (__m128d)__builtin_ia32_andpd ((__v2df)__A, (__v2df)__B);
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_andnot_pd (__m128d __A, __m128d __B)
{
  return (__m128d)__builtin_ia32_andnpd ((__v2df)__A, (__v2df)__B);
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_or_pd (__m128d __A, __m128d __B)
{
  return (__m128d)__builtin_ia32_orpd ((__v2df)__A, (__v2df)__B);
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_xor_pd (__m128d __A, __m128d __B)
{
  return (__m128d)__builtin_ia32_xorpd ((__v2df)__A, (__v2df)__B);
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmpeq_pd (__m128d __A, __m128d __B)
{
  return (__m128d)__builtin_ia32_cmpeqpd ((__v2df)__A, (__v2df)__B);
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmplt_pd (__m128d __A, __m128d __B)
{
  return (__m128d)__builtin_ia32_cmpltpd ((__v2df)__A, (__v2df)__B);
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmple_pd (__m128d __A, __m128d __B)
{
  return (__m128d)__builtin_ia32_cmplepd ((__v2df)__A, (__v2df)__B);
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmpgt_pd (__m128d __A, __m128d __B)
{
  return (__m128d)__builtin_ia32_cmpgtpd ((__v2df)__A, (__v2df)__B);
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmpge_pd (__m128d __A, __m128d __B)
{
  return (__m128d)__builtin_ia32_cmpgepd ((__v2df)__A, (__v2df)__B);
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmpneq_pd (__m128d __A, __m128d __B)
{
  return (__m128d)__builtin_ia32_cmpneqpd ((__v2df)__A, (__v2df)__B);
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmpnlt_pd (__m128d __A, __m128d __B)
{
  return (__m128d)__builtin_ia32_cmpnltpd ((__v2df)__A, (__v2df)__B);
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmpnle_pd (__m128d __A, __m128d __B)
{
  return (__m128d)__builtin_ia32_cmpnlepd ((__v2df)__A, (__v2df)__B);
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmpngt_pd (__m128d __A, __m128d __B)
{
  return (__m128d)__builtin_ia32_cmpngtpd ((__v2df)__A, (__v2df)__B);
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmpnge_pd (__m128d __A, __m128d __B)
{
  return (__m128d)__builtin_ia32_cmpngepd ((__v2df)__A, (__v2df)__B);
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmpord_pd (__m128d __A, __m128d __B)
{
  return (__m128d)__builtin_ia32_cmpordpd ((__v2df)__A, (__v2df)__B);
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmpunord_pd (__m128d __A, __m128d __B)
{
  return (__m128d)__builtin_ia32_cmpunordpd ((__v2df)__A, (__v2df)__B);
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmpeq_sd (__m128d __A, __m128d __B)
{
  return (__m128d)__builtin_ia32_cmpeqsd ((__v2df)__A, (__v2df)__B);
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmplt_sd (__m128d __A, __m128d __B)
{
  return (__m128d)__builtin_ia32_cmpltsd ((__v2df)__A, (__v2df)__B);
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmple_sd (__m128d __A, __m128d __B)
{
  return (__m128d)__builtin_ia32_cmplesd ((__v2df)__A, (__v2df)__B);
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmpgt_sd (__m128d __A, __m128d __B)
{
  return (__m128d) __builtin_ia32_movsd ((__v2df) __A,
      (__v2df)
      __builtin_ia32_cmpltsd ((__v2df) __B,
         (__v2df)
         __A));
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmpge_sd (__m128d __A, __m128d __B)
{
  return (__m128d) __builtin_ia32_movsd ((__v2df) __A,
      (__v2df)
      __builtin_ia32_cmplesd ((__v2df) __B,
         (__v2df)
         __A));
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmpneq_sd (__m128d __A, __m128d __B)
{
  return (__m128d)__builtin_ia32_cmpneqsd ((__v2df)__A, (__v2df)__B);
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmpnlt_sd (__m128d __A, __m128d __B)
{
  return (__m128d)__builtin_ia32_cmpnltsd ((__v2df)__A, (__v2df)__B);
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmpnle_sd (__m128d __A, __m128d __B)
{
  return (__m128d)__builtin_ia32_cmpnlesd ((__v2df)__A, (__v2df)__B);
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmpngt_sd (__m128d __A, __m128d __B)
{
  return (__m128d) __builtin_ia32_movsd ((__v2df) __A,
      (__v2df)
      __builtin_ia32_cmpnltsd ((__v2df) __B,
          (__v2df)
          __A));
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmpnge_sd (__m128d __A, __m128d __B)
{
  return (__m128d) __builtin_ia32_movsd ((__v2df) __A,
      (__v2df)
      __builtin_ia32_cmpnlesd ((__v2df) __B,
          (__v2df)
          __A));
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmpord_sd (__m128d __A, __m128d __B)
{
  return (__m128d)__builtin_ia32_cmpordsd ((__v2df)__A, (__v2df)__B);
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmpunord_sd (__m128d __A, __m128d __B)
{
  return (__m128d)__builtin_ia32_cmpunordsd ((__v2df)__A, (__v2df)__B);
}
extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_comieq_sd (__m128d __A, __m128d __B)
{
  return __builtin_ia32_comisdeq ((__v2df)__A, (__v2df)__B);
}
extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_comilt_sd (__m128d __A, __m128d __B)
{
  return __builtin_ia32_comisdlt ((__v2df)__A, (__v2df)__B);
}
extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_comile_sd (__m128d __A, __m128d __B)
{
  return __builtin_ia32_comisdle ((__v2df)__A, (__v2df)__B);
}
extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_comigt_sd (__m128d __A, __m128d __B)
{
  return __builtin_ia32_comisdgt ((__v2df)__A, (__v2df)__B);
}
extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_comige_sd (__m128d __A, __m128d __B)
{
  return __builtin_ia32_comisdge ((__v2df)__A, (__v2df)__B);
}
extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_comineq_sd (__m128d __A, __m128d __B)
{
  return __builtin_ia32_comisdneq ((__v2df)__A, (__v2df)__B);
}
extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_ucomieq_sd (__m128d __A, __m128d __B)
{
  return __builtin_ia32_ucomisdeq ((__v2df)__A, (__v2df)__B);
}
extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_ucomilt_sd (__m128d __A, __m128d __B)
{
  return __builtin_ia32_ucomisdlt ((__v2df)__A, (__v2df)__B);
}
extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_ucomile_sd (__m128d __A, __m128d __B)
{
  return __builtin_ia32_ucomisdle ((__v2df)__A, (__v2df)__B);
}
extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_ucomigt_sd (__m128d __A, __m128d __B)
{
  return __builtin_ia32_ucomisdgt ((__v2df)__A, (__v2df)__B);
}
extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_ucomige_sd (__m128d __A, __m128d __B)
{
  return __builtin_ia32_ucomisdge ((__v2df)__A, (__v2df)__B);
}
extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_ucomineq_sd (__m128d __A, __m128d __B)
{
  return __builtin_ia32_ucomisdneq ((__v2df)__A, (__v2df)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_set_epi64x (long long __q1, long long __q0)
{
  return __extension__ (__m128i)(__v2di){ __q0, __q1 };
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_set_epi64 (__m64 __q1, __m64 __q0)
{
  return _mm_set_epi64x ((long long)__q1, (long long)__q0);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_set_epi32 (int __q3, int __q2, int __q1, int __q0)
{
  return __extension__ (__m128i)(__v4si){ __q0, __q1, __q2, __q3 };
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_set_epi16 (short __q7, short __q6, short __q5, short __q4,
        short __q3, short __q2, short __q1, short __q0)
{
  return __extension__ (__m128i)(__v8hi){
    __q0, __q1, __q2, __q3, __q4, __q5, __q6, __q7 };
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_set_epi8 (char __q15, char __q14, char __q13, char __q12,
       char __q11, char __q10, char __q09, char __q08,
       char __q07, char __q06, char __q05, char __q04,
       char __q03, char __q02, char __q01, char __q00)
{
  return __extension__ (__m128i)(__v16qi){
    __q00, __q01, __q02, __q03, __q04, __q05, __q06, __q07,
    __q08, __q09, __q10, __q11, __q12, __q13, __q14, __q15
  };
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_set1_epi64x (long long __A)
{
  return _mm_set_epi64x (__A, __A);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_set1_epi64 (__m64 __A)
{
  return _mm_set_epi64 (__A, __A);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_set1_epi32 (int __A)
{
  return _mm_set_epi32 (__A, __A, __A, __A);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_set1_epi16 (short __A)
{
  return _mm_set_epi16 (__A, __A, __A, __A, __A, __A, __A, __A);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_set1_epi8 (char __A)
{
  return _mm_set_epi8 (__A, __A, __A, __A, __A, __A, __A, __A,
         __A, __A, __A, __A, __A, __A, __A, __A);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_setr_epi64 (__m64 __q0, __m64 __q1)
{
  return _mm_set_epi64 (__q1, __q0);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_setr_epi32 (int __q0, int __q1, int __q2, int __q3)
{
  return _mm_set_epi32 (__q3, __q2, __q1, __q0);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_setr_epi16 (short __q0, short __q1, short __q2, short __q3,
         short __q4, short __q5, short __q6, short __q7)
{
  return _mm_set_epi16 (__q7, __q6, __q5, __q4, __q3, __q2, __q1, __q0);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_setr_epi8 (char __q00, char __q01, char __q02, char __q03,
        char __q04, char __q05, char __q06, char __q07,
        char __q08, char __q09, char __q10, char __q11,
        char __q12, char __q13, char __q14, char __q15)
{
  return _mm_set_epi8 (__q15, __q14, __q13, __q12, __q11, __q10, __q09, __q08,
         __q07, __q06, __q05, __q04, __q03, __q02, __q01, __q00);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_load_si128 (__m128i const *__P)
{
  return *__P;
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_loadu_si128 (__m128i_u const *__P)
{
  return *__P;
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_loadl_epi64 (__m128i_u const *__P)
{
  return _mm_set_epi64 ((__m64)0LL, *(__m64_u *)__P);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_loadu_si64 (void const *__P)
{
  return _mm_loadl_epi64 ((__m128i_u *)__P);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_loadu_si32 (void const *__P)
{
  return _mm_set_epi32 (0, 0, 0, (*(__m32_u *)__P)[0]);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_loadu_si16 (void const *__P)
{
  return _mm_set_epi16 (0, 0, 0, 0, 0, 0, 0, (*(__m16_u *)__P)[0]);
}
extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_store_si128 (__m128i *__P, __m128i __B)
{
  *__P = __B;
}
extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_storeu_si128 (__m128i_u *__P, __m128i __B)
{
  *__P = __B;
}
extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_storel_epi64 (__m128i_u *__P, __m128i __B)
{
  *(__m64_u *)__P = (__m64) ((__v2di)__B)[0];
}
extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_storeu_si64 (void *__P, __m128i __B)
{
  _mm_storel_epi64 ((__m128i_u *)__P, __B);
}
extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_storeu_si32 (void *__P, __m128i __B)
{
  *(__m32_u *)__P = (__m32) ((__v4si)__B)[0];
}
extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_storeu_si16 (void *__P, __m128i __B)
{
  *(__m16_u *)__P = (__m16) ((__v8hi)__B)[0];
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_movepi64_pi64 (__m128i __B)
{
  return (__m64) ((__v2di)__B)[0];
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_movpi64_epi64 (__m64 __A)
{
  return _mm_set_epi64 ((__m64)0LL, __A);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_move_epi64 (__m128i __A)
{
  return (__m128i)__builtin_ia32_movq128 ((__v2di) __A);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_undefined_si128 (void)
{
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Winit-self"
  __m128i __Y = __Y;
#pragma GCC diagnostic pop
  return __Y;
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_setzero_si128 (void)
{
  return __extension__ (__m128i)(__v4si){ 0, 0, 0, 0 };
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvtepi32_pd (__m128i __A)
{
  return (__m128d)__builtin_ia32_cvtdq2pd ((__v4si) __A);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvtepi32_ps (__m128i __A)
{
  return (__m128)__builtin_ia32_cvtdq2ps ((__v4si) __A);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvtpd_epi32 (__m128d __A)
{
  return (__m128i)__builtin_ia32_cvtpd2dq ((__v2df) __A);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvtpd_pi32 (__m128d __A)
{
  return (__m64)__builtin_ia32_cvtpd2pi ((__v2df) __A);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvtpd_ps (__m128d __A)
{
  return (__m128)__builtin_ia32_cvtpd2ps ((__v2df) __A);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvttpd_epi32 (__m128d __A)
{
  return (__m128i)__builtin_ia32_cvttpd2dq ((__v2df) __A);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvttpd_pi32 (__m128d __A)
{
  return (__m64)__builtin_ia32_cvttpd2pi ((__v2df) __A);
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvtpi32_pd (__m64 __A)
{
  return (__m128d)__builtin_ia32_cvtpi2pd ((__v2si) __A);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvtps_epi32 (__m128 __A)
{
  return (__m128i)__builtin_ia32_cvtps2dq ((__v4sf) __A);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvttps_epi32 (__m128 __A)
{
  return (__m128i)__builtin_ia32_cvttps2dq ((__v4sf) __A);
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvtps_pd (__m128 __A)
{
  return (__m128d)__builtin_ia32_cvtps2pd ((__v4sf) __A);
}
extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvtsd_si32 (__m128d __A)
{
  return __builtin_ia32_cvtsd2si ((__v2df) __A);
}
extern __inline long long __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvtsd_si64 (__m128d __A)
{
  return __builtin_ia32_cvtsd2si64 ((__v2df) __A);
}
extern __inline long long __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvtsd_si64x (__m128d __A)
{
  return __builtin_ia32_cvtsd2si64 ((__v2df) __A);
}
extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvttsd_si32 (__m128d __A)
{
  return __builtin_ia32_cvttsd2si ((__v2df) __A);
}
extern __inline long long __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvttsd_si64 (__m128d __A)
{
  return __builtin_ia32_cvttsd2si64 ((__v2df) __A);
}
extern __inline long long __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvttsd_si64x (__m128d __A)
{
  return __builtin_ia32_cvttsd2si64 ((__v2df) __A);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvtsd_ss (__m128 __A, __m128d __B)
{
  return (__m128)__builtin_ia32_cvtsd2ss ((__v4sf) __A, (__v2df) __B);
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvtsi32_sd (__m128d __A, int __B)
{
  return (__m128d)__builtin_ia32_cvtsi2sd ((__v2df) __A, __B);
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvtsi64_sd (__m128d __A, long long __B)
{
  return (__m128d)__builtin_ia32_cvtsi642sd ((__v2df) __A, __B);
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvtsi64x_sd (__m128d __A, long long __B)
{
  return (__m128d)__builtin_ia32_cvtsi642sd ((__v2df) __A, __B);
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvtss_sd (__m128d __A, __m128 __B)
{
  return (__m128d)__builtin_ia32_cvtss2sd ((__v2df) __A, (__v4sf)__B);
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_shuffle_pd(__m128d __A, __m128d __B, const int __mask)
{
  return (__m128d)__builtin_ia32_shufpd ((__v2df)__A, (__v2df)__B, __mask);
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_unpackhi_pd (__m128d __A, __m128d __B)
{
  return (__m128d)__builtin_ia32_unpckhpd ((__v2df)__A, (__v2df)__B);
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_unpacklo_pd (__m128d __A, __m128d __B)
{
  return (__m128d)__builtin_ia32_unpcklpd ((__v2df)__A, (__v2df)__B);
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_loadh_pd (__m128d __A, double const *__B)
{
  return __extension__ (__m128d) { ((__v2df)__A)[0], *(__x86_double_u*)__B };
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_loadl_pd (__m128d __A, double const *__B)
{
  return __extension__ (__m128d) { *(__x86_double_u*)__B, ((__v2df)__A)[1] };
}
extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_movemask_pd (__m128d __A)
{
  return __builtin_ia32_movmskpd ((__v2df)__A);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_packs_epi16 (__m128i __A, __m128i __B)
{
  return (__m128i)__builtin_ia32_packsswb128 ((__v8hi)__A, (__v8hi)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_packs_epi32 (__m128i __A, __m128i __B)
{
  return (__m128i)__builtin_ia32_packssdw128 ((__v4si)__A, (__v4si)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_packus_epi16 (__m128i __A, __m128i __B)
{
  return (__m128i)__builtin_ia32_packuswb128 ((__v8hi)__A, (__v8hi)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_unpackhi_epi8 (__m128i __A, __m128i __B)
{
  return (__m128i)__builtin_ia32_punpckhbw128 ((__v16qi)__A, (__v16qi)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_unpackhi_epi16 (__m128i __A, __m128i __B)
{
  return (__m128i)__builtin_ia32_punpckhwd128 ((__v8hi)__A, (__v8hi)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_unpackhi_epi32 (__m128i __A, __m128i __B)
{
  return (__m128i)__builtin_ia32_punpckhdq128 ((__v4si)__A, (__v4si)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_unpackhi_epi64 (__m128i __A, __m128i __B)
{
  return (__m128i)__builtin_ia32_punpckhqdq128 ((__v2di)__A, (__v2di)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_unpacklo_epi8 (__m128i __A, __m128i __B)
{
  return (__m128i)__builtin_ia32_punpcklbw128 ((__v16qi)__A, (__v16qi)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_unpacklo_epi16 (__m128i __A, __m128i __B)
{
  return (__m128i)__builtin_ia32_punpcklwd128 ((__v8hi)__A, (__v8hi)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_unpacklo_epi32 (__m128i __A, __m128i __B)
{
  return (__m128i)__builtin_ia32_punpckldq128 ((__v4si)__A, (__v4si)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_unpacklo_epi64 (__m128i __A, __m128i __B)
{
  return (__m128i)__builtin_ia32_punpcklqdq128 ((__v2di)__A, (__v2di)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_add_epi8 (__m128i __A, __m128i __B)
{
  return (__m128i) ((__v16qu)__A + (__v16qu)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_add_epi16 (__m128i __A, __m128i __B)
{
  return (__m128i) ((__v8hu)__A + (__v8hu)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_add_epi32 (__m128i __A, __m128i __B)
{
  return (__m128i) ((__v4su)__A + (__v4su)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_add_epi64 (__m128i __A, __m128i __B)
{
  return (__m128i) ((__v2du)__A + (__v2du)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_adds_epi8 (__m128i __A, __m128i __B)
{
  return (__m128i)__builtin_ia32_paddsb128 ((__v16qi)__A, (__v16qi)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_adds_epi16 (__m128i __A, __m128i __B)
{
  return (__m128i)__builtin_ia32_paddsw128 ((__v8hi)__A, (__v8hi)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_adds_epu8 (__m128i __A, __m128i __B)
{
  return (__m128i)__builtin_ia32_paddusb128 ((__v16qi)__A, (__v16qi)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_adds_epu16 (__m128i __A, __m128i __B)
{
  return (__m128i)__builtin_ia32_paddusw128 ((__v8hi)__A, (__v8hi)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_sub_epi8 (__m128i __A, __m128i __B)
{
  return (__m128i) ((__v16qu)__A - (__v16qu)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_sub_epi16 (__m128i __A, __m128i __B)
{
  return (__m128i) ((__v8hu)__A - (__v8hu)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_sub_epi32 (__m128i __A, __m128i __B)
{
  return (__m128i) ((__v4su)__A - (__v4su)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_sub_epi64 (__m128i __A, __m128i __B)
{
  return (__m128i) ((__v2du)__A - (__v2du)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_subs_epi8 (__m128i __A, __m128i __B)
{
  return (__m128i)__builtin_ia32_psubsb128 ((__v16qi)__A, (__v16qi)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_subs_epi16 (__m128i __A, __m128i __B)
{
  return (__m128i)__builtin_ia32_psubsw128 ((__v8hi)__A, (__v8hi)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_subs_epu8 (__m128i __A, __m128i __B)
{
  return (__m128i)__builtin_ia32_psubusb128 ((__v16qi)__A, (__v16qi)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_subs_epu16 (__m128i __A, __m128i __B)
{
  return (__m128i)__builtin_ia32_psubusw128 ((__v8hi)__A, (__v8hi)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_madd_epi16 (__m128i __A, __m128i __B)
{
  return (__m128i)__builtin_ia32_pmaddwd128 ((__v8hi)__A, (__v8hi)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_mulhi_epi16 (__m128i __A, __m128i __B)
{
  return (__m128i)__builtin_ia32_pmulhw128 ((__v8hi)__A, (__v8hi)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_mullo_epi16 (__m128i __A, __m128i __B)
{
  return (__m128i) ((__v8hu)__A * (__v8hu)__B);
}
extern __inline __m64 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_mul_su32 (__m64 __A, __m64 __B)
{
  return (__m64)__builtin_ia32_pmuludq ((__v2si)__A, (__v2si)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_mul_epu32 (__m128i __A, __m128i __B)
{
  return (__m128i)__builtin_ia32_pmuludq128 ((__v4si)__A, (__v4si)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_slli_epi16 (__m128i __A, int __B)
{
  return (__m128i)__builtin_ia32_psllwi128 ((__v8hi)__A, __B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_slli_epi32 (__m128i __A, int __B)
{
  return (__m128i)__builtin_ia32_pslldi128 ((__v4si)__A, __B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_slli_epi64 (__m128i __A, int __B)
{
  return (__m128i)__builtin_ia32_psllqi128 ((__v2di)__A, __B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_srai_epi16 (__m128i __A, int __B)
{
  return (__m128i)__builtin_ia32_psrawi128 ((__v8hi)__A, __B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_srai_epi32 (__m128i __A, int __B)
{
  return (__m128i)__builtin_ia32_psradi128 ((__v4si)__A, __B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_bsrli_si128 (__m128i __A, const int __N)
{
  return (__m128i)__builtin_ia32_psrldqi128 (__A, __N * 8);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_bslli_si128 (__m128i __A, const int __N)
{
  return (__m128i)__builtin_ia32_pslldqi128 (__A, __N * 8);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_srli_si128 (__m128i __A, const int __N)
{
  return (__m128i)__builtin_ia32_psrldqi128 (__A, __N * 8);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_slli_si128 (__m128i __A, const int __N)
{
  return (__m128i)__builtin_ia32_pslldqi128 (__A, __N * 8);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_srli_epi16 (__m128i __A, int __B)
{
  return (__m128i)__builtin_ia32_psrlwi128 ((__v8hi)__A, __B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_srli_epi32 (__m128i __A, int __B)
{
  return (__m128i)__builtin_ia32_psrldi128 ((__v4si)__A, __B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_srli_epi64 (__m128i __A, int __B)
{
  return (__m128i)__builtin_ia32_psrlqi128 ((__v2di)__A, __B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_sll_epi16 (__m128i __A, __m128i __B)
{
  return (__m128i)__builtin_ia32_psllw128((__v8hi)__A, (__v8hi)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_sll_epi32 (__m128i __A, __m128i __B)
{
  return (__m128i)__builtin_ia32_pslld128((__v4si)__A, (__v4si)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_sll_epi64 (__m128i __A, __m128i __B)
{
  return (__m128i)__builtin_ia32_psllq128((__v2di)__A, (__v2di)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_sra_epi16 (__m128i __A, __m128i __B)
{
  return (__m128i)__builtin_ia32_psraw128 ((__v8hi)__A, (__v8hi)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_sra_epi32 (__m128i __A, __m128i __B)
{
  return (__m128i)__builtin_ia32_psrad128 ((__v4si)__A, (__v4si)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_srl_epi16 (__m128i __A, __m128i __B)
{
  return (__m128i)__builtin_ia32_psrlw128 ((__v8hi)__A, (__v8hi)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_srl_epi32 (__m128i __A, __m128i __B)
{
  return (__m128i)__builtin_ia32_psrld128 ((__v4si)__A, (__v4si)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_srl_epi64 (__m128i __A, __m128i __B)
{
  return (__m128i)__builtin_ia32_psrlq128 ((__v2di)__A, (__v2di)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_and_si128 (__m128i __A, __m128i __B)
{
  return (__m128i) ((__v2du)__A & (__v2du)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_andnot_si128 (__m128i __A, __m128i __B)
{
  return (__m128i)__builtin_ia32_pandn128 ((__v2di)__A, (__v2di)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_or_si128 (__m128i __A, __m128i __B)
{
  return (__m128i) ((__v2du)__A | (__v2du)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_xor_si128 (__m128i __A, __m128i __B)
{
  return (__m128i) ((__v2du)__A ^ (__v2du)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmpeq_epi8 (__m128i __A, __m128i __B)
{
  return (__m128i) ((__v16qi)__A == (__v16qi)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmpeq_epi16 (__m128i __A, __m128i __B)
{
  return (__m128i) ((__v8hi)__A == (__v8hi)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmpeq_epi32 (__m128i __A, __m128i __B)
{
  return (__m128i) ((__v4si)__A == (__v4si)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmplt_epi8 (__m128i __A, __m128i __B)
{
  return (__m128i) ((__v16qs)__A < (__v16qs)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmplt_epi16 (__m128i __A, __m128i __B)
{
  return (__m128i) ((__v8hi)__A < (__v8hi)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmplt_epi32 (__m128i __A, __m128i __B)
{
  return (__m128i) ((__v4si)__A < (__v4si)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmpgt_epi8 (__m128i __A, __m128i __B)
{
  return (__m128i) ((__v16qs)__A > (__v16qs)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmpgt_epi16 (__m128i __A, __m128i __B)
{
  return (__m128i) ((__v8hi)__A > (__v8hi)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmpgt_epi32 (__m128i __A, __m128i __B)
{
  return (__m128i) ((__v4si)__A > (__v4si)__B);
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmp_pd (__m128d __X, __m128d __Y, const int __P)
{
  return (__m128d) __builtin_ia32_cmppd ((__v2df)__X, (__v2df)__Y, __P);
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cmp_sd (__m128d __X, __m128d __Y, const int __P)
{
  return (__m128d) __builtin_ia32_cmpsd ((__v2df)__X, (__v2df)__Y, __P);
}
extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_extract_epi16 (__m128i const __A, int const __N)
{
  return (unsigned short) __builtin_ia32_vec_ext_v8hi ((__v8hi)__A, __N);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_insert_epi16 (__m128i const __A, int const __D, int const __N)
{
  return (__m128i) __builtin_ia32_vec_set_v8hi ((__v8hi)__A, __D, __N);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_max_epi16 (__m128i __A, __m128i __B)
{
  return (__m128i)__builtin_ia32_pmaxsw128 ((__v8hi)__A, (__v8hi)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_max_epu8 (__m128i __A, __m128i __B)
{
  return (__m128i)__builtin_ia32_pmaxub128 ((__v16qi)__A, (__v16qi)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_min_epi16 (__m128i __A, __m128i __B)
{
  return (__m128i)__builtin_ia32_pminsw128 ((__v8hi)__A, (__v8hi)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_min_epu8 (__m128i __A, __m128i __B)
{
  return (__m128i)__builtin_ia32_pminub128 ((__v16qi)__A, (__v16qi)__B);
}
extern __inline int __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_movemask_epi8 (__m128i __A)
{
  return __builtin_ia32_pmovmskb128 ((__v16qi)__A);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_mulhi_epu16 (__m128i __A, __m128i __B)
{
  return (__m128i)__builtin_ia32_pmulhuw128 ((__v8hi)__A, (__v8hi)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_shufflehi_epi16 (__m128i __A, const int __mask)
{
  return (__m128i)__builtin_ia32_pshufhw ((__v8hi)__A, __mask);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_shufflelo_epi16 (__m128i __A, const int __mask)
{
  return (__m128i)__builtin_ia32_pshuflw ((__v8hi)__A, __mask);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_shuffle_epi32 (__m128i __A, const int __mask)
{
  return (__m128i)__builtin_ia32_pshufd ((__v4si)__A, __mask);
}
extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_maskmoveu_si128 (__m128i __A, __m128i __B, char *__C)
{
  __builtin_ia32_maskmovdqu ((__v16qi)__A, (__v16qi)__B, __C);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_avg_epu8 (__m128i __A, __m128i __B)
{
  return (__m128i)__builtin_ia32_pavgb128 ((__v16qi)__A, (__v16qi)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_avg_epu16 (__m128i __A, __m128i __B)
{
  return (__m128i)__builtin_ia32_pavgw128 ((__v8hi)__A, (__v8hi)__B);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_sad_epu8 (__m128i __A, __m128i __B)
{
  return (__m128i)__builtin_ia32_psadbw128 ((__v16qi)__A, (__v16qi)__B);
}
extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_stream_si32 (int *__A, int __B)
{
  __builtin_ia32_movnti (__A, __B);
}
extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_stream_si64 (long long int *__A, long long int __B)
{
  __builtin_ia32_movnti64 (__A, __B);
}
extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_stream_si128 (__m128i *__A, __m128i __B)
{
  __builtin_ia32_movntdq ((__v2di *)__A, (__v2di)__B);
}
extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_stream_pd (double *__A, __m128d __B)
{
  __builtin_ia32_movntpd (__A, (__v2df)__B);
}
extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_clflush (void const *__A)
{
  __builtin_ia32_clflush (__A);
}
extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_lfence (void)
{
  __builtin_ia32_lfence ();
}
extern __inline void __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_mfence (void)
{
  __builtin_ia32_mfence ();
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvtsi32_si128 (int __A)
{
  return _mm_set_epi32 (0, 0, 0, __A);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvtsi64_si128 (long long __A)
{
  return _mm_set_epi64x (0, __A);
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_cvtsi64x_si128 (long long __A)
{
  return _mm_set_epi64x (0, __A);
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_castpd_ps(__m128d __A)
{
  return (__m128) __A;
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_castpd_si128(__m128d __A)
{
  return (__m128i) __A;
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_castps_pd(__m128 __A)
{
  return (__m128d) __A;
}
extern __inline __m128i __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_castps_si128(__m128 __A)
{
  return (__m128i) __A;
}
extern __inline __m128 __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_castsi128_ps(__m128i __A)
{
  return (__m128) __A;
}
extern __inline __m128d __attribute__((__gnu_inline__, __always_inline__, __artificial__))
_mm_castsi128_pd(__m128i __A)
{
  return (__m128d) __A;
}
alignas(64) static const xxh_u8 XXH3_kSecret[192] = {
    0xb8, 0xfe, 0x6c, 0x39, 0x23, 0xa4, 0x4b, 0xbe, 0x7c, 0x01, 0x81, 0x2c, 0xf7, 0x21, 0xad, 0x1c,
    0xde, 0xd4, 0x6d, 0xe9, 0x83, 0x90, 0x97, 0xdb, 0x72, 0x40, 0xa4, 0xa4, 0xb7, 0xb3, 0x67, 0x1f,
    0xcb, 0x79, 0xe6, 0x4e, 0xcc, 0xc0, 0xe5, 0x78, 0x82, 0x5a, 0xd0, 0x7d, 0xcc, 0xff, 0x72, 0x21,
    0xb8, 0x08, 0x46, 0x74, 0xf7, 0x43, 0x24, 0x8e, 0xe0, 0x35, 0x90, 0xe6, 0x81, 0x3a, 0x26, 0x4c,
    0x3c, 0x28, 0x52, 0xbb, 0x91, 0xc3, 0x00, 0xcb, 0x88, 0xd0, 0x65, 0x8b, 0x1b, 0x53, 0x2e, 0xa3,
    0x71, 0x64, 0x48, 0x97, 0xa2, 0x0d, 0xf9, 0x4e, 0x38, 0x19, 0xef, 0x46, 0xa9, 0xde, 0xac, 0xd8,
    0xa8, 0xfa, 0x76, 0x3f, 0xe3, 0x9c, 0x34, 0x3f, 0xf9, 0xdc, 0xbb, 0xc7, 0xc7, 0x0b, 0x4f, 0x1d,
    0x8a, 0x51, 0xe0, 0x4b, 0xcd, 0xb4, 0x59, 0x31, 0xc8, 0x9f, 0x7e, 0xc9, 0xd9, 0x78, 0x73, 0x64,
    0xea, 0xc5, 0xac, 0x83, 0x34, 0xd3, 0xeb, 0xc3, 0xc5, 0x81, 0xa0, 0xff, 0xfa, 0x13, 0x63, 0xeb,
    0x17, 0x0d, 0xdd, 0x51, 0xb7, 0xf0, 0xda, 0x49, 0xd3, 0x16, 0x55, 0x26, 0x29, 0xd4, 0x68, 0x9e,
    0x2b, 0x16, 0xbe, 0x58, 0x7d, 0x47, 0xa1, 0xfc, 0x8f, 0xf8, 0xb8, 0xd1, 0x7a, 0xd0, 0x31, 0xce,
    0x45, 0xcb, 0x3a, 0x8f, 0x95, 0x16, 0x04, 0x28, 0xaf, 0xd7, 0xfb, 0xca, 0xbb, 0x4b, 0x40, 0x7e,
};
static XXH_INLINE_XXH128_hash_t
XXH_mult64to128(xxh_u64 lhs, xxh_u64 rhs)
{
    __uint128_t const product = (__uint128_t)lhs * (__uint128_t)rhs;
    XXH_INLINE_XXH128_hash_t r128;
    r128.low64 = (xxh_u64)(product);
    r128.high64 = (xxh_u64)(product >> 64);
    return r128;
}
static xxh_u64
XXH3_mul128_fold64(xxh_u64 lhs, xxh_u64 rhs)
{
    XXH_INLINE_XXH128_hash_t product = XXH_mult64to128(lhs, rhs);
    return product.low64 ^ product.high64;
}
static __inline__ __attribute__((always_inline, unused)) xxh_u64 XXH_xorshift64(xxh_u64 v64, int shift)
{
    ((void)0);
    return v64 ^ (v64 >> shift);
}
static XXH64_hash_t XXH3_avalanche(xxh_u64 h64)
{
    h64 = XXH_xorshift64(h64, 37);
    h64 *= 0x165667919E3779F9ULL;
    h64 = XXH_xorshift64(h64, 32);
    return h64;
}
static XXH64_hash_t XXH3_rrmxmx(xxh_u64 h64, xxh_u64 len)
{
    h64 ^= (((h64) << (49)) | ((h64) >> (64 - (49)))) ^ (((h64) << (24)) | ((h64) >> (64 - (24))));
    h64 *= 0x9FB21C651E98DF25ULL;
    h64 ^= (h64 >> 35) + len ;
    h64 *= 0x9FB21C651E98DF25ULL;
    return XXH_xorshift64(h64, 28);
}
static __inline__ __attribute__((always_inline, unused)) XXH64_hash_t
XXH3_len_1to3_64b(const xxh_u8* input, size_t len, const xxh_u8* secret, XXH64_hash_t seed)
{
    ((void)0);
    ((void)0);
    ((void)0);
    { xxh_u8 const c1 = input[0];
        xxh_u8 const c2 = input[len >> 1];
        xxh_u8 const c3 = input[len - 1];
        xxh_u32 const combined = ((xxh_u32)c1 << 16) | ((xxh_u32)c2 << 24)
                               | ((xxh_u32)c3 << 0) | ((xxh_u32)len << 8);
        xxh_u64 const bitflip = (XXH_readLE32(secret) ^ XXH_readLE32(secret+4)) + seed;
        xxh_u64 const keyed = (xxh_u64)combined ^ bitflip;
        return XXH64_avalanche(keyed);
    }
}
static __inline__ __attribute__((always_inline, unused)) XXH64_hash_t
XXH3_len_4to8_64b(const xxh_u8* input, size_t len, const xxh_u8* secret, XXH64_hash_t seed)
{
    ((void)0);
    ((void)0);
    ((void)0);
    seed ^= (xxh_u64)__builtin_bswap32((xxh_u32)seed) << 32;
    { xxh_u32 const input1 = XXH_readLE32(input);
        xxh_u32 const input2 = XXH_readLE32(input + len - 4);
        xxh_u64 const bitflip = (XXH_readLE64(secret+8) ^ XXH_readLE64(secret+16)) - seed;
        xxh_u64 const input64 = input2 + (((xxh_u64)input1) << 32);
        xxh_u64 const keyed = input64 ^ bitflip;
        return XXH3_rrmxmx(keyed, len);
    }
}
static __inline__ __attribute__((always_inline, unused)) XXH64_hash_t
XXH3_len_9to16_64b(const xxh_u8* input, size_t len, const xxh_u8* secret, XXH64_hash_t seed)
{
    ((void)0);
    ((void)0);
    ((void)0);
    { xxh_u64 const bitflip1 = (XXH_readLE64(secret+24) ^ XXH_readLE64(secret+32)) + seed;
        xxh_u64 const bitflip2 = (XXH_readLE64(secret+40) ^ XXH_readLE64(secret+48)) - seed;
        xxh_u64 const input_lo = XXH_readLE64(input) ^ bitflip1;
        xxh_u64 const input_hi = XXH_readLE64(input + len - 8) ^ bitflip2;
        xxh_u64 const acc = len
                          + __builtin_bswap64(input_lo) + input_hi
                          + XXH3_mul128_fold64(input_lo, input_hi);
        return XXH3_avalanche(acc);
    }
}
static __inline__ __attribute__((always_inline, unused)) XXH64_hash_t
XXH3_len_0to16_64b(const xxh_u8* input, size_t len, const xxh_u8* secret, XXH64_hash_t seed)
{
    ((void)0);
    { if (__builtin_expect(len > 8, 1)) return XXH3_len_9to16_64b(input, len, secret, seed);
        if (__builtin_expect(len >= 4, 1)) return XXH3_len_4to8_64b(input, len, secret, seed);
        if (len) return XXH3_len_1to3_64b(input, len, secret, seed);
        return XXH64_avalanche(seed ^ (XXH_readLE64(secret+56) ^ XXH_readLE64(secret+64)));
    }
}
static __inline__ __attribute__((always_inline, unused)) xxh_u64 XXH3_mix16B(const xxh_u8* restrict input,
                                     const xxh_u8* restrict secret, xxh_u64 seed64)
{
    { xxh_u64 const input_lo = XXH_readLE64(input);
        xxh_u64 const input_hi = XXH_readLE64(input+8);
        return XXH3_mul128_fold64(
            input_lo ^ (XXH_readLE64(secret) + seed64),
            input_hi ^ (XXH_readLE64(secret+8) - seed64)
        );
    }
}
static __inline__ __attribute__((always_inline, unused)) XXH64_hash_t
XXH3_len_17to128_64b(const xxh_u8* restrict input, size_t len,
                     const xxh_u8* restrict secret, size_t secretSize,
                     XXH64_hash_t seed)
{
    ((void)0); (void)secretSize;
    ((void)0);
    { xxh_u64 acc = len * 0x9E3779B185EBCA87ULL;
        if (len > 32) {
            if (len > 64) {
                if (len > 96) {
                    acc += XXH3_mix16B(input+48, secret+96, seed);
                    acc += XXH3_mix16B(input+len-64, secret+112, seed);
                }
                acc += XXH3_mix16B(input+32, secret+64, seed);
                acc += XXH3_mix16B(input+len-48, secret+80, seed);
            }
            acc += XXH3_mix16B(input+16, secret+32, seed);
            acc += XXH3_mix16B(input+len-32, secret+48, seed);
        }
        acc += XXH3_mix16B(input+0, secret+0, seed);
        acc += XXH3_mix16B(input+len-16, secret+16, seed);
        return XXH3_avalanche(acc);
    }
}
static __attribute__((noinline)) XXH64_hash_t
XXH3_len_129to240_64b(const xxh_u8* restrict input, size_t len,
                      const xxh_u8* restrict secret, size_t secretSize,
                      XXH64_hash_t seed)
{
    ((void)0); (void)secretSize;
    ((void)0);
    { xxh_u64 acc = len * 0x9E3779B185EBCA87ULL;
        int const nbRounds = (int)len / 16;
        int i;
        for (i=0; i<8; i++) {
            acc += XXH3_mix16B(input+(16*i), secret+(16*i), seed);
        }
        acc = XXH3_avalanche(acc);
        ((void)0);
        for (i=8 ; i < nbRounds; i++) {
            acc += XXH3_mix16B(input+(16*i), secret+(16*(i-8)) + 3, seed);
        }
        acc += XXH3_mix16B(input + len - 16, secret + 136 - 17, seed);
        return XXH3_avalanche(acc);
    }
}
static __inline__ __attribute__((always_inline, unused)) void XXH_writeLE64(void* dst, xxh_u64 v64)
{
    if (!1) v64 = __builtin_bswap64(v64);
    memcpy(dst, &v64, sizeof(v64));
}
    typedef int64_t xxh_i64;
static __inline__ __attribute__((always_inline, unused)) void
XXH3_accumulate_512_sse2( void* restrict acc,
                    const void* restrict input,
                    const void* restrict secret)
{
    ((void)0);
    { alignas(16) __m128i* const xacc = (__m128i *) acc;
        const __m128i* const xinput = (const __m128i *) input;
        const __m128i* const xsecret = (const __m128i *) secret;
        size_t i;
        for (i=0; i < 64/sizeof(__m128i); i++) {
            __m128i const data_vec = _mm_loadu_si128 (xinput+i);
            __m128i const key_vec = _mm_loadu_si128 (xsecret+i);
            __m128i const data_key = _mm_xor_si128 (data_vec, key_vec);
            __m128i const data_key_lo = _mm_shuffle_epi32 (data_key, (((0) << 6) | ((3) << 4) | ((0) << 2) | (1)));
            __m128i const product = _mm_mul_epu32 (data_key, data_key_lo);
            __m128i const data_swap = _mm_shuffle_epi32(data_vec, (((1) << 6) | ((0) << 4) | ((3) << 2) | (2)));
            __m128i const sum = _mm_add_epi64(xacc[i], data_swap);
            xacc[i] = _mm_add_epi64(product, sum);
    } }
}
static __inline__ __attribute__((always_inline, unused)) void
XXH3_scrambleAcc_sse2(void* restrict acc, const void* restrict secret)
{
    ((void)0);
    { alignas(16) __m128i* const xacc = (__m128i*) acc;
        const __m128i* const xsecret = (const __m128i *) secret;
        const __m128i prime32 = _mm_set1_epi32((int)0x9E3779B1U);
        size_t i;
        for (i=0; i < 64/sizeof(__m128i); i++) {
            __m128i const acc_vec = xacc[i];
            __m128i const shifted = _mm_srli_epi64 (acc_vec, 47);
            __m128i const data_vec = _mm_xor_si128 (acc_vec, shifted);
            __m128i const key_vec = _mm_loadu_si128 (xsecret+i);
            __m128i const data_key = _mm_xor_si128 (data_vec, key_vec);
            __m128i const data_key_hi = _mm_shuffle_epi32 (data_key, (((0) << 6) | ((3) << 4) | ((0) << 2) | (1)));
            __m128i const prod_lo = _mm_mul_epu32 (data_key, prime32);
            __m128i const prod_hi = _mm_mul_epu32 (data_key_hi, prime32);
            xacc[i] = _mm_add_epi64(prod_lo, _mm_slli_epi64(prod_hi, 32));
        }
    }
}
static __inline__ __attribute__((always_inline, unused)) void XXH3_initCustomSecret_sse2(void* restrict customSecret, xxh_u64 seed64)
{
    do { enum { XXH_sa = 1/(int)(!!((192 & 15) == 0)) }; } while (0);
    (void)(&XXH_writeLE64);
    { int const nbRounds = 192 / sizeof(__m128i);
        __m128i const seed = _mm_set_epi64x(-(xxh_i64)seed64, (xxh_i64)seed64);
        int i;
        alignas(64) const float* const src = (float const*) XXH3_kSecret;
        alignas(16) __m128i* dest = (__m128i*) customSecret;
        __asm__ __volatile__("" : "+r" (dest));
        for (i=0; i < nbRounds; ++i) {
            dest[i] = _mm_add_epi64(_mm_castps_si128(_mm_load_ps(src+i*4)), seed);
    } }
}
static __inline__ __attribute__((always_inline, unused)) void
XXH3_accumulate_512_scalar(void* restrict acc,
                     const void* restrict input,
                     const void* restrict secret)
{
    alignas(16) xxh_u64* const xacc = (xxh_u64*) acc;
    const xxh_u8* const xinput = (const xxh_u8*) input;
    const xxh_u8* const xsecret = (const xxh_u8*) secret;
    size_t i;
    ((void)0);
    for (i=0; i < (64 / sizeof(xxh_u64)); i++) {
        xxh_u64 const data_val = XXH_readLE64(xinput + 8*i);
        xxh_u64 const data_key = data_val ^ XXH_readLE64(xsecret + i*8);
        xacc[i ^ 1] += data_val;
        xacc[i] += ((xxh_u64)(xxh_u32)(data_key & 0xFFFFFFFF) * (xxh_u64)(xxh_u32)(data_key >> 32));
    }
}
static __inline__ __attribute__((always_inline, unused)) void
XXH3_scrambleAcc_scalar(void* restrict acc, const void* restrict secret)
{
    alignas(16) xxh_u64* const xacc = (xxh_u64*) acc;
    const xxh_u8* const xsecret = (const xxh_u8*) secret;
    size_t i;
    ((void)0);
    for (i=0; i < (64 / sizeof(xxh_u64)); i++) {
        xxh_u64 const key64 = XXH_readLE64(xsecret + 8*i);
        xxh_u64 acc64 = xacc[i];
        acc64 = XXH_xorshift64(acc64, 47);
        acc64 ^= key64;
        acc64 *= 0x9E3779B1U;
        xacc[i] = acc64;
    }
}
static __inline__ __attribute__((always_inline, unused)) void
XXH3_initCustomSecret_scalar(void* restrict customSecret, xxh_u64 seed64)
{
    const xxh_u8* kSecretPtr = XXH3_kSecret;
    do { enum { XXH_sa = 1/(int)(!!((192 & 15) == 0)) }; } while (0);
    ((void)0);
    { int const nbRounds = 192 / 16;
        int i;
        for (i=0; i < nbRounds; i++) {
            xxh_u64 lo = XXH_readLE64(kSecretPtr + 16*i) + seed64;
            xxh_u64 hi = XXH_readLE64(kSecretPtr + 16*i + 8) - seed64;
            XXH_writeLE64((xxh_u8*)customSecret + 16*i, lo);
            XXH_writeLE64((xxh_u8*)customSecret + 16*i + 8, hi);
    } }
}
typedef void (*XXH3_f_accumulate_512)(void* restrict, const void*, const void*);
typedef void (*XXH3_f_scrambleAcc)(void* restrict, const void*);
typedef void (*XXH3_f_initCustomSecret)(void* restrict, xxh_u64);
static __inline__ __attribute__((always_inline, unused)) void
XXH3_accumulate( xxh_u64* restrict acc,
                const xxh_u8* restrict input,
                const xxh_u8* restrict secret,
                      size_t nbStripes,
                      XXH3_f_accumulate_512 f_acc512)
{
    size_t n;
    for (n = 0; n < nbStripes; n++ ) {
        const xxh_u8* const in = input + n*64;
        __builtin_prefetch((in + 384), 0 , 3 );
        f_acc512(acc,
                 in,
                 secret + n*8);
    }
}
static __inline__ __attribute__((always_inline, unused)) void
XXH3_hashLong_internal_loop(xxh_u64* restrict acc,
                      const xxh_u8* restrict input, size_t len,
                      const xxh_u8* restrict secret, size_t secretSize,
                            XXH3_f_accumulate_512 f_acc512,
                            XXH3_f_scrambleAcc f_scramble)
{
    size_t const nbStripesPerBlock = (secretSize - 64) / 8;
    size_t const block_len = 64 * nbStripesPerBlock;
    size_t const nb_blocks = (len - 1) / block_len;
    size_t n;
    ((void)0);
    for (n = 0; n < nb_blocks; n++) {
        XXH3_accumulate(acc, input + n*block_len, secret, nbStripesPerBlock, f_acc512);
        f_scramble(acc, secret + secretSize - 64);
    }
    ((void)0);
    { size_t const nbStripes = ((len - 1) - (block_len * nb_blocks)) / 64;
        ((void)0);
        XXH3_accumulate(acc, input + nb_blocks*block_len, secret, nbStripes, f_acc512);
        { const xxh_u8* const p = input + len - 64;
            f_acc512(acc, p, secret + secretSize - 64 - 7);
    } }
}
static __inline__ __attribute__((always_inline, unused)) xxh_u64
XXH3_mix2Accs(const xxh_u64* restrict acc, const xxh_u8* restrict secret)
{
    return XXH3_mul128_fold64(
               acc[0] ^ XXH_readLE64(secret),
               acc[1] ^ XXH_readLE64(secret+8) );
}
static XXH64_hash_t
XXH3_mergeAccs(const xxh_u64* restrict acc, const xxh_u8* restrict secret, xxh_u64 start)
{
    xxh_u64 result64 = start;
    size_t i = 0;
    for (i = 0; i < 4; i++) {
        result64 += XXH3_mix2Accs(acc+2*i, secret + 16*i);
    }
    return XXH3_avalanche(result64);
}
static __inline__ __attribute__((always_inline, unused)) XXH64_hash_t
XXH3_hashLong_64b_internal(const void* restrict input, size_t len,
                           const void* restrict secret, size_t secretSize,
                           XXH3_f_accumulate_512 f_acc512,
                           XXH3_f_scrambleAcc f_scramble)
{
    alignas(16) xxh_u64 acc[(64 / sizeof(xxh_u64))] = { 0xC2B2AE3DU, 0x9E3779B185EBCA87ULL, 0xC2B2AE3D27D4EB4FULL, 0x165667B19E3779F9ULL, 0x85EBCA77C2B2AE63ULL, 0x85EBCA77U, 0x27D4EB2F165667C5ULL, 0x9E3779B1U };
    XXH3_hashLong_internal_loop(acc, (const xxh_u8*)input, len, (const xxh_u8*)secret, secretSize, f_acc512, f_scramble);
    do { enum { XXH_sa = 1/(int)(!!(sizeof(acc) == 64)) }; } while (0);
    ((void)0);
    return XXH3_mergeAccs(acc, (const xxh_u8*)secret + 11, (xxh_u64)len * 0x9E3779B185EBCA87ULL);
}
static __attribute__((noinline)) XXH64_hash_t
XXH3_hashLong_64b_withSecret(const void* restrict input, size_t len,
                             XXH64_hash_t seed64, const xxh_u8* restrict secret, size_t secretLen)
{
    (void)seed64;
    return XXH3_hashLong_64b_internal(input, len, secret, secretLen, XXH3_accumulate_512_sse2, XXH3_scrambleAcc_sse2);
}
static __attribute__((noinline)) XXH64_hash_t
XXH3_hashLong_64b_default(const void* restrict input, size_t len,
                          XXH64_hash_t seed64, const xxh_u8* restrict secret, size_t secretLen)
{
    (void)seed64; (void)secret; (void)secretLen;
    return XXH3_hashLong_64b_internal(input, len, XXH3_kSecret, sizeof(XXH3_kSecret), XXH3_accumulate_512_sse2, XXH3_scrambleAcc_sse2);
}
static __inline__ __attribute__((always_inline, unused)) XXH64_hash_t
XXH3_hashLong_64b_withSeed_internal(const void* input, size_t len,
                                    XXH64_hash_t seed,
                                    XXH3_f_accumulate_512 f_acc512,
                                    XXH3_f_scrambleAcc f_scramble,
                                    XXH3_f_initCustomSecret f_initSec)
{
    if (seed == 0)
        return XXH3_hashLong_64b_internal(input, len,
                                          XXH3_kSecret, sizeof(XXH3_kSecret),
                                          f_acc512, f_scramble);
    { alignas(16) xxh_u8 secret[192];
        f_initSec(secret, seed);
        return XXH3_hashLong_64b_internal(input, len, secret, sizeof(secret),
                                          f_acc512, f_scramble);
    }
}
static __attribute__((noinline)) XXH64_hash_t
XXH3_hashLong_64b_withSeed(const void* input, size_t len,
                           XXH64_hash_t seed, const xxh_u8* secret, size_t secretLen)
{
    (void)secret; (void)secretLen;
    return XXH3_hashLong_64b_withSeed_internal(input, len, seed,
                XXH3_accumulate_512_sse2, XXH3_scrambleAcc_sse2, XXH3_initCustomSecret_sse2);
}
typedef XXH64_hash_t (*XXH3_hashLong64_f)(const void* restrict, size_t,
                                          XXH64_hash_t, const xxh_u8* restrict, size_t);
static __inline__ __attribute__((always_inline, unused)) XXH64_hash_t
XXH3_64bits_internal(const void* restrict input, size_t len,
                     XXH64_hash_t seed64, const void* restrict secret, size_t secretLen,
                     XXH3_hashLong64_f f_hashLong)
{
    ((void)0);
    if (len <= 16)
        return XXH3_len_0to16_64b((const xxh_u8*)input, len, (const xxh_u8*)secret, seed64);
    if (len <= 128)
        return XXH3_len_17to128_64b((const xxh_u8*)input, len, (const xxh_u8*)secret, secretLen, seed64);
    if (len <= 240)
        return XXH3_len_129to240_64b((const xxh_u8*)input, len, (const xxh_u8*)secret, secretLen, seed64);
    return f_hashLong(input, len, seed64, (const xxh_u8*)secret, secretLen);
}
static __inline __attribute__((unused)) XXH64_hash_t XXH_INLINE_XXH3_64bits(const void* input, size_t len)
{
    return XXH3_64bits_internal(input, len, 0, XXH3_kSecret, sizeof(XXH3_kSecret), XXH3_hashLong_64b_default);
}
static __inline __attribute__((unused)) XXH64_hash_t
XXH_INLINE_XXH3_64bits_withSecret(const void* input, size_t len, const void* secret, size_t secretSize)
{
    return XXH3_64bits_internal(input, len, 0, secret, secretSize, XXH3_hashLong_64b_withSecret);
}
static __inline __attribute__((unused)) XXH64_hash_t
XXH_INLINE_XXH3_64bits_withSeed(const void* input, size_t len, XXH64_hash_t seed)
{
    return XXH3_64bits_internal(input, len, seed, XXH3_kSecret, sizeof(XXH3_kSecret), XXH3_hashLong_64b_withSeed);
}
static void* XXH_alignedMalloc(size_t s, size_t align)
{
    ((void)0);
    ((void)0);
    ((void)0);
    {
        xxh_u8* base = (xxh_u8*)XXH_malloc(s + align);
        if (base != ((void *)0)) {
            size_t offset = align - ((size_t)base & (align - 1));
            xxh_u8* ptr = base + offset;
            ((void)0);
            ptr[-1] = (xxh_u8)offset;
            return ptr;
        }
        return ((void *)0);
    }
}
static void XXH_alignedFree(void* p)
{
    if (p != ((void *)0)) {
        xxh_u8* ptr = (xxh_u8*)p;
        xxh_u8 offset = ptr[-1];
        xxh_u8* base = ptr - offset;
        XXH_free(base);
    }
}
static __inline __attribute__((unused)) XXH_INLINE_XXH3_state_t* XXH_INLINE_XXH3_createState(void)
{
    XXH_INLINE_XXH3_state_t* const state = (XXH_INLINE_XXH3_state_t*)XXH_alignedMalloc(sizeof(XXH_INLINE_XXH3_state_t), 64);
    if (state==((void *)0)) return ((void *)0);
    { (state)->seed = 0; };
    return state;
}
static __inline __attribute__((unused)) XXH_INLINE_XXH_errorcode XXH_INLINE_XXH3_freeState(XXH_INLINE_XXH3_state_t* statePtr)
{
    XXH_alignedFree(statePtr);
    return XXH_INLINE_XXH_OK;
}
static __inline __attribute__((unused)) void
XXH_INLINE_XXH3_copyState(XXH_INLINE_XXH3_state_t* dst_state, const XXH_INLINE_XXH3_state_t* src_state)
{
    memcpy(dst_state, src_state, sizeof(*dst_state));
}
static void
XXH3_reset_internal(XXH_INLINE_XXH3_state_t* statePtr,
                           XXH64_hash_t seed,
                           const void* secret, size_t secretSize)
{
    size_t const initStart = __builtin_offsetof (XXH_INLINE_XXH3_state_t, bufferedSize);
    size_t const initLength = __builtin_offsetof (XXH_INLINE_XXH3_state_t, nbStripesPerBlock) - initStart;
    ((void)0);
    ((void)0);
    memset((char*)statePtr + initStart, 0, initLength);
    statePtr->acc[0] = 0xC2B2AE3DU;
    statePtr->acc[1] = 0x9E3779B185EBCA87ULL;
    statePtr->acc[2] = 0xC2B2AE3D27D4EB4FULL;
    statePtr->acc[3] = 0x165667B19E3779F9ULL;
    statePtr->acc[4] = 0x85EBCA77C2B2AE63ULL;
    statePtr->acc[5] = 0x85EBCA77U;
    statePtr->acc[6] = 0x27D4EB2F165667C5ULL;
    statePtr->acc[7] = 0x9E3779B1U;
    statePtr->seed = seed;
    statePtr->extSecret = (const unsigned char*)secret;
    ((void)0);
    statePtr->secretLimit = secretSize - 64;
    statePtr->nbStripesPerBlock = statePtr->secretLimit / 8;
}
static __inline __attribute__((unused)) XXH_INLINE_XXH_errorcode
XXH_INLINE_XXH3_64bits_reset(XXH_INLINE_XXH3_state_t* statePtr)
{
    if (statePtr == ((void *)0)) return XXH_INLINE_XXH_ERROR;
    XXH3_reset_internal(statePtr, 0, XXH3_kSecret, 192);
    return XXH_INLINE_XXH_OK;
}
static __inline __attribute__((unused)) XXH_INLINE_XXH_errorcode
XXH_INLINE_XXH3_64bits_reset_withSecret(XXH_INLINE_XXH3_state_t* statePtr, const void* secret, size_t secretSize)
{
    if (statePtr == ((void *)0)) return XXH_INLINE_XXH_ERROR;
    XXH3_reset_internal(statePtr, 0, secret, secretSize);
    if (secret == ((void *)0)) return XXH_INLINE_XXH_ERROR;
    if (secretSize < 136) return XXH_INLINE_XXH_ERROR;
    return XXH_INLINE_XXH_OK;
}
static __inline __attribute__((unused)) XXH_INLINE_XXH_errorcode
XXH_INLINE_XXH3_64bits_reset_withSeed(XXH_INLINE_XXH3_state_t* statePtr, XXH64_hash_t seed)
{
    if (statePtr == ((void *)0)) return XXH_INLINE_XXH_ERROR;
    if (seed==0) return XXH_INLINE_XXH3_64bits_reset(statePtr);
    if (seed != statePtr->seed) XXH3_initCustomSecret_sse2(statePtr->customSecret, seed);
    XXH3_reset_internal(statePtr, seed, ((void *)0), 192);
    return XXH_INLINE_XXH_OK;
}
static __inline__ __attribute__((always_inline, unused)) void
XXH3_consumeStripes(xxh_u64* restrict acc,
                    size_t* restrict nbStripesSoFarPtr, size_t nbStripesPerBlock,
                    const xxh_u8* restrict input, size_t nbStripes,
                    const xxh_u8* restrict secret, size_t secretLimit,
                    XXH3_f_accumulate_512 f_acc512,
                    XXH3_f_scrambleAcc f_scramble)
{
    ((void)0);
    ((void)0);
    if (nbStripesPerBlock - *nbStripesSoFarPtr <= nbStripes) {
        size_t const nbStripesToEndofBlock = nbStripesPerBlock - *nbStripesSoFarPtr;
        size_t const nbStripesAfterBlock = nbStripes - nbStripesToEndofBlock;
        XXH3_accumulate(acc, input, secret + nbStripesSoFarPtr[0] * 8, nbStripesToEndofBlock, f_acc512);
        f_scramble(acc, secret + secretLimit);
        XXH3_accumulate(acc, input + nbStripesToEndofBlock * 64, secret, nbStripesAfterBlock, f_acc512);
        *nbStripesSoFarPtr = nbStripesAfterBlock;
    } else {
        XXH3_accumulate(acc, input, secret + nbStripesSoFarPtr[0] * 8, nbStripes, f_acc512);
        *nbStripesSoFarPtr += nbStripes;
    }
}
static __inline__ __attribute__((always_inline, unused)) XXH_INLINE_XXH_errorcode
XXH3_update(XXH_INLINE_XXH3_state_t* state,
            const xxh_u8* input, size_t len,
            XXH3_f_accumulate_512 f_acc512,
            XXH3_f_scrambleAcc f_scramble)
{
    if (input==((void *)0))
        return XXH_INLINE_XXH_ERROR;
    { const xxh_u8* const bEnd = input + len;
        const unsigned char* const secret = (state->extSecret == ((void *)0)) ? state->customSecret : state->extSecret;
        state->totalLen += len;
        ((void)0);
        if (state->bufferedSize + len <= 256) {
            XXH_memcpy(state->buffer + state->bufferedSize, input, len);
            state->bufferedSize += (XXH32_hash_t)len;
            return XXH_INLINE_XXH_OK;
        }
        do { enum { XXH_sa = 1/(int)(!!(256 % 64 == 0)) }; } while (0);
        if (state->bufferedSize) {
            size_t const loadSize = 256 - state->bufferedSize;
            XXH_memcpy(state->buffer + state->bufferedSize, input, loadSize);
            input += loadSize;
            XXH3_consumeStripes(state->acc,
                               &state->nbStripesSoFar, state->nbStripesPerBlock,
                                state->buffer, (256 / 64),
                                secret, state->secretLimit,
                                f_acc512, f_scramble);
            state->bufferedSize = 0;
        }
        ((void)0);
        if (input+256 < bEnd) {
            const xxh_u8* const limit = bEnd - 256;
            do {
                XXH3_consumeStripes(state->acc,
                                   &state->nbStripesSoFar, state->nbStripesPerBlock,
                                    input, (256 / 64),
                                    secret, state->secretLimit,
                                    f_acc512, f_scramble);
                input += 256;
            } while (input<limit);
            memcpy(state->buffer + sizeof(state->buffer) - 64, input - 64, 64);
        }
        ((void)0);
        XXH_memcpy(state->buffer, input, (size_t)(bEnd-input));
        state->bufferedSize = (XXH32_hash_t)(bEnd-input);
    }
    return XXH_INLINE_XXH_OK;
}
static __inline __attribute__((unused)) XXH_INLINE_XXH_errorcode
XXH_INLINE_XXH3_64bits_update(XXH_INLINE_XXH3_state_t* state, const void* input, size_t len)
{
    return XXH3_update(state, (const xxh_u8*)input, len,
                       XXH3_accumulate_512_sse2, XXH3_scrambleAcc_sse2);
}
static __inline__ __attribute__((always_inline, unused)) void
XXH3_digest_long (XXH64_hash_t* acc,
                  const XXH_INLINE_XXH3_state_t* state,
                  const unsigned char* secret)
{
    memcpy(acc, state->acc, sizeof(state->acc));
    if (state->bufferedSize >= 64) {
        size_t const nbStripes = (state->bufferedSize - 1) / 64;
        size_t nbStripesSoFar = state->nbStripesSoFar;
        XXH3_consumeStripes(acc,
                           &nbStripesSoFar, state->nbStripesPerBlock,
                            state->buffer, nbStripes,
                            secret, state->secretLimit,
                            XXH3_accumulate_512_sse2, XXH3_scrambleAcc_sse2);
        XXH3_accumulate_512_sse2(acc,
                            state->buffer + state->bufferedSize - 64,
                            secret + state->secretLimit - 7);
    } else {
        xxh_u8 lastStripe[64];
        size_t const catchupSize = 64 - state->bufferedSize;
        ((void)0);
        memcpy(lastStripe, state->buffer + sizeof(state->buffer) - catchupSize, catchupSize);
        memcpy(lastStripe + catchupSize, state->buffer, state->bufferedSize);
        XXH3_accumulate_512_sse2(acc,
                            lastStripe,
                            secret + state->secretLimit - 7);
    }
}
static __inline __attribute__((unused)) XXH64_hash_t XXH_INLINE_XXH3_64bits_digest (const XXH_INLINE_XXH3_state_t* state)
{
    const unsigned char* const secret = (state->extSecret == ((void *)0)) ? state->customSecret : state->extSecret;
    if (state->totalLen > 240) {
        alignas(16) XXH64_hash_t acc[(64 / sizeof(xxh_u64))];
        XXH3_digest_long(acc, state, secret);
        return XXH3_mergeAccs(acc,
                              secret + 11,
                              (xxh_u64)state->totalLen * 0x9E3779B185EBCA87ULL);
    }
    if (state->seed)
        return XXH_INLINE_XXH3_64bits_withSeed(state->buffer, (size_t)state->totalLen, state->seed);
    return XXH_INLINE_XXH3_64bits_withSecret(state->buffer, (size_t)(state->totalLen),
                                  secret, state->secretLimit + 64);
}
static __inline __attribute__((unused)) void
XXH_INLINE_XXH3_generateSecret(void* secretBuffer, const void* customSeed, size_t customSeedSize)
{
    ((void)0);
    if (customSeedSize == 0) {
        memcpy(secretBuffer, XXH3_kSecret, 192);
        return;
    }
    ((void)0);
    { size_t const segmentSize = sizeof(XXH_INLINE_XXH128_hash_t);
        size_t const nbSegments = 192 / segmentSize;
        XXH_INLINE_XXH128_canonical_t scrambler;
        XXH64_hash_t seeds[12];
        size_t segnb;
        ((void)0);
        ((void)0);
        XXH_INLINE_XXH128_canonicalFromHash(&scrambler, XXH_INLINE_XXH128(customSeed, customSeedSize, 0));
        { size_t toFill = (((customSeedSize) > (sizeof(seeds))) ? (sizeof(seeds)) : (customSeedSize));
            size_t filled = toFill;
            memcpy(seeds, customSeed, toFill);
            while (filled < sizeof(seeds)) {
                toFill = (((filled) > (sizeof(seeds) - filled)) ? (sizeof(seeds) - filled) : (filled));
                memcpy((char*)seeds + filled, seeds, toFill);
                filled += toFill;
        } }
        memcpy(secretBuffer, &scrambler, sizeof(scrambler));
        for (segnb=1; segnb < nbSegments; segnb++) {
            size_t const segmentStart = segnb * segmentSize;
            XXH_INLINE_XXH128_canonical_t segment;
            XXH_INLINE_XXH128_canonicalFromHash(&segment,
                XXH_INLINE_XXH128(&scrambler, sizeof(scrambler), XXH_readLE64(seeds + segnb) + segnb) );
            memcpy((char*)secretBuffer + segmentStart, &segment, sizeof(segment));
    } }
}
static __inline__ __attribute__((always_inline, unused)) XXH_INLINE_XXH128_hash_t
XXH3_len_1to3_128b(const xxh_u8* input, size_t len, const xxh_u8* secret, XXH64_hash_t seed)
{
    ((void)0);
    ((void)0);
    ((void)0);
    { xxh_u8 const c1 = input[0];
        xxh_u8 const c2 = input[len >> 1];
        xxh_u8 const c3 = input[len - 1];
        xxh_u32 const combinedl = ((xxh_u32)c1 <<16) | ((xxh_u32)c2 << 24)
                                | ((xxh_u32)c3 << 0) | ((xxh_u32)len << 8);
        xxh_u32 const combinedh = (((__builtin_bswap32(combinedl)) << (13)) | ((__builtin_bswap32(combinedl)) >> (32 - (13))));
        xxh_u64 const bitflipl = (XXH_readLE32(secret) ^ XXH_readLE32(secret+4)) + seed;
        xxh_u64 const bitfliph = (XXH_readLE32(secret+8) ^ XXH_readLE32(secret+12)) - seed;
        xxh_u64 const keyed_lo = (xxh_u64)combinedl ^ bitflipl;
        xxh_u64 const keyed_hi = (xxh_u64)combinedh ^ bitfliph;
        XXH_INLINE_XXH128_hash_t h128;
        h128.low64 = XXH64_avalanche(keyed_lo);
        h128.high64 = XXH64_avalanche(keyed_hi);
        return h128;
    }
}
static __inline__ __attribute__((always_inline, unused)) XXH_INLINE_XXH128_hash_t
XXH3_len_4to8_128b(const xxh_u8* input, size_t len, const xxh_u8* secret, XXH64_hash_t seed)
{
    ((void)0);
    ((void)0);
    ((void)0);
    seed ^= (xxh_u64)__builtin_bswap32((xxh_u32)seed) << 32;
    { xxh_u32 const input_lo = XXH_readLE32(input);
        xxh_u32 const input_hi = XXH_readLE32(input + len - 4);
        xxh_u64 const input_64 = input_lo + ((xxh_u64)input_hi << 32);
        xxh_u64 const bitflip = (XXH_readLE64(secret+16) ^ XXH_readLE64(secret+24)) + seed;
        xxh_u64 const keyed = input_64 ^ bitflip;
        XXH_INLINE_XXH128_hash_t m128 = XXH_mult64to128(keyed, 0x9E3779B185EBCA87ULL + (len << 2));
        m128.high64 += (m128.low64 << 1);
        m128.low64 ^= (m128.high64 >> 3);
        m128.low64 = XXH_xorshift64(m128.low64, 35);
        m128.low64 *= 0x9FB21C651E98DF25ULL;
        m128.low64 = XXH_xorshift64(m128.low64, 28);
        m128.high64 = XXH3_avalanche(m128.high64);
        return m128;
    }
}
static __inline__ __attribute__((always_inline, unused)) XXH_INLINE_XXH128_hash_t
XXH3_len_9to16_128b(const xxh_u8* input, size_t len, const xxh_u8* secret, XXH64_hash_t seed)
{
    ((void)0);
    ((void)0);
    ((void)0);
    { xxh_u64 const bitflipl = (XXH_readLE64(secret+32) ^ XXH_readLE64(secret+40)) - seed;
        xxh_u64 const bitfliph = (XXH_readLE64(secret+48) ^ XXH_readLE64(secret+56)) + seed;
        xxh_u64 const input_lo = XXH_readLE64(input);
        xxh_u64 input_hi = XXH_readLE64(input + len - 8);
        XXH_INLINE_XXH128_hash_t m128 = XXH_mult64to128(input_lo ^ input_hi ^ bitflipl, 0x9E3779B185EBCA87ULL);
        m128.low64 += (xxh_u64)(len - 1) << 54;
        input_hi ^= bitfliph;
        if (sizeof(void *) < sizeof(xxh_u64)) {
            m128.high64 += (input_hi & 0xFFFFFFFF00000000ULL) + ((xxh_u64)(xxh_u32)((xxh_u32)input_hi) * (xxh_u64)(xxh_u32)(0x85EBCA77U));
        } else {
            m128.high64 += input_hi + ((xxh_u64)(xxh_u32)((xxh_u32)input_hi) * (xxh_u64)(xxh_u32)(0x85EBCA77U - 1));
        }
        m128.low64 ^= __builtin_bswap64(m128.high64);
        {
            XXH_INLINE_XXH128_hash_t h128 = XXH_mult64to128(m128.low64, 0xC2B2AE3D27D4EB4FULL);
            h128.high64 += m128.high64 * 0xC2B2AE3D27D4EB4FULL;
            h128.low64 = XXH3_avalanche(h128.low64);
            h128.high64 = XXH3_avalanche(h128.high64);
            return h128;
    } }
}
static __inline__ __attribute__((always_inline, unused)) XXH_INLINE_XXH128_hash_t
XXH3_len_0to16_128b(const xxh_u8* input, size_t len, const xxh_u8* secret, XXH64_hash_t seed)
{
    ((void)0);
    { if (len > 8) return XXH3_len_9to16_128b(input, len, secret, seed);
        if (len >= 4) return XXH3_len_4to8_128b(input, len, secret, seed);
        if (len) return XXH3_len_1to3_128b(input, len, secret, seed);
        { XXH_INLINE_XXH128_hash_t h128;
            xxh_u64 const bitflipl = XXH_readLE64(secret+64) ^ XXH_readLE64(secret+72);
            xxh_u64 const bitfliph = XXH_readLE64(secret+80) ^ XXH_readLE64(secret+88);
            h128.low64 = XXH64_avalanche(seed ^ bitflipl);
            h128.high64 = XXH64_avalanche( seed ^ bitfliph);
            return h128;
    } }
}
static __inline__ __attribute__((always_inline, unused)) XXH_INLINE_XXH128_hash_t
XXH128_mix32B(XXH_INLINE_XXH128_hash_t acc, const xxh_u8* input_1, const xxh_u8* input_2,
              const xxh_u8* secret, XXH64_hash_t seed)
{
    acc.low64 += XXH3_mix16B (input_1, secret+0, seed);
    acc.low64 ^= XXH_readLE64(input_2) + XXH_readLE64(input_2 + 8);
    acc.high64 += XXH3_mix16B (input_2, secret+16, seed);
    acc.high64 ^= XXH_readLE64(input_1) + XXH_readLE64(input_1 + 8);
    return acc;
}
static __inline__ __attribute__((always_inline, unused)) XXH_INLINE_XXH128_hash_t
XXH3_len_17to128_128b(const xxh_u8* restrict input, size_t len,
                      const xxh_u8* restrict secret, size_t secretSize,
                      XXH64_hash_t seed)
{
    ((void)0); (void)secretSize;
    ((void)0);
    { XXH_INLINE_XXH128_hash_t acc;
        acc.low64 = len * 0x9E3779B185EBCA87ULL;
        acc.high64 = 0;
        if (len > 32) {
            if (len > 64) {
                if (len > 96) {
                    acc = XXH128_mix32B(acc, input+48, input+len-64, secret+96, seed);
                }
                acc = XXH128_mix32B(acc, input+32, input+len-48, secret+64, seed);
            }
            acc = XXH128_mix32B(acc, input+16, input+len-32, secret+32, seed);
        }
        acc = XXH128_mix32B(acc, input, input+len-16, secret, seed);
        { XXH_INLINE_XXH128_hash_t h128;
            h128.low64 = acc.low64 + acc.high64;
            h128.high64 = (acc.low64 * 0x9E3779B185EBCA87ULL)
                        + (acc.high64 * 0x85EBCA77C2B2AE63ULL)
                        + ((len - seed) * 0xC2B2AE3D27D4EB4FULL);
            h128.low64 = XXH3_avalanche(h128.low64);
            h128.high64 = (XXH64_hash_t)0 - XXH3_avalanche(h128.high64);
            return h128;
        }
    }
}
static __attribute__((noinline)) XXH_INLINE_XXH128_hash_t
XXH3_len_129to240_128b(const xxh_u8* restrict input, size_t len,
                       const xxh_u8* restrict secret, size_t secretSize,
                       XXH64_hash_t seed)
{
    ((void)0); (void)secretSize;
    ((void)0);
    { XXH_INLINE_XXH128_hash_t acc;
        int const nbRounds = (int)len / 32;
        int i;
        acc.low64 = len * 0x9E3779B185EBCA87ULL;
        acc.high64 = 0;
        for (i=0; i<4; i++) {
            acc = XXH128_mix32B(acc,
                                input + (32 * i),
                                input + (32 * i) + 16,
                                secret + (32 * i),
                                seed);
        }
        acc.low64 = XXH3_avalanche(acc.low64);
        acc.high64 = XXH3_avalanche(acc.high64);
        ((void)0);
        for (i=4 ; i < nbRounds; i++) {
            acc = XXH128_mix32B(acc,
                                input + (32 * i),
                                input + (32 * i) + 16,
                                secret + 3 + (32 * (i - 4)),
                                seed);
        }
        acc = XXH128_mix32B(acc,
                            input + len - 16,
                            input + len - 32,
                            secret + 136 - 17 - 16,
                            0ULL - seed);
        { XXH_INLINE_XXH128_hash_t h128;
            h128.low64 = acc.low64 + acc.high64;
            h128.high64 = (acc.low64 * 0x9E3779B185EBCA87ULL)
                        + (acc.high64 * 0x85EBCA77C2B2AE63ULL)
                        + ((len - seed) * 0xC2B2AE3D27D4EB4FULL);
            h128.low64 = XXH3_avalanche(h128.low64);
            h128.high64 = (XXH64_hash_t)0 - XXH3_avalanche(h128.high64);
            return h128;
        }
    }
}
static __inline__ __attribute__((always_inline, unused)) XXH_INLINE_XXH128_hash_t
XXH3_hashLong_128b_internal(const void* restrict input, size_t len,
                            const xxh_u8* restrict secret, size_t secretSize,
                            XXH3_f_accumulate_512 f_acc512,
                            XXH3_f_scrambleAcc f_scramble)
{
    alignas(16) xxh_u64 acc[(64 / sizeof(xxh_u64))] = { 0xC2B2AE3DU, 0x9E3779B185EBCA87ULL, 0xC2B2AE3D27D4EB4FULL, 0x165667B19E3779F9ULL, 0x85EBCA77C2B2AE63ULL, 0x85EBCA77U, 0x27D4EB2F165667C5ULL, 0x9E3779B1U };
    XXH3_hashLong_internal_loop(acc, (const xxh_u8*)input, len, secret, secretSize, f_acc512, f_scramble);
    do { enum { XXH_sa = 1/(int)(!!(sizeof(acc) == 64)) }; } while (0);
    ((void)0);
    { XXH_INLINE_XXH128_hash_t h128;
        h128.low64 = XXH3_mergeAccs(acc,
                                     secret + 11,
                                     (xxh_u64)len * 0x9E3779B185EBCA87ULL);
        h128.high64 = XXH3_mergeAccs(acc,
                                     secret + secretSize
                                            - sizeof(acc) - 11,
                                     ~((xxh_u64)len * 0xC2B2AE3D27D4EB4FULL));
        return h128;
    }
}
static __attribute__((noinline)) XXH_INLINE_XXH128_hash_t
XXH3_hashLong_128b_default(const void* restrict input, size_t len,
                           XXH64_hash_t seed64,
                           const void* restrict secret, size_t secretLen)
{
    (void)seed64; (void)secret; (void)secretLen;
    return XXH3_hashLong_128b_internal(input, len, XXH3_kSecret, sizeof(XXH3_kSecret),
                                       XXH3_accumulate_512_sse2, XXH3_scrambleAcc_sse2);
}
static __attribute__((noinline)) XXH_INLINE_XXH128_hash_t
XXH3_hashLong_128b_withSecret(const void* restrict input, size_t len,
                              XXH64_hash_t seed64,
                              const void* restrict secret, size_t secretLen)
{
    (void)seed64;
    return XXH3_hashLong_128b_internal(input, len, (const xxh_u8*)secret, secretLen,
                                       XXH3_accumulate_512_sse2, XXH3_scrambleAcc_sse2);
}
static __inline__ __attribute__((always_inline, unused)) XXH_INLINE_XXH128_hash_t
XXH3_hashLong_128b_withSeed_internal(const void* restrict input, size_t len,
                                XXH64_hash_t seed64,
                                XXH3_f_accumulate_512 f_acc512,
                                XXH3_f_scrambleAcc f_scramble,
                                XXH3_f_initCustomSecret f_initSec)
{
    if (seed64 == 0)
        return XXH3_hashLong_128b_internal(input, len,
                                           XXH3_kSecret, sizeof(XXH3_kSecret),
                                           f_acc512, f_scramble);
    { alignas(16) xxh_u8 secret[192];
        f_initSec(secret, seed64);
        return XXH3_hashLong_128b_internal(input, len, (const xxh_u8*)secret, sizeof(secret),
                                           f_acc512, f_scramble);
    }
}
static __attribute__((noinline)) XXH_INLINE_XXH128_hash_t
XXH3_hashLong_128b_withSeed(const void* input, size_t len,
                            XXH64_hash_t seed64, const void* restrict secret, size_t secretLen)
{
    (void)secret; (void)secretLen;
    return XXH3_hashLong_128b_withSeed_internal(input, len, seed64,
                XXH3_accumulate_512_sse2, XXH3_scrambleAcc_sse2, XXH3_initCustomSecret_sse2);
}
typedef XXH_INLINE_XXH128_hash_t (*XXH3_hashLong128_f)(const void* restrict, size_t,
                                            XXH64_hash_t, const void* restrict, size_t);
static __inline__ __attribute__((always_inline, unused)) XXH_INLINE_XXH128_hash_t
XXH3_128bits_internal(const void* input, size_t len,
                      XXH64_hash_t seed64, const void* restrict secret, size_t secretLen,
                      XXH3_hashLong128_f f_hl128)
{
    ((void)0);
    if (len <= 16)
        return XXH3_len_0to16_128b((const xxh_u8*)input, len, (const xxh_u8*)secret, seed64);
    if (len <= 128)
        return XXH3_len_17to128_128b((const xxh_u8*)input, len, (const xxh_u8*)secret, secretLen, seed64);
    if (len <= 240)
        return XXH3_len_129to240_128b((const xxh_u8*)input, len, (const xxh_u8*)secret, secretLen, seed64);
    return f_hl128(input, len, seed64, secret, secretLen);
}
static __inline __attribute__((unused)) XXH_INLINE_XXH128_hash_t XXH_INLINE_XXH3_128bits(const void* input, size_t len)
{
    return XXH3_128bits_internal(input, len, 0,
                                 XXH3_kSecret, sizeof(XXH3_kSecret),
                                 XXH3_hashLong_128b_default);
}
static __inline __attribute__((unused)) XXH_INLINE_XXH128_hash_t
XXH_INLINE_XXH3_128bits_withSecret(const void* input, size_t len, const void* secret, size_t secretSize)
{
    return XXH3_128bits_internal(input, len, 0,
                                 (const xxh_u8*)secret, secretSize,
                                 XXH3_hashLong_128b_withSecret);
}
static __inline __attribute__((unused)) XXH_INLINE_XXH128_hash_t
XXH_INLINE_XXH3_128bits_withSeed(const void* input, size_t len, XXH64_hash_t seed)
{
    return XXH3_128bits_internal(input, len, seed,
                                 XXH3_kSecret, sizeof(XXH3_kSecret),
                                 XXH3_hashLong_128b_withSeed);
}
static __inline __attribute__((unused)) XXH_INLINE_XXH128_hash_t
XXH_INLINE_XXH128(const void* input, size_t len, XXH64_hash_t seed)
{
    return XXH_INLINE_XXH3_128bits_withSeed(input, len, seed);
}
static __inline __attribute__((unused)) XXH_INLINE_XXH_errorcode
XXH_INLINE_XXH3_128bits_reset(XXH_INLINE_XXH3_state_t* statePtr)
{
    if (statePtr == ((void *)0)) return XXH_INLINE_XXH_ERROR;
    XXH3_reset_internal(statePtr, 0, XXH3_kSecret, 192);
    return XXH_INLINE_XXH_OK;
}
static __inline __attribute__((unused)) XXH_INLINE_XXH_errorcode
XXH_INLINE_XXH3_128bits_reset_withSecret(XXH_INLINE_XXH3_state_t* statePtr, const void* secret, size_t secretSize)
{
    if (statePtr == ((void *)0)) return XXH_INLINE_XXH_ERROR;
    XXH3_reset_internal(statePtr, 0, secret, secretSize);
    if (secret == ((void *)0)) return XXH_INLINE_XXH_ERROR;
    if (secretSize < 136) return XXH_INLINE_XXH_ERROR;
    return XXH_INLINE_XXH_OK;
}
static __inline __attribute__((unused)) XXH_INLINE_XXH_errorcode
XXH_INLINE_XXH3_128bits_reset_withSeed(XXH_INLINE_XXH3_state_t* statePtr, XXH64_hash_t seed)
{
    if (statePtr == ((void *)0)) return XXH_INLINE_XXH_ERROR;
    if (seed==0) return XXH_INLINE_XXH3_128bits_reset(statePtr);
    if (seed != statePtr->seed) XXH3_initCustomSecret_sse2(statePtr->customSecret, seed);
    XXH3_reset_internal(statePtr, seed, ((void *)0), 192);
    return XXH_INLINE_XXH_OK;
}
static __inline __attribute__((unused)) XXH_INLINE_XXH_errorcode
XXH_INLINE_XXH3_128bits_update(XXH_INLINE_XXH3_state_t* state, const void* input, size_t len)
{
    return XXH3_update(state, (const xxh_u8*)input, len,
                       XXH3_accumulate_512_sse2, XXH3_scrambleAcc_sse2);
}
static __inline __attribute__((unused)) XXH_INLINE_XXH128_hash_t XXH_INLINE_XXH3_128bits_digest (const XXH_INLINE_XXH3_state_t* state)
{
    const unsigned char* const secret = (state->extSecret == ((void *)0)) ? state->customSecret : state->extSecret;
    if (state->totalLen > 240) {
        alignas(16) XXH64_hash_t acc[(64 / sizeof(xxh_u64))];
        XXH3_digest_long(acc, state, secret);
        ((void)0);
        { XXH_INLINE_XXH128_hash_t h128;
            h128.low64 = XXH3_mergeAccs(acc,
                                         secret + 11,
                                         (xxh_u64)state->totalLen * 0x9E3779B185EBCA87ULL);
            h128.high64 = XXH3_mergeAccs(acc,
                                         secret + state->secretLimit + 64
                                                - sizeof(acc) - 11,
                                         ~((xxh_u64)state->totalLen * 0xC2B2AE3D27D4EB4FULL));
            return h128;
        }
    }
    if (state->seed)
        return XXH_INLINE_XXH3_128bits_withSeed(state->buffer, (size_t)state->totalLen, state->seed);
    return XXH_INLINE_XXH3_128bits_withSecret(state->buffer, (size_t)(state->totalLen),
                                   secret, state->secretLimit + 64);
}
static __inline __attribute__((unused)) int XXH_INLINE_XXH128_isEqual(XXH_INLINE_XXH128_hash_t h1, XXH_INLINE_XXH128_hash_t h2)
{
    return !(memcmp(&h1, &h2, sizeof(h1)));
}
static __inline __attribute__((unused)) int XXH_INLINE_XXH128_cmp(const void* h128_1, const void* h128_2)
{
    XXH_INLINE_XXH128_hash_t const h1 = *(const XXH_INLINE_XXH128_hash_t*)h128_1;
    XXH_INLINE_XXH128_hash_t const h2 = *(const XXH_INLINE_XXH128_hash_t*)h128_2;
    int const hcmp = (h1.high64 > h2.high64) - (h2.high64 > h1.high64);
    if (hcmp) return hcmp;
    return (h1.low64 > h2.low64) - (h2.low64 > h1.low64);
}
static __inline __attribute__((unused)) void
XXH_INLINE_XXH128_canonicalFromHash(XXH_INLINE_XXH128_canonical_t* dst, XXH_INLINE_XXH128_hash_t hash)
{
    do { enum { XXH_sa = 1/(int)(!!(sizeof(XXH_INLINE_XXH128_canonical_t) == sizeof(XXH_INLINE_XXH128_hash_t))) }; } while (0);
    if (1) {
        hash.high64 = __builtin_bswap64(hash.high64);
        hash.low64 = __builtin_bswap64(hash.low64);
    }
    memcpy(dst, &hash.high64, sizeof(hash.high64));
    memcpy((char*)dst + sizeof(hash.high64), &hash.low64, sizeof(hash.low64));
}
static __inline __attribute__((unused)) XXH_INLINE_XXH128_hash_t
XXH_INLINE_XXH128_hashFromCanonical(const XXH_INLINE_XXH128_canonical_t* src)
{
    XXH_INLINE_XXH128_hash_t h;
    h.high64 = XXH_readBE64(src);
    h.low64 = XXH_readBE64(src->digest + 8);
    return h;
}
enum mcp_memprofile_types {
    mcp_memp_free = 0,
    mcp_memp_string,
    mcp_memp_table,
    mcp_memp_func,
    mcp_memp_userdata,
    mcp_memp_thread,
    mcp_memp_default,
    mcp_memp_realloc,
};
struct mcp_memprofile {
    struct timespec last_status;
    int id;
    uint64_t allocs[8];
    uint64_t alloc_bytes[8];
};
typedef struct _io_pending_proxy_t io_pending_proxy_t;
typedef struct proxy_event_thread_s proxy_event_thread_t;
struct proxy_int_stats {
    uint64_t vm_gc_runs;
    uint64_t vm_memory_kb;
    uint64_t counters[CMD_FINAL];
};
struct proxy_user_stats {
    int num_stats;
    uint64_t *counters;
};
struct proxy_user_stats_entry {
    char *name;
    unsigned int cname;
    bool reset;
};
struct proxy_global_stats {
    uint64_t config_reloads;
    uint64_t config_reload_fails;
    uint64_t config_cron_runs;
    uint64_t config_cron_fails;
    uint64_t backend_total;
    uint64_t backend_marked_bad;
    uint64_t backend_failed;
    uint64_t request_failed_depth;
};
struct proxy_tunables {
    struct timeval connect;
    struct timeval retry;
    struct timeval read;
    struct timeval flap;
    float flap_backoff_ramp;
    float gc_ratio;
    uint32_t flap_backoff_max;
    int backend_depth_limit;
    int backend_failure_limit;
    int max_ustats;
    bool tcp_keepalive;
    bool use_iothread;
    bool use_tls;
    bool down;
};
struct proxy_logging {
    unsigned int deadline;
    unsigned int rate;
    bool all_errors;
    char *detail;
};
typedef struct globalobj_head_s { struct mcp_globalobj_s *stqh_first; struct mcp_globalobj_s **stqh_last; } globalobj_head_t;
typedef struct {
    lua_State *proxy_state;
    proxy_event_thread_t *proxy_io_thread;
    int64_t active_req_limit;
    uint64_t buffer_memory_limit;
    int user_stats_num;
    struct proxy_user_stats_entry *user_stats;
    char *user_stats_namebuf;
    struct proxy_tunables tunables;
    struct proxy_global_stats global_stats;
    void *proxy_code;
    lua_State *proxy_sharedvm;
    pthread_mutex_t stats_lock;
    pthread_mutex_t config_lock;
    pthread_cond_t config_cond;
    pthread_t config_tid;
    pthread_mutex_t worker_lock;
    pthread_cond_t worker_cond;
    pthread_t manager_tid;
    pthread_mutex_t manager_lock;
    pthread_cond_t manager_cond;
    pthread_mutex_t sharedvm_lock;
    globalobj_head_t manager_head;
    int config_generation;
    int cron_ref;
    int cron_next;
    bool worker_done;
    bool worker_failed;
    bool use_uring;
    bool loading;
    bool memprofile;
    uint8_t memprofile_thread_counter;
} proxy_ctx_t;
struct proxy_hook_ref {
    int lua_ref;
    void *ctx;
};
struct proxy_hook_tagged {
    uint64_t tag;
    struct proxy_hook_ref ref;
};
struct proxy_hook {
    struct proxy_hook_ref ref;
    int tagcount;
    struct proxy_hook_tagged *tagged;
};
typedef uint64_t (*key_hash_func)(const void *key, size_t len, uint64_t seed);
struct proxy_hash_func {
    key_hash_func func;
};
typedef const char *(*key_hash_filter_func)(const char *conf, const char *key, size_t klen, size_t *newlen);
typedef uint32_t (*hash_selector_func)(uint64_t hash, void *ctx);
struct proxy_hash_caller {
    hash_selector_func selector_func;
    void *ctx;
};
enum mcp_backend_states {
    mcp_backend_read = 0,
    mcp_backend_parse,
    mcp_backend_read_end,
    mcp_backend_want_read,
    mcp_backend_next,
    mcp_backend_next_close,
};
typedef struct mcp_cron_s mcp_cron_t;
typedef struct mcp_backend_wrap_s mcp_backend_wrap_t;
typedef struct mcp_backend_label_s mcp_backend_label_t;
typedef struct mcp_backend_s mcp_backend_t;
typedef struct mcp_request_s mcp_request_t;
typedef struct mcp_rcontext_s mcp_rcontext_t;
typedef struct mcp_funcgen_s mcp_funcgen_t;
struct mcp_request_s {
    mcp_parser_t pr;
    char request[];
};
struct mcp_cron_s {
    uint32_t gen;
    uint32_t next;
    uint32_t every;
    bool repeat;
};
struct mcp_backend_label_s {
    char name[255 +1];
    char port[6 +1];
    char label[512 +1];
    size_t llen;
    int conncount;
    bool use_logging;
    struct proxy_tunables tunables;
    struct proxy_logging logging;
};
struct mcp_backend_wrap_s {
    mcp_backend_t *be;
};
struct mcp_backendconn_s {
    mcp_backend_t *be_parent;
    int self;
    int depth;
    int pending_read;
    int failed_count;
    int flap_count;
    proxy_event_thread_t *event_thread;
    void *client;
    iop_head_t iop_write;
    iop_head_t iop_read;
    char *rbuf;
    size_t rbufused;
    struct event main_event;
    struct event write_event;
    struct event timeout_event;
    struct proxy_tunables tunables;
    struct timeval last_failed;
    enum mcp_backend_states state;
    int connect_flags;
    bool connecting;
    bool validating;
    bool can_write;
    bool bad;
    bool ssl;
    struct iovec write_iovs[1024];
};
struct mcp_backend_s {
    int conncount;
    int depth;
    bool transferred;
    bool use_io_thread;
    bool stacked;
    bool use_logging;
    struct { struct mcp_backend_s *stqe_next; } beconn_next;
    struct { struct mcp_backend_s *stqe_next; } be_next;
    iop_head_t iop_head;
    struct proxy_logging logging;
    struct proxy_tunables tunables;
    char name[255 +1];
    char port[6 +1];
    char label[512 +1];
    struct mcp_backendconn_s be[];
};
typedef struct be_head_s { struct mcp_backend_s *stqh_first; struct mcp_backend_s **stqh_last; } be_head_t;
typedef struct beconn_head_s { struct mcp_backend_s *stqh_first; struct mcp_backend_s **stqh_last; } beconn_head_t;
struct proxy_event_thread_s {
    pthread_t thread_id;
    struct event_base *base;
    struct event notify_event;
    struct event beconn_event;
    pthread_mutex_t mutex;
    pthread_cond_t cond;
    iop_head_t iop_head_in;
    be_head_t be_head;
    beconn_head_t beconn_head_in;
    int event_fd;
    int be_event_fd;
    proxy_ctx_t *ctx;
};
typedef struct {
    mcmc_resp_t resp;
    mcmc_tokenizer_t tok;
    char *buf;
    mc_resp *cresp;
    LIBEVENT_THREAD *thread;
    mcp_backend_t *be;
    unsigned int blen;
    struct timeval start;
    long elapsed;
    int status;
    int bread;
    uint8_t cmd;
} mcp_resp_t;
struct _io_pending_proxy_t {
    uint8_t io_queue_type;
    uint8_t io_sub_type;
    uint8_t payload;
    LIBEVENT_THREAD *thread;
    conn *c;
    mc_resp *resp;
    io_queue_cb return_cb;
    io_queue_cb finalize_cb;
    struct { struct io_pending_t *stqe_next; } iop_next;
    mcp_rcontext_t *rctx;
    mcp_resp_t *client_resp;
    int queue_handle;
    union {
        struct {
            obj_io eio;
            item *hdr_it;
            mc_resp *tresp;
            int gettype;
            int iovec_data;
            bool miss;
            bool badcrc;
            bool active;
        };
        struct {
            mcp_backend_t *backend;
            struct iovec iov[2];
            int iovcnt;
            unsigned int iovbytes;
            bool flushed;
            bool background;
        };
    };
};
struct mcp_globalobj_s {
    pthread_mutex_t lock;
    struct { struct mcp_globalobj_s *stqe_next; } next;
    int refcount;
    int self_ref;
};
typedef struct {
    int ref;
    mcp_backend_t *be;
} mcp_pool_be_t;
typedef struct mcp_pool_s mcp_pool_t;
struct mcp_pool_s {
    struct proxy_hash_caller phc;
    key_hash_filter_func key_filter;
    key_hash_func key_hasher;
    proxy_ctx_t *ctx;
    char key_filter_conf[5 +1];
    struct mcp_globalobj_s g;
    char beprefix[512 +1];
    uint64_t hash_seed;
    int pool_size;
    int pool_be_total;
    int phc_ref;
    bool use_iothread;
    mcp_pool_be_t pool[];
};
typedef struct {
    mcp_pool_t *main;
    mcp_pool_be_t *pool;
} mcp_pool_proxy_t;
bool proxy_bufmem_checkadd(LIBEVENT_THREAD *t, int len);
void mcp_sharedvm_delta(proxy_ctx_t *ctx, int tidx, const char *name, int delta);
void mcp_sharedvm_remove(proxy_ctx_t *ctx, int tidx, const char *name);
void mcp_gobj_ref(lua_State *L, struct mcp_globalobj_s *g);
void mcp_gobj_unref(proxy_ctx_t *ctx, struct mcp_globalobj_s *g);
void mcp_gobj_finalize(struct mcp_globalobj_s *g);
void proxy_init_event_thread(proxy_event_thread_t *t, proxy_ctx_t *ctx, struct event_base *base);
void *proxy_event_thread(void *arg);
void proxy_run_backend_queue(be_head_t *head);
struct mcp_backendconn_s *proxy_choose_beconn(mcp_backend_t *be);
mcp_resp_t *mcp_prep_bare_resobj(lua_State *L, LIBEVENT_THREAD *t);
void mcp_resp_set_elapsed(mcp_resp_t *r);
io_pending_proxy_t *mcp_queue_rctx_io(mcp_rcontext_t *rctx, mcp_request_t *rq, mcp_backend_t *be, mcp_resp_t *r);
int mcplib_internal(lua_State *L);
int mcplib_internal_run(mcp_rcontext_t *rctx);
void *mcp_rcontext_internal(mcp_rcontext_t *rctx, mcp_request_t *rq, mcp_resp_t *r);
int mcplib_add_stat(lua_State *L);
int mcplib_stat(lua_State *L);
size_t _process_request_next_key(mcp_parser_t *pr);
mcp_request_t *mcp_new_request(lua_State *L, mcp_parser_t *pr, const char *command, size_t cmdlen);
void mcp_set_request(mcp_parser_t *pr, mcp_request_t *r, const char *command, size_t cmdlen);
int mcplib_ratelim_tbf(lua_State *L);
int mcplib_ratelim_tbf_call(lua_State *L);
int mcplib_ratelim_global_tbf(lua_State *L);
int mcplib_ratelim_proxy_tbf_call(lua_State *L);
int mcp_ratelim_proxy_tbf(lua_State *from, lua_State *to);
int mcplib_ratelim_global_tbf_gc(lua_State *L);
int mcplib_ratelim_proxy_tbf_gc(lua_State *L);
void proxy_return_rctx_cb(io_pending_t *pending);
void proxy_finalize_rctx_cb(io_pending_t *pending);
enum mcp_rqueue_e {
    QWAIT_IDLE = 0,
    QWAIT_ANY,
    QWAIT_OK,
    QWAIT_GOOD,
    QWAIT_FASTGOOD,
    QWAIT_HANDLE,
    QWAIT_SLEEP,
};
struct mcp_funcgen_s {
    LIBEVENT_THREAD *thread;
    int generator_ref;
    int self_ref;
    int argument_ref;
    int max_queues;
    int uobj_queues;
    unsigned int refcount;
    unsigned int total;
    unsigned int free;
    unsigned int free_max;
    unsigned int free_pressure;
    bool closed;
    bool ready;
    bool is_router;
    struct timespec free_waiter;
    mcp_rcontext_t **list;
    struct mcp_rqueue_s *queue_list;
    char name[80 +1];
};
enum mcp_funcgen_router_e {
    FGEN_ROUTER_NONE = 0,
    FGEN_ROUTER_CMDMAP,
    FGEN_ROUTER_SHORTSEP,
    FGEN_ROUTER_LONGSEP,
    FGEN_ROUTER_ANCHORSM,
    FGEN_ROUTER_ANCHORBIG,
};
struct mcp_router_long_s {
    char start[5 +1];
    char stop[5 +1];
};
struct mcp_funcgen_router {
    mcp_funcgen_t fgen_self;
    enum mcp_funcgen_router_e type;
    union {
        char sep;
        char lsep[5 +1];
        char anchorsm[2];
        struct mcp_router_long_s big;
    } conf;
    int map_ref;
    mcp_funcgen_t *def_fgen;
    mcp_funcgen_t *cmap[CMD_END_STORAGE];
};
enum mcp_rqueue_state {
    RQUEUE_IDLE = 0,
    RQUEUE_QUEUED,
    RQUEUE_ACTIVE,
    RQUEUE_COMPLETE,
    RQUEUE_WAITED
};
struct mcp_rqueue_s {
    int obj_ref;
    int cb_ref;
    int req_ref;
    int res_ref;
    void *obj;
    mcp_request_t *rq;
    mcp_resp_t *res_obj;
    enum mcp_rqueue_state state;
    uint8_t obj_type;
    uint8_t flags;
};
struct mcp_rcontext_s {
    int self_ref;
    int request_ref;
    int function_ref;
    int coroutine_ref;
    int pending_reqs;
    unsigned int wait_count;
    unsigned int wait_done;
    int wait_handle;
    int parent_handle;
    int conn_fd;
    enum mcp_rqueue_e wait_mode;
    uint8_t lua_narg;
    uint8_t uobj_count;
    bool ascii_multiget;
    lua_State *Lc;
    mcp_request_t *request;
    mcp_rcontext_t *parent;
    conn *c;
    mc_resp *resp;
    mcp_funcgen_t *fgen;
    struct event timeout_event;
    struct mcp_rqueue_s qslots[];
};
void mcp_run_rcontext_handle(mcp_rcontext_t *rctx, int handle);
void mcp_process_rctx_wait(mcp_rcontext_t *rctx, int handle);
int mcp_process_rqueue_return(mcp_rcontext_t *rctx, int handle, mcp_resp_t *res);
int mcplib_rcontext_handle_set_cb(lua_State *L);
int mcplib_rcontext_enqueue(lua_State *L);
int mcplib_rcontext_wait_cond(lua_State *L);
int mcplib_rcontext_wait_handle(lua_State *L);
int mcplib_rcontext_enqueue_and_wait(lua_State *L);
int mcplib_rcontext_res_good(lua_State *L);
int mcplib_rcontext_res_any(lua_State *L);
int mcplib_rcontext_res_ok(lua_State *L);
int mcplib_rcontext_result(lua_State *L);
int mcplib_rcontext_best_result(lua_State *L);
int mcplib_rcontext_worst_result(lua_State *L);
int mcplib_rcontext_cfd(lua_State *L);
int mcplib_rcontext_tls_peer_cn(lua_State *L);
int mcplib_rcontext_request_new(lua_State *L);
int mcplib_rcontext_response_new(lua_State *L);
int mcplib_rcontext_sleep(lua_State *L);
int mcplib_funcgenbare_new(lua_State *L);
int mcplib_funcgen_new(lua_State *L);
int mcplib_funcgen_new_handle(lua_State *L);
int mcplib_funcgen_ready(lua_State *L);
int mcplib_router_new(lua_State *L);
mcp_rcontext_t *mcp_funcgen_start(lua_State *L, mcp_funcgen_t *fgen, mcp_parser_t *pr);
mcp_rcontext_t *mcp_funcgen_get_rctx(lua_State *L, int fgen_ref, mcp_funcgen_t *fgen);
void mcp_funcgen_return_rctx(mcp_rcontext_t *rctx);
int mcplib_funcgen_gc(lua_State *L);
void mcp_funcgen_reference(lua_State *L);
void mcp_funcgen_dereference(lua_State *L, mcp_funcgen_t *fgen);
void mcp_rcontext_push_rqu_res(lua_State *L, mcp_rcontext_t *rctx, int handle);
void mcplib_rqu_log(mcp_request_t *rq, mcp_resp_t *rs, int flag, int cfd);
int mcplib_factory_command_new(lua_State *L);
int mcplib_request(lua_State *L);
int mcplib_request_command(lua_State *L);
int mcplib_request_key(lua_State *L);
int mcplib_request_ltrimkey(lua_State *L);
int mcplib_request_rtrimkey(lua_State *L);
int mcplib_request_raw_line(lua_State *L);
int mcplib_request_raw_value(lua_State *L);
int mcplib_request_token(lua_State *L);
int mcplib_request_token_int(lua_State *L);
int mcplib_request_ntokens(lua_State *L);
int mcplib_request_has_flag(lua_State *L);
int mcplib_request_flag_token(lua_State *L);
int mcplib_request_flag_token_int(lua_State *L);
int mcplib_request_flag_add(lua_State *L);
int mcplib_request_flag_set(lua_State *L);
int mcplib_request_flag_replace(lua_State *L);
int mcplib_request_flag_del(lua_State *L);
int mcplib_request_gc(lua_State *L);
int mcplib_request_match_res(lua_State *L);
void mcp_request_cleanup(LIBEVENT_THREAD *t, mcp_request_t *rq);
int mcplib_response_elapsed(lua_State *L);
int mcplib_response_ok(lua_State *L);
int mcplib_response_hit(lua_State *L);
int mcplib_response_vlen(lua_State *L);
int mcplib_response_code(lua_State *L);
int mcplib_response_line(lua_State *L);
int mcplib_response_flag_blank(lua_State *L);
int mcplib_response_raw_string(lua_State *L);
int mcplib_req_inspector_new(lua_State *L);
int mcplib_res_inspector_new(lua_State *L);
int mcplib_inspector_gc(lua_State *L);
int mcplib_inspector_call(lua_State *L);
int mcplib_req_mutator_new(lua_State *L);
int mcplib_res_mutator_new(lua_State *L);
int mcplib_mutator_gc(lua_State *L);
int mcplib_mutator_call(lua_State *L);
void mcp_response_cleanup(LIBEVENT_THREAD *t, mcp_resp_t *r);
void mcp_set_resobj(mcp_resp_t *r, mcp_request_t *rq, mcp_backend_t *be, LIBEVENT_THREAD *t);
int mcplib_response_gc(lua_State *L);
int mcplib_response_close(lua_State *L);
int mcplib_open_dist_jump_hash(lua_State *L);
int mcplib_open_dist_ring_hash(lua_State *L);
int proxy_run_rcontext(mcp_rcontext_t *rctx);
mcp_backend_t *mcplib_pool_proxy_call_helper(mcp_pool_proxy_t *pp, const char *key, size_t len);
void mcp_request_attach(mcp_request_t *rq, io_pending_proxy_t *p);
int mcp_request_render(mcp_request_t *rq, int idx, char flag, const char *tok, size_t len);
int mcp_request_append(mcp_request_t *rq, const char flag, const char *tok, size_t len);
void proxy_lua_error(lua_State *L, const char *s);
void proxy_out_errstring(mc_resp *resp, char *type, const char *str);
int _start_proxy_config_threads(proxy_ctx_t *ctx);
int proxy_thread_loadconf(proxy_ctx_t *ctx, LIBEVENT_THREAD *thr);
int mcplib_open_hash_xxhash(lua_State *L);
__attribute__((unused)) void dump_stack(lua_State *L, const char *msg);
__attribute__((unused)) void dump_registry(lua_State *L, const char *msg);
__attribute__((unused)) void dump_funcgen(lua_State *L, const char *name, const char *msg);
__attribute__((unused)) void dump_pools(lua_State *L, const char *msg);
enum mcp_ins_type {
    INS_REQ = 1,
    INS_RES,
};
enum mcp_ins_steptype {
    mcp_ins_step_none = 0,
    mcp_ins_step_sepkey,
    mcp_ins_step_keybegin,
    mcp_ins_step_keyis,
    mcp_ins_step_hasflag,
    mcp_ins_step_flagtoken,
    mcp_ins_step_flagint,
    mcp_ins_step_flagis,
    mcp_ins_step_final,
};
struct mcp_ins_sepkey {
    char sep;
    int pos;
    int mapref;
};
struct mcp_ins_string {
    unsigned int str;
    unsigned int len;
};
struct mcp_ins_flag {
    uint64_t bit;
    char f;
};
struct mcp_ins_flagstr {
    unsigned int str;
    unsigned int len;
    uint64_t bit;
    char f;
};
struct mcp_ins_step {
    enum mcp_ins_steptype type;
    union {
        struct mcp_ins_sepkey sepkey;
        struct mcp_ins_string string;
        struct mcp_ins_flag flag;
        struct mcp_ins_flagstr flagstr;
    } c;
};
struct mcp_inspector {
    enum mcp_ins_type type;
    int scount;
    unsigned int aused;
    unsigned int rcount;
    char *arena;
    struct mcp_ins_step steps[];
};
static int mcp_inspector_flag_c_g(lua_State *L, int tidx) {
    if (lua_getfield(L, tidx, "flag") != 0) {
        size_t len = 0;
        const char *flag = lua_tolstring(L, -1, &len);
        if (len != 1) {
            do { lua_pushfstring(L, "inspector step %d: 'flag' must be a single character", tidx); lua_error(L); } while (0);
        }
        if ((flag[0] < 65 || flag[0] > 122)) {
            do { lua_pushfstring(L, "inspect step %d: 'flag' must be alphanumeric", tidx); lua_error(L); } while (0);
        }
    } else {
        do { lua_pushfstring(L, "inspector step %d: must provide 'flag' argument", tidx); lua_error(L); } while (0);
    }
    lua_settop(L, -(1)-1);
    return 0;
}
static int mcp_inspector_flag_i_g(lua_State *L, int tidx, int sc, struct mcp_inspector *ins) {
    struct mcp_ins_step *s = &ins->steps[sc];
    struct mcp_ins_flag *c = &s->c.flag;
    if (lua_getfield(L, tidx, "flag") != 0) {
        const char *flag = lua_tolstring(L, (-1), ((void *)0));
        c->f = flag[0];
        c->bit = (uint64_t)1 << (c->f - 65);
    }
    lua_settop(L, -(1)-1);
    return 0;
}
static int mcp_inspector_string_c_g(lua_State *L, int tidx) {
    size_t len = 0;
    if (lua_getfield(L, tidx, "str") != 0) {
        lua_tolstring(L, -1, &len);
        if (len < 1) {
            do { lua_pushfstring(L, "inspector step %d: 'str' must have nonzero length", tidx); lua_error(L); } while (0);
        }
    } else {
        do { lua_pushfstring(L, "inspector step %d: must provide 'str' argument", tidx); lua_error(L); } while (0);
    }
    lua_settop(L, -(1)-1);
    return len;
}
static int mcp_inspector_string_i_g(lua_State *L, int tidx, int sc, struct mcp_inspector *ins) {
    struct mcp_ins_step *s = &ins->steps[sc];
    struct mcp_ins_string *c = &s->c.string;
    size_t len = 0;
    if (lua_getfield(L, tidx, "str") != 0) {
        const char *str = lua_tolstring(L, -1, &len);
        c->str = ins->aused;
        c->len = len;
        char *a = ins->arena + ins->aused;
        memcpy(a, str, len);
        ins->aused += len;
    }
    lua_settop(L, -(1)-1);
    return len;
}
static int mcp_inspector_sepkey_c(lua_State *L, int tidx) {
    if (lua_getfield(L, tidx, "sep") != 0) {
        size_t len = 0;
        lua_tolstring(L, -1, &len);
        if (len != 1) {
            do { lua_pushfstring(L, "inspector step %d: separator must be one character", tidx); lua_error(L); } while (0);
        }
    }
    lua_settop(L, -(1)-1);
    if (lua_getfield(L, tidx, "pos") != 0) {
        luaL_checktype(L, -1, 3);
    }
    lua_settop(L, -(1)-1);
    if (lua_getfield(L, tidx, "map") != 0) {
        luaL_checktype(L, -1, 5);
    }
    lua_settop(L, -(1)-1);
    return 0;
}
static int mcp_inspector_sepkey_i(lua_State *L, int tidx, int sc, struct mcp_inspector *ins) {
    struct mcp_ins_step *s = &ins->steps[sc];
    struct mcp_ins_sepkey *c = &s->c.sepkey;
    if (lua_getfield(L, tidx, "sep") != 0) {
        const char *sep = lua_tolstring(L, (-1), ((void *)0));
        c->sep = sep[0];
    } else {
        c->sep = '/';
    }
    lua_settop(L, -(1)-1);
    if (lua_getfield(L, tidx, "pos") != 0) {
        c->pos = lua_tointegerx(L,(-1),((void *)0));
    } else {
        c->pos = 1;
    }
    lua_settop(L, -(1)-1);
    if (lua_getfield(L, tidx, "map") != 0) {
        c->mapref = luaL_ref(L, (-1000000 - 1000));
    } else {
        c->mapref = 0;
        lua_settop(L, -(1)-1);
    }
    return 0;
}
static int mcp_inspector_sepkey_r(lua_State *L, struct mcp_inspector *ins, struct mcp_ins_step *s, void *arg) {
    mcp_request_t *rq = arg;
    struct mcp_ins_sepkey *c = &s->c.sepkey;
    const char *key = (&(&rq->pr)->request[(&rq->pr)->tok.tokens[(&rq->pr)->keytoken]]);
    const char *end = key + rq->pr.klen;
    char sep = c->sep;
    int pos = c->pos;
    while (key != end) {
        if (*key == sep) {
            key++;
        } else {
            break;
        }
    }
    const char *token = key;
    int tlen = 0;
    while (key != end) {
        if (*key == sep) {
            if (--pos == 0) {
                tlen = key - token;
                break;
            } else {
                token = key+1;
            }
        }
        key++;
    }
    if (pos == 1) {
        tlen = key - token;
    }
    if (tlen != 0) {
        if (c->mapref) {
            lua_rawgeti(L, (-1000000 - 1000), c->mapref);
            lua_pushlstring(L, token, tlen);
            lua_rawget(L, -2);
            (lua_rotate(L, (-2), -1), lua_settop(L, -(1)-1));
        } else {
            lua_pushlstring(L, token, tlen);
        }
    } else {
        lua_pushnil(L);
    }
    return 1;
}
static int mcp_inspector_keybegin_r(lua_State *L, struct mcp_inspector *ins, struct mcp_ins_step *s, void *arg) {
    mcp_request_t *rq = arg;
    struct mcp_ins_string *c = &s->c.string;
    const char *key = (&(&rq->pr)->request[(&rq->pr)->tok.tokens[(&rq->pr)->keytoken]]);
    int klen = rq->pr.klen;
    const char *str = ins->arena + c->str;
    if (c->len < klen && strncmp(key, str, c->len) == 0) {
        lua_pushboolean(L, 1);
    } else {
        lua_pushboolean(L, 0);
    }
    return 1;
}
static int mcp_inspector_keyis_r(lua_State *L, struct mcp_inspector *ins, struct mcp_ins_step *s, void *arg) {
    mcp_request_t *rq = arg;
    struct mcp_ins_string *c = &s->c.string;
    const char *key = (&(&rq->pr)->request[(&rq->pr)->tok.tokens[(&rq->pr)->keytoken]]);
    int klen = rq->pr.klen;
    const char *str = ins->arena + c->str;
    if (c->len == klen && strncmp(key, str, c->len) == 0) {
        lua_pushboolean(L, 1);
    } else {
        lua_pushboolean(L, 0);
    }
    return 1;
}
static int mcp_inspector_hasflag_r(lua_State *L, struct mcp_inspector *ins, struct mcp_ins_step *s, void *arg) {
    struct mcp_ins_flag *c = &s->c.flag;
    if (ins->type == INS_REQ) {
        mcp_request_t *rq = arg;
        if ((((&rq->pr.tok)->metaflags & c->bit) ? 0 : -2) == 0) {
            lua_pushboolean(L, 1);
        } else {
            lua_pushboolean(L, 0);
        }
    } else {
        mcp_resp_t *res = arg;
        if (res->resp.type == 101) {
            mcmc_tokenize_res((res->cresp ? res->cresp->iov[0].iov_base : res->buf), res->resp.reslen, &res->tok);
            if ((((&res->tok)->metaflags & c->bit) ? 0 : -2) == 0) {
                lua_pushboolean(L, 1);
            } else {
                lua_pushboolean(L, 0);
            }
        } else {
            proxy_lua_error(L, "inspector error: response is not meta protocol");
        }
    }
    return 1;
}
static int mcp_inspector_flagtoken_r(lua_State *L, struct mcp_inspector *ins, struct mcp_ins_step *s, void *arg) {
    struct mcp_ins_flag *c = &s->c.flag;
    if (ins->type == INS_REQ) {
        mcp_request_t *rq = arg;
        if ((((&rq->pr.tok)->metaflags & c->bit) ? 0 : -2) == 0) {
            lua_pushboolean(L, 1);
            int tlen = 0;
            const char *tok = mcmc_token_get_flag(rq->pr.request, &rq->pr.tok, c->f, &tlen);
            lua_pushlstring(L, tok, tlen);
            return 2;
        }
    } else {
        mcp_resp_t *res = arg;
        if (res->resp.type == 101) {
            mcmc_tokenize_res((res->cresp ? res->cresp->iov[0].iov_base : res->buf), res->resp.reslen, &res->tok);
            if ((((&res->tok)->metaflags & c->bit) ? 0 : -2) == 0) {
                lua_pushboolean(L, 1);
                int tlen = 0;
                const char *tok = mcmc_token_get_flag((res->cresp ? res->cresp->iov[0].iov_base : res->buf), &res->tok, c->f, &tlen);
                lua_pushlstring(L, tok, tlen);
                return 2;
            }
        }
    }
    lua_pushboolean(L, 0);
    lua_pushnil(L);
    return 2;
}
static int mcp_inspector_flagint_r(lua_State *L, struct mcp_inspector *ins, struct mcp_ins_step *s, void *arg) {
    struct mcp_ins_flag *c = &s->c.flag;
    if (ins->type == INS_REQ) {
        mcp_request_t *rq = arg;
        if ((((&rq->pr.tok)->metaflags & c->bit) ? 0 : -2) == 0) {
            lua_pushboolean(L, 1);
            int64_t tok = 0;
            int status = mcmc_token_get_flag_64(rq->pr.request, &rq->pr.tok, c->f, &tok);
            if (status == 0) {
                lua_pushinteger(L, tok);
            } else {
                lua_pushnil(L);
            }
            return 2;
        }
    } else {
        mcp_resp_t *res = arg;
        if (res->resp.type == 101) {
            mcmc_tokenize_res((res->cresp ? res->cresp->iov[0].iov_base : res->buf), res->resp.reslen, &res->tok);
            if ((((&res->tok)->metaflags & c->bit) ? 0 : -2) == 0) {
                lua_pushboolean(L, 1);
                int64_t tok = 0;
                if (mcmc_token_get_flag_64((res->cresp ? res->cresp->iov[0].iov_base : res->buf), &res->tok, c->f, &tok) == 0) {
                    lua_pushinteger(L, tok);
                } else {
                    lua_pushnil(L);
                }
                return 2;
            }
        }
    }
    lua_pushboolean(L, 0);
    lua_pushnil(L);
    return 2;
}
static int mcp_inspector_flagstr_c(lua_State *L, int tidx) {
    mcp_inspector_flag_c_g(L, tidx);
    int size = mcp_inspector_string_c_g(L, tidx);
    return size;
}
static int mcp_inspector_flagstr_i(lua_State *L, int tidx, int sc, struct mcp_inspector *ins) {
    struct mcp_ins_step *s = &ins->steps[sc];
    struct mcp_ins_flagstr *c = &s->c.flagstr;
    size_t len = 0;
    if (lua_getfield(L, tidx, "flag") != 0) {
        const char *flag = lua_tolstring(L, (-1), ((void *)0));
        c->f = flag[0];
        c->bit = (uint64_t)1 << (c->f - 65);
    }
    lua_settop(L, -(1)-1);
    if (lua_getfield(L, tidx, "str") != 0) {
        const char *str = lua_tolstring(L, -1, &len);
        c->str = ins->aused;
        c->len = len;
        char *a = ins->arena + ins->aused;
        memcpy(a, str, len);
        ins->aused += len;
    }
    lua_settop(L, -(1)-1);
    return len;
}
static int mcp_inspector_flagis_r(lua_State *L, struct mcp_inspector *ins, struct mcp_ins_step *s, void *arg) {
    struct mcp_ins_flagstr *c = &s->c.flagstr;
    const char *str = ins->arena + c->str;
    if (ins->type == INS_REQ) {
        mcp_request_t *rq = arg;
        if ((((&rq->pr.tok)->metaflags & c->bit) ? 0 : -2) == 0) {
            lua_pushboolean(L, 1);
            int tlen = -1;
            const char *tok = mcmc_token_get_flag(rq->pr.request, &rq->pr.tok, c->f, &tlen);
            if (tlen == c->len && strncmp(tok, str, c->len) == 0) {
                lua_pushboolean(L, 1);
            } else {
                lua_pushboolean(L, 0);
            }
            return 2;
        }
    } else {
        mcp_resp_t *res = arg;
        if (res->resp.type == 101) {
            mcmc_tokenize_res((res->cresp ? res->cresp->iov[0].iov_base : res->buf), res->resp.reslen, &res->tok);
            if ((((&res->tok)->metaflags & c->bit) ? 0 : -2) == 0) {
                lua_pushboolean(L, 1);
                int tlen = 0;
                const char *tok = mcmc_token_get_flag((res->cresp ? res->cresp->iov[0].iov_base : res->buf), &res->tok, c->f, &tlen);
                if (tlen == c->len && strncmp(tok, str, c->len) == 0) {
                    lua_pushboolean(L, 1);
                } else {
                    lua_pushboolean(L, 0);
                }
                return 2;
            }
        }
    }
    lua_pushboolean(L, 0);
    lua_pushnil(L);
    return 2;
}
typedef int (*mcp_ins_c)(lua_State *L, int tidx);
typedef int (*mcp_ins_i)(lua_State *L, int tidx, int sc, struct mcp_inspector *ins);
typedef int (*mcp_ins_r)(lua_State *L, struct mcp_inspector *ins, struct mcp_ins_step *s, void *arg);
struct mcp_ins_entry {
    const char *s;
    mcp_ins_c c;
    mcp_ins_i i;
    mcp_ins_r r;
    unsigned int t;
    int n;
};
static const struct mcp_ins_entry mcp_ins_entries[] = {
    [mcp_ins_step_none] = {((void *)0), ((void *)0), ((void *)0), ((void *)0), 0, 0},
    [mcp_ins_step_sepkey] = {"sepkey", mcp_inspector_sepkey_c, mcp_inspector_sepkey_i, mcp_inspector_sepkey_r, INS_REQ, 1},
    [mcp_ins_step_keybegin] = {"keybegin", mcp_inspector_string_c_g, mcp_inspector_string_i_g, mcp_inspector_keybegin_r, INS_REQ, 1},
    [mcp_ins_step_keyis] = {"keyis", mcp_inspector_string_c_g, mcp_inspector_string_i_g, mcp_inspector_keyis_r, INS_REQ, 1},
    [mcp_ins_step_hasflag] = {"hasflag", mcp_inspector_flag_c_g, mcp_inspector_flag_i_g, mcp_inspector_hasflag_r, INS_REQ|INS_RES, 1},
    [mcp_ins_step_flagtoken] = {"flagtoken", mcp_inspector_flag_c_g, mcp_inspector_flag_i_g, mcp_inspector_flagtoken_r, INS_REQ|INS_RES, 2},
    [mcp_ins_step_flagint] = {"flagint", mcp_inspector_flag_c_g, mcp_inspector_flag_i_g, mcp_inspector_flagint_r, INS_REQ|INS_RES, 2},
    [mcp_ins_step_flagis] = {"flagis", mcp_inspector_flagstr_c, mcp_inspector_flagstr_i, mcp_inspector_flagis_r, INS_REQ|INS_RES, 2},
};
static enum mcp_ins_steptype mcp_inspector_steptype(lua_State *L) {
    const char *type = (luaL_checklstring(L, (-1), ((void *)0)));
    for (int x = 0; x < mcp_ins_step_final; x++) {
        const struct mcp_ins_entry *e = &mcp_ins_entries[x];
        if (e->s && strcmp(type, e->s) == 0) {
            return x;
        }
    }
    return mcp_ins_step_none;
}
static int mcp_inspector_new(lua_State *L, enum mcp_ins_type type) {
    int argc = lua_gettop(L);
    size_t size = 0;
    int scount = 0;
    for (int x = 1; x <= argc; x++) {
        luaL_checktype(L, x, 5);
        if (lua_getfield(L, x, "t") != 0) {
            enum mcp_ins_steptype st = mcp_inspector_steptype(L);
            const struct mcp_ins_entry *e = &mcp_ins_entries[st];
            if (!(e->t & type)) {
                do { lua_pushfstring(L, "inspector step %d: step incompatible with inspector type", x); lua_error(L); } while (0);
            }
            if ((st == mcp_ins_step_none) || e->c == ((void *)0)) {
                do { lua_pushfstring(L, "inspector step %d: unknown step type", x); lua_error(L); } while (0);
            }
            size += e->c(L, x);
        }
        lua_settop(L, -(1)-1);
        scount++;
    }
    size_t extsize = sizeof(struct mcp_ins_step) * scount;
    struct mcp_inspector *ins = lua_newuserdatauv(L, sizeof(*ins) + extsize, 1);
    memset(ins, 0, sizeof(*ins));
    ins->arena = malloc(size);
    if (ins->arena == ((void *)0)) {
        proxy_lua_error(L, "mcp.req_inspector_new: failed to allocate memory");
    }
    luaL_setmetatable(L, "mcp.inspector");
    switch (type) {
        case INS_REQ:
            (lua_getfield(L, (-1000000 - 1000), ("mcp.request")));
            break;
        case INS_RES:
            (lua_getfield(L, (-1000000 - 1000), ("mcp.response")));
            break;
    }
    lua_setiuservalue(L, -2, 1);
    ins->type = type;
    scount = 0;
    for (int x = 1; x <= argc; x++) {
        if (lua_getfield(L, x, "t") != 0) {
            enum mcp_ins_steptype st = mcp_inspector_steptype(L);
            ins->steps[scount].type = st;
            mcp_ins_entries[st].i(L, x, scount, ins);
            ins->rcount += mcp_ins_entries[st].n;
        }
        lua_settop(L, -(1)-1);
        scount++;
    }
    if (size != ins->aused) {
        proxy_lua_error(L, "inspector failed to properly initialize, memory not filled correctly");
    }
    ins->scount = scount;
    return 1;
}
static int mcp_ins_run(lua_State *L, struct mcp_inspector *ins, void *arg) {
    int ret = 0;
    for (int x = 0; x < ins->scount; x++) {
        struct mcp_ins_step *s = &ins->steps[x];
        ((void) (0));
        ret += mcp_ins_entries[s->type].r(L, ins, s, arg);
    }
    return ret;
}
int mcplib_req_inspector_new(lua_State *L) {
    return mcp_inspector_new(L, INS_REQ);
}
int mcplib_res_inspector_new(lua_State *L) {
    return mcp_inspector_new(L, INS_RES);
}
int mcplib_inspector_gc(lua_State *L) {
    struct mcp_inspector *ins = lua_touserdata(L, 1);
    if (ins->arena) {
        free(ins->arena);
        ins->arena = ((void *)0);
    }
    for (int x = 0; x < ins->scount; x++) {
        struct mcp_ins_step *s = &ins->steps[x];
        switch (s->type) {
            case mcp_ins_step_sepkey:
                if (s->c.sepkey.mapref) {
                    luaL_unref(L, (-1000000 - 1000), s->c.sepkey.mapref);
                    s->c.sepkey.mapref = 0;
                }
                break;
            case mcp_ins_step_keybegin:
            case mcp_ins_step_keyis:
            case mcp_ins_step_hasflag:
            case mcp_ins_step_flagtoken:
            case mcp_ins_step_flagint:
            case mcp_ins_step_flagis:
            case mcp_ins_step_none:
            case mcp_ins_step_final:
                break;
        }
    }
    return 0;
}
int mcplib_inspector_call(lua_State *L) {
    struct mcp_inspector *ins = lua_touserdata(L, 1);
    luaL_checktype(L, 2, 7);
    if (lua_checkstack(L, ins->rcount) == 0) {
        proxy_lua_error(L, "inspector ran out of stack space for results");
    }
    lua_getmetatable(L, 2);
    lua_getiuservalue(L, 1, 1);
    ((void)((__builtin_expect(((lua_rawequal(L, -1, -2)) != 0), 1)) || luaL_argerror(L, (2), ("invalid argument to inspector object"))));
    lua_settop(L, -(2)-1);
    void *arg = lua_touserdata(L, 2);
    return mcp_ins_run(L, ins, arg);
}
