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

       
       
       
       
       
       
typedef intmax_t ossl_intmax_t;
typedef uintmax_t ossl_uintmax_t;
       
       
       

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

       
       
typedef struct stack_st OPENSSL_STACK;
typedef int (*OPENSSL_sk_compfunc)(const void *, const void *);
typedef void (*OPENSSL_sk_freefunc)(void *);
typedef void *(*OPENSSL_sk_copyfunc)(const void *);
int OPENSSL_sk_num(const OPENSSL_STACK *);
void *OPENSSL_sk_value(const OPENSSL_STACK *, int);
void *OPENSSL_sk_set(OPENSSL_STACK *st, int i, const void *data);
OPENSSL_STACK *OPENSSL_sk_new(OPENSSL_sk_compfunc cmp);
OPENSSL_STACK *OPENSSL_sk_new_null(void);
OPENSSL_STACK *OPENSSL_sk_new_reserve(OPENSSL_sk_compfunc c, int n);
int OPENSSL_sk_reserve(OPENSSL_STACK *st, int n);
void OPENSSL_sk_free(OPENSSL_STACK *);
void OPENSSL_sk_pop_free(OPENSSL_STACK *st, void (*func)(void *));
OPENSSL_STACK *OPENSSL_sk_deep_copy(const OPENSSL_STACK *,
    OPENSSL_sk_copyfunc c,
    OPENSSL_sk_freefunc f);
int OPENSSL_sk_insert(OPENSSL_STACK *sk, const void *data, int where);
void *OPENSSL_sk_delete(OPENSSL_STACK *st, int loc);
void *OPENSSL_sk_delete_ptr(OPENSSL_STACK *st, const void *p);
int OPENSSL_sk_find(OPENSSL_STACK *st, const void *data);
int OPENSSL_sk_find_ex(OPENSSL_STACK *st, const void *data);
int OPENSSL_sk_find_all(OPENSSL_STACK *st, const void *data, int *pnum);
int OPENSSL_sk_push(OPENSSL_STACK *st, const void *data);
int OPENSSL_sk_unshift(OPENSSL_STACK *st, const void *data);
void *OPENSSL_sk_shift(OPENSSL_STACK *st);
void *OPENSSL_sk_pop(OPENSSL_STACK *st);
void OPENSSL_sk_zero(OPENSSL_STACK *st);
OPENSSL_sk_compfunc OPENSSL_sk_set_cmp_func(OPENSSL_STACK *sk,
    OPENSSL_sk_compfunc cmp);
OPENSSL_STACK *OPENSSL_sk_dup(const OPENSSL_STACK *st);
void OPENSSL_sk_sort(OPENSSL_STACK *st);
int OPENSSL_sk_is_sorted(const OPENSSL_STACK *st);
typedef char *OPENSSL_STRING;
typedef const char *OPENSSL_CSTRING;
struct stack_st_OPENSSL_STRING; typedef int (*sk_OPENSSL_STRING_compfunc)(const char *const *a, const char *const *b); typedef void (*sk_OPENSSL_STRING_freefunc)(char * a); typedef char *(*sk_OPENSSL_STRING_copyfunc)(const char *a); static __attribute__((unused)) inline char *ossl_check_OPENSSL_STRING_type(char *ptr) { return ptr; } static __attribute__((unused)) inline const OPENSSL_STACK *ossl_check_const_OPENSSL_STRING_sk_type(const struct stack_st_OPENSSL_STRING *sk) { return (const OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_STACK *ossl_check_OPENSSL_STRING_sk_type(struct stack_st_OPENSSL_STRING *sk) { return (OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_sk_compfunc ossl_check_OPENSSL_STRING_compfunc_type(sk_OPENSSL_STRING_compfunc cmp) { return (OPENSSL_sk_compfunc)cmp; } static __attribute__((unused)) inline OPENSSL_sk_copyfunc ossl_check_OPENSSL_STRING_copyfunc_type(sk_OPENSSL_STRING_copyfunc cpy) { return (OPENSSL_sk_copyfunc)cpy; } static __attribute__((unused)) inline OPENSSL_sk_freefunc ossl_check_OPENSSL_STRING_freefunc_type(sk_OPENSSL_STRING_freefunc fr) { return (OPENSSL_sk_freefunc)fr; }
struct stack_st_OPENSSL_CSTRING; typedef int (*sk_OPENSSL_CSTRING_compfunc)(const char *const *a, const char *const *b); typedef void (*sk_OPENSSL_CSTRING_freefunc)(char * a); typedef char *(*sk_OPENSSL_CSTRING_copyfunc)(const char *a); static __attribute__((unused)) inline const char *ossl_check_OPENSSL_CSTRING_type(const char *ptr) { return ptr; } static __attribute__((unused)) inline const OPENSSL_STACK *ossl_check_const_OPENSSL_CSTRING_sk_type(const struct stack_st_OPENSSL_CSTRING *sk) { return (const OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_STACK *ossl_check_OPENSSL_CSTRING_sk_type(struct stack_st_OPENSSL_CSTRING *sk) { return (OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_sk_compfunc ossl_check_OPENSSL_CSTRING_compfunc_type(sk_OPENSSL_CSTRING_compfunc cmp) { return (OPENSSL_sk_compfunc)cmp; } static __attribute__((unused)) inline OPENSSL_sk_copyfunc ossl_check_OPENSSL_CSTRING_copyfunc_type(sk_OPENSSL_CSTRING_copyfunc cpy) { return (OPENSSL_sk_copyfunc)cpy; } static __attribute__((unused)) inline OPENSSL_sk_freefunc ossl_check_OPENSSL_CSTRING_freefunc_type(sk_OPENSSL_CSTRING_freefunc fr) { return (OPENSSL_sk_freefunc)fr; }
typedef void *OPENSSL_BLOCK;
struct stack_st_OPENSSL_BLOCK; typedef int (*sk_OPENSSL_BLOCK_compfunc)(const void *const *a, const void *const *b); typedef void (*sk_OPENSSL_BLOCK_freefunc)(void * a); typedef void *(*sk_OPENSSL_BLOCK_copyfunc)(const void *a); static __attribute__((unused)) inline void *ossl_check_OPENSSL_BLOCK_type(void *ptr) { return ptr; } static __attribute__((unused)) inline const OPENSSL_STACK *ossl_check_const_OPENSSL_BLOCK_sk_type(const struct stack_st_OPENSSL_BLOCK *sk) { return (const OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_STACK *ossl_check_OPENSSL_BLOCK_sk_type(struct stack_st_OPENSSL_BLOCK *sk) { return (OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_sk_compfunc ossl_check_OPENSSL_BLOCK_compfunc_type(sk_OPENSSL_BLOCK_compfunc cmp) { return (OPENSSL_sk_compfunc)cmp; } static __attribute__((unused)) inline OPENSSL_sk_copyfunc ossl_check_OPENSSL_BLOCK_copyfunc_type(sk_OPENSSL_BLOCK_copyfunc cpy) { return (OPENSSL_sk_copyfunc)cpy; } static __attribute__((unused)) inline OPENSSL_sk_freefunc ossl_check_OPENSSL_BLOCK_freefunc_type(sk_OPENSSL_BLOCK_freefunc fr) { return (OPENSSL_sk_freefunc)fr; }
typedef struct ossl_provider_st OSSL_PROVIDER;
typedef struct asn1_string_st ASN1_INTEGER;
typedef struct asn1_string_st ASN1_ENUMERATED;
typedef struct asn1_string_st ASN1_BIT_STRING;
typedef struct asn1_string_st ASN1_OCTET_STRING;
typedef struct asn1_string_st ASN1_PRINTABLESTRING;
typedef struct asn1_string_st ASN1_T61STRING;
typedef struct asn1_string_st ASN1_IA5STRING;
typedef struct asn1_string_st ASN1_GENERALSTRING;
typedef struct asn1_string_st ASN1_UNIVERSALSTRING;
typedef struct asn1_string_st ASN1_BMPSTRING;
typedef struct asn1_string_st ASN1_UTCTIME;
typedef struct asn1_string_st ASN1_TIME;
typedef struct asn1_string_st ASN1_GENERALIZEDTIME;
typedef struct asn1_string_st ASN1_VISIBLESTRING;
typedef struct asn1_string_st ASN1_UTF8STRING;
typedef struct asn1_string_st ASN1_STRING;
typedef int ASN1_BOOLEAN;
typedef int ASN1_NULL;
typedef struct asn1_type_st ASN1_TYPE;
typedef struct asn1_object_st ASN1_OBJECT;
typedef struct asn1_string_table_st ASN1_STRING_TABLE;
typedef struct ASN1_ITEM_st ASN1_ITEM;
typedef struct asn1_pctx_st ASN1_PCTX;
typedef struct asn1_sctx_st ASN1_SCTX;
typedef struct bio_st BIO;
typedef struct bignum_st BIGNUM;
typedef struct bignum_ctx BN_CTX;
typedef struct bn_blinding_st BN_BLINDING;
typedef struct bn_mont_ctx_st BN_MONT_CTX;
typedef struct bn_recp_ctx_st BN_RECP_CTX;
typedef struct bn_gencb_st BN_GENCB;
typedef struct buf_mem_st BUF_MEM;
struct stack_st_BIGNUM;
struct stack_st_BIGNUM_const;
typedef struct err_state_st ERR_STATE;
typedef struct evp_cipher_st EVP_CIPHER;
typedef struct evp_cipher_ctx_st EVP_CIPHER_CTX;
typedef struct evp_md_st EVP_MD;
typedef struct evp_md_ctx_st EVP_MD_CTX;
typedef struct evp_mac_st EVP_MAC;
typedef struct evp_mac_ctx_st EVP_MAC_CTX;
typedef struct evp_pkey_st EVP_PKEY;
typedef struct evp_skey_st EVP_SKEY;
typedef struct evp_pkey_asn1_method_st EVP_PKEY_ASN1_METHOD;
typedef struct evp_pkey_method_st EVP_PKEY_METHOD;
typedef struct evp_pkey_ctx_st EVP_PKEY_CTX;
typedef struct evp_keymgmt_st EVP_KEYMGMT;
typedef struct evp_kdf_st EVP_KDF;
typedef struct evp_kdf_ctx_st EVP_KDF_CTX;
typedef struct evp_rand_st EVP_RAND;
typedef struct evp_rand_ctx_st EVP_RAND_CTX;
typedef struct evp_keyexch_st EVP_KEYEXCH;
typedef struct evp_signature_st EVP_SIGNATURE;
typedef struct evp_skeymgmt_st EVP_SKEYMGMT;
typedef struct evp_asym_cipher_st EVP_ASYM_CIPHER;
typedef struct evp_kem_st EVP_KEM;
typedef struct evp_Encode_Ctx_st EVP_ENCODE_CTX;
typedef struct hmac_ctx_st HMAC_CTX;
typedef struct dh_st DH;
typedef struct dh_method DH_METHOD;
typedef struct dsa_st DSA;
typedef struct dsa_method DSA_METHOD;
typedef struct rsa_st RSA;
typedef struct rsa_meth_st RSA_METHOD;
typedef struct rsa_pss_params_st RSA_PSS_PARAMS;
typedef struct ec_key_st EC_KEY;
typedef struct ec_key_method_st EC_KEY_METHOD;
typedef struct rand_meth_st RAND_METHOD;
typedef struct rand_drbg_st RAND_DRBG;
typedef struct ssl_dane_st SSL_DANE;
typedef struct x509_st X509;
typedef struct X509_algor_st X509_ALGOR;
typedef struct X509_crl_st X509_CRL;
typedef struct x509_crl_method_st X509_CRL_METHOD;
typedef struct x509_revoked_st X509_REVOKED;
typedef struct X509_name_st X509_NAME;
typedef struct X509_pubkey_st X509_PUBKEY;
typedef struct x509_store_st X509_STORE;
typedef struct x509_store_ctx_st X509_STORE_CTX;
typedef struct x509_object_st X509_OBJECT;
typedef struct x509_lookup_st X509_LOOKUP;
typedef struct x509_lookup_method_st X509_LOOKUP_METHOD;
typedef struct X509_VERIFY_PARAM_st X509_VERIFY_PARAM;
typedef struct x509_sig_info_st X509_SIG_INFO;
typedef struct pkcs8_priv_key_info_st PKCS8_PRIV_KEY_INFO;
typedef struct v3_ext_ctx X509V3_CTX;
typedef struct conf_st CONF;
typedef struct ossl_init_settings_st OPENSSL_INIT_SETTINGS;
typedef struct ui_st UI;
typedef struct ui_method_st UI_METHOD;
typedef struct engine_st ENGINE;
typedef struct ssl_st SSL;
typedef struct ssl_ctx_st SSL_CTX;
typedef struct comp_ctx_st COMP_CTX;
typedef struct comp_method_st COMP_METHOD;
typedef struct X509_POLICY_NODE_st X509_POLICY_NODE;
typedef struct X509_POLICY_LEVEL_st X509_POLICY_LEVEL;
typedef struct X509_POLICY_TREE_st X509_POLICY_TREE;
typedef struct X509_POLICY_CACHE_st X509_POLICY_CACHE;
typedef struct AUTHORITY_KEYID_st AUTHORITY_KEYID;
typedef struct DIST_POINT_st DIST_POINT;
typedef struct ISSUING_DIST_POINT_st ISSUING_DIST_POINT;
typedef struct NAME_CONSTRAINTS_st NAME_CONSTRAINTS;
typedef struct crypto_ex_data_st CRYPTO_EX_DATA;
typedef struct ossl_http_req_ctx_st OSSL_HTTP_REQ_CTX;
typedef struct ocsp_response_st OCSP_RESPONSE;
typedef struct ocsp_responder_id_st OCSP_RESPID;
typedef struct sct_st SCT;
typedef struct sct_ctx_st SCT_CTX;
typedef struct ctlog_st CTLOG;
typedef struct ctlog_store_st CTLOG_STORE;
typedef struct ct_policy_eval_ctx_st CT_POLICY_EVAL_CTX;
typedef struct ossl_store_info_st OSSL_STORE_INFO;
typedef struct ossl_store_search_st OSSL_STORE_SEARCH;
typedef struct ossl_lib_ctx_st OSSL_LIB_CTX;
typedef struct ossl_dispatch_st OSSL_DISPATCH;
typedef struct ossl_item_st OSSL_ITEM;
typedef struct ossl_algorithm_st OSSL_ALGORITHM;
typedef struct ossl_param_st OSSL_PARAM;
typedef struct ossl_param_bld_st OSSL_PARAM_BLD;
typedef int pem_password_cb(char *buf, int size, int rwflag, void *userdata);
typedef struct ossl_encoder_st OSSL_ENCODER;
typedef struct ossl_encoder_ctx_st OSSL_ENCODER_CTX;
typedef struct ossl_decoder_st OSSL_DECODER;
typedef struct ossl_decoder_ctx_st OSSL_DECODER_CTX;
typedef struct ossl_self_test_st OSSL_SELF_TEST;
       
       
       
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_ASN1_strings(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_ASYNC_strings(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_BIO_strings(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_BN_strings(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_BUF_strings(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_CMS_strings(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_COMP_strings(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_CONF_strings(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_CRYPTO_strings(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_CT_strings(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_DH_strings(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_DSA_strings(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_EC_strings(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_ENGINE_strings(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_ERR_strings(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_EVP_strings(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_KDF_strings(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_OBJ_strings(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_OCSP_strings(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_PEM_strings(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_PKCS12_strings(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_PKCS7_strings(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_RAND_strings(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_RSA_strings(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_OSSL_STORE_strings(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_TS_strings(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_UI_strings(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_X509_strings(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_X509V3_strings(void);
       
typedef struct ossl_core_handle_st OSSL_CORE_HANDLE;
typedef struct openssl_core_ctx_st OPENSSL_CORE_CTX;
typedef struct ossl_core_bio_st OSSL_CORE_BIO;
struct ossl_dispatch_st {
    int function_id;
    void (*function)(void);
};
struct ossl_item_st {
    unsigned int id;
    void *ptr;
};
struct ossl_algorithm_st {
    const char *algorithm_names;
    const char *property_definition;
    const OSSL_DISPATCH *implementation;
    const char *algorithm_description;
};
struct ossl_param_st {
    const char *key;
    unsigned int data_type;
    void *data;
    size_t data_size;
    size_t return_size;
};
typedef void (*OSSL_thread_stop_handler_fn)(void *arg);
typedef int(OSSL_provider_init_fn)(const OSSL_CORE_HANDLE *handle,
    const OSSL_DISPATCH *in,
    const OSSL_DISPATCH **out,
    void **provctx);
extern OSSL_provider_init_fn OSSL_provider_init;
typedef int(OSSL_CALLBACK)(const OSSL_PARAM params[], void *arg);
typedef int(OSSL_INOUT_CALLBACK)(const OSSL_PARAM in_params[],
    OSSL_PARAM out_params[], void *arg);
typedef int(OSSL_PASSPHRASE_CALLBACK)(char *pass, size_t pass_size,
    size_t *pass_len,
    const OSSL_PARAM params[], void *arg);
typedef struct {
    int dummy;
} CRYPTO_dynlock;
typedef void CRYPTO_RWLOCK;
CRYPTO_RWLOCK *CRYPTO_THREAD_lock_new(void);
 int CRYPTO_THREAD_read_lock(CRYPTO_RWLOCK *lock);
 int CRYPTO_THREAD_write_lock(CRYPTO_RWLOCK *lock);
int CRYPTO_THREAD_unlock(CRYPTO_RWLOCK *lock);
void CRYPTO_THREAD_lock_free(CRYPTO_RWLOCK *lock);
int CRYPTO_atomic_add(int *val, int amount, int *ret, CRYPTO_RWLOCK *lock);
int CRYPTO_atomic_add64(uint64_t *val, uint64_t op, uint64_t *ret,
    CRYPTO_RWLOCK *lock);
int CRYPTO_atomic_and(uint64_t *val, uint64_t op, uint64_t *ret,
    CRYPTO_RWLOCK *lock);
int CRYPTO_atomic_or(uint64_t *val, uint64_t op, uint64_t *ret,
    CRYPTO_RWLOCK *lock);
int CRYPTO_atomic_load(uint64_t *val, uint64_t *ret, CRYPTO_RWLOCK *lock);
int CRYPTO_atomic_load_int(int *val, int *ret, CRYPTO_RWLOCK *lock);
int CRYPTO_atomic_store(uint64_t *dst, uint64_t val, CRYPTO_RWLOCK *lock);
size_t OPENSSL_strlcpy(char *dst, const char *src, size_t siz);
size_t OPENSSL_strlcat(char *dst, const char *src, size_t siz);
size_t OPENSSL_strnlen(const char *str, size_t maxlen);
int OPENSSL_strtoul(const char *str, char **endptr, int base, unsigned long *num);
int OPENSSL_buf2hexstr_ex(char *str, size_t str_n, size_t *strlength,
    const unsigned char *buf, size_t buflen,
    const char sep);
char *OPENSSL_buf2hexstr(const unsigned char *buf, long buflen);
int OPENSSL_hexstr2buf_ex(unsigned char *buf, size_t buf_n, size_t *buflen,
    const char *str, const char sep);
unsigned char *OPENSSL_hexstr2buf(const char *str, long *buflen);
int OPENSSL_hexchar2int(unsigned char c);
int OPENSSL_strcasecmp(const char *s1, const char *s2);
int OPENSSL_strncasecmp(const char *s1, const char *s2, size_t n);
unsigned int OPENSSL_version_major(void);
unsigned int OPENSSL_version_minor(void);
unsigned int OPENSSL_version_patch(void);
const char *OPENSSL_version_pre_release(void);
const char *OPENSSL_version_build_metadata(void);
unsigned long OpenSSL_version_num(void);
const char *OpenSSL_version(int type);
const char *OPENSSL_info(int type);
int OPENSSL_issetugid(void);
struct crypto_ex_data_st {
    OSSL_LIB_CTX *ctx;
    struct stack_st_void *sk;
};
struct stack_st_void; typedef int (*sk_void_compfunc)(const void *const *a, const void *const *b); typedef void (*sk_void_freefunc)(void * a); typedef void *(*sk_void_copyfunc)(const void *a); static __attribute__((unused)) inline void *ossl_check_void_type(void *ptr) { return ptr; } static __attribute__((unused)) inline const OPENSSL_STACK *ossl_check_const_void_sk_type(const struct stack_st_void *sk) { return (const OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_STACK *ossl_check_void_sk_type(struct stack_st_void *sk) { return (OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_sk_compfunc ossl_check_void_compfunc_type(sk_void_compfunc cmp) { return (OPENSSL_sk_compfunc)cmp; } static __attribute__((unused)) inline OPENSSL_sk_copyfunc ossl_check_void_copyfunc_type(sk_void_copyfunc cpy) { return (OPENSSL_sk_copyfunc)cpy; } static __attribute__((unused)) inline OPENSSL_sk_freefunc ossl_check_void_freefunc_type(sk_void_freefunc fr) { return (OPENSSL_sk_freefunc)fr; }
typedef void CRYPTO_EX_new(void *parent, void *ptr, CRYPTO_EX_DATA *ad,
    int idx, long argl, void *argp);
typedef void CRYPTO_EX_free(void *parent, void *ptr, CRYPTO_EX_DATA *ad,
    int idx, long argl, void *argp);
typedef int CRYPTO_EX_dup(CRYPTO_EX_DATA *to, const CRYPTO_EX_DATA *from,
    void **from_d, int idx, long argl, void *argp);
 int CRYPTO_get_ex_new_index(int class_index, long argl, void *argp,
    CRYPTO_EX_new *new_func,
    CRYPTO_EX_dup *dup_func,
    CRYPTO_EX_free *free_func);
int CRYPTO_free_ex_index(int class_index, int idx);
int CRYPTO_new_ex_data(int class_index, void *obj, CRYPTO_EX_DATA *ad);
int CRYPTO_dup_ex_data(int class_index, CRYPTO_EX_DATA *to,
    const CRYPTO_EX_DATA *from);
void CRYPTO_free_ex_data(int class_index, void *obj, CRYPTO_EX_DATA *ad);
int CRYPTO_alloc_ex_data(int class_index, void *obj, CRYPTO_EX_DATA *ad,
    int idx);
int CRYPTO_set_ex_data(CRYPTO_EX_DATA *ad, int idx, void *val);
void *CRYPTO_get_ex_data(const CRYPTO_EX_DATA *ad, int idx);
typedef struct crypto_threadid_st {
    int dummy;
} CRYPTO_THREADID;
typedef void *(*CRYPTO_malloc_fn)(size_t num, const char *file, int line);
typedef void *(*CRYPTO_realloc_fn)(void *addr, size_t num, const char *file,
    int line);
typedef void (*CRYPTO_free_fn)(void *addr, const char *file, int line);
int CRYPTO_set_mem_functions(CRYPTO_malloc_fn malloc_fn,
    CRYPTO_realloc_fn realloc_fn,
    CRYPTO_free_fn free_fn);
void CRYPTO_get_mem_functions(CRYPTO_malloc_fn *malloc_fn,
    CRYPTO_realloc_fn *realloc_fn,
    CRYPTO_free_fn *free_fn);
__attribute__((__malloc__)) void *CRYPTO_malloc(size_t num, const char *file, int line);
__attribute__((__malloc__)) void *CRYPTO_zalloc(size_t num, const char *file, int line);
__attribute__((__malloc__)) void *CRYPTO_aligned_alloc(size_t num, size_t align,
    void **freeptr, const char *file,
    int line);
void *CRYPTO_memdup(const void *str, size_t siz, const char *file, int line);
char *CRYPTO_strdup(const char *str, const char *file, int line);
char *CRYPTO_strndup(const char *str, size_t s, const char *file, int line);
void CRYPTO_free(void *ptr, const char *file, int line);
void CRYPTO_clear_free(void *ptr, size_t num, const char *file, int line);
void *CRYPTO_realloc(void *addr, size_t num, const char *file, int line);
void *CRYPTO_clear_realloc(void *addr, size_t old_num, size_t num,
    const char *file, int line);
int CRYPTO_secure_malloc_init(size_t sz, size_t minsize);
int CRYPTO_secure_malloc_done(void);
__attribute__((__malloc__)) void *CRYPTO_secure_malloc(size_t num, const char *file, int line);
__attribute__((__malloc__)) void *CRYPTO_secure_zalloc(size_t num, const char *file, int line);
void CRYPTO_secure_free(void *ptr, const char *file, int line);
void CRYPTO_secure_clear_free(void *ptr, size_t num,
    const char *file, int line);
int CRYPTO_secure_allocated(const void *ptr);
int CRYPTO_secure_malloc_initialized(void);
size_t CRYPTO_secure_actual_size(void *ptr);
size_t CRYPTO_secure_used(void);
void OPENSSL_cleanse(void *ptr, size_t len);
_Noreturn void OPENSSL_die(const char *assertion, const char *file, int line);
int OPENSSL_isservice(void);
void OPENSSL_init(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void OPENSSL_fork_prepare(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void OPENSSL_fork_parent(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void OPENSSL_fork_child(void);
struct tm *OPENSSL_gmtime(const time_t *timer, struct tm *result);
int OPENSSL_gmtime_adj(struct tm *tm, int offset_day, long offset_sec);
int OPENSSL_gmtime_diff(int *pday, int *psec,
    const struct tm *from, const struct tm *to);
int CRYPTO_memcmp(const void *in_a, const void *in_b, size_t len);
void OPENSSL_cleanup(void);
int OPENSSL_init_crypto(uint64_t opts, const OPENSSL_INIT_SETTINGS *settings);
int OPENSSL_atexit(void (*handler)(void));
void OPENSSL_thread_stop(void);
void OPENSSL_thread_stop_ex(OSSL_LIB_CTX *ctx);
OPENSSL_INIT_SETTINGS *OPENSSL_INIT_new(void);
int OPENSSL_INIT_set_config_filename(OPENSSL_INIT_SETTINGS *settings,
    const char *config_filename);
void OPENSSL_INIT_set_config_file_flags(OPENSSL_INIT_SETTINGS *settings,
    unsigned long flags);
int OPENSSL_INIT_set_config_appname(OPENSSL_INIT_SETTINGS *settings,
    const char *config_appname);
void OPENSSL_INIT_free(OPENSSL_INIT_SETTINGS *settings);
typedef pthread_once_t CRYPTO_ONCE;
typedef pthread_key_t CRYPTO_THREAD_LOCAL;
typedef pthread_t CRYPTO_THREAD_ID;
int CRYPTO_THREAD_run_once(CRYPTO_ONCE *once, void (*init)(void));
int CRYPTO_THREAD_init_local(CRYPTO_THREAD_LOCAL *key, void (*cleanup)(void *));
void *CRYPTO_THREAD_get_local(CRYPTO_THREAD_LOCAL *key);
int CRYPTO_THREAD_set_local(CRYPTO_THREAD_LOCAL *key, void *val);
int CRYPTO_THREAD_cleanup_local(CRYPTO_THREAD_LOCAL *key);
CRYPTO_THREAD_ID CRYPTO_THREAD_get_current_id(void);
int CRYPTO_THREAD_compare_id(CRYPTO_THREAD_ID a, CRYPTO_THREAD_ID b);
OSSL_LIB_CTX *OSSL_LIB_CTX_new(void);
OSSL_LIB_CTX *OSSL_LIB_CTX_new_from_dispatch(const OSSL_CORE_HANDLE *handle,
    const OSSL_DISPATCH *in);
OSSL_LIB_CTX *OSSL_LIB_CTX_new_child(const OSSL_CORE_HANDLE *handle,
    const OSSL_DISPATCH *in);
int OSSL_LIB_CTX_load_config(OSSL_LIB_CTX *ctx, const char *config_file);
void OSSL_LIB_CTX_free(OSSL_LIB_CTX *);
OSSL_LIB_CTX *OSSL_LIB_CTX_get0_global_default(void);
OSSL_LIB_CTX *OSSL_LIB_CTX_set0_default(OSSL_LIB_CTX *libctx);
int OSSL_LIB_CTX_get_conf_diagnostics(OSSL_LIB_CTX *ctx);
void OSSL_LIB_CTX_set_conf_diagnostics(OSSL_LIB_CTX *ctx, int value);
void OSSL_sleep(uint64_t millis);
void *OSSL_LIB_CTX_get_data(OSSL_LIB_CTX *ctx, int index);
       
COMP_CTX *COMP_CTX_new(COMP_METHOD *meth);
const COMP_METHOD *COMP_CTX_get_method(const COMP_CTX *ctx);
int COMP_CTX_get_type(const COMP_CTX *comp);
int COMP_get_type(const COMP_METHOD *meth);
const char *COMP_get_name(const COMP_METHOD *meth);
void COMP_CTX_free(COMP_CTX *ctx);
int COMP_compress_block(COMP_CTX *ctx, unsigned char *out, int olen,
    unsigned char *in, int ilen);
int COMP_expand_block(COMP_CTX *ctx, unsigned char *out, int olen,
    unsigned char *in, int ilen);
COMP_METHOD *COMP_zlib(void);
COMP_METHOD *COMP_zlib_oneshot(void);
COMP_METHOD *COMP_brotli(void);
COMP_METHOD *COMP_brotli_oneshot(void);
COMP_METHOD *COMP_zstd(void);
COMP_METHOD *COMP_zstd_oneshot(void);
typedef struct ssl_comp_st SSL_COMP;
struct stack_st_SSL_COMP; typedef int (*sk_SSL_COMP_compfunc)(const SSL_COMP *const *a, const SSL_COMP *const *b); typedef void (*sk_SSL_COMP_freefunc)(SSL_COMP * a); typedef SSL_COMP *(*sk_SSL_COMP_copyfunc)(const SSL_COMP *a); static __attribute__((unused)) inline SSL_COMP *ossl_check_SSL_COMP_type(SSL_COMP *ptr) { return ptr; } static __attribute__((unused)) inline const OPENSSL_STACK *ossl_check_const_SSL_COMP_sk_type(const struct stack_st_SSL_COMP *sk) { return (const OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_STACK *ossl_check_SSL_COMP_sk_type(struct stack_st_SSL_COMP *sk) { return (OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_sk_compfunc ossl_check_SSL_COMP_compfunc_type(sk_SSL_COMP_compfunc cmp) { return (OPENSSL_sk_compfunc)cmp; } static __attribute__((unused)) inline OPENSSL_sk_copyfunc ossl_check_SSL_COMP_copyfunc_type(sk_SSL_COMP_copyfunc cpy) { return (OPENSSL_sk_copyfunc)cpy; } static __attribute__((unused)) inline OPENSSL_sk_freefunc ossl_check_SSL_COMP_freefunc_type(sk_SSL_COMP_freefunc fr) { return (OPENSSL_sk_freefunc)fr; }
       
       
typedef union bio_addr_st BIO_ADDR;
typedef struct bio_addrinfo_st BIO_ADDRINFO;
int BIO_get_new_index(void);
void BIO_set_flags(BIO *b, int flags);
int BIO_test_flags(const BIO *b, int flags);
void BIO_clear_flags(BIO *b, int flags);
typedef long (*BIO_callback_fn)(BIO *b, int oper, const char *argp, int argi,
    long argl, long ret);
__attribute__((deprecated("Since OpenSSL " "3.0"))) BIO_callback_fn BIO_get_callback(const BIO *b);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void BIO_set_callback(BIO *b, BIO_callback_fn callback);
__attribute__((deprecated("Since OpenSSL " "3.0"))) long BIO_debug_callback(BIO *bio, int cmd,
    const char *argp, int argi,
    long argl, long ret);
typedef long (*BIO_callback_fn_ex)(BIO *b, int oper, const char *argp,
    size_t len, int argi,
    long argl, int ret, size_t *processed);
BIO_callback_fn_ex BIO_get_callback_ex(const BIO *b);
void BIO_set_callback_ex(BIO *b, BIO_callback_fn_ex callback);
long BIO_debug_callback_ex(BIO *bio, int oper, const char *argp, size_t len,
    int argi, long argl, int ret, size_t *processed);
char *BIO_get_callback_arg(const BIO *b);
void BIO_set_callback_arg(BIO *b, char *arg);
typedef struct bio_method_st BIO_METHOD;
const char *BIO_method_name(const BIO *b);
int BIO_method_type(const BIO *b);
typedef int BIO_info_cb(BIO *, int, int);
typedef BIO_info_cb bio_info_cb;
struct stack_st_BIO; typedef int (*sk_BIO_compfunc)(const BIO *const *a, const BIO *const *b); typedef void (*sk_BIO_freefunc)(BIO * a); typedef BIO *(*sk_BIO_copyfunc)(const BIO *a); static __attribute__((unused)) inline BIO *ossl_check_BIO_type(BIO *ptr) { return ptr; } static __attribute__((unused)) inline const OPENSSL_STACK *ossl_check_const_BIO_sk_type(const struct stack_st_BIO *sk) { return (const OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_STACK *ossl_check_BIO_sk_type(struct stack_st_BIO *sk) { return (OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_sk_compfunc ossl_check_BIO_compfunc_type(sk_BIO_compfunc cmp) { return (OPENSSL_sk_compfunc)cmp; } static __attribute__((unused)) inline OPENSSL_sk_copyfunc ossl_check_BIO_copyfunc_type(sk_BIO_copyfunc cpy) { return (OPENSSL_sk_copyfunc)cpy; } static __attribute__((unused)) inline OPENSSL_sk_freefunc ossl_check_BIO_freefunc_type(sk_BIO_freefunc fr) { return (OPENSSL_sk_freefunc)fr; }
typedef int asn1_ps_func(BIO *b, unsigned char **pbuf, int *plen,
    void *parg);
typedef void (*BIO_dgram_sctp_notification_handler_fn)(BIO *b,
    void *context,
    void *buf);
typedef struct bio_msg_st {
    void *data;
    size_t data_len;
    BIO_ADDR *peer, *local;
    uint64_t flags;
} BIO_MSG;
typedef struct bio_mmsg_cb_args_st {
    BIO_MSG *msg;
    size_t stride, num_msg;
    uint64_t flags;
    size_t *msgs_processed;
} BIO_MMSG_CB_ARGS;
typedef struct bio_poll_descriptor_st {
    uint32_t type;
    union {
        int fd;
        void *custom;
        uintptr_t custom_ui;
        SSL *ssl;
    } value;
} BIO_POLL_DESCRIPTOR;
size_t BIO_ctrl_pending(BIO *b);
size_t BIO_ctrl_wpending(BIO *b);
size_t BIO_ctrl_get_write_guarantee(BIO *b);
size_t BIO_ctrl_get_read_request(BIO *b);
int BIO_ctrl_reset_read_request(BIO *b);
int BIO_set_ex_data(BIO *bio, int idx, void *data);
void *BIO_get_ex_data(const BIO *bio, int idx);
uint64_t BIO_number_read(BIO *bio);
uint64_t BIO_number_written(BIO *bio);
int BIO_asn1_set_prefix(BIO *b, asn1_ps_func *prefix,
    asn1_ps_func *prefix_free);
int BIO_asn1_get_prefix(BIO *b, asn1_ps_func **pprefix,
    asn1_ps_func **pprefix_free);
int BIO_asn1_set_suffix(BIO *b, asn1_ps_func *suffix,
    asn1_ps_func *suffix_free);
int BIO_asn1_get_suffix(BIO *b, asn1_ps_func **psuffix,
    asn1_ps_func **psuffix_free);
const BIO_METHOD *BIO_s_file(void);
BIO *BIO_new_file(const char *filename, const char *mode);
BIO *BIO_new_from_core_bio(OSSL_LIB_CTX *libctx, OSSL_CORE_BIO *corebio);
BIO *BIO_new_fp(FILE *stream, int close_flag);
BIO *BIO_new_ex(OSSL_LIB_CTX *libctx, const BIO_METHOD *method);
BIO *BIO_new(const BIO_METHOD *type);
int BIO_free(BIO *a);
void BIO_set_data(BIO *a, void *ptr);
void *BIO_get_data(BIO *a);
void BIO_set_init(BIO *a, int init);
int BIO_get_init(BIO *a);
void BIO_set_shutdown(BIO *a, int shut);
int BIO_get_shutdown(BIO *a);
void BIO_vfree(BIO *a);
int BIO_up_ref(BIO *a);
int BIO_read(BIO *b, void *data, int dlen);
int BIO_read_ex(BIO *b, void *data, size_t dlen, size_t *readbytes);
 int BIO_recvmmsg(BIO *b, BIO_MSG *msg,
    size_t stride, size_t num_msg, uint64_t flags,
    size_t *msgs_processed);
int BIO_gets(BIO *bp, char *buf, int size);
int BIO_get_line(BIO *bio, char *buf, int size);
int BIO_write(BIO *b, const void *data, int dlen);
int BIO_write_ex(BIO *b, const void *data, size_t dlen, size_t *written);
 int BIO_sendmmsg(BIO *b, BIO_MSG *msg,
    size_t stride, size_t num_msg, uint64_t flags,
    size_t *msgs_processed);
 int BIO_get_rpoll_descriptor(BIO *b, BIO_POLL_DESCRIPTOR *desc);
 int BIO_get_wpoll_descriptor(BIO *b, BIO_POLL_DESCRIPTOR *desc);
int BIO_puts(BIO *bp, const char *buf);
int BIO_indent(BIO *b, int indent, int max);
long BIO_ctrl(BIO *bp, int cmd, long larg, void *parg);
long BIO_callback_ctrl(BIO *b, int cmd, BIO_info_cb *fp);
void *BIO_ptr_ctrl(BIO *bp, int cmd, long larg);
long BIO_int_ctrl(BIO *bp, int cmd, long larg, int iarg);
BIO *BIO_push(BIO *b, BIO *append);
BIO *BIO_pop(BIO *b);
void BIO_free_all(BIO *a);
BIO *BIO_find_type(BIO *b, int bio_type);
BIO *BIO_next(BIO *b);
void BIO_set_next(BIO *b, BIO *next);
BIO *BIO_get_retry_BIO(BIO *bio, int *reason);
int BIO_get_retry_reason(BIO *bio);
void BIO_set_retry_reason(BIO *bio, int reason);
BIO *BIO_dup_chain(BIO *in);
int BIO_nread0(BIO *bio, char **buf);
int BIO_nread(BIO *bio, char **buf, int num);
int BIO_nwrite0(BIO *bio, char **buf);
int BIO_nwrite(BIO *bio, char **buf, int num);
const BIO_METHOD *BIO_s_mem(void);
const BIO_METHOD *BIO_s_dgram_mem(void);
const BIO_METHOD *BIO_s_secmem(void);
BIO *BIO_new_mem_buf(const void *buf, int len);
const BIO_METHOD *BIO_s_socket(void);
const BIO_METHOD *BIO_s_connect(void);
const BIO_METHOD *BIO_s_accept(void);
const BIO_METHOD *BIO_s_fd(void);
const BIO_METHOD *BIO_s_log(void);
const BIO_METHOD *BIO_s_bio(void);
const BIO_METHOD *BIO_s_null(void);
const BIO_METHOD *BIO_f_null(void);
const BIO_METHOD *BIO_f_buffer(void);
const BIO_METHOD *BIO_f_readbuffer(void);
const BIO_METHOD *BIO_f_linebuffer(void);
const BIO_METHOD *BIO_f_nbio_test(void);
const BIO_METHOD *BIO_f_prefix(void);
const BIO_METHOD *BIO_s_core(void);
const BIO_METHOD *BIO_s_dgram_pair(void);
const BIO_METHOD *BIO_s_datagram(void);
int BIO_dgram_non_fatal_error(int error);
BIO *BIO_new_dgram(int fd, int close_flag);
int BIO_sock_should_retry(int i);
int BIO_sock_non_fatal_error(int error);
int BIO_err_is_non_fatal(unsigned int errcode);
int BIO_socket_wait(int fd, int for_read, time_t max_time);
int BIO_wait(BIO *bio, time_t max_time, unsigned int nap_milliseconds);
int BIO_do_connect_retry(BIO *bio, int timeout, int nap_milliseconds);
int BIO_fd_should_retry(int i);
int BIO_fd_non_fatal_error(int error);
int BIO_dump_cb(int (*cb)(const void *data, size_t len, void *u),
    void *u, const void *s, int len);
int BIO_dump_indent_cb(int (*cb)(const void *data, size_t len, void *u),
    void *u, const void *s, int len, int indent);
int BIO_dump(BIO *b, const void *bytes, int len);
int BIO_dump_indent(BIO *b, const void *bytes, int len, int indent);
int BIO_dump_fp(FILE *fp, const void *s, int len);
int BIO_dump_indent_fp(FILE *fp, const void *s, int len, int indent);
int BIO_hex_string(BIO *out, int indent, int width, const void *data,
    int datalen);
BIO_ADDR *BIO_ADDR_new(void);
int BIO_ADDR_copy(BIO_ADDR *dst, const BIO_ADDR *src);
BIO_ADDR *BIO_ADDR_dup(const BIO_ADDR *ap);
int BIO_ADDR_rawmake(BIO_ADDR *ap, int family,
    const void *where, size_t wherelen, unsigned short port);
void BIO_ADDR_free(BIO_ADDR *);
void BIO_ADDR_clear(BIO_ADDR *ap);
int BIO_ADDR_family(const BIO_ADDR *ap);
int BIO_ADDR_rawaddress(const BIO_ADDR *ap, void *p, size_t *l);
unsigned short BIO_ADDR_rawport(const BIO_ADDR *ap);
char *BIO_ADDR_hostname_string(const BIO_ADDR *ap, int numeric);
char *BIO_ADDR_service_string(const BIO_ADDR *ap, int numeric);
char *BIO_ADDR_path_string(const BIO_ADDR *ap);
const BIO_ADDRINFO *BIO_ADDRINFO_next(const BIO_ADDRINFO *bai);
int BIO_ADDRINFO_family(const BIO_ADDRINFO *bai);
int BIO_ADDRINFO_socktype(const BIO_ADDRINFO *bai);
int BIO_ADDRINFO_protocol(const BIO_ADDRINFO *bai);
const BIO_ADDR *BIO_ADDRINFO_address(const BIO_ADDRINFO *bai);
void BIO_ADDRINFO_free(BIO_ADDRINFO *bai);
enum BIO_hostserv_priorities {
    BIO_PARSE_PRIO_HOST,
    BIO_PARSE_PRIO_SERV
};
int BIO_parse_hostserv(const char *hostserv, char **host, char **service,
    enum BIO_hostserv_priorities hostserv_prio);
enum BIO_lookup_type {
    BIO_LOOKUP_CLIENT,
    BIO_LOOKUP_SERVER
};
int BIO_lookup(const char *host, const char *service,
    enum BIO_lookup_type lookup_type,
    int family, int socktype, BIO_ADDRINFO **res);
int BIO_lookup_ex(const char *host, const char *service,
    int lookup_type, int family, int socktype, int protocol,
    BIO_ADDRINFO **res);
int BIO_sock_error(int sock);
int BIO_socket_ioctl(int fd, long type, void *arg);
int BIO_socket_nbio(int fd, int mode);
int BIO_sock_init(void);
int BIO_set_tcp_ndelay(int sock, int turn_on);
__attribute__((deprecated("Since OpenSSL " "1.1.0"))) struct hostent *BIO_gethostbyname(const char *name);
__attribute__((deprecated("Since OpenSSL " "1.1.0"))) int BIO_get_port(const char *str, unsigned short *port_ptr);
__attribute__((deprecated("Since OpenSSL " "1.1.0"))) int BIO_get_host_ip(const char *str, unsigned char *ip);
__attribute__((deprecated("Since OpenSSL " "1.1.0"))) int BIO_get_accept_socket(char *host_port, int mode);
__attribute__((deprecated("Since OpenSSL " "1.1.0"))) int BIO_accept(int sock, char **ip_port);
union BIO_sock_info_u {
    BIO_ADDR *addr;
};
enum BIO_sock_info_type {
    BIO_SOCK_INFO_ADDRESS
};
int BIO_sock_info(int sock,
    enum BIO_sock_info_type type, union BIO_sock_info_u *info);
int BIO_socket(int domain, int socktype, int protocol, int options);
int BIO_connect(int sock, const BIO_ADDR *addr, int options);
int BIO_bind(int sock, const BIO_ADDR *addr, int options);
int BIO_listen(int sock, const BIO_ADDR *addr, int options);
int BIO_accept_ex(int accept_sock, BIO_ADDR *addr, int options);
int BIO_closesocket(int sock);
BIO *BIO_new_socket(int sock, int close_flag);
BIO *BIO_new_connect(const char *host_port);
BIO *BIO_new_accept(const char *host_port);
BIO *BIO_new_fd(int fd, int close_flag);
int BIO_new_bio_pair(BIO **bio1, size_t writebuf1,
    BIO **bio2, size_t writebuf2);
int BIO_new_bio_dgram_pair(BIO **bio1, size_t writebuf1,
    BIO **bio2, size_t writebuf2);
void BIO_copy_next_retry(BIO *b);
int BIO_printf(BIO *bio, const char *format, ...)
    __attribute__((__format__(__gnu_printf__, 2, 3)));
int BIO_vprintf(BIO *bio, const char *format, va_list args)
    __attribute__((__format__(__gnu_printf__, 2, 0)));
int BIO_snprintf(char *buf, size_t n, const char *format, ...)
    __attribute__((__format__(__gnu_printf__, 3, 4)));
int BIO_vsnprintf(char *buf, size_t n, const char *format, va_list args)
    __attribute__((__format__(__gnu_printf__, 3, 0)));
BIO_METHOD *BIO_meth_new(int type, const char *name);
void BIO_meth_free(BIO_METHOD *biom);
int BIO_meth_set_write(BIO_METHOD *biom,
    int (*write)(BIO *, const char *, int));
int BIO_meth_set_write_ex(BIO_METHOD *biom,
    int (*bwrite)(BIO *, const char *, size_t, size_t *));
int BIO_meth_set_sendmmsg(BIO_METHOD *biom,
    int (*f)(BIO *, BIO_MSG *, size_t, size_t,
        uint64_t, size_t *));
int BIO_meth_set_read(BIO_METHOD *biom,
    int (*read)(BIO *, char *, int));
int BIO_meth_set_read_ex(BIO_METHOD *biom,
    int (*bread)(BIO *, char *, size_t, size_t *));
int BIO_meth_set_recvmmsg(BIO_METHOD *biom,
    int (*f)(BIO *, BIO_MSG *, size_t, size_t,
        uint64_t, size_t *));
int BIO_meth_set_puts(BIO_METHOD *biom,
    int (*puts)(BIO *, const char *));
int BIO_meth_set_gets(BIO_METHOD *biom,
    int (*ossl_gets)(BIO *, char *, int));
int BIO_meth_set_ctrl(BIO_METHOD *biom,
    long (*ctrl)(BIO *, int, long, void *));
int BIO_meth_set_create(BIO_METHOD *biom, int (*create)(BIO *));
int BIO_meth_set_destroy(BIO_METHOD *biom, int (*destroy)(BIO *));
int BIO_meth_set_callback_ctrl(BIO_METHOD *biom,
    long (*callback_ctrl)(BIO *, int,
        BIO_info_cb *));
__attribute__((deprecated("Since OpenSSL " "3.5"))) int (*BIO_meth_get_write(const BIO_METHOD *biom))(BIO *, const char *,
    int);
__attribute__((deprecated("Since OpenSSL " "3.5"))) int (*BIO_meth_get_write_ex(const BIO_METHOD *biom))(BIO *, const char *,
    size_t, size_t *);
__attribute__((deprecated("Since OpenSSL " "3.5"))) int (*BIO_meth_get_sendmmsg(const BIO_METHOD *biom))(BIO *, BIO_MSG *,
    size_t, size_t,
    uint64_t, size_t *);
__attribute__((deprecated("Since OpenSSL " "3.5"))) int (*BIO_meth_get_read(const BIO_METHOD *biom))(BIO *, char *, int);
__attribute__((deprecated("Since OpenSSL " "3.5"))) int (*BIO_meth_get_read_ex(const BIO_METHOD *biom))(BIO *, char *,
    size_t, size_t *);
__attribute__((deprecated("Since OpenSSL " "3.5"))) int (*BIO_meth_get_recvmmsg(const BIO_METHOD *biom))(BIO *, BIO_MSG *,
    size_t, size_t,
    uint64_t, size_t *);
__attribute__((deprecated("Since OpenSSL " "3.5"))) int (*BIO_meth_get_puts(const BIO_METHOD *biom))(BIO *, const char *);
__attribute__((deprecated("Since OpenSSL " "3.5"))) int (*BIO_meth_get_gets(const BIO_METHOD *biom))(BIO *, char *, int);
__attribute__((deprecated("Since OpenSSL " "3.5"))) long (*BIO_meth_get_ctrl(const BIO_METHOD *biom))(BIO *, int,
    long, void *);
__attribute__((deprecated("Since OpenSSL " "3.5"))) int (*BIO_meth_get_create(const BIO_METHOD *bion))(BIO *);
__attribute__((deprecated("Since OpenSSL " "3.5"))) int (*BIO_meth_get_destroy(const BIO_METHOD *biom))(BIO *);
__attribute__((deprecated("Since OpenSSL " "3.5"))) long (*BIO_meth_get_callback_ctrl(const BIO_METHOD *biom))(BIO *, int,
    BIO_info_cb *);
       
       
       
struct buf_mem_st {
    size_t length;
    char *data;
    size_t max;
    unsigned long flags;
};
BUF_MEM *BUF_MEM_new(void);
BUF_MEM *BUF_MEM_new_ex(unsigned long flags);
void BUF_MEM_free(BUF_MEM *a);
size_t BUF_MEM_grow(BUF_MEM *str, size_t len);
size_t BUF_MEM_grow_clean(BUF_MEM *str, size_t len);
void BUF_reverse(unsigned char *out, const unsigned char *in, size_t siz);
       
       
       
       
       
       
void BN_set_flags(BIGNUM *b, int n);
int BN_get_flags(const BIGNUM *b, int n);
void BN_with_flags(BIGNUM *dest, const BIGNUM *b, int flags);
int BN_GENCB_call(BN_GENCB *cb, int a, int b);
BN_GENCB *BN_GENCB_new(void);
void BN_GENCB_free(BN_GENCB *cb);
void BN_GENCB_set_old(BN_GENCB *gencb, void (*callback)(int, int, void *),
    void *cb_arg);
void BN_GENCB_set(BN_GENCB *gencb, int (*callback)(int, int, BN_GENCB *),
    void *cb_arg);
void *BN_GENCB_get_arg(BN_GENCB *cb);
int BN_abs_is_word(const BIGNUM *a, const unsigned long w);
int BN_is_zero(const BIGNUM *a);
int BN_is_one(const BIGNUM *a);
int BN_is_word(const BIGNUM *a, const unsigned long w);
int BN_is_odd(const BIGNUM *a);
void BN_zero_ex(BIGNUM *a);
const BIGNUM *BN_value_one(void);
char *BN_options(void);
BN_CTX *BN_CTX_new_ex(OSSL_LIB_CTX *ctx);
BN_CTX *BN_CTX_new(void);
BN_CTX *BN_CTX_secure_new_ex(OSSL_LIB_CTX *ctx);
BN_CTX *BN_CTX_secure_new(void);
void BN_CTX_free(BN_CTX *c);
void BN_CTX_start(BN_CTX *ctx);
BIGNUM *BN_CTX_get(BN_CTX *ctx);
void BN_CTX_end(BN_CTX *ctx);
int BN_rand_ex(BIGNUM *rnd, int bits, int top, int bottom,
    unsigned int strength, BN_CTX *ctx);
int BN_rand(BIGNUM *rnd, int bits, int top, int bottom);
int BN_priv_rand_ex(BIGNUM *rnd, int bits, int top, int bottom,
    unsigned int strength, BN_CTX *ctx);
int BN_priv_rand(BIGNUM *rnd, int bits, int top, int bottom);
int BN_rand_range_ex(BIGNUM *r, const BIGNUM *range, unsigned int strength,
    BN_CTX *ctx);
int BN_rand_range(BIGNUM *rnd, const BIGNUM *range);
int BN_priv_rand_range_ex(BIGNUM *r, const BIGNUM *range,
    unsigned int strength, BN_CTX *ctx);
int BN_priv_rand_range(BIGNUM *rnd, const BIGNUM *range);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int BN_pseudo_rand(BIGNUM *rnd, int bits, int top, int bottom);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int BN_pseudo_rand_range(BIGNUM *rnd, const BIGNUM *range);
int BN_num_bits(const BIGNUM *a);
int BN_num_bits_word(unsigned long l);
int BN_security_bits(int L, int N);
BIGNUM *BN_new(void);
BIGNUM *BN_secure_new(void);
void BN_clear_free(BIGNUM *a);
BIGNUM *BN_copy(BIGNUM *a, const BIGNUM *b);
void BN_swap(BIGNUM *a, BIGNUM *b);
BIGNUM *BN_bin2bn(const unsigned char *s, int len, BIGNUM *ret);
BIGNUM *BN_signed_bin2bn(const unsigned char *s, int len, BIGNUM *ret);
int BN_bn2bin(const BIGNUM *a, unsigned char *to);
int BN_bn2binpad(const BIGNUM *a, unsigned char *to, int tolen);
int BN_signed_bn2bin(const BIGNUM *a, unsigned char *to, int tolen);
BIGNUM *BN_lebin2bn(const unsigned char *s, int len, BIGNUM *ret);
BIGNUM *BN_signed_lebin2bn(const unsigned char *s, int len, BIGNUM *ret);
int BN_bn2lebinpad(const BIGNUM *a, unsigned char *to, int tolen);
int BN_signed_bn2lebin(const BIGNUM *a, unsigned char *to, int tolen);
BIGNUM *BN_native2bn(const unsigned char *s, int len, BIGNUM *ret);
BIGNUM *BN_signed_native2bn(const unsigned char *s, int len, BIGNUM *ret);
int BN_bn2nativepad(const BIGNUM *a, unsigned char *to, int tolen);
int BN_signed_bn2native(const BIGNUM *a, unsigned char *to, int tolen);
BIGNUM *BN_mpi2bn(const unsigned char *s, int len, BIGNUM *ret);
int BN_bn2mpi(const BIGNUM *a, unsigned char *to);
int BN_sub(BIGNUM *r, const BIGNUM *a, const BIGNUM *b);
int BN_usub(BIGNUM *r, const BIGNUM *a, const BIGNUM *b);
int BN_uadd(BIGNUM *r, const BIGNUM *a, const BIGNUM *b);
int BN_add(BIGNUM *r, const BIGNUM *a, const BIGNUM *b);
int BN_mul(BIGNUM *r, const BIGNUM *a, const BIGNUM *b, BN_CTX *ctx);
int BN_sqr(BIGNUM *r, const BIGNUM *a, BN_CTX *ctx);
void BN_set_negative(BIGNUM *b, int n);
int BN_is_negative(const BIGNUM *b);
int BN_div(BIGNUM *dv, BIGNUM *rem, const BIGNUM *m, const BIGNUM *d,
    BN_CTX *ctx);
int BN_nnmod(BIGNUM *r, const BIGNUM *m, const BIGNUM *d, BN_CTX *ctx);
int BN_mod_add(BIGNUM *r, const BIGNUM *a, const BIGNUM *b, const BIGNUM *m,
    BN_CTX *ctx);
int BN_mod_add_quick(BIGNUM *r, const BIGNUM *a, const BIGNUM *b,
    const BIGNUM *m);
int BN_mod_sub(BIGNUM *r, const BIGNUM *a, const BIGNUM *b, const BIGNUM *m,
    BN_CTX *ctx);
int BN_mod_sub_quick(BIGNUM *r, const BIGNUM *a, const BIGNUM *b,
    const BIGNUM *m);
int BN_mod_mul(BIGNUM *r, const BIGNUM *a, const BIGNUM *b, const BIGNUM *m,
    BN_CTX *ctx);
int BN_mod_sqr(BIGNUM *r, const BIGNUM *a, const BIGNUM *m, BN_CTX *ctx);
int BN_mod_lshift1(BIGNUM *r, const BIGNUM *a, const BIGNUM *m, BN_CTX *ctx);
int BN_mod_lshift1_quick(BIGNUM *r, const BIGNUM *a, const BIGNUM *m);
int BN_mod_lshift(BIGNUM *r, const BIGNUM *a, int n, const BIGNUM *m,
    BN_CTX *ctx);
int BN_mod_lshift_quick(BIGNUM *r, const BIGNUM *a, int n, const BIGNUM *m);
unsigned long BN_mod_word(const BIGNUM *a, unsigned long w);
unsigned long BN_div_word(BIGNUM *a, unsigned long w);
int BN_mul_word(BIGNUM *a, unsigned long w);
int BN_add_word(BIGNUM *a, unsigned long w);
int BN_sub_word(BIGNUM *a, unsigned long w);
int BN_set_word(BIGNUM *a, unsigned long w);
unsigned long BN_get_word(const BIGNUM *a);
int BN_cmp(const BIGNUM *a, const BIGNUM *b);
void BN_free(BIGNUM *a);
int BN_is_bit_set(const BIGNUM *a, int n);
int BN_lshift(BIGNUM *r, const BIGNUM *a, int n);
int BN_lshift1(BIGNUM *r, const BIGNUM *a);
int BN_exp(BIGNUM *r, const BIGNUM *a, const BIGNUM *p, BN_CTX *ctx);
int BN_mod_exp(BIGNUM *r, const BIGNUM *a, const BIGNUM *p,
    const BIGNUM *m, BN_CTX *ctx);
int BN_mod_exp_mont(BIGNUM *r, const BIGNUM *a, const BIGNUM *p,
    const BIGNUM *m, BN_CTX *ctx, BN_MONT_CTX *m_ctx);
int BN_mod_exp_mont_consttime(BIGNUM *rr, const BIGNUM *a, const BIGNUM *p,
    const BIGNUM *m, BN_CTX *ctx,
    BN_MONT_CTX *in_mont);
int BN_mod_exp_mont_word(BIGNUM *r, unsigned long a, const BIGNUM *p,
    const BIGNUM *m, BN_CTX *ctx, BN_MONT_CTX *m_ctx);
int BN_mod_exp2_mont(BIGNUM *r, const BIGNUM *a1, const BIGNUM *p1,
    const BIGNUM *a2, const BIGNUM *p2, const BIGNUM *m,
    BN_CTX *ctx, BN_MONT_CTX *m_ctx);
int BN_mod_exp_simple(BIGNUM *r, const BIGNUM *a, const BIGNUM *p,
    const BIGNUM *m, BN_CTX *ctx);
int BN_mod_exp_mont_consttime_x2(BIGNUM *rr1, const BIGNUM *a1, const BIGNUM *p1,
    const BIGNUM *m1, BN_MONT_CTX *in_mont1,
    BIGNUM *rr2, const BIGNUM *a2, const BIGNUM *p2,
    const BIGNUM *m2, BN_MONT_CTX *in_mont2,
    BN_CTX *ctx);
int BN_mask_bits(BIGNUM *a, int n);
int BN_print_fp(FILE *fp, const BIGNUM *a);
int BN_print(BIO *bio, const BIGNUM *a);
int BN_reciprocal(BIGNUM *r, const BIGNUM *m, int len, BN_CTX *ctx);
int BN_rshift(BIGNUM *r, const BIGNUM *a, int n);
int BN_rshift1(BIGNUM *r, const BIGNUM *a);
void BN_clear(BIGNUM *a);
BIGNUM *BN_dup(const BIGNUM *a);
int BN_ucmp(const BIGNUM *a, const BIGNUM *b);
int BN_set_bit(BIGNUM *a, int n);
int BN_clear_bit(BIGNUM *a, int n);
char *BN_bn2hex(const BIGNUM *a);
char *BN_bn2dec(const BIGNUM *a);
int BN_hex2bn(BIGNUM **a, const char *str);
int BN_dec2bn(BIGNUM **a, const char *str);
int BN_asc2bn(BIGNUM **a, const char *str);
int BN_gcd(BIGNUM *r, const BIGNUM *a, const BIGNUM *b, BN_CTX *ctx);
int BN_kronecker(const BIGNUM *a, const BIGNUM *b, BN_CTX *ctx);
int BN_are_coprime(BIGNUM *a, const BIGNUM *b, BN_CTX *ctx);
BIGNUM *BN_mod_inverse(BIGNUM *ret,
    const BIGNUM *a, const BIGNUM *n, BN_CTX *ctx);
BIGNUM *BN_mod_sqrt(BIGNUM *ret,
    const BIGNUM *a, const BIGNUM *n, BN_CTX *ctx);
void BN_consttime_swap(unsigned long swap, BIGNUM *a, BIGNUM *b, int nwords);
__attribute__((deprecated("Since OpenSSL " "0.9.8")))
BIGNUM *BN_generate_prime(BIGNUM *ret, int bits, int safe,
    const BIGNUM *add, const BIGNUM *rem,
    void (*callback)(int, int, void *),
    void *cb_arg);
__attribute__((deprecated("Since OpenSSL " "0.9.8")))
int BN_is_prime(const BIGNUM *p, int nchecks,
    void (*callback)(int, int, void *),
    BN_CTX *ctx, void *cb_arg);
__attribute__((deprecated("Since OpenSSL " "0.9.8")))
int BN_is_prime_fasttest(const BIGNUM *p, int nchecks,
    void (*callback)(int, int, void *),
    BN_CTX *ctx, void *cb_arg,
    int do_trial_division);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int BN_is_prime_ex(const BIGNUM *p, int nchecks, BN_CTX *ctx, BN_GENCB *cb);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int BN_is_prime_fasttest_ex(const BIGNUM *p, int nchecks, BN_CTX *ctx,
    int do_trial_division, BN_GENCB *cb);
int BN_generate_prime_ex2(BIGNUM *ret, int bits, int safe,
    const BIGNUM *add, const BIGNUM *rem, BN_GENCB *cb,
    BN_CTX *ctx);
int BN_generate_prime_ex(BIGNUM *ret, int bits, int safe, const BIGNUM *add,
    const BIGNUM *rem, BN_GENCB *cb);
int BN_check_prime(const BIGNUM *p, BN_CTX *ctx, BN_GENCB *cb);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int BN_X931_generate_Xpq(BIGNUM *Xp, BIGNUM *Xq, int nbits, BN_CTX *ctx);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int BN_X931_derive_prime_ex(BIGNUM *p, BIGNUM *p1, BIGNUM *p2,
    const BIGNUM *Xp, const BIGNUM *Xp1,
    const BIGNUM *Xp2, const BIGNUM *e, BN_CTX *ctx,
    BN_GENCB *cb);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int BN_X931_generate_prime_ex(BIGNUM *p, BIGNUM *p1, BIGNUM *p2, BIGNUM *Xp1,
    BIGNUM *Xp2, const BIGNUM *Xp, const BIGNUM *e,
    BN_CTX *ctx, BN_GENCB *cb);
BN_MONT_CTX *BN_MONT_CTX_new(void);
int BN_mod_mul_montgomery(BIGNUM *r, const BIGNUM *a, const BIGNUM *b,
    BN_MONT_CTX *mont, BN_CTX *ctx);
int BN_to_montgomery(BIGNUM *r, const BIGNUM *a, BN_MONT_CTX *mont,
    BN_CTX *ctx);
int BN_from_montgomery(BIGNUM *r, const BIGNUM *a, BN_MONT_CTX *mont,
    BN_CTX *ctx);
void BN_MONT_CTX_free(BN_MONT_CTX *mont);
int BN_MONT_CTX_set(BN_MONT_CTX *mont, const BIGNUM *mod, BN_CTX *ctx);
BN_MONT_CTX *BN_MONT_CTX_copy(BN_MONT_CTX *to, BN_MONT_CTX *from);
BN_MONT_CTX *BN_MONT_CTX_set_locked(BN_MONT_CTX **pmont, CRYPTO_RWLOCK *lock,
    const BIGNUM *mod, BN_CTX *ctx);
BN_BLINDING *BN_BLINDING_new(const BIGNUM *A, const BIGNUM *Ai, BIGNUM *mod);
void BN_BLINDING_free(BN_BLINDING *b);
int BN_BLINDING_update(BN_BLINDING *b, BN_CTX *ctx);
int BN_BLINDING_convert(BIGNUM *n, BN_BLINDING *b, BN_CTX *ctx);
int BN_BLINDING_invert(BIGNUM *n, BN_BLINDING *b, BN_CTX *ctx);
int BN_BLINDING_convert_ex(BIGNUM *n, BIGNUM *r, BN_BLINDING *b, BN_CTX *);
int BN_BLINDING_invert_ex(BIGNUM *n, const BIGNUM *r, BN_BLINDING *b,
    BN_CTX *);
int BN_BLINDING_is_current_thread(BN_BLINDING *b);
void BN_BLINDING_set_current_thread(BN_BLINDING *b);
int BN_BLINDING_lock(BN_BLINDING *b);
int BN_BLINDING_unlock(BN_BLINDING *b);
unsigned long BN_BLINDING_get_flags(const BN_BLINDING *);
void BN_BLINDING_set_flags(BN_BLINDING *, unsigned long);
BN_BLINDING *BN_BLINDING_create_param(BN_BLINDING *b,
    const BIGNUM *e, BIGNUM *m, BN_CTX *ctx,
    int (*bn_mod_exp)(BIGNUM *r,
        const BIGNUM *a,
        const BIGNUM *p,
        const BIGNUM *m,
        BN_CTX *ctx,
        BN_MONT_CTX *m_ctx),
    BN_MONT_CTX *m_ctx);
__attribute__((deprecated("Since OpenSSL " "0.9.8")))
void BN_set_params(int mul, int high, int low, int mont);
__attribute__((deprecated("Since OpenSSL " "0.9.8")))
int BN_get_params(int which);
BN_RECP_CTX *BN_RECP_CTX_new(void);
void BN_RECP_CTX_free(BN_RECP_CTX *recp);
int BN_RECP_CTX_set(BN_RECP_CTX *recp, const BIGNUM *rdiv, BN_CTX *ctx);
int BN_mod_mul_reciprocal(BIGNUM *r, const BIGNUM *x, const BIGNUM *y,
    BN_RECP_CTX *recp, BN_CTX *ctx);
int BN_mod_exp_recp(BIGNUM *r, const BIGNUM *a, const BIGNUM *p,
    const BIGNUM *m, BN_CTX *ctx);
int BN_div_recp(BIGNUM *dv, BIGNUM *rem, const BIGNUM *m,
    BN_RECP_CTX *recp, BN_CTX *ctx);
int BN_GF2m_add(BIGNUM *r, const BIGNUM *a, const BIGNUM *b);
int BN_GF2m_mod(BIGNUM *r, const BIGNUM *a, const BIGNUM *p);
int BN_GF2m_mod_mul(BIGNUM *r, const BIGNUM *a, const BIGNUM *b,
    const BIGNUM *p, BN_CTX *ctx);
int BN_GF2m_mod_sqr(BIGNUM *r, const BIGNUM *a, const BIGNUM *p, BN_CTX *ctx);
int BN_GF2m_mod_inv(BIGNUM *r, const BIGNUM *b, const BIGNUM *p, BN_CTX *ctx);
int BN_GF2m_mod_div(BIGNUM *r, const BIGNUM *a, const BIGNUM *b,
    const BIGNUM *p, BN_CTX *ctx);
int BN_GF2m_mod_exp(BIGNUM *r, const BIGNUM *a, const BIGNUM *b,
    const BIGNUM *p, BN_CTX *ctx);
int BN_GF2m_mod_sqrt(BIGNUM *r, const BIGNUM *a, const BIGNUM *p,
    BN_CTX *ctx);
int BN_GF2m_mod_solve_quad(BIGNUM *r, const BIGNUM *a, const BIGNUM *p,
    BN_CTX *ctx);
int BN_GF2m_mod_arr(BIGNUM *r, const BIGNUM *a, const int p[]);
int BN_GF2m_mod_mul_arr(BIGNUM *r, const BIGNUM *a, const BIGNUM *b,
    const int p[], BN_CTX *ctx);
int BN_GF2m_mod_sqr_arr(BIGNUM *r, const BIGNUM *a, const int p[],
    BN_CTX *ctx);
int BN_GF2m_mod_inv_arr(BIGNUM *r, const BIGNUM *b, const int p[],
    BN_CTX *ctx);
int BN_GF2m_mod_div_arr(BIGNUM *r, const BIGNUM *a, const BIGNUM *b,
    const int p[], BN_CTX *ctx);
int BN_GF2m_mod_exp_arr(BIGNUM *r, const BIGNUM *a, const BIGNUM *b,
    const int p[], BN_CTX *ctx);
int BN_GF2m_mod_sqrt_arr(BIGNUM *r, const BIGNUM *a,
    const int p[], BN_CTX *ctx);
int BN_GF2m_mod_solve_quad_arr(BIGNUM *r, const BIGNUM *a,
    const int p[], BN_CTX *ctx);
int BN_GF2m_poly2arr(const BIGNUM *a, int p[], int max);
int BN_GF2m_arr2poly(const int p[], BIGNUM *a);
int BN_nist_mod_192(BIGNUM *r, const BIGNUM *a, const BIGNUM *p, BN_CTX *ctx);
int BN_nist_mod_224(BIGNUM *r, const BIGNUM *a, const BIGNUM *p, BN_CTX *ctx);
int BN_nist_mod_256(BIGNUM *r, const BIGNUM *a, const BIGNUM *p, BN_CTX *ctx);
int BN_nist_mod_384(BIGNUM *r, const BIGNUM *a, const BIGNUM *p, BN_CTX *ctx);
int BN_nist_mod_521(BIGNUM *r, const BIGNUM *a, const BIGNUM *p, BN_CTX *ctx);
const BIGNUM *BN_get0_nist_prime_192(void);
const BIGNUM *BN_get0_nist_prime_224(void);
const BIGNUM *BN_get0_nist_prime_256(void);
const BIGNUM *BN_get0_nist_prime_384(void);
const BIGNUM *BN_get0_nist_prime_521(void);
int (*BN_nist_mod_func(const BIGNUM *p))(BIGNUM *r, const BIGNUM *a,
    const BIGNUM *field, BN_CTX *ctx);
int BN_generate_dsa_nonce(BIGNUM *out, const BIGNUM *range,
    const BIGNUM *priv, const unsigned char *message,
    size_t message_len, BN_CTX *ctx);
BIGNUM *BN_get_rfc2409_prime_768(BIGNUM *bn);
BIGNUM *BN_get_rfc2409_prime_1024(BIGNUM *bn);
BIGNUM *BN_get_rfc3526_prime_1536(BIGNUM *bn);
BIGNUM *BN_get_rfc3526_prime_2048(BIGNUM *bn);
BIGNUM *BN_get_rfc3526_prime_3072(BIGNUM *bn);
BIGNUM *BN_get_rfc3526_prime_4096(BIGNUM *bn);
BIGNUM *BN_get_rfc3526_prime_6144(BIGNUM *bn);
BIGNUM *BN_get_rfc3526_prime_8192(BIGNUM *bn);
int BN_bntest_rand(BIGNUM *rnd, int bits, int top, int bottom);
OSSL_PARAM *OSSL_PARAM_locate(OSSL_PARAM *p, const char *key);
const OSSL_PARAM *OSSL_PARAM_locate_const(const OSSL_PARAM *p, const char *key);
OSSL_PARAM OSSL_PARAM_construct_int(const char *key, int *buf);
OSSL_PARAM OSSL_PARAM_construct_uint(const char *key, unsigned int *buf);
OSSL_PARAM OSSL_PARAM_construct_long(const char *key, long int *buf);
OSSL_PARAM OSSL_PARAM_construct_ulong(const char *key, unsigned long int *buf);
OSSL_PARAM OSSL_PARAM_construct_int32(const char *key, int32_t *buf);
OSSL_PARAM OSSL_PARAM_construct_uint32(const char *key, uint32_t *buf);
OSSL_PARAM OSSL_PARAM_construct_int64(const char *key, int64_t *buf);
OSSL_PARAM OSSL_PARAM_construct_uint64(const char *key, uint64_t *buf);
OSSL_PARAM OSSL_PARAM_construct_size_t(const char *key, size_t *buf);
OSSL_PARAM OSSL_PARAM_construct_time_t(const char *key, time_t *buf);
OSSL_PARAM OSSL_PARAM_construct_BN(const char *key, unsigned char *buf,
    size_t bsize);
OSSL_PARAM OSSL_PARAM_construct_double(const char *key, double *buf);
OSSL_PARAM OSSL_PARAM_construct_utf8_string(const char *key, char *buf,
    size_t bsize);
OSSL_PARAM OSSL_PARAM_construct_utf8_ptr(const char *key, char **buf,
    size_t bsize);
OSSL_PARAM OSSL_PARAM_construct_octet_string(const char *key, void *buf,
    size_t bsize);
OSSL_PARAM OSSL_PARAM_construct_octet_ptr(const char *key, void **buf,
    size_t bsize);
OSSL_PARAM OSSL_PARAM_construct_end(void);
int OSSL_PARAM_allocate_from_text(OSSL_PARAM *to,
    const OSSL_PARAM *paramdefs,
    const char *key, const char *value,
    size_t value_n, int *found);
int OSSL_PARAM_print_to_bio(const OSSL_PARAM *params, BIO *bio,
    int print_values);
int OSSL_PARAM_get_int(const OSSL_PARAM *p, int *val);
int OSSL_PARAM_get_uint(const OSSL_PARAM *p, unsigned int *val);
int OSSL_PARAM_get_long(const OSSL_PARAM *p, long int *val);
int OSSL_PARAM_get_ulong(const OSSL_PARAM *p, unsigned long int *val);
int OSSL_PARAM_get_int32(const OSSL_PARAM *p, int32_t *val);
int OSSL_PARAM_get_uint32(const OSSL_PARAM *p, uint32_t *val);
int OSSL_PARAM_get_int64(const OSSL_PARAM *p, int64_t *val);
int OSSL_PARAM_get_uint64(const OSSL_PARAM *p, uint64_t *val);
int OSSL_PARAM_get_size_t(const OSSL_PARAM *p, size_t *val);
int OSSL_PARAM_get_time_t(const OSSL_PARAM *p, time_t *val);
int OSSL_PARAM_set_int(OSSL_PARAM *p, int val);
int OSSL_PARAM_set_uint(OSSL_PARAM *p, unsigned int val);
int OSSL_PARAM_set_long(OSSL_PARAM *p, long int val);
int OSSL_PARAM_set_ulong(OSSL_PARAM *p, unsigned long int val);
int OSSL_PARAM_set_int32(OSSL_PARAM *p, int32_t val);
int OSSL_PARAM_set_uint32(OSSL_PARAM *p, uint32_t val);
int OSSL_PARAM_set_int64(OSSL_PARAM *p, int64_t val);
int OSSL_PARAM_set_uint64(OSSL_PARAM *p, uint64_t val);
int OSSL_PARAM_set_size_t(OSSL_PARAM *p, size_t val);
int OSSL_PARAM_set_time_t(OSSL_PARAM *p, time_t val);
int OSSL_PARAM_get_double(const OSSL_PARAM *p, double *val);
int OSSL_PARAM_set_double(OSSL_PARAM *p, double val);
int OSSL_PARAM_get_BN(const OSSL_PARAM *p, BIGNUM **val);
int OSSL_PARAM_set_BN(OSSL_PARAM *p, const BIGNUM *val);
int OSSL_PARAM_get_utf8_string(const OSSL_PARAM *p, char **val, size_t max_len);
int OSSL_PARAM_set_utf8_string(OSSL_PARAM *p, const char *val);
int OSSL_PARAM_get_octet_string(const OSSL_PARAM *p, void **val, size_t max_len,
    size_t *used_len);
int OSSL_PARAM_set_octet_string(OSSL_PARAM *p, const void *val, size_t len);
int OSSL_PARAM_get_utf8_ptr(const OSSL_PARAM *p, const char **val);
int OSSL_PARAM_set_utf8_ptr(OSSL_PARAM *p, const char *val);
int OSSL_PARAM_get_octet_ptr(const OSSL_PARAM *p, const void **val,
    size_t *used_len);
int OSSL_PARAM_set_octet_ptr(OSSL_PARAM *p, const void *val,
    size_t used_len);
int OSSL_PARAM_get_utf8_string_ptr(const OSSL_PARAM *p, const char **val);
int OSSL_PARAM_get_octet_string_ptr(const OSSL_PARAM *p, const void **val,
    size_t *used_len);
int OSSL_PARAM_modified(const OSSL_PARAM *p);
void OSSL_PARAM_set_all_unmodified(OSSL_PARAM *p);
OSSL_PARAM *OSSL_PARAM_dup(const OSSL_PARAM *p);
OSSL_PARAM *OSSL_PARAM_merge(const OSSL_PARAM *p1, const OSSL_PARAM *p2);
void OSSL_PARAM_free(OSSL_PARAM *p);
typedef int(OSSL_INDICATOR_CALLBACK)(const char *type, const char *desc,
    const OSSL_PARAM params[]);
void OSSL_INDICATOR_set_callback(OSSL_LIB_CTX *libctx,
    OSSL_INDICATOR_CALLBACK *cb);
void OSSL_INDICATOR_get_callback(OSSL_LIB_CTX *libctx,
    OSSL_INDICATOR_CALLBACK **cb);
typedef void (*OSSL_FUNC)(void);
typedef const OSSL_PARAM *(OSSL_FUNC_core_gettable_params_fn) (const OSSL_CORE_HANDLE *prov); static __attribute__((unused)) inline OSSL_FUNC_core_gettable_params_fn * OSSL_FUNC_core_gettable_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_core_gettable_params_fn *)opf->function; }
typedef int(OSSL_FUNC_core_get_params_fn) (const OSSL_CORE_HANDLE *prov, OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_core_get_params_fn * OSSL_FUNC_core_get_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_core_get_params_fn *)opf->function; }
typedef int(OSSL_FUNC_core_thread_start_fn) (const OSSL_CORE_HANDLE *prov, OSSL_thread_stop_handler_fn handfn, void *arg); static __attribute__((unused)) inline OSSL_FUNC_core_thread_start_fn * OSSL_FUNC_core_thread_start(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_core_thread_start_fn *)opf->function; }
typedef OPENSSL_CORE_CTX *(OSSL_FUNC_core_get_libctx_fn) (const OSSL_CORE_HANDLE *prov); static __attribute__((unused)) inline OSSL_FUNC_core_get_libctx_fn * OSSL_FUNC_core_get_libctx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_core_get_libctx_fn *)opf->function; }
typedef void(OSSL_FUNC_core_new_error_fn) (const OSSL_CORE_HANDLE *prov); static __attribute__((unused)) inline OSSL_FUNC_core_new_error_fn * OSSL_FUNC_core_new_error(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_core_new_error_fn *)opf->function; }
typedef void(OSSL_FUNC_core_set_error_debug_fn) (const OSSL_CORE_HANDLE *prov, const char *file, int line, const char *func); static __attribute__((unused)) inline OSSL_FUNC_core_set_error_debug_fn * OSSL_FUNC_core_set_error_debug(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_core_set_error_debug_fn *)opf->function; }
typedef void(OSSL_FUNC_core_vset_error_fn) (const OSSL_CORE_HANDLE *prov, uint32_t reason, const char *fmt, va_list args); static __attribute__((unused)) inline OSSL_FUNC_core_vset_error_fn * OSSL_FUNC_core_vset_error(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_core_vset_error_fn *)opf->function; }
typedef int(OSSL_FUNC_core_set_error_mark_fn) (const OSSL_CORE_HANDLE *prov); static __attribute__((unused)) inline OSSL_FUNC_core_set_error_mark_fn * OSSL_FUNC_core_set_error_mark(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_core_set_error_mark_fn *)opf->function; }
typedef int(OSSL_FUNC_core_clear_last_error_mark_fn) (const OSSL_CORE_HANDLE *prov); static __attribute__((unused)) inline OSSL_FUNC_core_clear_last_error_mark_fn * OSSL_FUNC_core_clear_last_error_mark(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_core_clear_last_error_mark_fn *)opf->function; }
typedef int(OSSL_FUNC_core_pop_error_to_mark_fn) (const OSSL_CORE_HANDLE *prov); static __attribute__((unused)) inline OSSL_FUNC_core_pop_error_to_mark_fn * OSSL_FUNC_core_pop_error_to_mark(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_core_pop_error_to_mark_fn *)opf->function; }
typedef int(OSSL_FUNC_core_obj_add_sigid_fn) (const OSSL_CORE_HANDLE *prov, const char *sign_name, const char *digest_name, const char *pkey_name); static __attribute__((unused)) inline OSSL_FUNC_core_obj_add_sigid_fn * OSSL_FUNC_core_obj_add_sigid(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_core_obj_add_sigid_fn *)opf->function; }
typedef int(OSSL_FUNC_core_obj_create_fn) (const OSSL_CORE_HANDLE *prov, const char *oid, const char *sn, const char *ln); static __attribute__((unused)) inline OSSL_FUNC_core_obj_create_fn * OSSL_FUNC_core_obj_create(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_core_obj_create_fn *)opf->function; }
typedef void *(OSSL_FUNC_CRYPTO_malloc_fn) (size_t num, const char *file, int line); static __attribute__((unused)) inline OSSL_FUNC_CRYPTO_malloc_fn * OSSL_FUNC_CRYPTO_malloc(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_CRYPTO_malloc_fn *)opf->function; }
typedef void *(OSSL_FUNC_CRYPTO_zalloc_fn) (size_t num, const char *file, int line); static __attribute__((unused)) inline OSSL_FUNC_CRYPTO_zalloc_fn * OSSL_FUNC_CRYPTO_zalloc(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_CRYPTO_zalloc_fn *)opf->function; }
typedef void(OSSL_FUNC_CRYPTO_free_fn) (void *ptr, const char *file, int line); static __attribute__((unused)) inline OSSL_FUNC_CRYPTO_free_fn * OSSL_FUNC_CRYPTO_free(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_CRYPTO_free_fn *)opf->function; }
typedef void(OSSL_FUNC_CRYPTO_clear_free_fn) (void *ptr, size_t num, const char *file, int line); static __attribute__((unused)) inline OSSL_FUNC_CRYPTO_clear_free_fn * OSSL_FUNC_CRYPTO_clear_free(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_CRYPTO_clear_free_fn *)opf->function; }
typedef void *(OSSL_FUNC_CRYPTO_realloc_fn) (void *addr, size_t num, const char *file, int line); static __attribute__((unused)) inline OSSL_FUNC_CRYPTO_realloc_fn * OSSL_FUNC_CRYPTO_realloc(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_CRYPTO_realloc_fn *)opf->function; }
typedef void *(OSSL_FUNC_CRYPTO_clear_realloc_fn) (void *addr, size_t old_num, size_t num, const char *file, int line); static __attribute__((unused)) inline OSSL_FUNC_CRYPTO_clear_realloc_fn * OSSL_FUNC_CRYPTO_clear_realloc(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_CRYPTO_clear_realloc_fn *)opf->function; }
typedef void *(OSSL_FUNC_CRYPTO_secure_malloc_fn) (size_t num, const char *file, int line); static __attribute__((unused)) inline OSSL_FUNC_CRYPTO_secure_malloc_fn * OSSL_FUNC_CRYPTO_secure_malloc(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_CRYPTO_secure_malloc_fn *)opf->function; }
typedef void *(OSSL_FUNC_CRYPTO_secure_zalloc_fn) (size_t num, const char *file, int line); static __attribute__((unused)) inline OSSL_FUNC_CRYPTO_secure_zalloc_fn * OSSL_FUNC_CRYPTO_secure_zalloc(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_CRYPTO_secure_zalloc_fn *)opf->function; }
typedef void(OSSL_FUNC_CRYPTO_secure_free_fn) (void *ptr, const char *file, int line); static __attribute__((unused)) inline OSSL_FUNC_CRYPTO_secure_free_fn * OSSL_FUNC_CRYPTO_secure_free(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_CRYPTO_secure_free_fn *)opf->function; }
typedef void(OSSL_FUNC_CRYPTO_secure_clear_free_fn) (void *ptr, size_t num, const char *file, int line); static __attribute__((unused)) inline OSSL_FUNC_CRYPTO_secure_clear_free_fn * OSSL_FUNC_CRYPTO_secure_clear_free(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_CRYPTO_secure_clear_free_fn *)opf->function; }
typedef int(OSSL_FUNC_CRYPTO_secure_allocated_fn) (const void *ptr); static __attribute__((unused)) inline OSSL_FUNC_CRYPTO_secure_allocated_fn * OSSL_FUNC_CRYPTO_secure_allocated(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_CRYPTO_secure_allocated_fn *)opf->function; }
typedef void(OSSL_FUNC_OPENSSL_cleanse_fn) (void *ptr, size_t len); static __attribute__((unused)) inline OSSL_FUNC_OPENSSL_cleanse_fn * OSSL_FUNC_OPENSSL_cleanse(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_OPENSSL_cleanse_fn *)opf->function; }
typedef OSSL_CORE_BIO *(OSSL_FUNC_BIO_new_file_fn) (const char *filename, const char *mode); static __attribute__((unused)) inline OSSL_FUNC_BIO_new_file_fn * OSSL_FUNC_BIO_new_file(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_BIO_new_file_fn *)opf->function; }
typedef OSSL_CORE_BIO *(OSSL_FUNC_BIO_new_membuf_fn) (const void *buf, int len); static __attribute__((unused)) inline OSSL_FUNC_BIO_new_membuf_fn * OSSL_FUNC_BIO_new_membuf(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_BIO_new_membuf_fn *)opf->function; }
typedef int(OSSL_FUNC_BIO_read_ex_fn) (OSSL_CORE_BIO * bio, void *data, size_t data_len, size_t *bytes_read); static __attribute__((unused)) inline OSSL_FUNC_BIO_read_ex_fn * OSSL_FUNC_BIO_read_ex(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_BIO_read_ex_fn *)opf->function; }
typedef int(OSSL_FUNC_BIO_write_ex_fn) (OSSL_CORE_BIO * bio, const void *data, size_t data_len, size_t *written); static __attribute__((unused)) inline OSSL_FUNC_BIO_write_ex_fn * OSSL_FUNC_BIO_write_ex(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_BIO_write_ex_fn *)opf->function; }
typedef int(OSSL_FUNC_BIO_gets_fn) (OSSL_CORE_BIO * bio, char *buf, int size); static __attribute__((unused)) inline OSSL_FUNC_BIO_gets_fn * OSSL_FUNC_BIO_gets(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_BIO_gets_fn *)opf->function; }
typedef int(OSSL_FUNC_BIO_puts_fn) (OSSL_CORE_BIO * bio, const char *str); static __attribute__((unused)) inline OSSL_FUNC_BIO_puts_fn * OSSL_FUNC_BIO_puts(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_BIO_puts_fn *)opf->function; }
typedef int(OSSL_FUNC_BIO_up_ref_fn) (OSSL_CORE_BIO * bio); static __attribute__((unused)) inline OSSL_FUNC_BIO_up_ref_fn * OSSL_FUNC_BIO_up_ref(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_BIO_up_ref_fn *)opf->function; }
typedef int(OSSL_FUNC_BIO_free_fn) (OSSL_CORE_BIO * bio); static __attribute__((unused)) inline OSSL_FUNC_BIO_free_fn * OSSL_FUNC_BIO_free(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_BIO_free_fn *)opf->function; }
typedef int(OSSL_FUNC_BIO_vprintf_fn) (OSSL_CORE_BIO * bio, const char *format, va_list args); static __attribute__((unused)) inline OSSL_FUNC_BIO_vprintf_fn * OSSL_FUNC_BIO_vprintf(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_BIO_vprintf_fn *)opf->function; }
typedef int(OSSL_FUNC_BIO_vsnprintf_fn) (char *buf, size_t n, const char *fmt, va_list args); static __attribute__((unused)) inline OSSL_FUNC_BIO_vsnprintf_fn * OSSL_FUNC_BIO_vsnprintf(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_BIO_vsnprintf_fn *)opf->function; }
typedef int(OSSL_FUNC_BIO_ctrl_fn) (OSSL_CORE_BIO * bio, int cmd, long num, void *ptr); static __attribute__((unused)) inline OSSL_FUNC_BIO_ctrl_fn * OSSL_FUNC_BIO_ctrl(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_BIO_ctrl_fn *)opf->function; }
typedef void(OSSL_FUNC_indicator_cb_fn) (OPENSSL_CORE_CTX * ctx, OSSL_INDICATOR_CALLBACK **cb); static __attribute__((unused)) inline OSSL_FUNC_indicator_cb_fn * OSSL_FUNC_indicator_cb(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_indicator_cb_fn *)opf->function; }
typedef void(OSSL_FUNC_self_test_cb_fn) (OPENSSL_CORE_CTX * ctx, OSSL_CALLBACK **cb, void **cbarg); static __attribute__((unused)) inline OSSL_FUNC_self_test_cb_fn * OSSL_FUNC_self_test_cb(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_self_test_cb_fn *)opf->function; }
typedef size_t(OSSL_FUNC_get_entropy_fn) (const OSSL_CORE_HANDLE *handle, unsigned char **pout, int entropy, size_t min_len, size_t max_len); static __attribute__((unused)) inline OSSL_FUNC_get_entropy_fn * OSSL_FUNC_get_entropy(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_get_entropy_fn *)opf->function; }
typedef size_t(OSSL_FUNC_get_user_entropy_fn) (const OSSL_CORE_HANDLE *handle, unsigned char **pout, int entropy, size_t min_len, size_t max_len); static __attribute__((unused)) inline OSSL_FUNC_get_user_entropy_fn * OSSL_FUNC_get_user_entropy(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_get_user_entropy_fn *)opf->function; }
typedef void(OSSL_FUNC_cleanup_entropy_fn) (const OSSL_CORE_HANDLE *handle, unsigned char *buf, size_t len); static __attribute__((unused)) inline OSSL_FUNC_cleanup_entropy_fn * OSSL_FUNC_cleanup_entropy(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_cleanup_entropy_fn *)opf->function; }
typedef void(OSSL_FUNC_cleanup_user_entropy_fn) (const OSSL_CORE_HANDLE *handle, unsigned char *buf, size_t len); static __attribute__((unused)) inline OSSL_FUNC_cleanup_user_entropy_fn * OSSL_FUNC_cleanup_user_entropy(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_cleanup_user_entropy_fn *)opf->function; }
typedef size_t(OSSL_FUNC_get_nonce_fn) (const OSSL_CORE_HANDLE *handle, unsigned char **pout, size_t min_len, size_t max_len, const void *salt, size_t salt_len); static __attribute__((unused)) inline OSSL_FUNC_get_nonce_fn * OSSL_FUNC_get_nonce(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_get_nonce_fn *)opf->function; }
typedef size_t(OSSL_FUNC_get_user_nonce_fn) (const OSSL_CORE_HANDLE *handle, unsigned char **pout, size_t min_len, size_t max_len, const void *salt, size_t salt_len); static __attribute__((unused)) inline OSSL_FUNC_get_user_nonce_fn * OSSL_FUNC_get_user_nonce(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_get_user_nonce_fn *)opf->function; }
typedef void(OSSL_FUNC_cleanup_nonce_fn) (const OSSL_CORE_HANDLE *handle, unsigned char *buf, size_t len); static __attribute__((unused)) inline OSSL_FUNC_cleanup_nonce_fn * OSSL_FUNC_cleanup_nonce(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_cleanup_nonce_fn *)opf->function; }
typedef void(OSSL_FUNC_cleanup_user_nonce_fn) (const OSSL_CORE_HANDLE *handle, unsigned char *buf, size_t len); static __attribute__((unused)) inline OSSL_FUNC_cleanup_user_nonce_fn * OSSL_FUNC_cleanup_user_nonce(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_cleanup_user_nonce_fn *)opf->function; }
typedef int(OSSL_FUNC_provider_register_child_cb_fn) (const OSSL_CORE_HANDLE *handle, int (*create_cb)(const OSSL_CORE_HANDLE *provider, void *cbdata), int (*remove_cb)(const OSSL_CORE_HANDLE *provider, void *cbdata), int (*global_props_cb)(const char *props, void *cbdata), void *cbdata); static __attribute__((unused)) inline OSSL_FUNC_provider_register_child_cb_fn * OSSL_FUNC_provider_register_child_cb(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_provider_register_child_cb_fn *)opf->function; }
typedef void(OSSL_FUNC_provider_deregister_child_cb_fn) (const OSSL_CORE_HANDLE *handle); static __attribute__((unused)) inline OSSL_FUNC_provider_deregister_child_cb_fn * OSSL_FUNC_provider_deregister_child_cb(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_provider_deregister_child_cb_fn *)opf->function; }
typedef const char *(OSSL_FUNC_provider_name_fn) (const OSSL_CORE_HANDLE *prov); static __attribute__((unused)) inline OSSL_FUNC_provider_name_fn * OSSL_FUNC_provider_name(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_provider_name_fn *)opf->function; }
typedef void *(OSSL_FUNC_provider_get0_provider_ctx_fn) (const OSSL_CORE_HANDLE *prov); static __attribute__((unused)) inline OSSL_FUNC_provider_get0_provider_ctx_fn * OSSL_FUNC_provider_get0_provider_ctx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_provider_get0_provider_ctx_fn *)opf->function; }
typedef const OSSL_DISPATCH *(OSSL_FUNC_provider_get0_dispatch_fn) (const OSSL_CORE_HANDLE *prov); static __attribute__((unused)) inline OSSL_FUNC_provider_get0_dispatch_fn * OSSL_FUNC_provider_get0_dispatch(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_provider_get0_dispatch_fn *)opf->function; }
typedef int(OSSL_FUNC_provider_up_ref_fn) (const OSSL_CORE_HANDLE *prov, int activate); static __attribute__((unused)) inline OSSL_FUNC_provider_up_ref_fn * OSSL_FUNC_provider_up_ref(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_provider_up_ref_fn *)opf->function; }
typedef int(OSSL_FUNC_provider_free_fn) (const OSSL_CORE_HANDLE *prov, int deactivate); static __attribute__((unused)) inline OSSL_FUNC_provider_free_fn * OSSL_FUNC_provider_free(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_provider_free_fn *)opf->function; }
typedef int(OSSL_FUNC_core_count_to_mark_fn) (const OSSL_CORE_HANDLE *prov); static __attribute__((unused)) inline OSSL_FUNC_core_count_to_mark_fn * OSSL_FUNC_core_count_to_mark(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_core_count_to_mark_fn *)opf->function; }
typedef void(OSSL_FUNC_provider_teardown_fn) (void *provctx); static __attribute__((unused)) inline OSSL_FUNC_provider_teardown_fn * OSSL_FUNC_provider_teardown(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_provider_teardown_fn *)opf->function; }
typedef const OSSL_PARAM *(OSSL_FUNC_provider_gettable_params_fn) (void *provctx); static __attribute__((unused)) inline OSSL_FUNC_provider_gettable_params_fn * OSSL_FUNC_provider_gettable_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_provider_gettable_params_fn *)opf->function; }
typedef int(OSSL_FUNC_provider_get_params_fn) (void *provctx, OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_provider_get_params_fn * OSSL_FUNC_provider_get_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_provider_get_params_fn *)opf->function; }
typedef const OSSL_ALGORITHM *(OSSL_FUNC_provider_query_operation_fn) (void *provctx, int operation_id, int *no_store); static __attribute__((unused)) inline OSSL_FUNC_provider_query_operation_fn * OSSL_FUNC_provider_query_operation(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_provider_query_operation_fn *)opf->function; }
typedef void(OSSL_FUNC_provider_unquery_operation_fn) (void *provctx, int operation_id, const OSSL_ALGORITHM *); static __attribute__((unused)) inline OSSL_FUNC_provider_unquery_operation_fn * OSSL_FUNC_provider_unquery_operation(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_provider_unquery_operation_fn *)opf->function; }
typedef const OSSL_ITEM *(OSSL_FUNC_provider_get_reason_strings_fn) (void *provctx); static __attribute__((unused)) inline OSSL_FUNC_provider_get_reason_strings_fn * OSSL_FUNC_provider_get_reason_strings(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_provider_get_reason_strings_fn *)opf->function; }
typedef int(OSSL_FUNC_provider_get_capabilities_fn) (void *provctx, const char *capability, OSSL_CALLBACK *cb, void *arg); static __attribute__((unused)) inline OSSL_FUNC_provider_get_capabilities_fn * OSSL_FUNC_provider_get_capabilities(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_provider_get_capabilities_fn *)opf->function; }
typedef int(OSSL_FUNC_provider_self_test_fn) (void *provctx); static __attribute__((unused)) inline OSSL_FUNC_provider_self_test_fn * OSSL_FUNC_provider_self_test(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_provider_self_test_fn *)opf->function; }
typedef int(OSSL_FUNC_provider_random_bytes_fn) (void *provctx, int which, void *buf, size_t n, unsigned int strength); static __attribute__((unused)) inline OSSL_FUNC_provider_random_bytes_fn * OSSL_FUNC_provider_random_bytes(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_provider_random_bytes_fn *)opf->function; }
typedef int(OSSL_FUNC_SSL_QUIC_TLS_crypto_send_fn) (SSL * s, const unsigned char *buf, size_t buf_len, size_t *consumed, void *arg); static __attribute__((unused)) inline OSSL_FUNC_SSL_QUIC_TLS_crypto_send_fn * OSSL_FUNC_SSL_QUIC_TLS_crypto_send(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_SSL_QUIC_TLS_crypto_send_fn *)opf->function; }
typedef int(OSSL_FUNC_SSL_QUIC_TLS_crypto_recv_rcd_fn) (SSL * s, const unsigned char **buf, size_t *bytes_read, void *arg); static __attribute__((unused)) inline OSSL_FUNC_SSL_QUIC_TLS_crypto_recv_rcd_fn * OSSL_FUNC_SSL_QUIC_TLS_crypto_recv_rcd(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_SSL_QUIC_TLS_crypto_recv_rcd_fn *)opf->function; }
typedef int(OSSL_FUNC_SSL_QUIC_TLS_crypto_release_rcd_fn) (SSL * s, size_t bytes_read, void *arg); static __attribute__((unused)) inline OSSL_FUNC_SSL_QUIC_TLS_crypto_release_rcd_fn * OSSL_FUNC_SSL_QUIC_TLS_crypto_release_rcd(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_SSL_QUIC_TLS_crypto_release_rcd_fn *)opf->function; }
typedef int(OSSL_FUNC_SSL_QUIC_TLS_yield_secret_fn) (SSL * s, uint32_t prot_level, int direction, const unsigned char *secret, size_t secret_len, void *arg); static __attribute__((unused)) inline OSSL_FUNC_SSL_QUIC_TLS_yield_secret_fn * OSSL_FUNC_SSL_QUIC_TLS_yield_secret(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_SSL_QUIC_TLS_yield_secret_fn *)opf->function; }
typedef int(OSSL_FUNC_SSL_QUIC_TLS_got_transport_params_fn) (SSL * s, const unsigned char *params, size_t params_len, void *arg); static __attribute__((unused)) inline OSSL_FUNC_SSL_QUIC_TLS_got_transport_params_fn * OSSL_FUNC_SSL_QUIC_TLS_got_transport_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_SSL_QUIC_TLS_got_transport_params_fn *)opf->function; }
typedef int(OSSL_FUNC_SSL_QUIC_TLS_alert_fn) (SSL * s, unsigned char alert_code, void *arg); static __attribute__((unused)) inline OSSL_FUNC_SSL_QUIC_TLS_alert_fn * OSSL_FUNC_SSL_QUIC_TLS_alert(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_SSL_QUIC_TLS_alert_fn *)opf->function; }
typedef void *(OSSL_FUNC_digest_newctx_fn) (void *provctx); static __attribute__((unused)) inline OSSL_FUNC_digest_newctx_fn * OSSL_FUNC_digest_newctx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_digest_newctx_fn *)opf->function; }
typedef int(OSSL_FUNC_digest_init_fn) (void *dctx, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_digest_init_fn * OSSL_FUNC_digest_init(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_digest_init_fn *)opf->function; }
typedef int(OSSL_FUNC_digest_update_fn) (void *dctx, const unsigned char *in, size_t inl); static __attribute__((unused)) inline OSSL_FUNC_digest_update_fn * OSSL_FUNC_digest_update(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_digest_update_fn *)opf->function; }
typedef int(OSSL_FUNC_digest_final_fn) (void *dctx, unsigned char *out, size_t *outl, size_t outsz); static __attribute__((unused)) inline OSSL_FUNC_digest_final_fn * OSSL_FUNC_digest_final(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_digest_final_fn *)opf->function; }
typedef int(OSSL_FUNC_digest_squeeze_fn) (void *dctx, unsigned char *out, size_t *outl, size_t outsz); static __attribute__((unused)) inline OSSL_FUNC_digest_squeeze_fn * OSSL_FUNC_digest_squeeze(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_digest_squeeze_fn *)opf->function; }
typedef int(OSSL_FUNC_digest_digest_fn) (void *provctx, const unsigned char *in, size_t inl, unsigned char *out, size_t *outl, size_t outsz); static __attribute__((unused)) inline OSSL_FUNC_digest_digest_fn * OSSL_FUNC_digest_digest(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_digest_digest_fn *)opf->function; }
typedef void(OSSL_FUNC_digest_freectx_fn) (void *dctx); static __attribute__((unused)) inline OSSL_FUNC_digest_freectx_fn * OSSL_FUNC_digest_freectx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_digest_freectx_fn *)opf->function; }
typedef void *(OSSL_FUNC_digest_dupctx_fn) (void *dctx); static __attribute__((unused)) inline OSSL_FUNC_digest_dupctx_fn * OSSL_FUNC_digest_dupctx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_digest_dupctx_fn *)opf->function; }
typedef void(OSSL_FUNC_digest_copyctx_fn) (void *outctx, void *inctx); static __attribute__((unused)) inline OSSL_FUNC_digest_copyctx_fn * OSSL_FUNC_digest_copyctx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_digest_copyctx_fn *)opf->function; }
typedef int(OSSL_FUNC_digest_get_params_fn) (OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_digest_get_params_fn * OSSL_FUNC_digest_get_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_digest_get_params_fn *)opf->function; }
typedef int(OSSL_FUNC_digest_set_ctx_params_fn) (void *vctx, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_digest_set_ctx_params_fn * OSSL_FUNC_digest_set_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_digest_set_ctx_params_fn *)opf->function; }
typedef int(OSSL_FUNC_digest_get_ctx_params_fn) (void *vctx, OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_digest_get_ctx_params_fn * OSSL_FUNC_digest_get_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_digest_get_ctx_params_fn *)opf->function; }
typedef const OSSL_PARAM *(OSSL_FUNC_digest_gettable_params_fn) (void *provctx); static __attribute__((unused)) inline OSSL_FUNC_digest_gettable_params_fn * OSSL_FUNC_digest_gettable_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_digest_gettable_params_fn *)opf->function; }
typedef const OSSL_PARAM *(OSSL_FUNC_digest_settable_ctx_params_fn) (void *dctx, void *provctx); static __attribute__((unused)) inline OSSL_FUNC_digest_settable_ctx_params_fn * OSSL_FUNC_digest_settable_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_digest_settable_ctx_params_fn *)opf->function; }
typedef const OSSL_PARAM *(OSSL_FUNC_digest_gettable_ctx_params_fn) (void *dctx, void *provctx); static __attribute__((unused)) inline OSSL_FUNC_digest_gettable_ctx_params_fn * OSSL_FUNC_digest_gettable_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_digest_gettable_ctx_params_fn *)opf->function; }
typedef void *(OSSL_FUNC_cipher_newctx_fn) (void *provctx); static __attribute__((unused)) inline OSSL_FUNC_cipher_newctx_fn * OSSL_FUNC_cipher_newctx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_cipher_newctx_fn *)opf->function; }
typedef int(OSSL_FUNC_cipher_encrypt_init_fn) (void *cctx, const unsigned char *key, size_t keylen, const unsigned char *iv, size_t ivlen, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_cipher_encrypt_init_fn * OSSL_FUNC_cipher_encrypt_init(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_cipher_encrypt_init_fn *)opf->function; }
typedef int(OSSL_FUNC_cipher_decrypt_init_fn) (void *cctx, const unsigned char *key, size_t keylen, const unsigned char *iv, size_t ivlen, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_cipher_decrypt_init_fn * OSSL_FUNC_cipher_decrypt_init(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_cipher_decrypt_init_fn *)opf->function; }
typedef int(OSSL_FUNC_cipher_update_fn) (void *cctx, unsigned char *out, size_t *outl, size_t outsize, const unsigned char *in, size_t inl); static __attribute__((unused)) inline OSSL_FUNC_cipher_update_fn * OSSL_FUNC_cipher_update(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_cipher_update_fn *)opf->function; }
typedef int(OSSL_FUNC_cipher_final_fn) (void *cctx, unsigned char *out, size_t *outl, size_t outsize); static __attribute__((unused)) inline OSSL_FUNC_cipher_final_fn * OSSL_FUNC_cipher_final(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_cipher_final_fn *)opf->function; }
typedef int(OSSL_FUNC_cipher_cipher_fn) (void *cctx, unsigned char *out, size_t *outl, size_t outsize, const unsigned char *in, size_t inl); static __attribute__((unused)) inline OSSL_FUNC_cipher_cipher_fn * OSSL_FUNC_cipher_cipher(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_cipher_cipher_fn *)opf->function; }
typedef int(OSSL_FUNC_cipher_pipeline_encrypt_init_fn) (void *cctx, const unsigned char *key, size_t keylen, size_t numpipes, const unsigned char **iv, size_t ivlen, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_cipher_pipeline_encrypt_init_fn * OSSL_FUNC_cipher_pipeline_encrypt_init(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_cipher_pipeline_encrypt_init_fn *)opf->function; }
typedef int(OSSL_FUNC_cipher_pipeline_decrypt_init_fn) (void *cctx, const unsigned char *key, size_t keylen, size_t numpipes, const unsigned char **iv, size_t ivlen, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_cipher_pipeline_decrypt_init_fn * OSSL_FUNC_cipher_pipeline_decrypt_init(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_cipher_pipeline_decrypt_init_fn *)opf->function; }
typedef int(OSSL_FUNC_cipher_pipeline_update_fn) (void *cctx, size_t numpipes, unsigned char **out, size_t *outl, const size_t *outsize, const unsigned char **in, const size_t *inl); static __attribute__((unused)) inline OSSL_FUNC_cipher_pipeline_update_fn * OSSL_FUNC_cipher_pipeline_update(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_cipher_pipeline_update_fn *)opf->function; }
typedef int(OSSL_FUNC_cipher_pipeline_final_fn) (void *cctx, size_t numpipes, unsigned char **out, size_t *outl, const size_t *outsize); static __attribute__((unused)) inline OSSL_FUNC_cipher_pipeline_final_fn * OSSL_FUNC_cipher_pipeline_final(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_cipher_pipeline_final_fn *)opf->function; }
typedef void(OSSL_FUNC_cipher_freectx_fn) (void *cctx); static __attribute__((unused)) inline OSSL_FUNC_cipher_freectx_fn * OSSL_FUNC_cipher_freectx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_cipher_freectx_fn *)opf->function; }
typedef void *(OSSL_FUNC_cipher_dupctx_fn) (void *cctx); static __attribute__((unused)) inline OSSL_FUNC_cipher_dupctx_fn * OSSL_FUNC_cipher_dupctx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_cipher_dupctx_fn *)opf->function; }
typedef int(OSSL_FUNC_cipher_get_params_fn) (OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_cipher_get_params_fn * OSSL_FUNC_cipher_get_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_cipher_get_params_fn *)opf->function; }
typedef int(OSSL_FUNC_cipher_get_ctx_params_fn) (void *cctx, OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_cipher_get_ctx_params_fn * OSSL_FUNC_cipher_get_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_cipher_get_ctx_params_fn *)opf->function; }
typedef int(OSSL_FUNC_cipher_set_ctx_params_fn) (void *cctx, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_cipher_set_ctx_params_fn * OSSL_FUNC_cipher_set_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_cipher_set_ctx_params_fn *)opf->function; }
typedef const OSSL_PARAM *(OSSL_FUNC_cipher_gettable_params_fn) (void *provctx); static __attribute__((unused)) inline OSSL_FUNC_cipher_gettable_params_fn * OSSL_FUNC_cipher_gettable_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_cipher_gettable_params_fn *)opf->function; }
typedef const OSSL_PARAM *(OSSL_FUNC_cipher_settable_ctx_params_fn) (void *cctx, void *provctx); static __attribute__((unused)) inline OSSL_FUNC_cipher_settable_ctx_params_fn * OSSL_FUNC_cipher_settable_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_cipher_settable_ctx_params_fn *)opf->function; }
typedef const OSSL_PARAM *(OSSL_FUNC_cipher_gettable_ctx_params_fn) (void *cctx, void *provctx); static __attribute__((unused)) inline OSSL_FUNC_cipher_gettable_ctx_params_fn * OSSL_FUNC_cipher_gettable_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_cipher_gettable_ctx_params_fn *)opf->function; }
typedef int(OSSL_FUNC_cipher_encrypt_skey_init_fn) (void *cctx, void *skeydata, const unsigned char *iv, size_t ivlen, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_cipher_encrypt_skey_init_fn * OSSL_FUNC_cipher_encrypt_skey_init(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_cipher_encrypt_skey_init_fn *)opf->function; }
typedef int(OSSL_FUNC_cipher_decrypt_skey_init_fn) (void *cctx, void *skeydata, const unsigned char *iv, size_t ivlen, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_cipher_decrypt_skey_init_fn * OSSL_FUNC_cipher_decrypt_skey_init(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_cipher_decrypt_skey_init_fn *)opf->function; }
typedef void *(OSSL_FUNC_mac_newctx_fn) (void *provctx); static __attribute__((unused)) inline OSSL_FUNC_mac_newctx_fn * OSSL_FUNC_mac_newctx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_mac_newctx_fn *)opf->function; }
typedef void *(OSSL_FUNC_mac_dupctx_fn) (void *src); static __attribute__((unused)) inline OSSL_FUNC_mac_dupctx_fn * OSSL_FUNC_mac_dupctx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_mac_dupctx_fn *)opf->function; }
typedef void(OSSL_FUNC_mac_freectx_fn) (void *mctx); static __attribute__((unused)) inline OSSL_FUNC_mac_freectx_fn * OSSL_FUNC_mac_freectx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_mac_freectx_fn *)opf->function; }
typedef int(OSSL_FUNC_mac_init_fn) (void *mctx, const unsigned char *key, size_t keylen, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_mac_init_fn * OSSL_FUNC_mac_init(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_mac_init_fn *)opf->function; }
typedef int(OSSL_FUNC_mac_update_fn) (void *mctx, const unsigned char *in, size_t inl); static __attribute__((unused)) inline OSSL_FUNC_mac_update_fn * OSSL_FUNC_mac_update(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_mac_update_fn *)opf->function; }
typedef int(OSSL_FUNC_mac_final_fn) (void *mctx, unsigned char *out, size_t *outl, size_t outsize); static __attribute__((unused)) inline OSSL_FUNC_mac_final_fn * OSSL_FUNC_mac_final(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_mac_final_fn *)opf->function; }
typedef const OSSL_PARAM *(OSSL_FUNC_mac_gettable_params_fn) (void *provctx); static __attribute__((unused)) inline OSSL_FUNC_mac_gettable_params_fn * OSSL_FUNC_mac_gettable_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_mac_gettable_params_fn *)opf->function; }
typedef const OSSL_PARAM *(OSSL_FUNC_mac_gettable_ctx_params_fn) (void *mctx, void *provctx); static __attribute__((unused)) inline OSSL_FUNC_mac_gettable_ctx_params_fn * OSSL_FUNC_mac_gettable_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_mac_gettable_ctx_params_fn *)opf->function; }
typedef const OSSL_PARAM *(OSSL_FUNC_mac_settable_ctx_params_fn) (void *mctx, void *provctx); static __attribute__((unused)) inline OSSL_FUNC_mac_settable_ctx_params_fn * OSSL_FUNC_mac_settable_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_mac_settable_ctx_params_fn *)opf->function; }
typedef int(OSSL_FUNC_mac_get_params_fn) (OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_mac_get_params_fn * OSSL_FUNC_mac_get_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_mac_get_params_fn *)opf->function; }
typedef int(OSSL_FUNC_mac_get_ctx_params_fn) (void *mctx, OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_mac_get_ctx_params_fn * OSSL_FUNC_mac_get_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_mac_get_ctx_params_fn *)opf->function; }
typedef int(OSSL_FUNC_mac_set_ctx_params_fn) (void *mctx, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_mac_set_ctx_params_fn * OSSL_FUNC_mac_set_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_mac_set_ctx_params_fn *)opf->function; }
typedef int(OSSL_FUNC_mac_init_skey_fn) (void *mctx, void *key, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_mac_init_skey_fn * OSSL_FUNC_mac_init_skey(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_mac_init_skey_fn *)opf->function; }
typedef void *(OSSL_FUNC_kdf_newctx_fn) (void *provctx); static __attribute__((unused)) inline OSSL_FUNC_kdf_newctx_fn * OSSL_FUNC_kdf_newctx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_kdf_newctx_fn *)opf->function; }
typedef void *(OSSL_FUNC_kdf_dupctx_fn) (void *src); static __attribute__((unused)) inline OSSL_FUNC_kdf_dupctx_fn * OSSL_FUNC_kdf_dupctx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_kdf_dupctx_fn *)opf->function; }
typedef void(OSSL_FUNC_kdf_freectx_fn) (void *kctx); static __attribute__((unused)) inline OSSL_FUNC_kdf_freectx_fn * OSSL_FUNC_kdf_freectx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_kdf_freectx_fn *)opf->function; }
typedef void(OSSL_FUNC_kdf_reset_fn) (void *kctx); static __attribute__((unused)) inline OSSL_FUNC_kdf_reset_fn * OSSL_FUNC_kdf_reset(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_kdf_reset_fn *)opf->function; }
typedef int(OSSL_FUNC_kdf_derive_fn) (void *kctx, unsigned char *key, size_t keylen, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_kdf_derive_fn * OSSL_FUNC_kdf_derive(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_kdf_derive_fn *)opf->function; }
typedef const OSSL_PARAM *(OSSL_FUNC_kdf_gettable_params_fn) (void *provctx); static __attribute__((unused)) inline OSSL_FUNC_kdf_gettable_params_fn * OSSL_FUNC_kdf_gettable_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_kdf_gettable_params_fn *)opf->function; }
typedef const OSSL_PARAM *(OSSL_FUNC_kdf_gettable_ctx_params_fn) (void *kctx, void *provctx); static __attribute__((unused)) inline OSSL_FUNC_kdf_gettable_ctx_params_fn * OSSL_FUNC_kdf_gettable_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_kdf_gettable_ctx_params_fn *)opf->function; }
typedef const OSSL_PARAM *(OSSL_FUNC_kdf_settable_ctx_params_fn) (void *kctx, void *provctx); static __attribute__((unused)) inline OSSL_FUNC_kdf_settable_ctx_params_fn * OSSL_FUNC_kdf_settable_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_kdf_settable_ctx_params_fn *)opf->function; }
typedef int(OSSL_FUNC_kdf_get_params_fn) (OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_kdf_get_params_fn * OSSL_FUNC_kdf_get_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_kdf_get_params_fn *)opf->function; }
typedef int(OSSL_FUNC_kdf_get_ctx_params_fn) (void *kctx, OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_kdf_get_ctx_params_fn * OSSL_FUNC_kdf_get_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_kdf_get_ctx_params_fn *)opf->function; }
typedef int(OSSL_FUNC_kdf_set_ctx_params_fn) (void *kctx, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_kdf_set_ctx_params_fn * OSSL_FUNC_kdf_set_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_kdf_set_ctx_params_fn *)opf->function; }
typedef void *(OSSL_FUNC_rand_newctx_fn) (void *provctx, void *parent, const OSSL_DISPATCH *parent_calls); static __attribute__((unused)) inline OSSL_FUNC_rand_newctx_fn * OSSL_FUNC_rand_newctx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_rand_newctx_fn *)opf->function; }
typedef void(OSSL_FUNC_rand_freectx_fn) (void *vctx); static __attribute__((unused)) inline OSSL_FUNC_rand_freectx_fn * OSSL_FUNC_rand_freectx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_rand_freectx_fn *)opf->function; }
typedef int(OSSL_FUNC_rand_instantiate_fn) (void *vdrbg, unsigned int strength, int prediction_resistance, const unsigned char *pstr, size_t pstr_len, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_rand_instantiate_fn * OSSL_FUNC_rand_instantiate(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_rand_instantiate_fn *)opf->function; }
typedef int(OSSL_FUNC_rand_uninstantiate_fn) (void *vdrbg); static __attribute__((unused)) inline OSSL_FUNC_rand_uninstantiate_fn * OSSL_FUNC_rand_uninstantiate(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_rand_uninstantiate_fn *)opf->function; }
typedef int(OSSL_FUNC_rand_generate_fn) (void *vctx, unsigned char *out, size_t outlen, unsigned int strength, int prediction_resistance, const unsigned char *addin, size_t addin_len); static __attribute__((unused)) inline OSSL_FUNC_rand_generate_fn * OSSL_FUNC_rand_generate(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_rand_generate_fn *)opf->function; }
typedef int(OSSL_FUNC_rand_reseed_fn) (void *vctx, int prediction_resistance, const unsigned char *ent, size_t ent_len, const unsigned char *addin, size_t addin_len); static __attribute__((unused)) inline OSSL_FUNC_rand_reseed_fn * OSSL_FUNC_rand_reseed(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_rand_reseed_fn *)opf->function; }
typedef size_t(OSSL_FUNC_rand_nonce_fn) (void *vctx, unsigned char *out, unsigned int strength, size_t min_noncelen, size_t max_noncelen); static __attribute__((unused)) inline OSSL_FUNC_rand_nonce_fn * OSSL_FUNC_rand_nonce(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_rand_nonce_fn *)opf->function; }
typedef int(OSSL_FUNC_rand_enable_locking_fn) (void *vctx); static __attribute__((unused)) inline OSSL_FUNC_rand_enable_locking_fn * OSSL_FUNC_rand_enable_locking(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_rand_enable_locking_fn *)opf->function; }
typedef int(OSSL_FUNC_rand_lock_fn) (void *vctx); static __attribute__((unused)) inline OSSL_FUNC_rand_lock_fn * OSSL_FUNC_rand_lock(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_rand_lock_fn *)opf->function; }
typedef void(OSSL_FUNC_rand_unlock_fn) (void *vctx); static __attribute__((unused)) inline OSSL_FUNC_rand_unlock_fn * OSSL_FUNC_rand_unlock(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_rand_unlock_fn *)opf->function; }
typedef const OSSL_PARAM *(OSSL_FUNC_rand_gettable_params_fn) (void *provctx); static __attribute__((unused)) inline OSSL_FUNC_rand_gettable_params_fn * OSSL_FUNC_rand_gettable_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_rand_gettable_params_fn *)opf->function; }
typedef const OSSL_PARAM *(OSSL_FUNC_rand_gettable_ctx_params_fn) (void *vctx, void *provctx); static __attribute__((unused)) inline OSSL_FUNC_rand_gettable_ctx_params_fn * OSSL_FUNC_rand_gettable_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_rand_gettable_ctx_params_fn *)opf->function; }
typedef const OSSL_PARAM *(OSSL_FUNC_rand_settable_ctx_params_fn) (void *vctx, void *provctx); static __attribute__((unused)) inline OSSL_FUNC_rand_settable_ctx_params_fn * OSSL_FUNC_rand_settable_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_rand_settable_ctx_params_fn *)opf->function; }
typedef int(OSSL_FUNC_rand_get_params_fn) (OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_rand_get_params_fn * OSSL_FUNC_rand_get_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_rand_get_params_fn *)opf->function; }
typedef int(OSSL_FUNC_rand_get_ctx_params_fn) (void *vctx, OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_rand_get_ctx_params_fn * OSSL_FUNC_rand_get_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_rand_get_ctx_params_fn *)opf->function; }
typedef int(OSSL_FUNC_rand_set_ctx_params_fn) (void *vctx, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_rand_set_ctx_params_fn * OSSL_FUNC_rand_set_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_rand_set_ctx_params_fn *)opf->function; }
typedef void(OSSL_FUNC_rand_set_callbacks_fn) (void *vctx, OSSL_INOUT_CALLBACK *get_entropy, OSSL_CALLBACK *cleanup_entropy, OSSL_INOUT_CALLBACK *get_nonce, OSSL_CALLBACK *cleanup_nonce, void *arg); static __attribute__((unused)) inline OSSL_FUNC_rand_set_callbacks_fn * OSSL_FUNC_rand_set_callbacks(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_rand_set_callbacks_fn *)opf->function; }
typedef int(OSSL_FUNC_rand_verify_zeroization_fn) (void *vctx); static __attribute__((unused)) inline OSSL_FUNC_rand_verify_zeroization_fn * OSSL_FUNC_rand_verify_zeroization(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_rand_verify_zeroization_fn *)opf->function; }
typedef size_t(OSSL_FUNC_rand_get_seed_fn) (void *vctx, unsigned char **buffer, int entropy, size_t min_len, size_t max_len, int prediction_resistance, const unsigned char *adin, size_t adin_len); static __attribute__((unused)) inline OSSL_FUNC_rand_get_seed_fn * OSSL_FUNC_rand_get_seed(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_rand_get_seed_fn *)opf->function; }
typedef void(OSSL_FUNC_rand_clear_seed_fn) (void *vctx, unsigned char *buffer, size_t b_len); static __attribute__((unused)) inline OSSL_FUNC_rand_clear_seed_fn * OSSL_FUNC_rand_clear_seed(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_rand_clear_seed_fn *)opf->function; }
typedef void *(OSSL_FUNC_keymgmt_new_fn) (void *provctx); static __attribute__((unused)) inline OSSL_FUNC_keymgmt_new_fn * OSSL_FUNC_keymgmt_new(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keymgmt_new_fn *)opf->function; }
typedef void *(OSSL_FUNC_keymgmt_gen_init_fn) (void *provctx, int selection, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_keymgmt_gen_init_fn * OSSL_FUNC_keymgmt_gen_init(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keymgmt_gen_init_fn *)opf->function; }
typedef int(OSSL_FUNC_keymgmt_gen_set_template_fn) (void *genctx, void *templ); static __attribute__((unused)) inline OSSL_FUNC_keymgmt_gen_set_template_fn * OSSL_FUNC_keymgmt_gen_set_template(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keymgmt_gen_set_template_fn *)opf->function; }
typedef int(OSSL_FUNC_keymgmt_gen_set_params_fn) (void *genctx, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_keymgmt_gen_set_params_fn * OSSL_FUNC_keymgmt_gen_set_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keymgmt_gen_set_params_fn *)opf->function; }
typedef const OSSL_PARAM *(OSSL_FUNC_keymgmt_gen_settable_params_fn) (void *genctx, void *provctx); static __attribute__((unused)) inline OSSL_FUNC_keymgmt_gen_settable_params_fn * OSSL_FUNC_keymgmt_gen_settable_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keymgmt_gen_settable_params_fn *)opf->function; }
typedef int(OSSL_FUNC_keymgmt_gen_get_params_fn) (void *genctx, OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_keymgmt_gen_get_params_fn * OSSL_FUNC_keymgmt_gen_get_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keymgmt_gen_get_params_fn *)opf->function; }
typedef const OSSL_PARAM *(OSSL_FUNC_keymgmt_gen_gettable_params_fn) (void *genctx, void *provctx); static __attribute__((unused)) inline OSSL_FUNC_keymgmt_gen_gettable_params_fn * OSSL_FUNC_keymgmt_gen_gettable_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keymgmt_gen_gettable_params_fn *)opf->function; }
typedef void *(OSSL_FUNC_keymgmt_gen_fn) (void *genctx, OSSL_CALLBACK *cb, void *cbarg); static __attribute__((unused)) inline OSSL_FUNC_keymgmt_gen_fn * OSSL_FUNC_keymgmt_gen(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keymgmt_gen_fn *)opf->function; }
typedef void(OSSL_FUNC_keymgmt_gen_cleanup_fn) (void *genctx); static __attribute__((unused)) inline OSSL_FUNC_keymgmt_gen_cleanup_fn * OSSL_FUNC_keymgmt_gen_cleanup(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keymgmt_gen_cleanup_fn *)opf->function; }
typedef void *(OSSL_FUNC_keymgmt_load_fn) (const void *reference, size_t reference_sz); static __attribute__((unused)) inline OSSL_FUNC_keymgmt_load_fn * OSSL_FUNC_keymgmt_load(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keymgmt_load_fn *)opf->function; }
typedef void(OSSL_FUNC_keymgmt_free_fn) (void *keydata); static __attribute__((unused)) inline OSSL_FUNC_keymgmt_free_fn * OSSL_FUNC_keymgmt_free(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keymgmt_free_fn *)opf->function; }
typedef int(OSSL_FUNC_keymgmt_get_params_fn) (void *keydata, OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_keymgmt_get_params_fn * OSSL_FUNC_keymgmt_get_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keymgmt_get_params_fn *)opf->function; }
typedef const OSSL_PARAM *(OSSL_FUNC_keymgmt_gettable_params_fn) (void *provctx); static __attribute__((unused)) inline OSSL_FUNC_keymgmt_gettable_params_fn * OSSL_FUNC_keymgmt_gettable_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keymgmt_gettable_params_fn *)opf->function; }
typedef int(OSSL_FUNC_keymgmt_set_params_fn) (void *keydata, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_keymgmt_set_params_fn * OSSL_FUNC_keymgmt_set_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keymgmt_set_params_fn *)opf->function; }
typedef const OSSL_PARAM *(OSSL_FUNC_keymgmt_settable_params_fn) (void *provctx); static __attribute__((unused)) inline OSSL_FUNC_keymgmt_settable_params_fn * OSSL_FUNC_keymgmt_settable_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keymgmt_settable_params_fn *)opf->function; }
typedef const char *(OSSL_FUNC_keymgmt_query_operation_name_fn) (int operation_id); static __attribute__((unused)) inline OSSL_FUNC_keymgmt_query_operation_name_fn * OSSL_FUNC_keymgmt_query_operation_name(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keymgmt_query_operation_name_fn *)opf->function; }
typedef int(OSSL_FUNC_keymgmt_has_fn) (const void *keydata, int selection); static __attribute__((unused)) inline OSSL_FUNC_keymgmt_has_fn * OSSL_FUNC_keymgmt_has(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keymgmt_has_fn *)opf->function; }
typedef int(OSSL_FUNC_keymgmt_validate_fn) (const void *keydata, int selection, int checktype); static __attribute__((unused)) inline OSSL_FUNC_keymgmt_validate_fn * OSSL_FUNC_keymgmt_validate(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keymgmt_validate_fn *)opf->function; }
typedef int(OSSL_FUNC_keymgmt_match_fn) (const void *keydata1, const void *keydata2, int selection); static __attribute__((unused)) inline OSSL_FUNC_keymgmt_match_fn * OSSL_FUNC_keymgmt_match(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keymgmt_match_fn *)opf->function; }
typedef int(OSSL_FUNC_keymgmt_import_fn) (void *keydata, int selection, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_keymgmt_import_fn * OSSL_FUNC_keymgmt_import(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keymgmt_import_fn *)opf->function; }
typedef const OSSL_PARAM *(OSSL_FUNC_keymgmt_import_types_fn) (int selection); static __attribute__((unused)) inline OSSL_FUNC_keymgmt_import_types_fn * OSSL_FUNC_keymgmt_import_types(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keymgmt_import_types_fn *)opf->function; }
typedef int(OSSL_FUNC_keymgmt_export_fn) (void *keydata, int selection, OSSL_CALLBACK *param_cb, void *cbarg); static __attribute__((unused)) inline OSSL_FUNC_keymgmt_export_fn * OSSL_FUNC_keymgmt_export(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keymgmt_export_fn *)opf->function; }
typedef const OSSL_PARAM *(OSSL_FUNC_keymgmt_export_types_fn) (int selection); static __attribute__((unused)) inline OSSL_FUNC_keymgmt_export_types_fn * OSSL_FUNC_keymgmt_export_types(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keymgmt_export_types_fn *)opf->function; }
typedef void *(OSSL_FUNC_keymgmt_dup_fn) (const void *keydata_from, int selection); static __attribute__((unused)) inline OSSL_FUNC_keymgmt_dup_fn * OSSL_FUNC_keymgmt_dup(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keymgmt_dup_fn *)opf->function; }
typedef const OSSL_PARAM *(OSSL_FUNC_keymgmt_import_types_ex_fn) (void *provctx, int selection); static __attribute__((unused)) inline OSSL_FUNC_keymgmt_import_types_ex_fn * OSSL_FUNC_keymgmt_import_types_ex(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keymgmt_import_types_ex_fn *)opf->function; }
typedef const OSSL_PARAM *(OSSL_FUNC_keymgmt_export_types_ex_fn) (void *provctx, int selection); static __attribute__((unused)) inline OSSL_FUNC_keymgmt_export_types_ex_fn * OSSL_FUNC_keymgmt_export_types_ex(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keymgmt_export_types_ex_fn *)opf->function; }
typedef void *(OSSL_FUNC_keyexch_newctx_fn) (void *provctx); static __attribute__((unused)) inline OSSL_FUNC_keyexch_newctx_fn * OSSL_FUNC_keyexch_newctx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keyexch_newctx_fn *)opf->function; }
typedef int(OSSL_FUNC_keyexch_init_fn) (void *ctx, void *provkey, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_keyexch_init_fn * OSSL_FUNC_keyexch_init(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keyexch_init_fn *)opf->function; }
typedef int(OSSL_FUNC_keyexch_derive_fn) (void *ctx, unsigned char *secret, size_t *secretlen, size_t outlen); static __attribute__((unused)) inline OSSL_FUNC_keyexch_derive_fn * OSSL_FUNC_keyexch_derive(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keyexch_derive_fn *)opf->function; }
typedef int(OSSL_FUNC_keyexch_set_peer_fn) (void *ctx, void *provkey); static __attribute__((unused)) inline OSSL_FUNC_keyexch_set_peer_fn * OSSL_FUNC_keyexch_set_peer(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keyexch_set_peer_fn *)opf->function; }
typedef void(OSSL_FUNC_keyexch_freectx_fn) (void *ctx); static __attribute__((unused)) inline OSSL_FUNC_keyexch_freectx_fn * OSSL_FUNC_keyexch_freectx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keyexch_freectx_fn *)opf->function; }
typedef void *(OSSL_FUNC_keyexch_dupctx_fn) (void *ctx); static __attribute__((unused)) inline OSSL_FUNC_keyexch_dupctx_fn * OSSL_FUNC_keyexch_dupctx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keyexch_dupctx_fn *)opf->function; }
typedef int(OSSL_FUNC_keyexch_set_ctx_params_fn) (void *ctx, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_keyexch_set_ctx_params_fn * OSSL_FUNC_keyexch_set_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keyexch_set_ctx_params_fn *)opf->function; }
typedef const OSSL_PARAM *(OSSL_FUNC_keyexch_settable_ctx_params_fn) (void *ctx, void *provctx); static __attribute__((unused)) inline OSSL_FUNC_keyexch_settable_ctx_params_fn * OSSL_FUNC_keyexch_settable_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keyexch_settable_ctx_params_fn *)opf->function; }
typedef int(OSSL_FUNC_keyexch_get_ctx_params_fn) (void *ctx, OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_keyexch_get_ctx_params_fn * OSSL_FUNC_keyexch_get_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keyexch_get_ctx_params_fn *)opf->function; }
typedef const OSSL_PARAM *(OSSL_FUNC_keyexch_gettable_ctx_params_fn) (void *ctx, void *provctx); static __attribute__((unused)) inline OSSL_FUNC_keyexch_gettable_ctx_params_fn * OSSL_FUNC_keyexch_gettable_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_keyexch_gettable_ctx_params_fn *)opf->function; }
typedef void *(OSSL_FUNC_signature_newctx_fn) (void *provctx, const char *propq); static __attribute__((unused)) inline OSSL_FUNC_signature_newctx_fn * OSSL_FUNC_signature_newctx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_newctx_fn *)opf->function; }
typedef int(OSSL_FUNC_signature_sign_init_fn) (void *ctx, void *provkey, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_signature_sign_init_fn * OSSL_FUNC_signature_sign_init(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_sign_init_fn *)opf->function; }
typedef int(OSSL_FUNC_signature_sign_fn) (void *ctx, unsigned char *sig, size_t *siglen, size_t sigsize, const unsigned char *tbs, size_t tbslen); static __attribute__((unused)) inline OSSL_FUNC_signature_sign_fn * OSSL_FUNC_signature_sign(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_sign_fn *)opf->function; }
typedef int(OSSL_FUNC_signature_sign_message_init_fn) (void *ctx, void *provkey, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_signature_sign_message_init_fn * OSSL_FUNC_signature_sign_message_init(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_sign_message_init_fn *)opf->function; }
typedef int(OSSL_FUNC_signature_sign_message_update_fn) (void *ctx, const unsigned char *in, size_t inlen); static __attribute__((unused)) inline OSSL_FUNC_signature_sign_message_update_fn * OSSL_FUNC_signature_sign_message_update(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_sign_message_update_fn *)opf->function; }
typedef int(OSSL_FUNC_signature_sign_message_final_fn) (void *ctx, unsigned char *sig, size_t *siglen, size_t sigsize); static __attribute__((unused)) inline OSSL_FUNC_signature_sign_message_final_fn * OSSL_FUNC_signature_sign_message_final(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_sign_message_final_fn *)opf->function; }
typedef int(OSSL_FUNC_signature_verify_init_fn) (void *ctx, void *provkey, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_signature_verify_init_fn * OSSL_FUNC_signature_verify_init(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_verify_init_fn *)opf->function; }
typedef int(OSSL_FUNC_signature_verify_fn) (void *ctx, const unsigned char *sig, size_t siglen, const unsigned char *tbs, size_t tbslen); static __attribute__((unused)) inline OSSL_FUNC_signature_verify_fn * OSSL_FUNC_signature_verify(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_verify_fn *)opf->function; }
typedef int(OSSL_FUNC_signature_verify_message_init_fn) (void *ctx, void *provkey, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_signature_verify_message_init_fn * OSSL_FUNC_signature_verify_message_init(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_verify_message_init_fn *)opf->function; }
typedef int(OSSL_FUNC_signature_verify_message_update_fn) (void *ctx, const unsigned char *in, size_t inlen); static __attribute__((unused)) inline OSSL_FUNC_signature_verify_message_update_fn * OSSL_FUNC_signature_verify_message_update(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_verify_message_update_fn *)opf->function; }
typedef int(OSSL_FUNC_signature_verify_message_final_fn) (void *ctx); static __attribute__((unused)) inline OSSL_FUNC_signature_verify_message_final_fn * OSSL_FUNC_signature_verify_message_final(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_verify_message_final_fn *)opf->function; }
typedef int(OSSL_FUNC_signature_verify_recover_init_fn) (void *ctx, void *provkey, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_signature_verify_recover_init_fn * OSSL_FUNC_signature_verify_recover_init(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_verify_recover_init_fn *)opf->function; }
typedef int(OSSL_FUNC_signature_verify_recover_fn) (void *ctx, unsigned char *rout, size_t *routlen, size_t routsize, const unsigned char *sig, size_t siglen); static __attribute__((unused)) inline OSSL_FUNC_signature_verify_recover_fn * OSSL_FUNC_signature_verify_recover(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_verify_recover_fn *)opf->function; }
typedef int(OSSL_FUNC_signature_digest_sign_init_fn) (void *ctx, const char *mdname, void *provkey, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_signature_digest_sign_init_fn * OSSL_FUNC_signature_digest_sign_init(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_digest_sign_init_fn *)opf->function; }
typedef int(OSSL_FUNC_signature_digest_sign_update_fn) (void *ctx, const unsigned char *data, size_t datalen); static __attribute__((unused)) inline OSSL_FUNC_signature_digest_sign_update_fn * OSSL_FUNC_signature_digest_sign_update(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_digest_sign_update_fn *)opf->function; }
typedef int(OSSL_FUNC_signature_digest_sign_final_fn) (void *ctx, unsigned char *sig, size_t *siglen, size_t sigsize); static __attribute__((unused)) inline OSSL_FUNC_signature_digest_sign_final_fn * OSSL_FUNC_signature_digest_sign_final(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_digest_sign_final_fn *)opf->function; }
typedef int(OSSL_FUNC_signature_digest_sign_fn) (void *ctx, unsigned char *sigret, size_t *siglen, size_t sigsize, const unsigned char *tbs, size_t tbslen); static __attribute__((unused)) inline OSSL_FUNC_signature_digest_sign_fn * OSSL_FUNC_signature_digest_sign(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_digest_sign_fn *)opf->function; }
typedef int(OSSL_FUNC_signature_digest_verify_init_fn) (void *ctx, const char *mdname, void *provkey, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_signature_digest_verify_init_fn * OSSL_FUNC_signature_digest_verify_init(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_digest_verify_init_fn *)opf->function; }
typedef int(OSSL_FUNC_signature_digest_verify_update_fn) (void *ctx, const unsigned char *data, size_t datalen); static __attribute__((unused)) inline OSSL_FUNC_signature_digest_verify_update_fn * OSSL_FUNC_signature_digest_verify_update(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_digest_verify_update_fn *)opf->function; }
typedef int(OSSL_FUNC_signature_digest_verify_final_fn) (void *ctx, const unsigned char *sig, size_t siglen); static __attribute__((unused)) inline OSSL_FUNC_signature_digest_verify_final_fn * OSSL_FUNC_signature_digest_verify_final(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_digest_verify_final_fn *)opf->function; }
typedef int(OSSL_FUNC_signature_digest_verify_fn) (void *ctx, const unsigned char *sig, size_t siglen, const unsigned char *tbs, size_t tbslen); static __attribute__((unused)) inline OSSL_FUNC_signature_digest_verify_fn * OSSL_FUNC_signature_digest_verify(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_digest_verify_fn *)opf->function; }
typedef void(OSSL_FUNC_signature_freectx_fn) (void *ctx); static __attribute__((unused)) inline OSSL_FUNC_signature_freectx_fn * OSSL_FUNC_signature_freectx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_freectx_fn *)opf->function; }
typedef void *(OSSL_FUNC_signature_dupctx_fn) (void *ctx); static __attribute__((unused)) inline OSSL_FUNC_signature_dupctx_fn * OSSL_FUNC_signature_dupctx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_dupctx_fn *)opf->function; }
typedef int(OSSL_FUNC_signature_get_ctx_params_fn) (void *ctx, OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_signature_get_ctx_params_fn * OSSL_FUNC_signature_get_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_get_ctx_params_fn *)opf->function; }
typedef const OSSL_PARAM *(OSSL_FUNC_signature_gettable_ctx_params_fn) (void *ctx, void *provctx); static __attribute__((unused)) inline OSSL_FUNC_signature_gettable_ctx_params_fn * OSSL_FUNC_signature_gettable_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_gettable_ctx_params_fn *)opf->function; }
typedef int(OSSL_FUNC_signature_set_ctx_params_fn) (void *ctx, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_signature_set_ctx_params_fn * OSSL_FUNC_signature_set_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_set_ctx_params_fn *)opf->function; }
typedef const OSSL_PARAM *(OSSL_FUNC_signature_settable_ctx_params_fn) (void *ctx, void *provctx); static __attribute__((unused)) inline OSSL_FUNC_signature_settable_ctx_params_fn * OSSL_FUNC_signature_settable_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_settable_ctx_params_fn *)opf->function; }
typedef int(OSSL_FUNC_signature_get_ctx_md_params_fn) (void *ctx, OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_signature_get_ctx_md_params_fn * OSSL_FUNC_signature_get_ctx_md_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_get_ctx_md_params_fn *)opf->function; }
typedef const OSSL_PARAM *(OSSL_FUNC_signature_gettable_ctx_md_params_fn) (void *ctx); static __attribute__((unused)) inline OSSL_FUNC_signature_gettable_ctx_md_params_fn * OSSL_FUNC_signature_gettable_ctx_md_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_gettable_ctx_md_params_fn *)opf->function; }
typedef int(OSSL_FUNC_signature_set_ctx_md_params_fn) (void *ctx, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_signature_set_ctx_md_params_fn * OSSL_FUNC_signature_set_ctx_md_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_set_ctx_md_params_fn *)opf->function; }
typedef const OSSL_PARAM *(OSSL_FUNC_signature_settable_ctx_md_params_fn) (void *ctx); static __attribute__((unused)) inline OSSL_FUNC_signature_settable_ctx_md_params_fn * OSSL_FUNC_signature_settable_ctx_md_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_settable_ctx_md_params_fn *)opf->function; }
typedef const char **(OSSL_FUNC_signature_query_key_types_fn) (void); static __attribute__((unused)) inline OSSL_FUNC_signature_query_key_types_fn * OSSL_FUNC_signature_query_key_types(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_signature_query_key_types_fn *)opf->function; }
typedef void(OSSL_FUNC_skeymgmt_free_fn) (void *keydata); static __attribute__((unused)) inline OSSL_FUNC_skeymgmt_free_fn * OSSL_FUNC_skeymgmt_free(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_skeymgmt_free_fn *)opf->function; }
typedef const OSSL_PARAM *(OSSL_FUNC_skeymgmt_imp_settable_params_fn) (void *provctx); static __attribute__((unused)) inline OSSL_FUNC_skeymgmt_imp_settable_params_fn * OSSL_FUNC_skeymgmt_imp_settable_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_skeymgmt_imp_settable_params_fn *)opf->function; }
typedef void *(OSSL_FUNC_skeymgmt_import_fn) (void *provctx, int selection, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_skeymgmt_import_fn * OSSL_FUNC_skeymgmt_import(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_skeymgmt_import_fn *)opf->function; }
typedef int(OSSL_FUNC_skeymgmt_export_fn) (void *keydata, int selection, OSSL_CALLBACK *param_cb, void *cbarg); static __attribute__((unused)) inline OSSL_FUNC_skeymgmt_export_fn * OSSL_FUNC_skeymgmt_export(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_skeymgmt_export_fn *)opf->function; }
typedef const OSSL_PARAM *(OSSL_FUNC_skeymgmt_gen_settable_params_fn) (void *provctx); static __attribute__((unused)) inline OSSL_FUNC_skeymgmt_gen_settable_params_fn * OSSL_FUNC_skeymgmt_gen_settable_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_skeymgmt_gen_settable_params_fn *)opf->function; }
typedef void *(OSSL_FUNC_skeymgmt_generate_fn) (void *provctx, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_skeymgmt_generate_fn * OSSL_FUNC_skeymgmt_generate(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_skeymgmt_generate_fn *)opf->function; }
typedef const char *(OSSL_FUNC_skeymgmt_get_key_id_fn) (void *keydata); static __attribute__((unused)) inline OSSL_FUNC_skeymgmt_get_key_id_fn * OSSL_FUNC_skeymgmt_get_key_id(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_skeymgmt_get_key_id_fn *)opf->function; }
typedef void *(OSSL_FUNC_asym_cipher_newctx_fn) (void *provctx); static __attribute__((unused)) inline OSSL_FUNC_asym_cipher_newctx_fn * OSSL_FUNC_asym_cipher_newctx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_asym_cipher_newctx_fn *)opf->function; }
typedef int(OSSL_FUNC_asym_cipher_encrypt_init_fn) (void *ctx, void *provkey, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_asym_cipher_encrypt_init_fn * OSSL_FUNC_asym_cipher_encrypt_init(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_asym_cipher_encrypt_init_fn *)opf->function; }
typedef int(OSSL_FUNC_asym_cipher_encrypt_fn) (void *ctx, unsigned char *out, size_t *outlen, size_t outsize, const unsigned char *in, size_t inlen); static __attribute__((unused)) inline OSSL_FUNC_asym_cipher_encrypt_fn * OSSL_FUNC_asym_cipher_encrypt(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_asym_cipher_encrypt_fn *)opf->function; }
typedef int(OSSL_FUNC_asym_cipher_decrypt_init_fn) (void *ctx, void *provkey, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_asym_cipher_decrypt_init_fn * OSSL_FUNC_asym_cipher_decrypt_init(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_asym_cipher_decrypt_init_fn *)opf->function; }
typedef int(OSSL_FUNC_asym_cipher_decrypt_fn) (void *ctx, unsigned char *out, size_t *outlen, size_t outsize, const unsigned char *in, size_t inlen); static __attribute__((unused)) inline OSSL_FUNC_asym_cipher_decrypt_fn * OSSL_FUNC_asym_cipher_decrypt(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_asym_cipher_decrypt_fn *)opf->function; }
typedef void(OSSL_FUNC_asym_cipher_freectx_fn) (void *ctx); static __attribute__((unused)) inline OSSL_FUNC_asym_cipher_freectx_fn * OSSL_FUNC_asym_cipher_freectx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_asym_cipher_freectx_fn *)opf->function; }
typedef void *(OSSL_FUNC_asym_cipher_dupctx_fn) (void *ctx); static __attribute__((unused)) inline OSSL_FUNC_asym_cipher_dupctx_fn * OSSL_FUNC_asym_cipher_dupctx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_asym_cipher_dupctx_fn *)opf->function; }
typedef int(OSSL_FUNC_asym_cipher_get_ctx_params_fn) (void *ctx, OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_asym_cipher_get_ctx_params_fn * OSSL_FUNC_asym_cipher_get_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_asym_cipher_get_ctx_params_fn *)opf->function; }
typedef const OSSL_PARAM *(OSSL_FUNC_asym_cipher_gettable_ctx_params_fn) (void *ctx, void *provctx); static __attribute__((unused)) inline OSSL_FUNC_asym_cipher_gettable_ctx_params_fn * OSSL_FUNC_asym_cipher_gettable_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_asym_cipher_gettable_ctx_params_fn *)opf->function; }
typedef int(OSSL_FUNC_asym_cipher_set_ctx_params_fn) (void *ctx, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_asym_cipher_set_ctx_params_fn * OSSL_FUNC_asym_cipher_set_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_asym_cipher_set_ctx_params_fn *)opf->function; }
typedef const OSSL_PARAM *(OSSL_FUNC_asym_cipher_settable_ctx_params_fn) (void *ctx, void *provctx); static __attribute__((unused)) inline OSSL_FUNC_asym_cipher_settable_ctx_params_fn * OSSL_FUNC_asym_cipher_settable_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_asym_cipher_settable_ctx_params_fn *)opf->function; }
typedef void *(OSSL_FUNC_kem_newctx_fn) (void *provctx); static __attribute__((unused)) inline OSSL_FUNC_kem_newctx_fn * OSSL_FUNC_kem_newctx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_kem_newctx_fn *)opf->function; }
typedef int(OSSL_FUNC_kem_encapsulate_init_fn) (void *ctx, void *provkey, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_kem_encapsulate_init_fn * OSSL_FUNC_kem_encapsulate_init(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_kem_encapsulate_init_fn *)opf->function; }
typedef int(OSSL_FUNC_kem_auth_encapsulate_init_fn) (void *ctx, void *provkey, void *authprivkey, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_kem_auth_encapsulate_init_fn * OSSL_FUNC_kem_auth_encapsulate_init(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_kem_auth_encapsulate_init_fn *)opf->function; }
typedef int(OSSL_FUNC_kem_encapsulate_fn) (void *ctx, unsigned char *out, size_t *outlen, unsigned char *secret, size_t *secretlen); static __attribute__((unused)) inline OSSL_FUNC_kem_encapsulate_fn * OSSL_FUNC_kem_encapsulate(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_kem_encapsulate_fn *)opf->function; }
typedef int(OSSL_FUNC_kem_decapsulate_init_fn) (void *ctx, void *provkey, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_kem_decapsulate_init_fn * OSSL_FUNC_kem_decapsulate_init(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_kem_decapsulate_init_fn *)opf->function; }
typedef int(OSSL_FUNC_kem_auth_decapsulate_init_fn) (void *ctx, void *provkey, void *authpubkey, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_kem_auth_decapsulate_init_fn * OSSL_FUNC_kem_auth_decapsulate_init(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_kem_auth_decapsulate_init_fn *)opf->function; }
typedef int(OSSL_FUNC_kem_decapsulate_fn) (void *ctx, unsigned char *out, size_t *outlen, const unsigned char *in, size_t inlen); static __attribute__((unused)) inline OSSL_FUNC_kem_decapsulate_fn * OSSL_FUNC_kem_decapsulate(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_kem_decapsulate_fn *)opf->function; }
typedef void(OSSL_FUNC_kem_freectx_fn) (void *ctx); static __attribute__((unused)) inline OSSL_FUNC_kem_freectx_fn * OSSL_FUNC_kem_freectx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_kem_freectx_fn *)opf->function; }
typedef void *(OSSL_FUNC_kem_dupctx_fn) (void *ctx); static __attribute__((unused)) inline OSSL_FUNC_kem_dupctx_fn * OSSL_FUNC_kem_dupctx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_kem_dupctx_fn *)opf->function; }
typedef int(OSSL_FUNC_kem_get_ctx_params_fn) (void *ctx, OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_kem_get_ctx_params_fn * OSSL_FUNC_kem_get_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_kem_get_ctx_params_fn *)opf->function; }
typedef const OSSL_PARAM *(OSSL_FUNC_kem_gettable_ctx_params_fn) (void *ctx, void *provctx); static __attribute__((unused)) inline OSSL_FUNC_kem_gettable_ctx_params_fn * OSSL_FUNC_kem_gettable_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_kem_gettable_ctx_params_fn *)opf->function; }
typedef int(OSSL_FUNC_kem_set_ctx_params_fn) (void *ctx, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_kem_set_ctx_params_fn * OSSL_FUNC_kem_set_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_kem_set_ctx_params_fn *)opf->function; }
typedef const OSSL_PARAM *(OSSL_FUNC_kem_settable_ctx_params_fn) (void *ctx, void *provctx); static __attribute__((unused)) inline OSSL_FUNC_kem_settable_ctx_params_fn * OSSL_FUNC_kem_settable_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_kem_settable_ctx_params_fn *)opf->function; }
typedef void *(OSSL_FUNC_encoder_newctx_fn) (void *provctx); static __attribute__((unused)) inline OSSL_FUNC_encoder_newctx_fn * OSSL_FUNC_encoder_newctx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_encoder_newctx_fn *)opf->function; }
typedef void(OSSL_FUNC_encoder_freectx_fn) (void *ctx); static __attribute__((unused)) inline OSSL_FUNC_encoder_freectx_fn * OSSL_FUNC_encoder_freectx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_encoder_freectx_fn *)opf->function; }
typedef int(OSSL_FUNC_encoder_get_params_fn) (OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_encoder_get_params_fn * OSSL_FUNC_encoder_get_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_encoder_get_params_fn *)opf->function; }
typedef const OSSL_PARAM *(OSSL_FUNC_encoder_gettable_params_fn) (void *provctx); static __attribute__((unused)) inline OSSL_FUNC_encoder_gettable_params_fn * OSSL_FUNC_encoder_gettable_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_encoder_gettable_params_fn *)opf->function; }
typedef int(OSSL_FUNC_encoder_set_ctx_params_fn) (void *ctx, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_encoder_set_ctx_params_fn * OSSL_FUNC_encoder_set_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_encoder_set_ctx_params_fn *)opf->function; }
typedef const OSSL_PARAM *(OSSL_FUNC_encoder_settable_ctx_params_fn) (void *provctx); static __attribute__((unused)) inline OSSL_FUNC_encoder_settable_ctx_params_fn * OSSL_FUNC_encoder_settable_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_encoder_settable_ctx_params_fn *)opf->function; }
typedef int(OSSL_FUNC_encoder_does_selection_fn) (void *provctx, int selection); static __attribute__((unused)) inline OSSL_FUNC_encoder_does_selection_fn * OSSL_FUNC_encoder_does_selection(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_encoder_does_selection_fn *)opf->function; }
typedef int(OSSL_FUNC_encoder_encode_fn) (void *ctx, OSSL_CORE_BIO *out, const void *obj_raw, const OSSL_PARAM obj_abstract[], int selection, OSSL_PASSPHRASE_CALLBACK *cb, void *cbarg); static __attribute__((unused)) inline OSSL_FUNC_encoder_encode_fn * OSSL_FUNC_encoder_encode(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_encoder_encode_fn *)opf->function; }
typedef void *(OSSL_FUNC_encoder_import_object_fn) (void *ctx, int selection, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_encoder_import_object_fn * OSSL_FUNC_encoder_import_object(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_encoder_import_object_fn *)opf->function; }
typedef void(OSSL_FUNC_encoder_free_object_fn) (void *obj); static __attribute__((unused)) inline OSSL_FUNC_encoder_free_object_fn * OSSL_FUNC_encoder_free_object(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_encoder_free_object_fn *)opf->function; }
typedef void *(OSSL_FUNC_decoder_newctx_fn) (void *provctx); static __attribute__((unused)) inline OSSL_FUNC_decoder_newctx_fn * OSSL_FUNC_decoder_newctx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_decoder_newctx_fn *)opf->function; }
typedef void(OSSL_FUNC_decoder_freectx_fn) (void *ctx); static __attribute__((unused)) inline OSSL_FUNC_decoder_freectx_fn * OSSL_FUNC_decoder_freectx(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_decoder_freectx_fn *)opf->function; }
typedef int(OSSL_FUNC_decoder_get_params_fn) (OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_decoder_get_params_fn * OSSL_FUNC_decoder_get_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_decoder_get_params_fn *)opf->function; }
typedef const OSSL_PARAM *(OSSL_FUNC_decoder_gettable_params_fn) (void *provctx); static __attribute__((unused)) inline OSSL_FUNC_decoder_gettable_params_fn * OSSL_FUNC_decoder_gettable_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_decoder_gettable_params_fn *)opf->function; }
typedef int(OSSL_FUNC_decoder_set_ctx_params_fn) (void *ctx, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_decoder_set_ctx_params_fn * OSSL_FUNC_decoder_set_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_decoder_set_ctx_params_fn *)opf->function; }
typedef const OSSL_PARAM *(OSSL_FUNC_decoder_settable_ctx_params_fn) (void *provctx); static __attribute__((unused)) inline OSSL_FUNC_decoder_settable_ctx_params_fn * OSSL_FUNC_decoder_settable_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_decoder_settable_ctx_params_fn *)opf->function; }
typedef int(OSSL_FUNC_decoder_does_selection_fn) (void *provctx, int selection); static __attribute__((unused)) inline OSSL_FUNC_decoder_does_selection_fn * OSSL_FUNC_decoder_does_selection(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_decoder_does_selection_fn *)opf->function; }
typedef int(OSSL_FUNC_decoder_decode_fn) (void *ctx, OSSL_CORE_BIO *in, int selection, OSSL_CALLBACK *data_cb, void *data_cbarg, OSSL_PASSPHRASE_CALLBACK *pw_cb, void *pw_cbarg); static __attribute__((unused)) inline OSSL_FUNC_decoder_decode_fn * OSSL_FUNC_decoder_decode(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_decoder_decode_fn *)opf->function; }
typedef int(OSSL_FUNC_decoder_export_object_fn) (void *ctx, const void *objref, size_t objref_sz, OSSL_CALLBACK *export_cb, void *export_cbarg); static __attribute__((unused)) inline OSSL_FUNC_decoder_export_object_fn * OSSL_FUNC_decoder_export_object(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_decoder_export_object_fn *)opf->function; }
typedef void *(OSSL_FUNC_store_open_fn) (void *provctx, const char *uri); static __attribute__((unused)) inline OSSL_FUNC_store_open_fn * OSSL_FUNC_store_open(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_store_open_fn *)opf->function; }
typedef void *(OSSL_FUNC_store_attach_fn) (void *provctx, OSSL_CORE_BIO *in); static __attribute__((unused)) inline OSSL_FUNC_store_attach_fn * OSSL_FUNC_store_attach(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_store_attach_fn *)opf->function; }
typedef const OSSL_PARAM *(OSSL_FUNC_store_settable_ctx_params_fn) (void *provctx); static __attribute__((unused)) inline OSSL_FUNC_store_settable_ctx_params_fn * OSSL_FUNC_store_settable_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_store_settable_ctx_params_fn *)opf->function; }
typedef int(OSSL_FUNC_store_set_ctx_params_fn) (void *loaderctx, const OSSL_PARAM params[]); static __attribute__((unused)) inline OSSL_FUNC_store_set_ctx_params_fn * OSSL_FUNC_store_set_ctx_params(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_store_set_ctx_params_fn *)opf->function; }
typedef int(OSSL_FUNC_store_load_fn) (void *loaderctx, OSSL_CALLBACK *object_cb, void *object_cbarg, OSSL_PASSPHRASE_CALLBACK *pw_cb, void *pw_cbarg); static __attribute__((unused)) inline OSSL_FUNC_store_load_fn * OSSL_FUNC_store_load(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_store_load_fn *)opf->function; }
typedef int(OSSL_FUNC_store_eof_fn) (void *loaderctx); static __attribute__((unused)) inline OSSL_FUNC_store_eof_fn * OSSL_FUNC_store_eof(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_store_eof_fn *)opf->function; }
typedef int(OSSL_FUNC_store_close_fn) (void *loaderctx); static __attribute__((unused)) inline OSSL_FUNC_store_close_fn * OSSL_FUNC_store_close(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_store_close_fn *)opf->function; }
typedef int(OSSL_FUNC_store_export_object_fn) (void *loaderctx, const void *objref, size_t objref_sz, OSSL_CALLBACK *export_cb, void *export_cbarg); static __attribute__((unused)) inline OSSL_FUNC_store_export_object_fn * OSSL_FUNC_store_export_object(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_store_export_object_fn *)opf->function; }
typedef int(OSSL_FUNC_store_delete_fn) (void *provctx, const char *uri, const OSSL_PARAM params[], OSSL_PASSPHRASE_CALLBACK *pw_cb, void *pw_cbarg); static __attribute__((unused)) inline OSSL_FUNC_store_delete_fn * OSSL_FUNC_store_delete(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_store_delete_fn *)opf->function; }
typedef void *(OSSL_FUNC_store_open_ex_fn) (void *provctx, const char *uri, const OSSL_PARAM params[], OSSL_PASSPHRASE_CALLBACK *pw_cb, void *pw_cbarg); static __attribute__((unused)) inline OSSL_FUNC_store_open_ex_fn * OSSL_FUNC_store_open_ex(const OSSL_DISPATCH *opf) { return (OSSL_FUNC_store_open_ex_fn *)opf->function; }
       
       
        
       
       
struct stack_st_X509_ALGOR; typedef int (*sk_X509_ALGOR_compfunc)(const X509_ALGOR *const *a, const X509_ALGOR *const *b); typedef void (*sk_X509_ALGOR_freefunc)(X509_ALGOR * a); typedef X509_ALGOR *(*sk_X509_ALGOR_copyfunc)(const X509_ALGOR *a); static __attribute__((unused)) inline X509_ALGOR *ossl_check_X509_ALGOR_type(X509_ALGOR *ptr) { return ptr; } static __attribute__((unused)) inline const OPENSSL_STACK *ossl_check_const_X509_ALGOR_sk_type(const struct stack_st_X509_ALGOR *sk) { return (const OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_STACK *ossl_check_X509_ALGOR_sk_type(struct stack_st_X509_ALGOR *sk) { return (OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_sk_compfunc ossl_check_X509_ALGOR_compfunc_type(sk_X509_ALGOR_compfunc cmp) { return (OPENSSL_sk_compfunc)cmp; } static __attribute__((unused)) inline OPENSSL_sk_copyfunc ossl_check_X509_ALGOR_copyfunc_type(sk_X509_ALGOR_copyfunc cpy) { return (OPENSSL_sk_copyfunc)cpy; } static __attribute__((unused)) inline OPENSSL_sk_freefunc ossl_check_X509_ALGOR_freefunc_type(sk_X509_ALGOR_freefunc fr) { return (OPENSSL_sk_freefunc)fr; }
struct asn1_string_st {
    int length;
    int type;
    unsigned char *data;
    long flags;
};
typedef struct ASN1_ENCODING_st {
    unsigned char *enc;
    long len;
    int modified;
} ASN1_ENCODING;
struct asn1_string_table_st {
    int nid;
    long minsize;
    long maxsize;
    unsigned long mask;
    unsigned long flags;
};
struct stack_st_ASN1_STRING_TABLE; typedef int (*sk_ASN1_STRING_TABLE_compfunc)(const ASN1_STRING_TABLE *const *a, const ASN1_STRING_TABLE *const *b); typedef void (*sk_ASN1_STRING_TABLE_freefunc)(ASN1_STRING_TABLE * a); typedef ASN1_STRING_TABLE *(*sk_ASN1_STRING_TABLE_copyfunc)(const ASN1_STRING_TABLE *a); static __attribute__((unused)) inline ASN1_STRING_TABLE *ossl_check_ASN1_STRING_TABLE_type(ASN1_STRING_TABLE *ptr) { return ptr; } static __attribute__((unused)) inline const OPENSSL_STACK *ossl_check_const_ASN1_STRING_TABLE_sk_type(const struct stack_st_ASN1_STRING_TABLE *sk) { return (const OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_STACK *ossl_check_ASN1_STRING_TABLE_sk_type(struct stack_st_ASN1_STRING_TABLE *sk) { return (OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_sk_compfunc ossl_check_ASN1_STRING_TABLE_compfunc_type(sk_ASN1_STRING_TABLE_compfunc cmp) { return (OPENSSL_sk_compfunc)cmp; } static __attribute__((unused)) inline OPENSSL_sk_copyfunc ossl_check_ASN1_STRING_TABLE_copyfunc_type(sk_ASN1_STRING_TABLE_copyfunc cpy) { return (OPENSSL_sk_copyfunc)cpy; } static __attribute__((unused)) inline OPENSSL_sk_freefunc ossl_check_ASN1_STRING_TABLE_freefunc_type(sk_ASN1_STRING_TABLE_freefunc fr) { return (OPENSSL_sk_freefunc)fr; }
typedef struct ASN1_TEMPLATE_st ASN1_TEMPLATE;
typedef struct ASN1_TLC_st ASN1_TLC;
typedef struct ASN1_VALUE_st ASN1_VALUE;
typedef void *d2i_of_void(void **, const unsigned char **, long);
typedef int i2d_of_void(const void *, unsigned char **);
typedef int OSSL_i2d_of_void_ctx(const void *, unsigned char **, void *vctx);
typedef const ASN1_ITEM *ASN1_ITEM_EXP(void);
struct asn1_type_st {
    int type;
    union {
        char *ptr;
        ASN1_BOOLEAN boolean;
        ASN1_STRING *asn1_string;
        ASN1_OBJECT *object;
        ASN1_INTEGER *integer;
        ASN1_ENUMERATED *enumerated;
        ASN1_BIT_STRING *bit_string;
        ASN1_OCTET_STRING *octet_string;
        ASN1_PRINTABLESTRING *printablestring;
        ASN1_T61STRING *t61string;
        ASN1_IA5STRING *ia5string;
        ASN1_GENERALSTRING *generalstring;
        ASN1_BMPSTRING *bmpstring;
        ASN1_UNIVERSALSTRING *universalstring;
        ASN1_UTCTIME *utctime;
        ASN1_GENERALIZEDTIME *generalizedtime;
        ASN1_VISIBLESTRING *visiblestring;
        ASN1_UTF8STRING *utf8string;
        ASN1_STRING *set;
        ASN1_STRING *sequence;
        ASN1_VALUE *asn1_value;
    } value;
};
struct stack_st_ASN1_TYPE; typedef int (*sk_ASN1_TYPE_compfunc)(const ASN1_TYPE *const *a, const ASN1_TYPE *const *b); typedef void (*sk_ASN1_TYPE_freefunc)(ASN1_TYPE * a); typedef ASN1_TYPE *(*sk_ASN1_TYPE_copyfunc)(const ASN1_TYPE *a); static __attribute__((unused)) inline ASN1_TYPE *ossl_check_ASN1_TYPE_type(ASN1_TYPE *ptr) { return ptr; } static __attribute__((unused)) inline const OPENSSL_STACK *ossl_check_const_ASN1_TYPE_sk_type(const struct stack_st_ASN1_TYPE *sk) { return (const OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_STACK *ossl_check_ASN1_TYPE_sk_type(struct stack_st_ASN1_TYPE *sk) { return (OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_sk_compfunc ossl_check_ASN1_TYPE_compfunc_type(sk_ASN1_TYPE_compfunc cmp) { return (OPENSSL_sk_compfunc)cmp; } static __attribute__((unused)) inline OPENSSL_sk_copyfunc ossl_check_ASN1_TYPE_copyfunc_type(sk_ASN1_TYPE_copyfunc cpy) { return (OPENSSL_sk_copyfunc)cpy; } static __attribute__((unused)) inline OPENSSL_sk_freefunc ossl_check_ASN1_TYPE_freefunc_type(sk_ASN1_TYPE_freefunc fr) { return (OPENSSL_sk_freefunc)fr; }
typedef struct stack_st_ASN1_TYPE ASN1_SEQUENCE_ANY;
extern ASN1_SEQUENCE_ANY *d2i_ASN1_SEQUENCE_ANY(ASN1_SEQUENCE_ANY **a, const unsigned char **in, long len); extern int i2d_ASN1_SEQUENCE_ANY(const ASN1_SEQUENCE_ANY *a, unsigned char **out); extern const ASN1_ITEM *ASN1_SEQUENCE_ANY_it(void);
extern ASN1_SEQUENCE_ANY *d2i_ASN1_SET_ANY(ASN1_SEQUENCE_ANY **a, const unsigned char **in, long len); extern int i2d_ASN1_SET_ANY(const ASN1_SEQUENCE_ANY *a, unsigned char **out); extern const ASN1_ITEM *ASN1_SET_ANY_it(void);
typedef struct BIT_STRING_BITNAME_st {
    int bitnum;
    const char *lname;
    const char *sname;
} BIT_STRING_BITNAME;
extern ASN1_TYPE *ASN1_TYPE_new(void); extern void ASN1_TYPE_free(ASN1_TYPE *a);
extern ASN1_TYPE *d2i_ASN1_TYPE(ASN1_TYPE **a, const unsigned char **in, long len); extern int i2d_ASN1_TYPE(const ASN1_TYPE *a, unsigned char **out); extern const ASN1_ITEM *ASN1_ANY_it(void);
int ASN1_TYPE_get(const ASN1_TYPE *a);
void ASN1_TYPE_set(ASN1_TYPE *a, int type, void *value);
int ASN1_TYPE_set1(ASN1_TYPE *a, int type, const void *value);
int ASN1_TYPE_cmp(const ASN1_TYPE *a, const ASN1_TYPE *b);
ASN1_TYPE *ASN1_TYPE_pack_sequence(const ASN1_ITEM *it, void *s, ASN1_TYPE **t);
void *ASN1_TYPE_unpack_sequence(const ASN1_ITEM *it, const ASN1_TYPE *t);
struct stack_st_ASN1_OBJECT; typedef int (*sk_ASN1_OBJECT_compfunc)(const ASN1_OBJECT *const *a, const ASN1_OBJECT *const *b); typedef void (*sk_ASN1_OBJECT_freefunc)(ASN1_OBJECT * a); typedef ASN1_OBJECT *(*sk_ASN1_OBJECT_copyfunc)(const ASN1_OBJECT *a); static __attribute__((unused)) inline ASN1_OBJECT *ossl_check_ASN1_OBJECT_type(ASN1_OBJECT *ptr) { return ptr; } static __attribute__((unused)) inline const OPENSSL_STACK *ossl_check_const_ASN1_OBJECT_sk_type(const struct stack_st_ASN1_OBJECT *sk) { return (const OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_STACK *ossl_check_ASN1_OBJECT_sk_type(struct stack_st_ASN1_OBJECT *sk) { return (OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_sk_compfunc ossl_check_ASN1_OBJECT_compfunc_type(sk_ASN1_OBJECT_compfunc cmp) { return (OPENSSL_sk_compfunc)cmp; } static __attribute__((unused)) inline OPENSSL_sk_copyfunc ossl_check_ASN1_OBJECT_copyfunc_type(sk_ASN1_OBJECT_copyfunc cpy) { return (OPENSSL_sk_copyfunc)cpy; } static __attribute__((unused)) inline OPENSSL_sk_freefunc ossl_check_ASN1_OBJECT_freefunc_type(sk_ASN1_OBJECT_freefunc fr) { return (OPENSSL_sk_freefunc)fr; }
extern ASN1_OBJECT *ASN1_OBJECT_new(void); extern void ASN1_OBJECT_free(ASN1_OBJECT *a); extern ASN1_OBJECT *d2i_ASN1_OBJECT(ASN1_OBJECT **a, const unsigned char **in, long len); extern int i2d_ASN1_OBJECT(const ASN1_OBJECT *a, unsigned char **out); extern const ASN1_ITEM *ASN1_OBJECT_it(void);
ASN1_STRING *ASN1_STRING_new(void);
void ASN1_STRING_free(ASN1_STRING *a);
void ASN1_STRING_clear_free(ASN1_STRING *a);
int ASN1_STRING_copy(ASN1_STRING *dst, const ASN1_STRING *str);
extern ASN1_STRING *ASN1_STRING_dup(const ASN1_STRING *a);
ASN1_STRING *ASN1_STRING_type_new(int type);
int ASN1_STRING_cmp(const ASN1_STRING *a, const ASN1_STRING *b);
int ASN1_STRING_set(ASN1_STRING *str, const void *data, int len);
void ASN1_STRING_set0(ASN1_STRING *str, void *data, int len);
int ASN1_STRING_length(const ASN1_STRING *x);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void ASN1_STRING_length_set(ASN1_STRING *x, int n);
int ASN1_STRING_type(const ASN1_STRING *x);
__attribute__((deprecated("Since OpenSSL " "1.1.0"))) unsigned char *ASN1_STRING_data(ASN1_STRING *x);
const unsigned char *ASN1_STRING_get0_data(const ASN1_STRING *x);
extern ASN1_BIT_STRING *ASN1_BIT_STRING_new(void); extern void ASN1_BIT_STRING_free(ASN1_BIT_STRING *a); extern ASN1_BIT_STRING *d2i_ASN1_BIT_STRING(ASN1_BIT_STRING **a, const unsigned char **in, long len); extern int i2d_ASN1_BIT_STRING(const ASN1_BIT_STRING *a, unsigned char **out); extern const ASN1_ITEM *ASN1_BIT_STRING_it(void);
int ASN1_BIT_STRING_set(ASN1_BIT_STRING *a, unsigned char *d, int length);
int ASN1_BIT_STRING_set_bit(ASN1_BIT_STRING *a, int n, int value);
int ASN1_BIT_STRING_get_bit(const ASN1_BIT_STRING *a, int n);
int ASN1_BIT_STRING_check(const ASN1_BIT_STRING *a,
    const unsigned char *flags, int flags_len);
int ASN1_BIT_STRING_name_print(BIO *out, ASN1_BIT_STRING *bs,
    BIT_STRING_BITNAME *tbl, int indent);
int ASN1_BIT_STRING_num_asc(const char *name, BIT_STRING_BITNAME *tbl);
int ASN1_BIT_STRING_set_asc(ASN1_BIT_STRING *bs, const char *name, int value,
    BIT_STRING_BITNAME *tbl);
struct stack_st_ASN1_INTEGER; typedef int (*sk_ASN1_INTEGER_compfunc)(const ASN1_INTEGER *const *a, const ASN1_INTEGER *const *b); typedef void (*sk_ASN1_INTEGER_freefunc)(ASN1_INTEGER * a); typedef ASN1_INTEGER *(*sk_ASN1_INTEGER_copyfunc)(const ASN1_INTEGER *a); static __attribute__((unused)) inline ASN1_INTEGER *ossl_check_ASN1_INTEGER_type(ASN1_INTEGER *ptr) { return ptr; } static __attribute__((unused)) inline const OPENSSL_STACK *ossl_check_const_ASN1_INTEGER_sk_type(const struct stack_st_ASN1_INTEGER *sk) { return (const OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_STACK *ossl_check_ASN1_INTEGER_sk_type(struct stack_st_ASN1_INTEGER *sk) { return (OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_sk_compfunc ossl_check_ASN1_INTEGER_compfunc_type(sk_ASN1_INTEGER_compfunc cmp) { return (OPENSSL_sk_compfunc)cmp; } static __attribute__((unused)) inline OPENSSL_sk_copyfunc ossl_check_ASN1_INTEGER_copyfunc_type(sk_ASN1_INTEGER_copyfunc cpy) { return (OPENSSL_sk_copyfunc)cpy; } static __attribute__((unused)) inline OPENSSL_sk_freefunc ossl_check_ASN1_INTEGER_freefunc_type(sk_ASN1_INTEGER_freefunc fr) { return (OPENSSL_sk_freefunc)fr; }
extern ASN1_INTEGER *ASN1_INTEGER_new(void); extern void ASN1_INTEGER_free(ASN1_INTEGER *a); extern ASN1_INTEGER *d2i_ASN1_INTEGER(ASN1_INTEGER **a, const unsigned char **in, long len); extern int i2d_ASN1_INTEGER(const ASN1_INTEGER *a, unsigned char **out); extern const ASN1_ITEM *ASN1_INTEGER_it(void);
ASN1_INTEGER *d2i_ASN1_UINTEGER(ASN1_INTEGER **a, const unsigned char **pp,
    long length);
extern ASN1_INTEGER *ASN1_INTEGER_dup(const ASN1_INTEGER *a);
int ASN1_INTEGER_cmp(const ASN1_INTEGER *x, const ASN1_INTEGER *y);
extern ASN1_ENUMERATED *ASN1_ENUMERATED_new(void); extern void ASN1_ENUMERATED_free(ASN1_ENUMERATED *a); extern ASN1_ENUMERATED *d2i_ASN1_ENUMERATED(ASN1_ENUMERATED **a, const unsigned char **in, long len); extern int i2d_ASN1_ENUMERATED(const ASN1_ENUMERATED *a, unsigned char **out); extern const ASN1_ITEM *ASN1_ENUMERATED_it(void);
int ASN1_UTCTIME_check(const ASN1_UTCTIME *a);
ASN1_UTCTIME *ASN1_UTCTIME_set(ASN1_UTCTIME *s, time_t t);
ASN1_UTCTIME *ASN1_UTCTIME_adj(ASN1_UTCTIME *s, time_t t,
    int offset_day, long offset_sec);
int ASN1_UTCTIME_set_string(ASN1_UTCTIME *s, const char *str);
int ASN1_UTCTIME_cmp_time_t(const ASN1_UTCTIME *s, time_t t);
int ASN1_GENERALIZEDTIME_check(const ASN1_GENERALIZEDTIME *a);
ASN1_GENERALIZEDTIME *ASN1_GENERALIZEDTIME_set(ASN1_GENERALIZEDTIME *s,
    time_t t);
ASN1_GENERALIZEDTIME *ASN1_GENERALIZEDTIME_adj(ASN1_GENERALIZEDTIME *s,
    time_t t, int offset_day,
    long offset_sec);
int ASN1_GENERALIZEDTIME_set_string(ASN1_GENERALIZEDTIME *s, const char *str);
int ASN1_TIME_diff(int *pday, int *psec,
    const ASN1_TIME *from, const ASN1_TIME *to);
extern ASN1_OCTET_STRING *ASN1_OCTET_STRING_new(void); extern void ASN1_OCTET_STRING_free(ASN1_OCTET_STRING *a); extern ASN1_OCTET_STRING *d2i_ASN1_OCTET_STRING(ASN1_OCTET_STRING **a, const unsigned char **in, long len); extern int i2d_ASN1_OCTET_STRING(const ASN1_OCTET_STRING *a, unsigned char **out); extern const ASN1_ITEM *ASN1_OCTET_STRING_it(void);
extern ASN1_OCTET_STRING *ASN1_OCTET_STRING_dup(const ASN1_OCTET_STRING *a);
int ASN1_OCTET_STRING_cmp(const ASN1_OCTET_STRING *a,
    const ASN1_OCTET_STRING *b);
int ASN1_OCTET_STRING_set(ASN1_OCTET_STRING *str, const unsigned char *data,
    int len);
struct stack_st_ASN1_UTF8STRING; typedef int (*sk_ASN1_UTF8STRING_compfunc)(const ASN1_UTF8STRING *const *a, const ASN1_UTF8STRING *const *b); typedef void (*sk_ASN1_UTF8STRING_freefunc)(ASN1_UTF8STRING * a); typedef ASN1_UTF8STRING *(*sk_ASN1_UTF8STRING_copyfunc)(const ASN1_UTF8STRING *a); static __attribute__((unused)) inline ASN1_UTF8STRING *ossl_check_ASN1_UTF8STRING_type(ASN1_UTF8STRING *ptr) { return ptr; } static __attribute__((unused)) inline const OPENSSL_STACK *ossl_check_const_ASN1_UTF8STRING_sk_type(const struct stack_st_ASN1_UTF8STRING *sk) { return (const OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_STACK *ossl_check_ASN1_UTF8STRING_sk_type(struct stack_st_ASN1_UTF8STRING *sk) { return (OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_sk_compfunc ossl_check_ASN1_UTF8STRING_compfunc_type(sk_ASN1_UTF8STRING_compfunc cmp) { return (OPENSSL_sk_compfunc)cmp; } static __attribute__((unused)) inline OPENSSL_sk_copyfunc ossl_check_ASN1_UTF8STRING_copyfunc_type(sk_ASN1_UTF8STRING_copyfunc cpy) { return (OPENSSL_sk_copyfunc)cpy; } static __attribute__((unused)) inline OPENSSL_sk_freefunc ossl_check_ASN1_UTF8STRING_freefunc_type(sk_ASN1_UTF8STRING_freefunc fr) { return (OPENSSL_sk_freefunc)fr; }
extern ASN1_VISIBLESTRING *ASN1_VISIBLESTRING_new(void); extern void ASN1_VISIBLESTRING_free(ASN1_VISIBLESTRING *a); extern ASN1_VISIBLESTRING *d2i_ASN1_VISIBLESTRING(ASN1_VISIBLESTRING **a, const unsigned char **in, long len); extern int i2d_ASN1_VISIBLESTRING(const ASN1_VISIBLESTRING *a, unsigned char **out); extern const ASN1_ITEM *ASN1_VISIBLESTRING_it(void);
extern ASN1_UNIVERSALSTRING *ASN1_UNIVERSALSTRING_new(void); extern void ASN1_UNIVERSALSTRING_free(ASN1_UNIVERSALSTRING *a); extern ASN1_UNIVERSALSTRING *d2i_ASN1_UNIVERSALSTRING(ASN1_UNIVERSALSTRING **a, const unsigned char **in, long len); extern int i2d_ASN1_UNIVERSALSTRING(const ASN1_UNIVERSALSTRING *a, unsigned char **out); extern const ASN1_ITEM *ASN1_UNIVERSALSTRING_it(void);
extern ASN1_UTF8STRING *ASN1_UTF8STRING_new(void); extern void ASN1_UTF8STRING_free(ASN1_UTF8STRING *a); extern ASN1_UTF8STRING *d2i_ASN1_UTF8STRING(ASN1_UTF8STRING **a, const unsigned char **in, long len); extern int i2d_ASN1_UTF8STRING(const ASN1_UTF8STRING *a, unsigned char **out); extern const ASN1_ITEM *ASN1_UTF8STRING_it(void);
extern ASN1_NULL *ASN1_NULL_new(void); extern void ASN1_NULL_free(ASN1_NULL *a); extern ASN1_NULL *d2i_ASN1_NULL(ASN1_NULL **a, const unsigned char **in, long len); extern int i2d_ASN1_NULL(const ASN1_NULL *a, unsigned char **out); extern const ASN1_ITEM *ASN1_NULL_it(void);
extern ASN1_BMPSTRING *ASN1_BMPSTRING_new(void); extern void ASN1_BMPSTRING_free(ASN1_BMPSTRING *a); extern ASN1_BMPSTRING *d2i_ASN1_BMPSTRING(ASN1_BMPSTRING **a, const unsigned char **in, long len); extern int i2d_ASN1_BMPSTRING(const ASN1_BMPSTRING *a, unsigned char **out); extern const ASN1_ITEM *ASN1_BMPSTRING_it(void);
int UTF8_getc(const unsigned char *str, int len, unsigned long *val);
int UTF8_putc(unsigned char *str, int len, unsigned long value);
struct stack_st_ASN1_GENERALSTRING; typedef int (*sk_ASN1_GENERALSTRING_compfunc)(const ASN1_GENERALSTRING *const *a, const ASN1_GENERALSTRING *const *b); typedef void (*sk_ASN1_GENERALSTRING_freefunc)(ASN1_GENERALSTRING * a); typedef ASN1_GENERALSTRING *(*sk_ASN1_GENERALSTRING_copyfunc)(const ASN1_GENERALSTRING *a); static __attribute__((unused)) inline ASN1_GENERALSTRING *ossl_check_ASN1_GENERALSTRING_type(ASN1_GENERALSTRING *ptr) { return ptr; } static __attribute__((unused)) inline const OPENSSL_STACK *ossl_check_const_ASN1_GENERALSTRING_sk_type(const struct stack_st_ASN1_GENERALSTRING *sk) { return (const OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_STACK *ossl_check_ASN1_GENERALSTRING_sk_type(struct stack_st_ASN1_GENERALSTRING *sk) { return (OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_sk_compfunc ossl_check_ASN1_GENERALSTRING_compfunc_type(sk_ASN1_GENERALSTRING_compfunc cmp) { return (OPENSSL_sk_compfunc)cmp; } static __attribute__((unused)) inline OPENSSL_sk_copyfunc ossl_check_ASN1_GENERALSTRING_copyfunc_type(sk_ASN1_GENERALSTRING_copyfunc cpy) { return (OPENSSL_sk_copyfunc)cpy; } static __attribute__((unused)) inline OPENSSL_sk_freefunc ossl_check_ASN1_GENERALSTRING_freefunc_type(sk_ASN1_GENERALSTRING_freefunc fr) { return (OPENSSL_sk_freefunc)fr; }
extern ASN1_STRING *ASN1_PRINTABLE_new(void); extern void ASN1_PRINTABLE_free(ASN1_STRING *a); extern ASN1_STRING *d2i_ASN1_PRINTABLE(ASN1_STRING **a, const unsigned char **in, long len); extern int i2d_ASN1_PRINTABLE(const ASN1_STRING *a, unsigned char **out); extern const ASN1_ITEM *ASN1_PRINTABLE_it(void);
extern ASN1_STRING *DIRECTORYSTRING_new(void); extern void DIRECTORYSTRING_free(ASN1_STRING *a); extern ASN1_STRING *d2i_DIRECTORYSTRING(ASN1_STRING **a, const unsigned char **in, long len); extern int i2d_DIRECTORYSTRING(const ASN1_STRING *a, unsigned char **out); extern const ASN1_ITEM *DIRECTORYSTRING_it(void);
extern ASN1_STRING *DISPLAYTEXT_new(void); extern void DISPLAYTEXT_free(ASN1_STRING *a); extern ASN1_STRING *d2i_DISPLAYTEXT(ASN1_STRING **a, const unsigned char **in, long len); extern int i2d_DISPLAYTEXT(const ASN1_STRING *a, unsigned char **out); extern const ASN1_ITEM *DISPLAYTEXT_it(void);
extern ASN1_PRINTABLESTRING *ASN1_PRINTABLESTRING_new(void); extern void ASN1_PRINTABLESTRING_free(ASN1_PRINTABLESTRING *a); extern ASN1_PRINTABLESTRING *d2i_ASN1_PRINTABLESTRING(ASN1_PRINTABLESTRING **a, const unsigned char **in, long len); extern int i2d_ASN1_PRINTABLESTRING(const ASN1_PRINTABLESTRING *a, unsigned char **out); extern const ASN1_ITEM *ASN1_PRINTABLESTRING_it(void);
extern ASN1_T61STRING *ASN1_T61STRING_new(void); extern void ASN1_T61STRING_free(ASN1_T61STRING *a); extern ASN1_T61STRING *d2i_ASN1_T61STRING(ASN1_T61STRING **a, const unsigned char **in, long len); extern int i2d_ASN1_T61STRING(const ASN1_T61STRING *a, unsigned char **out); extern const ASN1_ITEM *ASN1_T61STRING_it(void);
extern ASN1_IA5STRING *ASN1_IA5STRING_new(void); extern void ASN1_IA5STRING_free(ASN1_IA5STRING *a); extern ASN1_IA5STRING *d2i_ASN1_IA5STRING(ASN1_IA5STRING **a, const unsigned char **in, long len); extern int i2d_ASN1_IA5STRING(const ASN1_IA5STRING *a, unsigned char **out); extern const ASN1_ITEM *ASN1_IA5STRING_it(void);
extern ASN1_GENERALSTRING *ASN1_GENERALSTRING_new(void); extern void ASN1_GENERALSTRING_free(ASN1_GENERALSTRING *a); extern ASN1_GENERALSTRING *d2i_ASN1_GENERALSTRING(ASN1_GENERALSTRING **a, const unsigned char **in, long len); extern int i2d_ASN1_GENERALSTRING(const ASN1_GENERALSTRING *a, unsigned char **out); extern const ASN1_ITEM *ASN1_GENERALSTRING_it(void);
extern ASN1_UTCTIME *ASN1_UTCTIME_new(void); extern void ASN1_UTCTIME_free(ASN1_UTCTIME *a); extern ASN1_UTCTIME *d2i_ASN1_UTCTIME(ASN1_UTCTIME **a, const unsigned char **in, long len); extern int i2d_ASN1_UTCTIME(const ASN1_UTCTIME *a, unsigned char **out); extern const ASN1_ITEM *ASN1_UTCTIME_it(void);
extern ASN1_GENERALIZEDTIME *ASN1_GENERALIZEDTIME_new(void); extern void ASN1_GENERALIZEDTIME_free(ASN1_GENERALIZEDTIME *a); extern ASN1_GENERALIZEDTIME *d2i_ASN1_GENERALIZEDTIME(ASN1_GENERALIZEDTIME **a, const unsigned char **in, long len); extern int i2d_ASN1_GENERALIZEDTIME(const ASN1_GENERALIZEDTIME *a, unsigned char **out); extern const ASN1_ITEM *ASN1_GENERALIZEDTIME_it(void);
extern ASN1_TIME *ASN1_TIME_new(void); extern void ASN1_TIME_free(ASN1_TIME *a); extern ASN1_TIME *d2i_ASN1_TIME(ASN1_TIME **a, const unsigned char **in, long len); extern int i2d_ASN1_TIME(const ASN1_TIME *a, unsigned char **out); extern const ASN1_ITEM *ASN1_TIME_it(void);
extern ASN1_TIME *ASN1_TIME_dup(const ASN1_TIME *a);
extern ASN1_UTCTIME *ASN1_UTCTIME_dup(const ASN1_UTCTIME *a);
extern ASN1_GENERALIZEDTIME *ASN1_GENERALIZEDTIME_dup(const ASN1_GENERALIZEDTIME *a);
extern const ASN1_ITEM *ASN1_OCTET_STRING_NDEF_it(void);
ASN1_TIME *ASN1_TIME_set(ASN1_TIME *s, time_t t);
ASN1_TIME *ASN1_TIME_adj(ASN1_TIME *s, time_t t,
    int offset_day, long offset_sec);
int ASN1_TIME_check(const ASN1_TIME *t);
ASN1_GENERALIZEDTIME *ASN1_TIME_to_generalizedtime(const ASN1_TIME *t,
    ASN1_GENERALIZEDTIME **out);
int ASN1_TIME_set_string(ASN1_TIME *s, const char *str);
int ASN1_TIME_set_string_X509(ASN1_TIME *s, const char *str);
int ASN1_TIME_to_tm(const ASN1_TIME *s, struct tm *tm);
int ASN1_TIME_normalize(ASN1_TIME *s);
int ASN1_TIME_cmp_time_t(const ASN1_TIME *s, time_t t);
int ASN1_TIME_compare(const ASN1_TIME *a, const ASN1_TIME *b);
int i2a_ASN1_INTEGER(BIO *bp, const ASN1_INTEGER *a);
int a2i_ASN1_INTEGER(BIO *bp, ASN1_INTEGER *bs, char *buf, int size);
int i2a_ASN1_ENUMERATED(BIO *bp, const ASN1_ENUMERATED *a);
int a2i_ASN1_ENUMERATED(BIO *bp, ASN1_ENUMERATED *bs, char *buf, int size);
int i2a_ASN1_OBJECT(BIO *bp, const ASN1_OBJECT *a);
int a2i_ASN1_STRING(BIO *bp, ASN1_STRING *bs, char *buf, int size);
int i2a_ASN1_STRING(BIO *bp, const ASN1_STRING *a, int type);
int i2t_ASN1_OBJECT(char *buf, int buf_len, const ASN1_OBJECT *a);
int a2d_ASN1_OBJECT(unsigned char *out, int olen, const char *buf, int num);
ASN1_OBJECT *ASN1_OBJECT_create(int nid, unsigned char *data, int len,
    const char *sn, const char *ln);
int ASN1_INTEGER_get_int64(int64_t *pr, const ASN1_INTEGER *a);
int ASN1_INTEGER_set_int64(ASN1_INTEGER *a, int64_t r);
int ASN1_INTEGER_get_uint64(uint64_t *pr, const ASN1_INTEGER *a);
int ASN1_INTEGER_set_uint64(ASN1_INTEGER *a, uint64_t r);
int ASN1_INTEGER_set(ASN1_INTEGER *a, long v);
long ASN1_INTEGER_get(const ASN1_INTEGER *a);
ASN1_INTEGER *BN_to_ASN1_INTEGER(const BIGNUM *bn, ASN1_INTEGER *ai);
BIGNUM *ASN1_INTEGER_to_BN(const ASN1_INTEGER *ai, BIGNUM *bn);
int ASN1_ENUMERATED_get_int64(int64_t *pr, const ASN1_ENUMERATED *a);
int ASN1_ENUMERATED_set_int64(ASN1_ENUMERATED *a, int64_t r);
int ASN1_ENUMERATED_set(ASN1_ENUMERATED *a, long v);
long ASN1_ENUMERATED_get(const ASN1_ENUMERATED *a);
ASN1_ENUMERATED *BN_to_ASN1_ENUMERATED(const BIGNUM *bn, ASN1_ENUMERATED *ai);
BIGNUM *ASN1_ENUMERATED_to_BN(const ASN1_ENUMERATED *ai, BIGNUM *bn);
int ASN1_PRINTABLE_type(const unsigned char *s, int max);
unsigned long ASN1_tag2bit(int tag);
int ASN1_get_object(const unsigned char **pp, long *plength, int *ptag,
    int *pclass, long omax);
int ASN1_check_infinite_end(unsigned char **p, long len);
int ASN1_const_check_infinite_end(const unsigned char **p, long len);
void ASN1_put_object(unsigned char **pp, int constructed, int length,
    int tag, int xclass);
int ASN1_put_eoc(unsigned char **pp);
int ASN1_object_size(int constructed, int length, int tag);
void *ASN1_dup(i2d_of_void *i2d, d2i_of_void *d2i, const void *x);
void *ASN1_item_dup(const ASN1_ITEM *it, const void *x);
int ASN1_item_sign_ex(const ASN1_ITEM *it, X509_ALGOR *algor1,
    X509_ALGOR *algor2, ASN1_BIT_STRING *signature,
    const void *data, const ASN1_OCTET_STRING *id,
    EVP_PKEY *pkey, const EVP_MD *md, OSSL_LIB_CTX *libctx,
    const char *propq);
int ASN1_item_verify_ex(const ASN1_ITEM *it, const X509_ALGOR *alg,
    const ASN1_BIT_STRING *signature, const void *data,
    const ASN1_OCTET_STRING *id, EVP_PKEY *pkey,
    OSSL_LIB_CTX *libctx, const char *propq);
void *ASN1_d2i_fp(void *(*xnew)(void), d2i_of_void *d2i, FILE *in, void **x);
void *ASN1_item_d2i_fp_ex(const ASN1_ITEM *it, FILE *in, void *x,
    OSSL_LIB_CTX *libctx, const char *propq);
void *ASN1_item_d2i_fp(const ASN1_ITEM *it, FILE *in, void *x);
int ASN1_i2d_fp(i2d_of_void *i2d, FILE *out, const void *x);
int ASN1_item_i2d_fp(const ASN1_ITEM *it, FILE *out, const void *x);
int ASN1_STRING_print_ex_fp(FILE *fp, const ASN1_STRING *str, unsigned long flags);
int ASN1_STRING_to_UTF8(unsigned char **out, const ASN1_STRING *in);
void *ASN1_d2i_bio(void *(*xnew)(void), d2i_of_void *d2i, BIO *in, void **x);
void *ASN1_item_d2i_bio_ex(const ASN1_ITEM *it, BIO *in, void *pval,
    OSSL_LIB_CTX *libctx, const char *propq);
void *ASN1_item_d2i_bio(const ASN1_ITEM *it, BIO *in, void *pval);
int ASN1_i2d_bio(i2d_of_void *i2d, BIO *out, const void *x);
int ASN1_item_i2d_bio(const ASN1_ITEM *it, BIO *out, const void *x);
BIO *ASN1_item_i2d_mem_bio(const ASN1_ITEM *it, const ASN1_VALUE *val);
int ASN1_UTCTIME_print(BIO *fp, const ASN1_UTCTIME *a);
int ASN1_GENERALIZEDTIME_print(BIO *fp, const ASN1_GENERALIZEDTIME *a);
int ASN1_TIME_print(BIO *bp, const ASN1_TIME *tm);
int ASN1_TIME_print_ex(BIO *bp, const ASN1_TIME *tm, unsigned long flags);
int ASN1_STRING_print(BIO *bp, const ASN1_STRING *v);
int ASN1_STRING_print_ex(BIO *out, const ASN1_STRING *str, unsigned long flags);
int ASN1_buf_print(BIO *bp, const unsigned char *buf, size_t buflen, int off);
int ASN1_bn_print(BIO *bp, const char *number, const BIGNUM *num,
    unsigned char *buf, int off);
int ASN1_parse(BIO *bp, const unsigned char *pp, long len, int indent);
int ASN1_parse_dump(BIO *bp, const unsigned char *pp, long len, int indent,
    int dump);
const char *ASN1_tag2str(int tag);
int ASN1_UNIVERSALSTRING_to_string(ASN1_UNIVERSALSTRING *s);
int ASN1_TYPE_set_octetstring(ASN1_TYPE *a, unsigned char *data, int len);
int ASN1_TYPE_get_octetstring(const ASN1_TYPE *a, unsigned char *data, int max_len);
int ASN1_TYPE_set_int_octetstring(ASN1_TYPE *a, long num,
    unsigned char *data, int len);
int ASN1_TYPE_get_int_octetstring(const ASN1_TYPE *a, long *num,
    unsigned char *data, int max_len);
void *ASN1_item_unpack(const ASN1_STRING *oct, const ASN1_ITEM *it);
void *ASN1_item_unpack_ex(const ASN1_STRING *oct, const ASN1_ITEM *it,
    OSSL_LIB_CTX *libctx, const char *propq);
ASN1_STRING *ASN1_item_pack(void *obj, const ASN1_ITEM *it,
    ASN1_OCTET_STRING **oct);
void ASN1_STRING_set_default_mask(unsigned long mask);
int ASN1_STRING_set_default_mask_asc(const char *p);
unsigned long ASN1_STRING_get_default_mask(void);
int ASN1_mbstring_copy(ASN1_STRING **out, const unsigned char *in, int len,
    int inform, unsigned long mask);
int ASN1_mbstring_ncopy(ASN1_STRING **out, const unsigned char *in, int len,
    int inform, unsigned long mask,
    long minsize, long maxsize);
ASN1_STRING *ASN1_STRING_set_by_NID(ASN1_STRING **out,
    const unsigned char *in, int inlen,
    int inform, int nid);
ASN1_STRING_TABLE *ASN1_STRING_TABLE_get(int nid);
int ASN1_STRING_TABLE_add(int, long, long, unsigned long, unsigned long);
void ASN1_STRING_TABLE_cleanup(void);
ASN1_VALUE *ASN1_item_new(const ASN1_ITEM *it);
ASN1_VALUE *ASN1_item_new_ex(const ASN1_ITEM *it, OSSL_LIB_CTX *libctx,
    const char *propq);
void ASN1_item_free(ASN1_VALUE *val, const ASN1_ITEM *it);
ASN1_VALUE *ASN1_item_d2i_ex(ASN1_VALUE **val, const unsigned char **in,
    long len, const ASN1_ITEM *it,
    OSSL_LIB_CTX *libctx, const char *propq);
ASN1_VALUE *ASN1_item_d2i(ASN1_VALUE **val, const unsigned char **in,
    long len, const ASN1_ITEM *it);
int ASN1_item_i2d(const ASN1_VALUE *val, unsigned char **out, const ASN1_ITEM *it);
int ASN1_item_ndef_i2d(const ASN1_VALUE *val, unsigned char **out,
    const ASN1_ITEM *it);
void ASN1_add_oid_module(void);
void ASN1_add_stable_module(void);
ASN1_TYPE *ASN1_generate_nconf(const char *str, CONF *nconf);
ASN1_TYPE *ASN1_generate_v3(const char *str, X509V3_CTX *cnf);
int ASN1_str2mask(const char *str, unsigned long *pmask);
int ASN1_item_print(BIO *out, const ASN1_VALUE *ifld, int indent,
    const ASN1_ITEM *it, const ASN1_PCTX *pctx);
ASN1_PCTX *ASN1_PCTX_new(void);
void ASN1_PCTX_free(ASN1_PCTX *p);
unsigned long ASN1_PCTX_get_flags(const ASN1_PCTX *p);
void ASN1_PCTX_set_flags(ASN1_PCTX *p, unsigned long flags);
unsigned long ASN1_PCTX_get_nm_flags(const ASN1_PCTX *p);
void ASN1_PCTX_set_nm_flags(ASN1_PCTX *p, unsigned long flags);
unsigned long ASN1_PCTX_get_cert_flags(const ASN1_PCTX *p);
void ASN1_PCTX_set_cert_flags(ASN1_PCTX *p, unsigned long flags);
unsigned long ASN1_PCTX_get_oid_flags(const ASN1_PCTX *p);
void ASN1_PCTX_set_oid_flags(ASN1_PCTX *p, unsigned long flags);
unsigned long ASN1_PCTX_get_str_flags(const ASN1_PCTX *p);
void ASN1_PCTX_set_str_flags(ASN1_PCTX *p, unsigned long flags);
ASN1_SCTX *ASN1_SCTX_new(int (*scan_cb)(ASN1_SCTX *ctx));
void ASN1_SCTX_free(ASN1_SCTX *p);
const ASN1_ITEM *ASN1_SCTX_get_item(ASN1_SCTX *p);
const ASN1_TEMPLATE *ASN1_SCTX_get_template(ASN1_SCTX *p);
unsigned long ASN1_SCTX_get_flags(ASN1_SCTX *p);
void ASN1_SCTX_set_app_data(ASN1_SCTX *p, void *data);
void *ASN1_SCTX_get_app_data(ASN1_SCTX *p);
const BIO_METHOD *BIO_f_asn1(void);
BIO *BIO_new_NDEF(BIO *out, ASN1_VALUE *val, const ASN1_ITEM *it);
int i2d_ASN1_bio_stream(BIO *out, ASN1_VALUE *val, BIO *in, int flags,
    const ASN1_ITEM *it);
int PEM_write_bio_ASN1_stream(BIO *out, ASN1_VALUE *val, BIO *in, int flags,
    const char *hdr, const ASN1_ITEM *it);
int SMIME_write_ASN1(BIO *bio, ASN1_VALUE *val, BIO *data, int flags,
    int ctype_nid, int econt_nid,
    struct stack_st_X509_ALGOR *mdalgs, const ASN1_ITEM *it);
int SMIME_write_ASN1_ex(BIO *bio, ASN1_VALUE *val, BIO *data, int flags,
    int ctype_nid, int econt_nid,
    struct stack_st_X509_ALGOR *mdalgs, const ASN1_ITEM *it,
    OSSL_LIB_CTX *libctx, const char *propq);
ASN1_VALUE *SMIME_read_ASN1(BIO *bio, BIO **bcont, const ASN1_ITEM *it);
ASN1_VALUE *SMIME_read_ASN1_ex(BIO *bio, int flags, BIO **bcont,
    const ASN1_ITEM *it, ASN1_VALUE **x,
    OSSL_LIB_CTX *libctx, const char *propq);
int SMIME_crlf_copy(BIO *in, BIO *out, int flags);
int SMIME_text(BIO *in, BIO *out);
const ASN1_ITEM *ASN1_ITEM_lookup(const char *name);
const ASN1_ITEM *ASN1_ITEM_get(size_t i);
       
typedef struct obj_name_st {
    int type;
    int alias;
    const char *name;
    const char *data;
} OBJ_NAME;
int OBJ_NAME_init(void);
int OBJ_NAME_new_index(unsigned long (*hash_func)(const char *),
    int (*cmp_func)(const char *, const char *),
    void (*free_func)(const char *, int, const char *));
const char *OBJ_NAME_get(const char *name, int type);
int OBJ_NAME_add(const char *name, int type, const char *data);
int OBJ_NAME_remove(const char *name, int type);
void OBJ_NAME_cleanup(int type);
void OBJ_NAME_do_all(int type, void (*fn)(const OBJ_NAME *, void *arg),
    void *arg);
void OBJ_NAME_do_all_sorted(int type,
    void (*fn)(const OBJ_NAME *, void *arg),
    void *arg);
extern ASN1_OBJECT *OBJ_dup(const ASN1_OBJECT *a);
ASN1_OBJECT *OBJ_nid2obj(int n);
const char *OBJ_nid2ln(int n);
const char *OBJ_nid2sn(int n);
int OBJ_obj2nid(const ASN1_OBJECT *o);
ASN1_OBJECT *OBJ_txt2obj(const char *s, int no_name);
int OBJ_obj2txt(char *buf, int buf_len, const ASN1_OBJECT *a, int no_name);
int OBJ_txt2nid(const char *s);
int OBJ_ln2nid(const char *s);
int OBJ_sn2nid(const char *s);
int OBJ_cmp(const ASN1_OBJECT *a, const ASN1_OBJECT *b);
const void *OBJ_bsearch_(const void *key, const void *base, int num, int size,
    int (*cmp)(const void *, const void *));
const void *OBJ_bsearch_ex_(const void *key, const void *base, int num,
    int size,
    int (*cmp)(const void *, const void *),
    int flags);
int OBJ_new_nid(int num);
int OBJ_add_object(const ASN1_OBJECT *obj);
int OBJ_create(const char *oid, const char *sn, const char *ln);
int OBJ_create_objects(BIO *in);
size_t OBJ_length(const ASN1_OBJECT *obj);
const unsigned char *OBJ_get0_data(const ASN1_OBJECT *obj);
int OBJ_find_sigid_algs(int signid, int *pdig_nid, int *ppkey_nid);
int OBJ_find_sigid_by_algs(int *psignid, int dig_nid, int pkey_nid);
int OBJ_add_sigid(int signid, int dig_id, int pkey_id);
void OBJ_sigid_free(void);
int EVP_set_default_properties(OSSL_LIB_CTX *libctx, const char *propq);
char *EVP_get1_default_properties(OSSL_LIB_CTX *libctx);
int EVP_default_properties_is_fips_enabled(OSSL_LIB_CTX *libctx);
int EVP_default_properties_enable_fips(OSSL_LIB_CTX *libctx, int enable);
__attribute__((deprecated("Since OpenSSL " "3.0"))) EVP_MD *EVP_MD_meth_new(int md_type, int pkey_type);
__attribute__((deprecated("Since OpenSSL " "3.0"))) EVP_MD *EVP_MD_meth_dup(const EVP_MD *md);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_MD_meth_free(EVP_MD *md);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int EVP_MD_meth_set_input_blocksize(EVP_MD *md, int blocksize);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int EVP_MD_meth_set_result_size(EVP_MD *md, int resultsize);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int EVP_MD_meth_set_app_datasize(EVP_MD *md, int datasize);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int EVP_MD_meth_set_flags(EVP_MD *md, unsigned long flags);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int EVP_MD_meth_set_init(EVP_MD *md, int (*init)(EVP_MD_CTX *ctx));
__attribute__((deprecated("Since OpenSSL " "3.0")))
int EVP_MD_meth_set_update(EVP_MD *md, int (*update)(EVP_MD_CTX *ctx, const void *data, size_t count));
__attribute__((deprecated("Since OpenSSL " "3.0")))
int EVP_MD_meth_set_final(EVP_MD *md, int (*final)(EVP_MD_CTX *ctx, unsigned char *md));
__attribute__((deprecated("Since OpenSSL " "3.0")))
int EVP_MD_meth_set_copy(EVP_MD *md, int (*copy)(EVP_MD_CTX *to, const EVP_MD_CTX *from));
__attribute__((deprecated("Since OpenSSL " "3.0")))
int EVP_MD_meth_set_cleanup(EVP_MD *md, int (*cleanup)(EVP_MD_CTX *ctx));
__attribute__((deprecated("Since OpenSSL " "3.0")))
int EVP_MD_meth_set_ctrl(EVP_MD *md, int (*ctrl)(EVP_MD_CTX *ctx, int cmd, int p1, void *p2));
__attribute__((deprecated("Since OpenSSL " "3.0"))) int EVP_MD_meth_get_input_blocksize(const EVP_MD *md);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int EVP_MD_meth_get_result_size(const EVP_MD *md);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int EVP_MD_meth_get_app_datasize(const EVP_MD *md);
__attribute__((deprecated("Since OpenSSL " "3.0"))) unsigned long EVP_MD_meth_get_flags(const EVP_MD *md);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int (*EVP_MD_meth_get_init(const EVP_MD *md))(EVP_MD_CTX *ctx);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int (*EVP_MD_meth_get_update(const EVP_MD *md))(EVP_MD_CTX *ctx,
    const void *data, size_t count);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int (*EVP_MD_meth_get_final(const EVP_MD *md))(EVP_MD_CTX *ctx,
    unsigned char *md);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int (*EVP_MD_meth_get_copy(const EVP_MD *md))(EVP_MD_CTX *to,
    const EVP_MD_CTX *from);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int (*EVP_MD_meth_get_cleanup(const EVP_MD *md))(EVP_MD_CTX *ctx);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int (*EVP_MD_meth_get_ctrl(const EVP_MD *md))(EVP_MD_CTX *ctx, int cmd,
    int p1, void *p2);
__attribute__((deprecated("Since OpenSSL " "3.0")))
EVP_CIPHER *EVP_CIPHER_meth_new(int cipher_type, int block_size, int key_len);
__attribute__((deprecated("Since OpenSSL " "3.0")))
EVP_CIPHER *EVP_CIPHER_meth_dup(const EVP_CIPHER *cipher);
__attribute__((deprecated("Since OpenSSL " "3.0")))
void EVP_CIPHER_meth_free(EVP_CIPHER *cipher);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int EVP_CIPHER_meth_set_iv_length(EVP_CIPHER *cipher, int iv_len);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int EVP_CIPHER_meth_set_flags(EVP_CIPHER *cipher, unsigned long flags);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int EVP_CIPHER_meth_set_impl_ctx_size(EVP_CIPHER *cipher, int ctx_size);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int EVP_CIPHER_meth_set_init(EVP_CIPHER *cipher,
    int (*init)(EVP_CIPHER_CTX *ctx,
        const unsigned char *key,
        const unsigned char *iv,
        int enc));
__attribute__((deprecated("Since OpenSSL " "3.0")))
int EVP_CIPHER_meth_set_do_cipher(EVP_CIPHER *cipher,
    int (*do_cipher)(EVP_CIPHER_CTX *ctx,
        unsigned char *out,
        const unsigned char *in,
        size_t inl));
__attribute__((deprecated("Since OpenSSL " "3.0")))
int EVP_CIPHER_meth_set_cleanup(EVP_CIPHER *cipher,
    int (*cleanup)(EVP_CIPHER_CTX *));
__attribute__((deprecated("Since OpenSSL " "3.0")))
int EVP_CIPHER_meth_set_set_asn1_params(EVP_CIPHER *cipher,
    int (*set_asn1_parameters)(EVP_CIPHER_CTX *,
        ASN1_TYPE *));
__attribute__((deprecated("Since OpenSSL " "3.0")))
int EVP_CIPHER_meth_set_get_asn1_params(EVP_CIPHER *cipher,
    int (*get_asn1_parameters)(EVP_CIPHER_CTX *,
        ASN1_TYPE *));
__attribute__((deprecated("Since OpenSSL " "3.0")))
int EVP_CIPHER_meth_set_ctrl(EVP_CIPHER *cipher,
    int (*ctrl)(EVP_CIPHER_CTX *, int type,
        int arg, void *ptr));
__attribute__((deprecated("Since OpenSSL " "3.0"))) int (*EVP_CIPHER_meth_get_init(const EVP_CIPHER *cipher))(EVP_CIPHER_CTX *ctx,
    const unsigned char *key,
    const unsigned char *iv,
    int enc);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int (*EVP_CIPHER_meth_get_do_cipher(const EVP_CIPHER *cipher))(EVP_CIPHER_CTX *ctx,
    unsigned char *out,
    const unsigned char *in,
    size_t inl);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int (*EVP_CIPHER_meth_get_cleanup(const EVP_CIPHER *cipher))(EVP_CIPHER_CTX *);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int (*EVP_CIPHER_meth_get_set_asn1_params(const EVP_CIPHER *cipher))(EVP_CIPHER_CTX *,
    ASN1_TYPE *);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int (*EVP_CIPHER_meth_get_get_asn1_params(const EVP_CIPHER *cipher))(EVP_CIPHER_CTX *,
    ASN1_TYPE *);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int (*EVP_CIPHER_meth_get_ctrl(const EVP_CIPHER *cipher))(EVP_CIPHER_CTX *, int type,
    int arg, void *ptr);
typedef struct {
    unsigned char *out;
    const unsigned char *inp;
    size_t len;
    unsigned int interleave;
} EVP_CTRL_TLS1_1_MULTIBLOCK_PARAM;
typedef struct evp_cipher_info_st {
    const EVP_CIPHER *cipher;
    unsigned char iv[16];
} EVP_CIPHER_INFO;
typedef int(EVP_PBE_KEYGEN)(EVP_CIPHER_CTX *ctx, const char *pass,
    int passlen, ASN1_TYPE *param,
    const EVP_CIPHER *cipher, const EVP_MD *md,
    int en_de);
typedef int(EVP_PBE_KEYGEN_EX)(EVP_CIPHER_CTX *ctx, const char *pass,
    int passlen, ASN1_TYPE *param,
    const EVP_CIPHER *cipher, const EVP_MD *md,
    int en_de, OSSL_LIB_CTX *libctx, const char *propq);
int EVP_MD_get_type(const EVP_MD *md);
const char *EVP_MD_get0_name(const EVP_MD *md);
const char *EVP_MD_get0_description(const EVP_MD *md);
int EVP_MD_is_a(const EVP_MD *md, const char *name);
int EVP_MD_names_do_all(const EVP_MD *md,
    void (*fn)(const char *name, void *data),
    void *data);
const OSSL_PROVIDER *EVP_MD_get0_provider(const EVP_MD *md);
int EVP_MD_get_pkey_type(const EVP_MD *md);
int EVP_MD_get_size(const EVP_MD *md);
int EVP_MD_get_block_size(const EVP_MD *md);
unsigned long EVP_MD_get_flags(const EVP_MD *md);
int EVP_MD_xof(const EVP_MD *md);
const EVP_MD *EVP_MD_CTX_get0_md(const EVP_MD_CTX *ctx);
EVP_MD *EVP_MD_CTX_get1_md(EVP_MD_CTX *ctx);
__attribute__((deprecated("Since OpenSSL " "3.0")))
const EVP_MD *EVP_MD_CTX_md(const EVP_MD_CTX *ctx);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int (*EVP_MD_CTX_update_fn(EVP_MD_CTX *ctx))(EVP_MD_CTX *ctx,
    const void *data, size_t count);
__attribute__((deprecated("Since OpenSSL " "3.0")))
void EVP_MD_CTX_set_update_fn(EVP_MD_CTX *ctx,
    int (*update)(EVP_MD_CTX *ctx,
        const void *data, size_t count));
int EVP_MD_CTX_get_size_ex(const EVP_MD_CTX *ctx);
EVP_PKEY_CTX *EVP_MD_CTX_get_pkey_ctx(const EVP_MD_CTX *ctx);
void EVP_MD_CTX_set_pkey_ctx(EVP_MD_CTX *ctx, EVP_PKEY_CTX *pctx);
void *EVP_MD_CTX_get0_md_data(const EVP_MD_CTX *ctx);
int EVP_CIPHER_get_nid(const EVP_CIPHER *cipher);
const char *EVP_CIPHER_get0_name(const EVP_CIPHER *cipher);
const char *EVP_CIPHER_get0_description(const EVP_CIPHER *cipher);
int EVP_CIPHER_is_a(const EVP_CIPHER *cipher, const char *name);
int EVP_CIPHER_names_do_all(const EVP_CIPHER *cipher,
    void (*fn)(const char *name, void *data),
    void *data);
const OSSL_PROVIDER *EVP_CIPHER_get0_provider(const EVP_CIPHER *cipher);
int EVP_CIPHER_get_block_size(const EVP_CIPHER *cipher);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int EVP_CIPHER_impl_ctx_size(const EVP_CIPHER *cipher);
int EVP_CIPHER_get_key_length(const EVP_CIPHER *cipher);
int EVP_CIPHER_get_iv_length(const EVP_CIPHER *cipher);
unsigned long EVP_CIPHER_get_flags(const EVP_CIPHER *cipher);
int EVP_CIPHER_get_mode(const EVP_CIPHER *cipher);
int EVP_CIPHER_get_type(const EVP_CIPHER *cipher);
EVP_CIPHER *EVP_CIPHER_fetch(OSSL_LIB_CTX *ctx, const char *algorithm,
    const char *properties);
int EVP_CIPHER_can_pipeline(const EVP_CIPHER *cipher, int enc);
int EVP_CIPHER_up_ref(EVP_CIPHER *cipher);
void EVP_CIPHER_free(EVP_CIPHER *cipher);
const EVP_CIPHER *EVP_CIPHER_CTX_get0_cipher(const EVP_CIPHER_CTX *ctx);
EVP_CIPHER *EVP_CIPHER_CTX_get1_cipher(EVP_CIPHER_CTX *ctx);
int EVP_CIPHER_CTX_is_encrypting(const EVP_CIPHER_CTX *ctx);
int EVP_CIPHER_CTX_get_nid(const EVP_CIPHER_CTX *ctx);
int EVP_CIPHER_CTX_get_block_size(const EVP_CIPHER_CTX *ctx);
int EVP_CIPHER_CTX_get_key_length(const EVP_CIPHER_CTX *ctx);
int EVP_CIPHER_CTX_get_iv_length(const EVP_CIPHER_CTX *ctx);
int EVP_CIPHER_CTX_get_tag_length(const EVP_CIPHER_CTX *ctx);
const EVP_CIPHER *EVP_CIPHER_CTX_cipher(const EVP_CIPHER_CTX *ctx);
__attribute__((deprecated("Since OpenSSL " "3.0"))) const unsigned char *EVP_CIPHER_CTX_iv(const EVP_CIPHER_CTX *ctx);
__attribute__((deprecated("Since OpenSSL " "3.0"))) const unsigned char *EVP_CIPHER_CTX_original_iv(const EVP_CIPHER_CTX *ctx);
__attribute__((deprecated("Since OpenSSL " "3.0"))) unsigned char *EVP_CIPHER_CTX_iv_noconst(EVP_CIPHER_CTX *ctx);
int EVP_CIPHER_CTX_get_updated_iv(EVP_CIPHER_CTX *ctx, void *buf, size_t len);
int EVP_CIPHER_CTX_get_original_iv(EVP_CIPHER_CTX *ctx, void *buf, size_t len);
__attribute__((deprecated("Since OpenSSL " "3.0")))
unsigned char *EVP_CIPHER_CTX_buf_noconst(EVP_CIPHER_CTX *ctx);
int EVP_CIPHER_CTX_get_num(const EVP_CIPHER_CTX *ctx);
int EVP_CIPHER_CTX_set_num(EVP_CIPHER_CTX *ctx, int num);
EVP_CIPHER_CTX *EVP_CIPHER_CTX_dup(const EVP_CIPHER_CTX *in);
int EVP_CIPHER_CTX_copy(EVP_CIPHER_CTX *out, const EVP_CIPHER_CTX *in);
void *EVP_CIPHER_CTX_get_app_data(const EVP_CIPHER_CTX *ctx);
void EVP_CIPHER_CTX_set_app_data(EVP_CIPHER_CTX *ctx, void *data);
void *EVP_CIPHER_CTX_get_cipher_data(const EVP_CIPHER_CTX *ctx);
void *EVP_CIPHER_CTX_set_cipher_data(EVP_CIPHER_CTX *ctx, void *cipher_data);
 int EVP_Cipher(EVP_CIPHER_CTX *c,
    unsigned char *out,
    const unsigned char *in, unsigned int inl);
int EVP_MD_get_params(const EVP_MD *digest, OSSL_PARAM params[]);
int EVP_MD_CTX_set_params(EVP_MD_CTX *ctx, const OSSL_PARAM params[]);
int EVP_MD_CTX_get_params(EVP_MD_CTX *ctx, OSSL_PARAM params[]);
const OSSL_PARAM *EVP_MD_gettable_params(const EVP_MD *digest);
const OSSL_PARAM *EVP_MD_settable_ctx_params(const EVP_MD *md);
const OSSL_PARAM *EVP_MD_gettable_ctx_params(const EVP_MD *md);
const OSSL_PARAM *EVP_MD_CTX_settable_params(EVP_MD_CTX *ctx);
const OSSL_PARAM *EVP_MD_CTX_gettable_params(EVP_MD_CTX *ctx);
int EVP_MD_CTX_ctrl(EVP_MD_CTX *ctx, int cmd, int p1, void *p2);
EVP_MD_CTX *EVP_MD_CTX_new(void);
int EVP_MD_CTX_reset(EVP_MD_CTX *ctx);
void EVP_MD_CTX_free(EVP_MD_CTX *ctx);
 EVP_MD_CTX *EVP_MD_CTX_dup(const EVP_MD_CTX *in);
 int EVP_MD_CTX_copy_ex(EVP_MD_CTX *out, const EVP_MD_CTX *in);
void EVP_MD_CTX_set_flags(EVP_MD_CTX *ctx, int flags);
void EVP_MD_CTX_clear_flags(EVP_MD_CTX *ctx, int flags);
int EVP_MD_CTX_test_flags(const EVP_MD_CTX *ctx, int flags);
 int EVP_DigestInit_ex2(EVP_MD_CTX *ctx, const EVP_MD *type,
    const OSSL_PARAM params[]);
 int EVP_DigestInit_ex(EVP_MD_CTX *ctx, const EVP_MD *type,
    ENGINE *impl);
 int EVP_DigestUpdate(EVP_MD_CTX *ctx, const void *d,
    size_t cnt);
 int EVP_DigestFinal_ex(EVP_MD_CTX *ctx, unsigned char *md,
    unsigned int *s);
 int EVP_Digest(const void *data, size_t count,
    unsigned char *md, unsigned int *size,
    const EVP_MD *type, ENGINE *impl);
 int EVP_Q_digest(OSSL_LIB_CTX *libctx, const char *name,
    const char *propq, const void *data, size_t datalen,
    unsigned char *md, size_t *mdlen);
 int EVP_MD_CTX_copy(EVP_MD_CTX *out, const EVP_MD_CTX *in);
 int EVP_DigestInit(EVP_MD_CTX *ctx, const EVP_MD *type);
 int EVP_DigestFinal(EVP_MD_CTX *ctx, unsigned char *md,
    unsigned int *s);
 int EVP_DigestFinalXOF(EVP_MD_CTX *ctx, unsigned char *out,
    size_t outlen);
 int EVP_DigestSqueeze(EVP_MD_CTX *ctx, unsigned char *out,
    size_t outlen);
 EVP_MD *EVP_MD_fetch(OSSL_LIB_CTX *ctx, const char *algorithm,
    const char *properties);
int EVP_MD_up_ref(EVP_MD *md);
void EVP_MD_free(EVP_MD *md);
int EVP_read_pw_string(char *buf, int length, const char *prompt, int verify);
int EVP_read_pw_string_min(char *buf, int minlen, int maxlen,
    const char *prompt, int verify);
void EVP_set_pw_prompt(const char *prompt);
char *EVP_get_pw_prompt(void);
 int EVP_BytesToKey(const EVP_CIPHER *type, const EVP_MD *md,
    const unsigned char *salt,
    const unsigned char *data, int datal, int count,
    unsigned char *key, unsigned char *iv);
void EVP_CIPHER_CTX_set_flags(EVP_CIPHER_CTX *ctx, int flags);
void EVP_CIPHER_CTX_clear_flags(EVP_CIPHER_CTX *ctx, int flags);
int EVP_CIPHER_CTX_test_flags(const EVP_CIPHER_CTX *ctx, int flags);
 int EVP_EncryptInit(EVP_CIPHER_CTX *ctx, const EVP_CIPHER *cipher,
    const unsigned char *key, const unsigned char *iv);
 int EVP_EncryptInit_ex(EVP_CIPHER_CTX *ctx,
    const EVP_CIPHER *cipher, ENGINE *impl,
    const unsigned char *key,
    const unsigned char *iv);
 int EVP_EncryptInit_ex2(EVP_CIPHER_CTX *ctx, const EVP_CIPHER *cipher,
    const unsigned char *key,
    const unsigned char *iv,
    const OSSL_PARAM params[]);
 int EVP_EncryptUpdate(EVP_CIPHER_CTX *ctx, unsigned char *out,
    int *outl, const unsigned char *in, int inl);
 int EVP_EncryptFinal_ex(EVP_CIPHER_CTX *ctx, unsigned char *out,
    int *outl);
 int EVP_EncryptFinal(EVP_CIPHER_CTX *ctx, unsigned char *out,
    int *outl);
 int EVP_DecryptInit(EVP_CIPHER_CTX *ctx, const EVP_CIPHER *cipher,
    const unsigned char *key, const unsigned char *iv);
 int EVP_DecryptInit_ex(EVP_CIPHER_CTX *ctx,
    const EVP_CIPHER *cipher, ENGINE *impl,
    const unsigned char *key,
    const unsigned char *iv);
 int EVP_DecryptInit_ex2(EVP_CIPHER_CTX *ctx, const EVP_CIPHER *cipher,
    const unsigned char *key,
    const unsigned char *iv,
    const OSSL_PARAM params[]);
 int EVP_DecryptUpdate(EVP_CIPHER_CTX *ctx, unsigned char *out,
    int *outl, const unsigned char *in, int inl);
 int EVP_DecryptFinal(EVP_CIPHER_CTX *ctx, unsigned char *outm,
    int *outl);
 int EVP_DecryptFinal_ex(EVP_CIPHER_CTX *ctx, unsigned char *outm,
    int *outl);
 int EVP_CipherInit(EVP_CIPHER_CTX *ctx, const EVP_CIPHER *cipher,
    const unsigned char *key, const unsigned char *iv,
    int enc);
 int EVP_CipherInit_ex(EVP_CIPHER_CTX *ctx,
    const EVP_CIPHER *cipher, ENGINE *impl,
    const unsigned char *key,
    const unsigned char *iv, int enc);
 int EVP_CipherInit_SKEY(EVP_CIPHER_CTX *ctx, const EVP_CIPHER *cipher,
    EVP_SKEY *skey, const unsigned char *iv, size_t iv_len,
    int enc, const OSSL_PARAM params[]);
 int EVP_CipherInit_ex2(EVP_CIPHER_CTX *ctx, const EVP_CIPHER *cipher,
    const unsigned char *key, const unsigned char *iv,
    int enc, const OSSL_PARAM params[]);
 int EVP_CipherUpdate(EVP_CIPHER_CTX *ctx, unsigned char *out,
    int *outl, const unsigned char *in, int inl);
 int EVP_CipherFinal(EVP_CIPHER_CTX *ctx, unsigned char *outm,
    int *outl);
 int EVP_CipherPipelineEncryptInit(EVP_CIPHER_CTX *ctx,
    const EVP_CIPHER *cipher,
    const unsigned char *key, size_t keylen,
    size_t numpipes,
    const unsigned char **iv, size_t ivlen);
 int EVP_CipherPipelineDecryptInit(EVP_CIPHER_CTX *ctx,
    const EVP_CIPHER *cipher,
    const unsigned char *key, size_t keylen,
    size_t numpipes,
    const unsigned char **iv, size_t ivlen);
 int EVP_CipherPipelineUpdate(EVP_CIPHER_CTX *ctx,
    unsigned char **out, size_t *outl,
    const size_t *outsize,
    const unsigned char **in, const size_t *inl);
 int EVP_CipherPipelineFinal(EVP_CIPHER_CTX *ctx,
    unsigned char **outm, size_t *outl,
    const size_t *outsize);
 int EVP_CipherFinal_ex(EVP_CIPHER_CTX *ctx, unsigned char *outm,
    int *outl);
 int EVP_SignFinal(EVP_MD_CTX *ctx, unsigned char *md, unsigned int *s,
    EVP_PKEY *pkey);
 int EVP_SignFinal_ex(EVP_MD_CTX *ctx, unsigned char *md, unsigned int *s,
    EVP_PKEY *pkey, OSSL_LIB_CTX *libctx,
    const char *propq);
 int EVP_DigestSign(EVP_MD_CTX *ctx, unsigned char *sigret,
    size_t *siglen, const unsigned char *tbs,
    size_t tbslen);
 int EVP_VerifyFinal(EVP_MD_CTX *ctx, const unsigned char *sigbuf,
    unsigned int siglen, EVP_PKEY *pkey);
 int EVP_VerifyFinal_ex(EVP_MD_CTX *ctx, const unsigned char *sigbuf,
    unsigned int siglen, EVP_PKEY *pkey,
    OSSL_LIB_CTX *libctx, const char *propq);
 int EVP_DigestVerify(EVP_MD_CTX *ctx, const unsigned char *sigret,
    size_t siglen, const unsigned char *tbs,
    size_t tbslen);
 int EVP_DigestSignInit_ex(EVP_MD_CTX *ctx, EVP_PKEY_CTX **pctx,
    const char *mdname, OSSL_LIB_CTX *libctx,
    const char *props, EVP_PKEY *pkey,
    const OSSL_PARAM params[]);
 int EVP_DigestSignInit(EVP_MD_CTX *ctx, EVP_PKEY_CTX **pctx,
    const EVP_MD *type, ENGINE *e,
    EVP_PKEY *pkey);
 int EVP_DigestSignUpdate(EVP_MD_CTX *ctx, const void *data, size_t dsize);
 int EVP_DigestSignFinal(EVP_MD_CTX *ctx, unsigned char *sigret,
    size_t *siglen);
 int EVP_DigestVerifyInit_ex(EVP_MD_CTX *ctx, EVP_PKEY_CTX **pctx,
    const char *mdname, OSSL_LIB_CTX *libctx,
    const char *props, EVP_PKEY *pkey,
    const OSSL_PARAM params[]);
 int EVP_DigestVerifyInit(EVP_MD_CTX *ctx, EVP_PKEY_CTX **pctx,
    const EVP_MD *type, ENGINE *e,
    EVP_PKEY *pkey);
int EVP_DigestVerifyUpdate(EVP_MD_CTX *ctx, const void *data, size_t dsize);
 int EVP_DigestVerifyFinal(EVP_MD_CTX *ctx, const unsigned char *sig,
    size_t siglen);
 int EVP_OpenInit(EVP_CIPHER_CTX *ctx, const EVP_CIPHER *type,
    const unsigned char *ek, int ekl,
    const unsigned char *iv, EVP_PKEY *priv);
 int EVP_OpenFinal(EVP_CIPHER_CTX *ctx, unsigned char *out, int *outl);
 int EVP_SealInit(EVP_CIPHER_CTX *ctx, const EVP_CIPHER *type,
    unsigned char **ek, int *ekl, unsigned char *iv,
    EVP_PKEY **pubk, int npubk);
 int EVP_SealFinal(EVP_CIPHER_CTX *ctx, unsigned char *out, int *outl);
EVP_ENCODE_CTX *EVP_ENCODE_CTX_new(void);
void EVP_ENCODE_CTX_free(EVP_ENCODE_CTX *ctx);
int EVP_ENCODE_CTX_copy(EVP_ENCODE_CTX *dctx, const EVP_ENCODE_CTX *sctx);
int EVP_ENCODE_CTX_num(EVP_ENCODE_CTX *ctx);
void EVP_EncodeInit(EVP_ENCODE_CTX *ctx);
int EVP_EncodeUpdate(EVP_ENCODE_CTX *ctx, unsigned char *out, int *outl,
    const unsigned char *in, int inl);
void EVP_EncodeFinal(EVP_ENCODE_CTX *ctx, unsigned char *out, int *outl);
int EVP_EncodeBlock(unsigned char *t, const unsigned char *f, int n);
void EVP_DecodeInit(EVP_ENCODE_CTX *ctx);
int EVP_DecodeUpdate(EVP_ENCODE_CTX *ctx, unsigned char *out, int *outl,
    const unsigned char *in, int inl);
int EVP_DecodeFinal(EVP_ENCODE_CTX *ctx, unsigned char *out, int *outl);
int EVP_DecodeBlock(unsigned char *t, const unsigned char *f, int n);
EVP_CIPHER_CTX *EVP_CIPHER_CTX_new(void);
int EVP_CIPHER_CTX_reset(EVP_CIPHER_CTX *c);
void EVP_CIPHER_CTX_free(EVP_CIPHER_CTX *c);
int EVP_CIPHER_CTX_set_key_length(EVP_CIPHER_CTX *x, int keylen);
int EVP_CIPHER_CTX_set_padding(EVP_CIPHER_CTX *c, int pad);
int EVP_CIPHER_CTX_ctrl(EVP_CIPHER_CTX *ctx, int type, int arg, void *ptr);
int EVP_CIPHER_CTX_rand_key(EVP_CIPHER_CTX *ctx, unsigned char *key);
int EVP_CIPHER_get_params(EVP_CIPHER *cipher, OSSL_PARAM params[]);
int EVP_CIPHER_CTX_set_params(EVP_CIPHER_CTX *ctx, const OSSL_PARAM params[]);
int EVP_CIPHER_CTX_get_params(EVP_CIPHER_CTX *ctx, OSSL_PARAM params[]);
const OSSL_PARAM *EVP_CIPHER_gettable_params(const EVP_CIPHER *cipher);
const OSSL_PARAM *EVP_CIPHER_settable_ctx_params(const EVP_CIPHER *cipher);
const OSSL_PARAM *EVP_CIPHER_gettable_ctx_params(const EVP_CIPHER *cipher);
const OSSL_PARAM *EVP_CIPHER_CTX_settable_params(EVP_CIPHER_CTX *ctx);
const OSSL_PARAM *EVP_CIPHER_CTX_gettable_params(EVP_CIPHER_CTX *ctx);
int EVP_CIPHER_CTX_set_algor_params(EVP_CIPHER_CTX *ctx, const X509_ALGOR *alg);
int EVP_CIPHER_CTX_get_algor_params(EVP_CIPHER_CTX *ctx, X509_ALGOR *alg);
int EVP_CIPHER_CTX_get_algor(EVP_CIPHER_CTX *ctx, X509_ALGOR **alg);
const BIO_METHOD *BIO_f_md(void);
const BIO_METHOD *BIO_f_base64(void);
const BIO_METHOD *BIO_f_cipher(void);
const BIO_METHOD *BIO_f_reliable(void);
 int BIO_set_cipher(BIO *b, const EVP_CIPHER *c, const unsigned char *k,
    const unsigned char *i, int enc);
const EVP_MD *EVP_md_null(void);
const EVP_MD *EVP_md4(void);
const EVP_MD *EVP_md5(void);
const EVP_MD *EVP_md5_sha1(void);
const EVP_MD *EVP_blake2b512(void);
const EVP_MD *EVP_blake2s256(void);
const EVP_MD *EVP_sha1(void);
const EVP_MD *EVP_sha224(void);
const EVP_MD *EVP_sha256(void);
const EVP_MD *EVP_sha384(void);
const EVP_MD *EVP_sha512(void);
const EVP_MD *EVP_sha512_224(void);
const EVP_MD *EVP_sha512_256(void);
const EVP_MD *EVP_sha3_224(void);
const EVP_MD *EVP_sha3_256(void);
const EVP_MD *EVP_sha3_384(void);
const EVP_MD *EVP_sha3_512(void);
const EVP_MD *EVP_shake128(void);
const EVP_MD *EVP_shake256(void);
const EVP_MD *EVP_ripemd160(void);
const EVP_MD *EVP_whirlpool(void);
const EVP_MD *EVP_sm3(void);
const EVP_CIPHER *EVP_enc_null(void);
const EVP_CIPHER *EVP_des_ecb(void);
const EVP_CIPHER *EVP_des_ede(void);
const EVP_CIPHER *EVP_des_ede3(void);
const EVP_CIPHER *EVP_des_ede_ecb(void);
const EVP_CIPHER *EVP_des_ede3_ecb(void);
const EVP_CIPHER *EVP_des_cfb64(void);
const EVP_CIPHER *EVP_des_cfb1(void);
const EVP_CIPHER *EVP_des_cfb8(void);
const EVP_CIPHER *EVP_des_ede_cfb64(void);
const EVP_CIPHER *EVP_des_ede3_cfb64(void);
const EVP_CIPHER *EVP_des_ede3_cfb1(void);
const EVP_CIPHER *EVP_des_ede3_cfb8(void);
const EVP_CIPHER *EVP_des_ofb(void);
const EVP_CIPHER *EVP_des_ede_ofb(void);
const EVP_CIPHER *EVP_des_ede3_ofb(void);
const EVP_CIPHER *EVP_des_cbc(void);
const EVP_CIPHER *EVP_des_ede_cbc(void);
const EVP_CIPHER *EVP_des_ede3_cbc(void);
const EVP_CIPHER *EVP_desx_cbc(void);
const EVP_CIPHER *EVP_des_ede3_wrap(void);
const EVP_CIPHER *EVP_rc4(void);
const EVP_CIPHER *EVP_rc4_40(void);
const EVP_CIPHER *EVP_rc4_hmac_md5(void);
const EVP_CIPHER *EVP_rc2_ecb(void);
const EVP_CIPHER *EVP_rc2_cbc(void);
const EVP_CIPHER *EVP_rc2_40_cbc(void);
const EVP_CIPHER *EVP_rc2_64_cbc(void);
const EVP_CIPHER *EVP_rc2_cfb64(void);
const EVP_CIPHER *EVP_rc2_ofb(void);
const EVP_CIPHER *EVP_bf_ecb(void);
const EVP_CIPHER *EVP_bf_cbc(void);
const EVP_CIPHER *EVP_bf_cfb64(void);
const EVP_CIPHER *EVP_bf_ofb(void);
const EVP_CIPHER *EVP_cast5_ecb(void);
const EVP_CIPHER *EVP_cast5_cbc(void);
const EVP_CIPHER *EVP_cast5_cfb64(void);
const EVP_CIPHER *EVP_cast5_ofb(void);
const EVP_CIPHER *EVP_aes_128_ecb(void);
const EVP_CIPHER *EVP_aes_128_cbc(void);
const EVP_CIPHER *EVP_aes_128_cfb1(void);
const EVP_CIPHER *EVP_aes_128_cfb8(void);
const EVP_CIPHER *EVP_aes_128_cfb128(void);
const EVP_CIPHER *EVP_aes_128_ofb(void);
const EVP_CIPHER *EVP_aes_128_ctr(void);
const EVP_CIPHER *EVP_aes_128_ccm(void);
const EVP_CIPHER *EVP_aes_128_gcm(void);
const EVP_CIPHER *EVP_aes_128_xts(void);
const EVP_CIPHER *EVP_aes_128_wrap(void);
const EVP_CIPHER *EVP_aes_128_wrap_pad(void);
const EVP_CIPHER *EVP_aes_128_ocb(void);
const EVP_CIPHER *EVP_aes_192_ecb(void);
const EVP_CIPHER *EVP_aes_192_cbc(void);
const EVP_CIPHER *EVP_aes_192_cfb1(void);
const EVP_CIPHER *EVP_aes_192_cfb8(void);
const EVP_CIPHER *EVP_aes_192_cfb128(void);
const EVP_CIPHER *EVP_aes_192_ofb(void);
const EVP_CIPHER *EVP_aes_192_ctr(void);
const EVP_CIPHER *EVP_aes_192_ccm(void);
const EVP_CIPHER *EVP_aes_192_gcm(void);
const EVP_CIPHER *EVP_aes_192_wrap(void);
const EVP_CIPHER *EVP_aes_192_wrap_pad(void);
const EVP_CIPHER *EVP_aes_192_ocb(void);
const EVP_CIPHER *EVP_aes_256_ecb(void);
const EVP_CIPHER *EVP_aes_256_cbc(void);
const EVP_CIPHER *EVP_aes_256_cfb1(void);
const EVP_CIPHER *EVP_aes_256_cfb8(void);
const EVP_CIPHER *EVP_aes_256_cfb128(void);
const EVP_CIPHER *EVP_aes_256_ofb(void);
const EVP_CIPHER *EVP_aes_256_ctr(void);
const EVP_CIPHER *EVP_aes_256_ccm(void);
const EVP_CIPHER *EVP_aes_256_gcm(void);
const EVP_CIPHER *EVP_aes_256_xts(void);
const EVP_CIPHER *EVP_aes_256_wrap(void);
const EVP_CIPHER *EVP_aes_256_wrap_pad(void);
const EVP_CIPHER *EVP_aes_256_ocb(void);
const EVP_CIPHER *EVP_aes_128_cbc_hmac_sha1(void);
const EVP_CIPHER *EVP_aes_256_cbc_hmac_sha1(void);
const EVP_CIPHER *EVP_aes_128_cbc_hmac_sha256(void);
const EVP_CIPHER *EVP_aes_256_cbc_hmac_sha256(void);
const EVP_CIPHER *EVP_aria_128_ecb(void);
const EVP_CIPHER *EVP_aria_128_cbc(void);
const EVP_CIPHER *EVP_aria_128_cfb1(void);
const EVP_CIPHER *EVP_aria_128_cfb8(void);
const EVP_CIPHER *EVP_aria_128_cfb128(void);
const EVP_CIPHER *EVP_aria_128_ctr(void);
const EVP_CIPHER *EVP_aria_128_ofb(void);
const EVP_CIPHER *EVP_aria_128_gcm(void);
const EVP_CIPHER *EVP_aria_128_ccm(void);
const EVP_CIPHER *EVP_aria_192_ecb(void);
const EVP_CIPHER *EVP_aria_192_cbc(void);
const EVP_CIPHER *EVP_aria_192_cfb1(void);
const EVP_CIPHER *EVP_aria_192_cfb8(void);
const EVP_CIPHER *EVP_aria_192_cfb128(void);
const EVP_CIPHER *EVP_aria_192_ctr(void);
const EVP_CIPHER *EVP_aria_192_ofb(void);
const EVP_CIPHER *EVP_aria_192_gcm(void);
const EVP_CIPHER *EVP_aria_192_ccm(void);
const EVP_CIPHER *EVP_aria_256_ecb(void);
const EVP_CIPHER *EVP_aria_256_cbc(void);
const EVP_CIPHER *EVP_aria_256_cfb1(void);
const EVP_CIPHER *EVP_aria_256_cfb8(void);
const EVP_CIPHER *EVP_aria_256_cfb128(void);
const EVP_CIPHER *EVP_aria_256_ctr(void);
const EVP_CIPHER *EVP_aria_256_ofb(void);
const EVP_CIPHER *EVP_aria_256_gcm(void);
const EVP_CIPHER *EVP_aria_256_ccm(void);
const EVP_CIPHER *EVP_camellia_128_ecb(void);
const EVP_CIPHER *EVP_camellia_128_cbc(void);
const EVP_CIPHER *EVP_camellia_128_cfb1(void);
const EVP_CIPHER *EVP_camellia_128_cfb8(void);
const EVP_CIPHER *EVP_camellia_128_cfb128(void);
const EVP_CIPHER *EVP_camellia_128_ofb(void);
const EVP_CIPHER *EVP_camellia_128_ctr(void);
const EVP_CIPHER *EVP_camellia_192_ecb(void);
const EVP_CIPHER *EVP_camellia_192_cbc(void);
const EVP_CIPHER *EVP_camellia_192_cfb1(void);
const EVP_CIPHER *EVP_camellia_192_cfb8(void);
const EVP_CIPHER *EVP_camellia_192_cfb128(void);
const EVP_CIPHER *EVP_camellia_192_ofb(void);
const EVP_CIPHER *EVP_camellia_192_ctr(void);
const EVP_CIPHER *EVP_camellia_256_ecb(void);
const EVP_CIPHER *EVP_camellia_256_cbc(void);
const EVP_CIPHER *EVP_camellia_256_cfb1(void);
const EVP_CIPHER *EVP_camellia_256_cfb8(void);
const EVP_CIPHER *EVP_camellia_256_cfb128(void);
const EVP_CIPHER *EVP_camellia_256_ofb(void);
const EVP_CIPHER *EVP_camellia_256_ctr(void);
const EVP_CIPHER *EVP_chacha20(void);
const EVP_CIPHER *EVP_chacha20_poly1305(void);
const EVP_CIPHER *EVP_seed_ecb(void);
const EVP_CIPHER *EVP_seed_cbc(void);
const EVP_CIPHER *EVP_seed_cfb128(void);
const EVP_CIPHER *EVP_seed_ofb(void);
const EVP_CIPHER *EVP_sm4_ecb(void);
const EVP_CIPHER *EVP_sm4_cbc(void);
const EVP_CIPHER *EVP_sm4_cfb128(void);
const EVP_CIPHER *EVP_sm4_ofb(void);
const EVP_CIPHER *EVP_sm4_ctr(void);
int EVP_add_cipher(const EVP_CIPHER *cipher);
int EVP_add_digest(const EVP_MD *digest);
const EVP_CIPHER *EVP_get_cipherbyname(const char *name);
const EVP_MD *EVP_get_digestbyname(const char *name);
void EVP_CIPHER_do_all(void (*fn)(const EVP_CIPHER *ciph,
                           const char *from, const char *to, void *x),
    void *arg);
void EVP_CIPHER_do_all_sorted(void (*fn)(const EVP_CIPHER *ciph, const char *from,
                                  const char *to, void *x),
    void *arg);
void EVP_CIPHER_do_all_provided(OSSL_LIB_CTX *libctx,
    void (*fn)(EVP_CIPHER *cipher, void *arg),
    void *arg);
void EVP_MD_do_all(void (*fn)(const EVP_MD *ciph,
                       const char *from, const char *to, void *x),
    void *arg);
void EVP_MD_do_all_sorted(void (*fn)(const EVP_MD *ciph, const char *from,
                              const char *to, void *x),
    void *arg);
void EVP_MD_do_all_provided(OSSL_LIB_CTX *libctx,
    void (*fn)(EVP_MD *md, void *arg),
    void *arg);
EVP_MAC *EVP_MAC_fetch(OSSL_LIB_CTX *libctx, const char *algorithm,
    const char *properties);
int EVP_MAC_up_ref(EVP_MAC *mac);
void EVP_MAC_free(EVP_MAC *mac);
const char *EVP_MAC_get0_name(const EVP_MAC *mac);
const char *EVP_MAC_get0_description(const EVP_MAC *mac);
int EVP_MAC_is_a(const EVP_MAC *mac, const char *name);
const OSSL_PROVIDER *EVP_MAC_get0_provider(const EVP_MAC *mac);
int EVP_MAC_get_params(EVP_MAC *mac, OSSL_PARAM params[]);
EVP_MAC_CTX *EVP_MAC_CTX_new(EVP_MAC *mac);
void EVP_MAC_CTX_free(EVP_MAC_CTX *ctx);
EVP_MAC_CTX *EVP_MAC_CTX_dup(const EVP_MAC_CTX *src);
EVP_MAC *EVP_MAC_CTX_get0_mac(EVP_MAC_CTX *ctx);
int EVP_MAC_CTX_get_params(EVP_MAC_CTX *ctx, OSSL_PARAM params[]);
int EVP_MAC_CTX_set_params(EVP_MAC_CTX *ctx, const OSSL_PARAM params[]);
size_t EVP_MAC_CTX_get_mac_size(EVP_MAC_CTX *ctx);
size_t EVP_MAC_CTX_get_block_size(EVP_MAC_CTX *ctx);
unsigned char *EVP_Q_mac(OSSL_LIB_CTX *libctx, const char *name, const char *propq,
    const char *subalg, const OSSL_PARAM *params,
    const void *key, size_t keylen,
    const unsigned char *data, size_t datalen,
    unsigned char *out, size_t outsize, size_t *outlen);
int EVP_MAC_init(EVP_MAC_CTX *ctx, const unsigned char *key, size_t keylen,
    const OSSL_PARAM params[]);
int EVP_MAC_init_SKEY(EVP_MAC_CTX *ctx, EVP_SKEY *skey, const OSSL_PARAM params[]);
int EVP_MAC_update(EVP_MAC_CTX *ctx, const unsigned char *data, size_t datalen);
int EVP_MAC_final(EVP_MAC_CTX *ctx,
    unsigned char *out, size_t *outl, size_t outsize);
int EVP_MAC_finalXOF(EVP_MAC_CTX *ctx, unsigned char *out, size_t outsize);
const OSSL_PARAM *EVP_MAC_gettable_params(const EVP_MAC *mac);
const OSSL_PARAM *EVP_MAC_gettable_ctx_params(const EVP_MAC *mac);
const OSSL_PARAM *EVP_MAC_settable_ctx_params(const EVP_MAC *mac);
const OSSL_PARAM *EVP_MAC_CTX_gettable_params(EVP_MAC_CTX *ctx);
const OSSL_PARAM *EVP_MAC_CTX_settable_params(EVP_MAC_CTX *ctx);
void EVP_MAC_do_all_provided(OSSL_LIB_CTX *libctx,
    void (*fn)(EVP_MAC *mac, void *arg),
    void *arg);
int EVP_MAC_names_do_all(const EVP_MAC *mac,
    void (*fn)(const char *name, void *data),
    void *data);
EVP_RAND *EVP_RAND_fetch(OSSL_LIB_CTX *libctx, const char *algorithm,
    const char *properties);
int EVP_RAND_up_ref(EVP_RAND *rand);
void EVP_RAND_free(EVP_RAND *rand);
const char *EVP_RAND_get0_name(const EVP_RAND *rand);
const char *EVP_RAND_get0_description(const EVP_RAND *md);
int EVP_RAND_is_a(const EVP_RAND *rand, const char *name);
const OSSL_PROVIDER *EVP_RAND_get0_provider(const EVP_RAND *rand);
int EVP_RAND_get_params(EVP_RAND *rand, OSSL_PARAM params[]);
EVP_RAND_CTX *EVP_RAND_CTX_new(EVP_RAND *rand, EVP_RAND_CTX *parent);
int EVP_RAND_CTX_up_ref(EVP_RAND_CTX *ctx);
void EVP_RAND_CTX_free(EVP_RAND_CTX *ctx);
EVP_RAND *EVP_RAND_CTX_get0_rand(EVP_RAND_CTX *ctx);
int EVP_RAND_CTX_get_params(EVP_RAND_CTX *ctx, OSSL_PARAM params[]);
int EVP_RAND_CTX_set_params(EVP_RAND_CTX *ctx, const OSSL_PARAM params[]);
const OSSL_PARAM *EVP_RAND_gettable_params(const EVP_RAND *rand);
const OSSL_PARAM *EVP_RAND_gettable_ctx_params(const EVP_RAND *rand);
const OSSL_PARAM *EVP_RAND_settable_ctx_params(const EVP_RAND *rand);
const OSSL_PARAM *EVP_RAND_CTX_gettable_params(EVP_RAND_CTX *ctx);
const OSSL_PARAM *EVP_RAND_CTX_settable_params(EVP_RAND_CTX *ctx);
void EVP_RAND_do_all_provided(OSSL_LIB_CTX *libctx,
    void (*fn)(EVP_RAND *rand, void *arg),
    void *arg);
int EVP_RAND_names_do_all(const EVP_RAND *rand,
    void (*fn)(const char *name, void *data),
    void *data);
 int EVP_RAND_instantiate(EVP_RAND_CTX *ctx, unsigned int strength,
    int prediction_resistance,
    const unsigned char *pstr, size_t pstr_len,
    const OSSL_PARAM params[]);
int EVP_RAND_uninstantiate(EVP_RAND_CTX *ctx);
 int EVP_RAND_generate(EVP_RAND_CTX *ctx, unsigned char *out,
    size_t outlen, unsigned int strength,
    int prediction_resistance,
    const unsigned char *addin, size_t addin_len);
int EVP_RAND_reseed(EVP_RAND_CTX *ctx, int prediction_resistance,
    const unsigned char *ent, size_t ent_len,
    const unsigned char *addin, size_t addin_len);
 int EVP_RAND_nonce(EVP_RAND_CTX *ctx, unsigned char *out, size_t outlen);
 int EVP_RAND_enable_locking(EVP_RAND_CTX *ctx);
int EVP_RAND_verify_zeroization(EVP_RAND_CTX *ctx);
unsigned int EVP_RAND_get_strength(EVP_RAND_CTX *ctx);
int EVP_RAND_get_state(EVP_RAND_CTX *ctx);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int EVP_PKEY_decrypt_old(unsigned char *dec_key,
    const unsigned char *enc_key,
    int enc_key_len,
    EVP_PKEY *private_key);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int EVP_PKEY_encrypt_old(unsigned char *enc_key,
    const unsigned char *key,
    int key_len, EVP_PKEY *pub_key);
int EVP_PKEY_is_a(const EVP_PKEY *pkey, const char *name);
int EVP_PKEY_type_names_do_all(const EVP_PKEY *pkey,
    void (*fn)(const char *name, void *data),
    void *data);
int EVP_PKEY_type(int type);
int EVP_PKEY_get_id(const EVP_PKEY *pkey);
int EVP_PKEY_get_base_id(const EVP_PKEY *pkey);
int EVP_PKEY_get_bits(const EVP_PKEY *pkey);
int EVP_PKEY_get_security_bits(const EVP_PKEY *pkey);
int EVP_PKEY_get_size(const EVP_PKEY *pkey);
int EVP_PKEY_can_sign(const EVP_PKEY *pkey);
int EVP_PKEY_set_type(EVP_PKEY *pkey, int type);
int EVP_PKEY_set_type_str(EVP_PKEY *pkey, const char *str, int len);
int EVP_PKEY_set_type_by_keymgmt(EVP_PKEY *pkey, EVP_KEYMGMT *keymgmt);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int EVP_PKEY_set1_engine(EVP_PKEY *pkey, ENGINE *e);
__attribute__((deprecated("Since OpenSSL " "3.0")))
ENGINE *EVP_PKEY_get0_engine(const EVP_PKEY *pkey);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int EVP_PKEY_assign(EVP_PKEY *pkey, int type, void *key);
__attribute__((deprecated("Since OpenSSL " "3.0")))
void *EVP_PKEY_get0(const EVP_PKEY *pkey);
__attribute__((deprecated("Since OpenSSL " "3.0")))
const unsigned char *EVP_PKEY_get0_hmac(const EVP_PKEY *pkey, size_t *len);
__attribute__((deprecated("Since OpenSSL " "3.0")))
const unsigned char *EVP_PKEY_get0_poly1305(const EVP_PKEY *pkey, size_t *len);
__attribute__((deprecated("Since OpenSSL " "3.0")))
const unsigned char *EVP_PKEY_get0_siphash(const EVP_PKEY *pkey, size_t *len);
struct rsa_st;
__attribute__((deprecated("Since OpenSSL " "3.0")))
int EVP_PKEY_set1_RSA(EVP_PKEY *pkey, struct rsa_st *key);
__attribute__((deprecated("Since OpenSSL " "3.0")))
const struct rsa_st *EVP_PKEY_get0_RSA(const EVP_PKEY *pkey);
__attribute__((deprecated("Since OpenSSL " "3.0")))
struct rsa_st *EVP_PKEY_get1_RSA(EVP_PKEY *pkey);
struct dsa_st;
__attribute__((deprecated("Since OpenSSL " "3.0")))
int EVP_PKEY_set1_DSA(EVP_PKEY *pkey, struct dsa_st *key);
__attribute__((deprecated("Since OpenSSL " "3.0")))
const struct dsa_st *EVP_PKEY_get0_DSA(const EVP_PKEY *pkey);
__attribute__((deprecated("Since OpenSSL " "3.0")))
struct dsa_st *EVP_PKEY_get1_DSA(EVP_PKEY *pkey);
struct dh_st;
__attribute__((deprecated("Since OpenSSL " "3.0"))) int EVP_PKEY_set1_DH(EVP_PKEY *pkey, struct dh_st *key);
__attribute__((deprecated("Since OpenSSL " "3.0"))) const struct dh_st *EVP_PKEY_get0_DH(const EVP_PKEY *pkey);
__attribute__((deprecated("Since OpenSSL " "3.0"))) struct dh_st *EVP_PKEY_get1_DH(EVP_PKEY *pkey);
struct ec_key_st;
__attribute__((deprecated("Since OpenSSL " "3.0")))
int EVP_PKEY_set1_EC_KEY(EVP_PKEY *pkey, struct ec_key_st *key);
__attribute__((deprecated("Since OpenSSL " "3.0")))
const struct ec_key_st *EVP_PKEY_get0_EC_KEY(const EVP_PKEY *pkey);
__attribute__((deprecated("Since OpenSSL " "3.0")))
struct ec_key_st *EVP_PKEY_get1_EC_KEY(EVP_PKEY *pkey);
EVP_PKEY *EVP_PKEY_new(void);
int EVP_PKEY_up_ref(EVP_PKEY *pkey);
EVP_PKEY *EVP_PKEY_dup(EVP_PKEY *pkey);
void EVP_PKEY_free(EVP_PKEY *pkey);
const char *EVP_PKEY_get0_description(const EVP_PKEY *pkey);
const OSSL_PROVIDER *EVP_PKEY_get0_provider(const EVP_PKEY *key);
EVP_PKEY *d2i_PublicKey(int type, EVP_PKEY **a, const unsigned char **pp,
    long length);
int i2d_PublicKey(const EVP_PKEY *a, unsigned char **pp);
EVP_PKEY *d2i_PrivateKey_ex(int type, EVP_PKEY **a, const unsigned char **pp,
    long length, OSSL_LIB_CTX *libctx,
    const char *propq);
EVP_PKEY *d2i_PrivateKey(int type, EVP_PKEY **a, const unsigned char **pp,
    long length);
EVP_PKEY *d2i_AutoPrivateKey_ex(EVP_PKEY **a, const unsigned char **pp,
    long length, OSSL_LIB_CTX *libctx,
    const char *propq);
EVP_PKEY *d2i_AutoPrivateKey(EVP_PKEY **a, const unsigned char **pp,
    long length);
int i2d_PrivateKey(const EVP_PKEY *a, unsigned char **pp);
int i2d_KeyParams(const EVP_PKEY *a, unsigned char **pp);
EVP_PKEY *d2i_KeyParams(int type, EVP_PKEY **a, const unsigned char **pp,
    long length);
int i2d_KeyParams_bio(BIO *bp, const EVP_PKEY *pkey);
EVP_PKEY *d2i_KeyParams_bio(int type, EVP_PKEY **a, BIO *in);
int EVP_PKEY_copy_parameters(EVP_PKEY *to, const EVP_PKEY *from);
int EVP_PKEY_missing_parameters(const EVP_PKEY *pkey);
int EVP_PKEY_save_parameters(EVP_PKEY *pkey, int mode);
int EVP_PKEY_parameters_eq(const EVP_PKEY *a, const EVP_PKEY *b);
int EVP_PKEY_eq(const EVP_PKEY *a, const EVP_PKEY *b);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int EVP_PKEY_cmp_parameters(const EVP_PKEY *a, const EVP_PKEY *b);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int EVP_PKEY_cmp(const EVP_PKEY *a, const EVP_PKEY *b);
int EVP_PKEY_print_public(BIO *out, const EVP_PKEY *pkey,
    int indent, ASN1_PCTX *pctx);
int EVP_PKEY_print_private(BIO *out, const EVP_PKEY *pkey,
    int indent, ASN1_PCTX *pctx);
int EVP_PKEY_print_params(BIO *out, const EVP_PKEY *pkey,
    int indent, ASN1_PCTX *pctx);
int EVP_PKEY_print_public_fp(FILE *fp, const EVP_PKEY *pkey,
    int indent, ASN1_PCTX *pctx);
int EVP_PKEY_print_private_fp(FILE *fp, const EVP_PKEY *pkey,
    int indent, ASN1_PCTX *pctx);
int EVP_PKEY_print_params_fp(FILE *fp, const EVP_PKEY *pkey,
    int indent, ASN1_PCTX *pctx);
int EVP_PKEY_get_default_digest_nid(EVP_PKEY *pkey, int *pnid);
int EVP_PKEY_get_default_digest_name(EVP_PKEY *pkey,
    char *mdname, size_t mdname_sz);
int EVP_PKEY_digestsign_supports_digest(EVP_PKEY *pkey, OSSL_LIB_CTX *libctx,
    const char *name, const char *propq);
int EVP_PKEY_set1_encoded_public_key(EVP_PKEY *pkey,
    const unsigned char *pub, size_t publen);
size_t EVP_PKEY_get1_encoded_public_key(EVP_PKEY *pkey, unsigned char **ppub);
int EVP_CIPHER_param_to_asn1(EVP_CIPHER_CTX *c, ASN1_TYPE *type);
int EVP_CIPHER_asn1_to_param(EVP_CIPHER_CTX *c, ASN1_TYPE *type);
int EVP_CIPHER_set_asn1_iv(EVP_CIPHER_CTX *c, ASN1_TYPE *type);
int EVP_CIPHER_get_asn1_iv(EVP_CIPHER_CTX *c, ASN1_TYPE *type);
int PKCS5_PBE_keyivgen(EVP_CIPHER_CTX *ctx, const char *pass, int passlen,
    ASN1_TYPE *param, const EVP_CIPHER *cipher,
    const EVP_MD *md, int en_de);
int PKCS5_PBE_keyivgen_ex(EVP_CIPHER_CTX *cctx, const char *pass, int passlen,
    ASN1_TYPE *param, const EVP_CIPHER *cipher,
    const EVP_MD *md, int en_de, OSSL_LIB_CTX *libctx,
    const char *propq);
int PKCS5_PBKDF2_HMAC_SHA1(const char *pass, int passlen,
    const unsigned char *salt, int saltlen, int iter,
    int keylen, unsigned char *out);
int PKCS5_PBKDF2_HMAC(const char *pass, int passlen,
    const unsigned char *salt, int saltlen, int iter,
    const EVP_MD *digest, int keylen, unsigned char *out);
int PKCS5_v2_PBE_keyivgen(EVP_CIPHER_CTX *ctx, const char *pass, int passlen,
    ASN1_TYPE *param, const EVP_CIPHER *cipher,
    const EVP_MD *md, int en_de);
int PKCS5_v2_PBE_keyivgen_ex(EVP_CIPHER_CTX *ctx, const char *pass, int passlen,
    ASN1_TYPE *param, const EVP_CIPHER *cipher,
    const EVP_MD *md, int en_de,
    OSSL_LIB_CTX *libctx, const char *propq);
int EVP_PBE_scrypt(const char *pass, size_t passlen,
    const unsigned char *salt, size_t saltlen,
    uint64_t N, uint64_t r, uint64_t p, uint64_t maxmem,
    unsigned char *key, size_t keylen);
int EVP_PBE_scrypt_ex(const char *pass, size_t passlen,
    const unsigned char *salt, size_t saltlen,
    uint64_t N, uint64_t r, uint64_t p, uint64_t maxmem,
    unsigned char *key, size_t keylen,
    OSSL_LIB_CTX *ctx, const char *propq);
int PKCS5_v2_scrypt_keyivgen(EVP_CIPHER_CTX *ctx, const char *pass,
    int passlen, ASN1_TYPE *param,
    const EVP_CIPHER *c, const EVP_MD *md, int en_de);
int PKCS5_v2_scrypt_keyivgen_ex(EVP_CIPHER_CTX *ctx, const char *pass,
    int passlen, ASN1_TYPE *param,
    const EVP_CIPHER *c, const EVP_MD *md, int en_de,
    OSSL_LIB_CTX *libctx, const char *propq);
void PKCS5_PBE_add(void);
int EVP_PBE_CipherInit(ASN1_OBJECT *pbe_obj, const char *pass, int passlen,
    ASN1_TYPE *param, EVP_CIPHER_CTX *ctx, int en_de);
int EVP_PBE_CipherInit_ex(ASN1_OBJECT *pbe_obj, const char *pass, int passlen,
    ASN1_TYPE *param, EVP_CIPHER_CTX *ctx, int en_de,
    OSSL_LIB_CTX *libctx, const char *propq);
int EVP_PBE_alg_add_type(int pbe_type, int pbe_nid, int cipher_nid,
    int md_nid, EVP_PBE_KEYGEN *keygen);
int EVP_PBE_alg_add(int nid, const EVP_CIPHER *cipher, const EVP_MD *md,
    EVP_PBE_KEYGEN *keygen);
int EVP_PBE_find(int type, int pbe_nid, int *pcnid, int *pmnid,
    EVP_PBE_KEYGEN **pkeygen);
int EVP_PBE_find_ex(int type, int pbe_nid, int *pcnid, int *pmnid,
    EVP_PBE_KEYGEN **pkeygen, EVP_PBE_KEYGEN_EX **pkeygen_ex);
void EVP_PBE_cleanup(void);
int EVP_PBE_get(int *ptype, int *ppbe_nid, size_t num);
int EVP_PKEY_asn1_get_count(void);
const EVP_PKEY_ASN1_METHOD *EVP_PKEY_asn1_get0(int idx);
const EVP_PKEY_ASN1_METHOD *EVP_PKEY_asn1_find(ENGINE **pe, int type);
const EVP_PKEY_ASN1_METHOD *EVP_PKEY_asn1_find_str(ENGINE **pe,
    const char *str, int len);
int EVP_PKEY_asn1_add0(const EVP_PKEY_ASN1_METHOD *ameth);
int EVP_PKEY_asn1_add_alias(int to, int from);
int EVP_PKEY_asn1_get0_info(int *ppkey_id, int *pkey_base_id,
    int *ppkey_flags, const char **pinfo,
    const char **ppem_str,
    const EVP_PKEY_ASN1_METHOD *ameth);
const EVP_PKEY_ASN1_METHOD *EVP_PKEY_get0_asn1(const EVP_PKEY *pkey);
EVP_PKEY_ASN1_METHOD *EVP_PKEY_asn1_new(int id, int flags,
    const char *pem_str,
    const char *info);
void EVP_PKEY_asn1_copy(EVP_PKEY_ASN1_METHOD *dst,
    const EVP_PKEY_ASN1_METHOD *src);
void EVP_PKEY_asn1_free(EVP_PKEY_ASN1_METHOD *ameth);
void EVP_PKEY_asn1_set_public(EVP_PKEY_ASN1_METHOD *ameth,
    int (*pub_decode)(EVP_PKEY *pk,
        const X509_PUBKEY *pub),
    int (*pub_encode)(X509_PUBKEY *pub,
        const EVP_PKEY *pk),
    int (*pub_cmp)(const EVP_PKEY *a,
        const EVP_PKEY *b),
    int (*pub_print)(BIO *out,
        const EVP_PKEY *pkey,
        int indent, ASN1_PCTX *pctx),
    int (*pkey_size)(const EVP_PKEY *pk),
    int (*pkey_bits)(const EVP_PKEY *pk));
void EVP_PKEY_asn1_set_private(EVP_PKEY_ASN1_METHOD *ameth,
    int (*priv_decode)(EVP_PKEY *pk,
        const PKCS8_PRIV_KEY_INFO
            *p8inf),
    int (*priv_encode)(PKCS8_PRIV_KEY_INFO *p8,
        const EVP_PKEY *pk),
    int (*priv_print)(BIO *out,
        const EVP_PKEY *pkey,
        int indent,
        ASN1_PCTX *pctx));
void EVP_PKEY_asn1_set_param(EVP_PKEY_ASN1_METHOD *ameth,
    int (*param_decode)(EVP_PKEY *pkey,
        const unsigned char **pder,
        int derlen),
    int (*param_encode)(const EVP_PKEY *pkey,
        unsigned char **pder),
    int (*param_missing)(const EVP_PKEY *pk),
    int (*param_copy)(EVP_PKEY *to,
        const EVP_PKEY *from),
    int (*param_cmp)(const EVP_PKEY *a,
        const EVP_PKEY *b),
    int (*param_print)(BIO *out,
        const EVP_PKEY *pkey,
        int indent,
        ASN1_PCTX *pctx));
void EVP_PKEY_asn1_set_free(EVP_PKEY_ASN1_METHOD *ameth,
    void (*pkey_free)(EVP_PKEY *pkey));
void EVP_PKEY_asn1_set_ctrl(EVP_PKEY_ASN1_METHOD *ameth,
    int (*pkey_ctrl)(EVP_PKEY *pkey, int op,
        long arg1, void *arg2));
void EVP_PKEY_asn1_set_item(EVP_PKEY_ASN1_METHOD *ameth,
    int (*item_verify)(EVP_MD_CTX *ctx,
        const ASN1_ITEM *it,
        const void *data,
        const X509_ALGOR *a,
        const ASN1_BIT_STRING *sig,
        EVP_PKEY *pkey),
    int (*item_sign)(EVP_MD_CTX *ctx,
        const ASN1_ITEM *it,
        const void *data,
        X509_ALGOR *alg1,
        X509_ALGOR *alg2,
        ASN1_BIT_STRING *sig));
void EVP_PKEY_asn1_set_siginf(EVP_PKEY_ASN1_METHOD *ameth,
    int (*siginf_set)(X509_SIG_INFO *siginf,
        const X509_ALGOR *alg,
        const ASN1_STRING *sig));
void EVP_PKEY_asn1_set_check(EVP_PKEY_ASN1_METHOD *ameth,
    int (*pkey_check)(const EVP_PKEY *pk));
void EVP_PKEY_asn1_set_public_check(EVP_PKEY_ASN1_METHOD *ameth,
    int (*pkey_pub_check)(const EVP_PKEY *pk));
void EVP_PKEY_asn1_set_param_check(EVP_PKEY_ASN1_METHOD *ameth,
    int (*pkey_param_check)(const EVP_PKEY *pk));
void EVP_PKEY_asn1_set_set_priv_key(EVP_PKEY_ASN1_METHOD *ameth,
    int (*set_priv_key)(EVP_PKEY *pk,
        const unsigned char
            *priv,
        size_t len));
void EVP_PKEY_asn1_set_set_pub_key(EVP_PKEY_ASN1_METHOD *ameth,
    int (*set_pub_key)(EVP_PKEY *pk,
        const unsigned char *pub,
        size_t len));
void EVP_PKEY_asn1_set_get_priv_key(EVP_PKEY_ASN1_METHOD *ameth,
    int (*get_priv_key)(const EVP_PKEY *pk,
        unsigned char *priv,
        size_t *len));
void EVP_PKEY_asn1_set_get_pub_key(EVP_PKEY_ASN1_METHOD *ameth,
    int (*get_pub_key)(const EVP_PKEY *pk,
        unsigned char *pub,
        size_t *len));
void EVP_PKEY_asn1_set_security_bits(EVP_PKEY_ASN1_METHOD *ameth,
    int (*pkey_security_bits)(const EVP_PKEY
            *pk));
int EVP_PKEY_CTX_get_signature_md(EVP_PKEY_CTX *ctx, const EVP_MD **md);
int EVP_PKEY_CTX_set_signature_md(EVP_PKEY_CTX *ctx, const EVP_MD *md);
int EVP_PKEY_CTX_set1_id(EVP_PKEY_CTX *ctx, const void *id, int len);
int EVP_PKEY_CTX_get1_id(EVP_PKEY_CTX *ctx, void *id);
int EVP_PKEY_CTX_get1_id_len(EVP_PKEY_CTX *ctx, size_t *id_len);
int EVP_PKEY_CTX_set_kem_op(EVP_PKEY_CTX *ctx, const char *op);
const char *EVP_PKEY_get0_type_name(const EVP_PKEY *key);
int EVP_PKEY_CTX_set_mac_key(EVP_PKEY_CTX *ctx, const unsigned char *key,
    int keylen);
__attribute__((deprecated("Since OpenSSL " "3.0"))) const EVP_PKEY_METHOD *EVP_PKEY_meth_find(int type);
__attribute__((deprecated("Since OpenSSL " "3.0"))) EVP_PKEY_METHOD *EVP_PKEY_meth_new(int id, int flags);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_get0_info(int *ppkey_id, int *pflags,
    const EVP_PKEY_METHOD *meth);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_copy(EVP_PKEY_METHOD *dst,
    const EVP_PKEY_METHOD *src);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_free(EVP_PKEY_METHOD *pmeth);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int EVP_PKEY_meth_add0(const EVP_PKEY_METHOD *pmeth);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int EVP_PKEY_meth_remove(const EVP_PKEY_METHOD *pmeth);
__attribute__((deprecated("Since OpenSSL " "3.0"))) size_t EVP_PKEY_meth_get_count(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) const EVP_PKEY_METHOD *EVP_PKEY_meth_get0(size_t idx);
EVP_KEYMGMT *EVP_KEYMGMT_fetch(OSSL_LIB_CTX *ctx, const char *algorithm,
    const char *properties);
int EVP_KEYMGMT_up_ref(EVP_KEYMGMT *keymgmt);
void EVP_KEYMGMT_free(EVP_KEYMGMT *keymgmt);
const OSSL_PROVIDER *EVP_KEYMGMT_get0_provider(const EVP_KEYMGMT *keymgmt);
const char *EVP_KEYMGMT_get0_name(const EVP_KEYMGMT *keymgmt);
const char *EVP_KEYMGMT_get0_description(const EVP_KEYMGMT *keymgmt);
int EVP_KEYMGMT_is_a(const EVP_KEYMGMT *keymgmt, const char *name);
void EVP_KEYMGMT_do_all_provided(OSSL_LIB_CTX *libctx,
    void (*fn)(EVP_KEYMGMT *keymgmt, void *arg),
    void *arg);
int EVP_KEYMGMT_names_do_all(const EVP_KEYMGMT *keymgmt,
    void (*fn)(const char *name, void *data),
    void *data);
const OSSL_PARAM *EVP_KEYMGMT_gettable_params(const EVP_KEYMGMT *keymgmt);
const OSSL_PARAM *EVP_KEYMGMT_settable_params(const EVP_KEYMGMT *keymgmt);
const OSSL_PARAM *EVP_KEYMGMT_gen_settable_params(const EVP_KEYMGMT *keymgmt);
const OSSL_PARAM *EVP_KEYMGMT_gen_gettable_params(const EVP_KEYMGMT *keymgmt);
EVP_SKEYMGMT *EVP_SKEYMGMT_fetch(OSSL_LIB_CTX *ctx, const char *algorithm,
    const char *properties);
int EVP_SKEYMGMT_up_ref(EVP_SKEYMGMT *keymgmt);
void EVP_SKEYMGMT_free(EVP_SKEYMGMT *keymgmt);
const OSSL_PROVIDER *EVP_SKEYMGMT_get0_provider(const EVP_SKEYMGMT *keymgmt);
const char *EVP_SKEYMGMT_get0_name(const EVP_SKEYMGMT *keymgmt);
const char *EVP_SKEYMGMT_get0_description(const EVP_SKEYMGMT *keymgmt);
int EVP_SKEYMGMT_is_a(const EVP_SKEYMGMT *keymgmt, const char *name);
void EVP_SKEYMGMT_do_all_provided(OSSL_LIB_CTX *libctx,
    void (*fn)(EVP_SKEYMGMT *keymgmt, void *arg),
    void *arg);
int EVP_SKEYMGMT_names_do_all(const EVP_SKEYMGMT *keymgmt,
    void (*fn)(const char *name, void *data),
    void *data);
const OSSL_PARAM *EVP_SKEYMGMT_get0_gen_settable_params(const EVP_SKEYMGMT *skeymgmt);
const OSSL_PARAM *EVP_SKEYMGMT_get0_imp_settable_params(const EVP_SKEYMGMT *skeymgmt);
EVP_PKEY_CTX *EVP_PKEY_CTX_new(EVP_PKEY *pkey, ENGINE *e);
EVP_PKEY_CTX *EVP_PKEY_CTX_new_id(int id, ENGINE *e);
EVP_PKEY_CTX *EVP_PKEY_CTX_new_from_name(OSSL_LIB_CTX *libctx,
    const char *name,
    const char *propquery);
EVP_PKEY_CTX *EVP_PKEY_CTX_new_from_pkey(OSSL_LIB_CTX *libctx,
    EVP_PKEY *pkey, const char *propquery);
EVP_PKEY_CTX *EVP_PKEY_CTX_dup(const EVP_PKEY_CTX *ctx);
void EVP_PKEY_CTX_free(EVP_PKEY_CTX *ctx);
int EVP_PKEY_CTX_is_a(EVP_PKEY_CTX *ctx, const char *keytype);
int EVP_PKEY_CTX_get_params(EVP_PKEY_CTX *ctx, OSSL_PARAM *params);
const OSSL_PARAM *EVP_PKEY_CTX_gettable_params(const EVP_PKEY_CTX *ctx);
int EVP_PKEY_CTX_set_params(EVP_PKEY_CTX *ctx, const OSSL_PARAM *params);
const OSSL_PARAM *EVP_PKEY_CTX_settable_params(const EVP_PKEY_CTX *ctx);
int EVP_PKEY_CTX_set_algor_params(EVP_PKEY_CTX *ctx, const X509_ALGOR *alg);
int EVP_PKEY_CTX_get_algor_params(EVP_PKEY_CTX *ctx, X509_ALGOR *alg);
int EVP_PKEY_CTX_get_algor(EVP_PKEY_CTX *ctx, X509_ALGOR **alg);
int EVP_PKEY_CTX_ctrl(EVP_PKEY_CTX *ctx, int keytype, int optype,
    int cmd, int p1, void *p2);
int EVP_PKEY_CTX_ctrl_str(EVP_PKEY_CTX *ctx, const char *type,
    const char *value);
int EVP_PKEY_CTX_ctrl_uint64(EVP_PKEY_CTX *ctx, int keytype, int optype,
    int cmd, uint64_t value);
int EVP_PKEY_CTX_str2ctrl(EVP_PKEY_CTX *ctx, int cmd, const char *str);
int EVP_PKEY_CTX_hex2ctrl(EVP_PKEY_CTX *ctx, int cmd, const char *hex);
int EVP_PKEY_CTX_md(EVP_PKEY_CTX *ctx, int optype, int cmd, const char *md);
int EVP_PKEY_CTX_get_operation(EVP_PKEY_CTX *ctx);
void EVP_PKEY_CTX_set0_keygen_info(EVP_PKEY_CTX *ctx, int *dat, int datlen);
EVP_PKEY *EVP_PKEY_new_mac_key(int type, ENGINE *e,
    const unsigned char *key, int keylen);
EVP_PKEY *EVP_PKEY_new_raw_private_key_ex(OSSL_LIB_CTX *libctx,
    const char *keytype,
    const char *propq,
    const unsigned char *priv, size_t len);
EVP_PKEY *EVP_PKEY_new_raw_private_key(int type, ENGINE *e,
    const unsigned char *priv,
    size_t len);
EVP_PKEY *EVP_PKEY_new_raw_public_key_ex(OSSL_LIB_CTX *libctx,
    const char *keytype, const char *propq,
    const unsigned char *pub, size_t len);
EVP_PKEY *EVP_PKEY_new_raw_public_key(int type, ENGINE *e,
    const unsigned char *pub,
    size_t len);
int EVP_PKEY_get_raw_private_key(const EVP_PKEY *pkey, unsigned char *priv,
    size_t *len);
int EVP_PKEY_get_raw_public_key(const EVP_PKEY *pkey, unsigned char *pub,
    size_t *len);
__attribute__((deprecated("Since OpenSSL " "3.0")))
EVP_PKEY *EVP_PKEY_new_CMAC_key(ENGINE *e, const unsigned char *priv,
    size_t len, const EVP_CIPHER *cipher);
void EVP_PKEY_CTX_set_data(EVP_PKEY_CTX *ctx, void *data);
void *EVP_PKEY_CTX_get_data(const EVP_PKEY_CTX *ctx);
EVP_PKEY *EVP_PKEY_CTX_get0_pkey(EVP_PKEY_CTX *ctx);
EVP_PKEY *EVP_PKEY_CTX_get0_peerkey(EVP_PKEY_CTX *ctx);
void EVP_PKEY_CTX_set_app_data(EVP_PKEY_CTX *ctx, void *data);
void *EVP_PKEY_CTX_get_app_data(EVP_PKEY_CTX *ctx);
int EVP_PKEY_CTX_set_signature(EVP_PKEY_CTX *pctx,
    const unsigned char *sig, size_t siglen);
void EVP_SIGNATURE_free(EVP_SIGNATURE *signature);
int EVP_SIGNATURE_up_ref(EVP_SIGNATURE *signature);
OSSL_PROVIDER *EVP_SIGNATURE_get0_provider(const EVP_SIGNATURE *signature);
EVP_SIGNATURE *EVP_SIGNATURE_fetch(OSSL_LIB_CTX *ctx, const char *algorithm,
    const char *properties);
int EVP_SIGNATURE_is_a(const EVP_SIGNATURE *signature, const char *name);
const char *EVP_SIGNATURE_get0_name(const EVP_SIGNATURE *signature);
const char *EVP_SIGNATURE_get0_description(const EVP_SIGNATURE *signature);
void EVP_SIGNATURE_do_all_provided(OSSL_LIB_CTX *libctx,
    void (*fn)(EVP_SIGNATURE *signature,
        void *data),
    void *data);
int EVP_SIGNATURE_names_do_all(const EVP_SIGNATURE *signature,
    void (*fn)(const char *name, void *data),
    void *data);
const OSSL_PARAM *EVP_SIGNATURE_gettable_ctx_params(const EVP_SIGNATURE *sig);
const OSSL_PARAM *EVP_SIGNATURE_settable_ctx_params(const EVP_SIGNATURE *sig);
void EVP_ASYM_CIPHER_free(EVP_ASYM_CIPHER *cipher);
int EVP_ASYM_CIPHER_up_ref(EVP_ASYM_CIPHER *cipher);
OSSL_PROVIDER *EVP_ASYM_CIPHER_get0_provider(const EVP_ASYM_CIPHER *cipher);
EVP_ASYM_CIPHER *EVP_ASYM_CIPHER_fetch(OSSL_LIB_CTX *ctx, const char *algorithm,
    const char *properties);
int EVP_ASYM_CIPHER_is_a(const EVP_ASYM_CIPHER *cipher, const char *name);
const char *EVP_ASYM_CIPHER_get0_name(const EVP_ASYM_CIPHER *cipher);
const char *EVP_ASYM_CIPHER_get0_description(const EVP_ASYM_CIPHER *cipher);
void EVP_ASYM_CIPHER_do_all_provided(OSSL_LIB_CTX *libctx,
    void (*fn)(EVP_ASYM_CIPHER *cipher,
        void *arg),
    void *arg);
int EVP_ASYM_CIPHER_names_do_all(const EVP_ASYM_CIPHER *cipher,
    void (*fn)(const char *name, void *data),
    void *data);
const OSSL_PARAM *EVP_ASYM_CIPHER_gettable_ctx_params(const EVP_ASYM_CIPHER *ciph);
const OSSL_PARAM *EVP_ASYM_CIPHER_settable_ctx_params(const EVP_ASYM_CIPHER *ciph);
void EVP_KEM_free(EVP_KEM *wrap);
int EVP_KEM_up_ref(EVP_KEM *wrap);
OSSL_PROVIDER *EVP_KEM_get0_provider(const EVP_KEM *wrap);
EVP_KEM *EVP_KEM_fetch(OSSL_LIB_CTX *ctx, const char *algorithm,
    const char *properties);
int EVP_KEM_is_a(const EVP_KEM *wrap, const char *name);
const char *EVP_KEM_get0_name(const EVP_KEM *wrap);
const char *EVP_KEM_get0_description(const EVP_KEM *wrap);
void EVP_KEM_do_all_provided(OSSL_LIB_CTX *libctx,
    void (*fn)(EVP_KEM *wrap, void *arg), void *arg);
int EVP_KEM_names_do_all(const EVP_KEM *wrap,
    void (*fn)(const char *name, void *data), void *data);
const OSSL_PARAM *EVP_KEM_gettable_ctx_params(const EVP_KEM *kem);
const OSSL_PARAM *EVP_KEM_settable_ctx_params(const EVP_KEM *kem);
int EVP_PKEY_sign_init(EVP_PKEY_CTX *ctx);
int EVP_PKEY_sign_init_ex(EVP_PKEY_CTX *ctx, const OSSL_PARAM params[]);
int EVP_PKEY_sign_init_ex2(EVP_PKEY_CTX *ctx,
    EVP_SIGNATURE *algo, const OSSL_PARAM params[]);
int EVP_PKEY_sign(EVP_PKEY_CTX *ctx,
    unsigned char *sig, size_t *siglen,
    const unsigned char *tbs, size_t tbslen);
int EVP_PKEY_sign_message_init(EVP_PKEY_CTX *ctx,
    EVP_SIGNATURE *algo, const OSSL_PARAM params[]);
int EVP_PKEY_sign_message_update(EVP_PKEY_CTX *ctx,
    const unsigned char *in, size_t inlen);
int EVP_PKEY_sign_message_final(EVP_PKEY_CTX *ctx,
    unsigned char *sig, size_t *siglen);
int EVP_PKEY_verify_init(EVP_PKEY_CTX *ctx);
int EVP_PKEY_verify_init_ex(EVP_PKEY_CTX *ctx, const OSSL_PARAM params[]);
int EVP_PKEY_verify_init_ex2(EVP_PKEY_CTX *ctx,
    EVP_SIGNATURE *algo, const OSSL_PARAM params[]);
int EVP_PKEY_verify(EVP_PKEY_CTX *ctx,
    const unsigned char *sig, size_t siglen,
    const unsigned char *tbs, size_t tbslen);
int EVP_PKEY_verify_message_init(EVP_PKEY_CTX *ctx,
    EVP_SIGNATURE *algo, const OSSL_PARAM params[]);
int EVP_PKEY_verify_message_update(EVP_PKEY_CTX *ctx,
    const unsigned char *in, size_t inlen);
int EVP_PKEY_verify_message_final(EVP_PKEY_CTX *ctx);
int EVP_PKEY_verify_recover_init(EVP_PKEY_CTX *ctx);
int EVP_PKEY_verify_recover_init_ex(EVP_PKEY_CTX *ctx,
    const OSSL_PARAM params[]);
int EVP_PKEY_verify_recover_init_ex2(EVP_PKEY_CTX *ctx,
    EVP_SIGNATURE *algo,
    const OSSL_PARAM params[]);
int EVP_PKEY_verify_recover(EVP_PKEY_CTX *ctx,
    unsigned char *rout, size_t *routlen,
    const unsigned char *sig, size_t siglen);
int EVP_PKEY_encrypt_init(EVP_PKEY_CTX *ctx);
int EVP_PKEY_encrypt_init_ex(EVP_PKEY_CTX *ctx, const OSSL_PARAM params[]);
int EVP_PKEY_encrypt(EVP_PKEY_CTX *ctx,
    unsigned char *out, size_t *outlen,
    const unsigned char *in, size_t inlen);
int EVP_PKEY_decrypt_init(EVP_PKEY_CTX *ctx);
int EVP_PKEY_decrypt_init_ex(EVP_PKEY_CTX *ctx, const OSSL_PARAM params[]);
int EVP_PKEY_decrypt(EVP_PKEY_CTX *ctx,
    unsigned char *out, size_t *outlen,
    const unsigned char *in, size_t inlen);
int EVP_PKEY_derive_init(EVP_PKEY_CTX *ctx);
int EVP_PKEY_derive_init_ex(EVP_PKEY_CTX *ctx, const OSSL_PARAM params[]);
int EVP_PKEY_derive_set_peer_ex(EVP_PKEY_CTX *ctx, EVP_PKEY *peer,
    int validate_peer);
int EVP_PKEY_derive_set_peer(EVP_PKEY_CTX *ctx, EVP_PKEY *peer);
int EVP_PKEY_derive(EVP_PKEY_CTX *ctx, unsigned char *key, size_t *keylen);
int EVP_PKEY_encapsulate_init(EVP_PKEY_CTX *ctx, const OSSL_PARAM params[]);
int EVP_PKEY_auth_encapsulate_init(EVP_PKEY_CTX *ctx, EVP_PKEY *authpriv,
    const OSSL_PARAM params[]);
int EVP_PKEY_encapsulate(EVP_PKEY_CTX *ctx,
    unsigned char *wrappedkey, size_t *wrappedkeylen,
    unsigned char *genkey, size_t *genkeylen);
int EVP_PKEY_decapsulate_init(EVP_PKEY_CTX *ctx, const OSSL_PARAM params[]);
int EVP_PKEY_auth_decapsulate_init(EVP_PKEY_CTX *ctx, EVP_PKEY *authpub,
    const OSSL_PARAM params[]);
int EVP_PKEY_decapsulate(EVP_PKEY_CTX *ctx,
    unsigned char *unwrapped, size_t *unwrappedlen,
    const unsigned char *wrapped, size_t wrappedlen);
typedef int EVP_PKEY_gen_cb(EVP_PKEY_CTX *ctx);
int EVP_PKEY_fromdata_init(EVP_PKEY_CTX *ctx);
int EVP_PKEY_fromdata(EVP_PKEY_CTX *ctx, EVP_PKEY **ppkey, int selection,
    OSSL_PARAM param[]);
const OSSL_PARAM *EVP_PKEY_fromdata_settable(EVP_PKEY_CTX *ctx, int selection);
int EVP_PKEY_todata(const EVP_PKEY *pkey, int selection, OSSL_PARAM **params);
int EVP_PKEY_export(const EVP_PKEY *pkey, int selection,
    OSSL_CALLBACK *export_cb, void *export_cbarg);
const OSSL_PARAM *EVP_PKEY_gettable_params(const EVP_PKEY *pkey);
int EVP_PKEY_get_params(const EVP_PKEY *pkey, OSSL_PARAM params[]);
int EVP_PKEY_get_int_param(const EVP_PKEY *pkey, const char *key_name,
    int *out);
int EVP_PKEY_get_size_t_param(const EVP_PKEY *pkey, const char *key_name,
    size_t *out);
int EVP_PKEY_get_bn_param(const EVP_PKEY *pkey, const char *key_name,
    BIGNUM **bn);
int EVP_PKEY_get_utf8_string_param(const EVP_PKEY *pkey, const char *key_name,
    char *str, size_t max_buf_sz, size_t *out_sz);
int EVP_PKEY_get_octet_string_param(const EVP_PKEY *pkey, const char *key_name,
    unsigned char *buf, size_t max_buf_sz,
    size_t *out_sz);
const OSSL_PARAM *EVP_PKEY_settable_params(const EVP_PKEY *pkey);
int EVP_PKEY_set_params(EVP_PKEY *pkey, OSSL_PARAM params[]);
int EVP_PKEY_set_int_param(EVP_PKEY *pkey, const char *key_name, int in);
int EVP_PKEY_set_size_t_param(EVP_PKEY *pkey, const char *key_name, size_t in);
int EVP_PKEY_set_bn_param(EVP_PKEY *pkey, const char *key_name,
    const BIGNUM *bn);
int EVP_PKEY_set_utf8_string_param(EVP_PKEY *pkey, const char *key_name,
    const char *str);
int EVP_PKEY_set_octet_string_param(EVP_PKEY *pkey, const char *key_name,
    const unsigned char *buf, size_t bsize);
int EVP_PKEY_get_ec_point_conv_form(const EVP_PKEY *pkey);
int EVP_PKEY_get_field_type(const EVP_PKEY *pkey);
EVP_PKEY *EVP_PKEY_Q_keygen(OSSL_LIB_CTX *libctx, const char *propq,
    const char *type, ...);
int EVP_PKEY_paramgen_init(EVP_PKEY_CTX *ctx);
int EVP_PKEY_paramgen(EVP_PKEY_CTX *ctx, EVP_PKEY **ppkey);
int EVP_PKEY_keygen_init(EVP_PKEY_CTX *ctx);
int EVP_PKEY_keygen(EVP_PKEY_CTX *ctx, EVP_PKEY **ppkey);
int EVP_PKEY_generate(EVP_PKEY_CTX *ctx, EVP_PKEY **ppkey);
int EVP_PKEY_check(EVP_PKEY_CTX *ctx);
int EVP_PKEY_public_check(EVP_PKEY_CTX *ctx);
int EVP_PKEY_public_check_quick(EVP_PKEY_CTX *ctx);
int EVP_PKEY_param_check(EVP_PKEY_CTX *ctx);
int EVP_PKEY_param_check_quick(EVP_PKEY_CTX *ctx);
int EVP_PKEY_private_check(EVP_PKEY_CTX *ctx);
int EVP_PKEY_pairwise_check(EVP_PKEY_CTX *ctx);
int EVP_PKEY_set_ex_data(EVP_PKEY *key, int idx, void *arg);
void *EVP_PKEY_get_ex_data(const EVP_PKEY *key, int idx);
void EVP_PKEY_CTX_set_cb(EVP_PKEY_CTX *ctx, EVP_PKEY_gen_cb *cb);
EVP_PKEY_gen_cb *EVP_PKEY_CTX_get_cb(EVP_PKEY_CTX *ctx);
int EVP_PKEY_CTX_get_keygen_info(EVP_PKEY_CTX *ctx, int idx);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_set_init(EVP_PKEY_METHOD *pmeth,
    int (*init)(EVP_PKEY_CTX *ctx));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_set_copy(EVP_PKEY_METHOD *pmeth, int (*copy)(EVP_PKEY_CTX *dst, const EVP_PKEY_CTX *src));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_set_cleanup(EVP_PKEY_METHOD *pmeth, void (*cleanup)(EVP_PKEY_CTX *ctx));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_set_paramgen(EVP_PKEY_METHOD *pmeth, int (*paramgen_init)(EVP_PKEY_CTX *ctx),
    int (*paramgen)(EVP_PKEY_CTX *ctx, EVP_PKEY *pkey));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_set_keygen(EVP_PKEY_METHOD *pmeth, int (*keygen_init)(EVP_PKEY_CTX *ctx),
    int (*keygen)(EVP_PKEY_CTX *ctx, EVP_PKEY *pkey));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_set_sign(EVP_PKEY_METHOD *pmeth, int (*sign_init)(EVP_PKEY_CTX *ctx),
    int (*sign)(EVP_PKEY_CTX *ctx, unsigned char *sig, size_t *siglen,
        const unsigned char *tbs, size_t tbslen));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_set_verify(EVP_PKEY_METHOD *pmeth, int (*verify_init)(EVP_PKEY_CTX *ctx),
    int (*verify)(EVP_PKEY_CTX *ctx, const unsigned char *sig, size_t siglen,
        const unsigned char *tbs, size_t tbslen));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_set_verify_recover(EVP_PKEY_METHOD *pmeth, int (*verify_recover_init)(EVP_PKEY_CTX *ctx),
    int (*verify_recover)(EVP_PKEY_CTX *ctx, unsigned char *sig,
        size_t *siglen, const unsigned char *tbs,
        size_t tbslen));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_set_signctx(EVP_PKEY_METHOD *pmeth, int (*signctx_init)(EVP_PKEY_CTX *ctx, EVP_MD_CTX *mctx),
    int (*signctx)(EVP_PKEY_CTX *ctx, unsigned char *sig, size_t *siglen,
        EVP_MD_CTX *mctx));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_set_verifyctx(EVP_PKEY_METHOD *pmeth, int (*verifyctx_init)(EVP_PKEY_CTX *ctx, EVP_MD_CTX *mctx),
    int (*verifyctx)(EVP_PKEY_CTX *ctx, const unsigned char *sig, int siglen,
        EVP_MD_CTX *mctx));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_set_encrypt(EVP_PKEY_METHOD *pmeth, int (*encrypt_init)(EVP_PKEY_CTX *ctx),
    int (*encryptfn)(EVP_PKEY_CTX *ctx, unsigned char *out, size_t *outlen,
        const unsigned char *in, size_t inlen));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_set_decrypt(EVP_PKEY_METHOD *pmeth, int (*decrypt_init)(EVP_PKEY_CTX *ctx),
    int (*decrypt)(EVP_PKEY_CTX *ctx, unsigned char *out, size_t *outlen,
        const unsigned char *in, size_t inlen));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_set_derive(EVP_PKEY_METHOD *pmeth, int (*derive_init)(EVP_PKEY_CTX *ctx),
    int (*derive)(EVP_PKEY_CTX *ctx, unsigned char *key, size_t *keylen));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_set_ctrl(EVP_PKEY_METHOD *pmeth, int (*ctrl)(EVP_PKEY_CTX *ctx, int type, int p1, void *p2),
    int (*ctrl_str)(EVP_PKEY_CTX *ctx, const char *type, const char *value));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_set_digestsign(EVP_PKEY_METHOD *pmeth,
    int (*digestsign)(EVP_MD_CTX *ctx, unsigned char *sig, size_t *siglen,
        const unsigned char *tbs, size_t tbslen));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_set_digestverify(EVP_PKEY_METHOD *pmeth,
    int (*digestverify)(EVP_MD_CTX *ctx, const unsigned char *sig,
        size_t siglen, const unsigned char *tbs,
        size_t tbslen));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_set_check(EVP_PKEY_METHOD *pmeth, int (*check)(EVP_PKEY *pkey));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_set_public_check(EVP_PKEY_METHOD *pmeth, int (*check)(EVP_PKEY *pkey));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_set_param_check(EVP_PKEY_METHOD *pmeth, int (*check)(EVP_PKEY *pkey));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_set_digest_custom(EVP_PKEY_METHOD *pmeth, int (*digest_custom)(EVP_PKEY_CTX *ctx, EVP_MD_CTX *mctx));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_get_init(const EVP_PKEY_METHOD *pmeth, int (**pinit)(EVP_PKEY_CTX *ctx));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_get_copy(const EVP_PKEY_METHOD *pmeth, int (**pcopy)(EVP_PKEY_CTX *dst, const EVP_PKEY_CTX *src));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_get_cleanup(const EVP_PKEY_METHOD *pmeth, void (**pcleanup)(EVP_PKEY_CTX *ctx));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_get_paramgen(const EVP_PKEY_METHOD *pmeth, int (**pparamgen_init)(EVP_PKEY_CTX *ctx),
    int (**pparamgen)(EVP_PKEY_CTX *ctx, EVP_PKEY *pkey));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_get_keygen(const EVP_PKEY_METHOD *pmeth, int (**pkeygen_init)(EVP_PKEY_CTX *ctx),
    int (**pkeygen)(EVP_PKEY_CTX *ctx, EVP_PKEY *pkey));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_get_sign(const EVP_PKEY_METHOD *pmeth, int (**psign_init)(EVP_PKEY_CTX *ctx),
    int (**psign)(EVP_PKEY_CTX *ctx, unsigned char *sig, size_t *siglen,
        const unsigned char *tbs, size_t tbslen));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_get_verify(const EVP_PKEY_METHOD *pmeth, int (**pverify_init)(EVP_PKEY_CTX *ctx),
    int (**pverify)(EVP_PKEY_CTX *ctx, const unsigned char *sig,
        size_t siglen, const unsigned char *tbs, size_t tbslen));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_get_verify_recover(const EVP_PKEY_METHOD *pmeth,
    int (**pverify_recover_init)(EVP_PKEY_CTX *ctx),
    int (**pverify_recover)(EVP_PKEY_CTX *ctx, unsigned char *sig,
        size_t *siglen, const unsigned char *tbs,
        size_t tbslen));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_get_signctx(const EVP_PKEY_METHOD *pmeth,
    int (**psignctx_init)(EVP_PKEY_CTX *ctx, EVP_MD_CTX *mctx),
    int (**psignctx)(EVP_PKEY_CTX *ctx, unsigned char *sig, size_t *siglen,
        EVP_MD_CTX *mctx));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_get_verifyctx(const EVP_PKEY_METHOD *pmeth,
    int (**pverifyctx_init)(EVP_PKEY_CTX *ctx, EVP_MD_CTX *mctx),
    int (**pverifyctx)(EVP_PKEY_CTX *ctx, const unsigned char *sig,
        int siglen, EVP_MD_CTX *mctx));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_get_encrypt(const EVP_PKEY_METHOD *pmeth, int (**pencrypt_init)(EVP_PKEY_CTX *ctx),
    int (**pencryptfn)(EVP_PKEY_CTX *ctx, unsigned char *out, size_t *outlen,
        const unsigned char *in, size_t inlen));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_get_decrypt(const EVP_PKEY_METHOD *pmeth, int (**pdecrypt_init)(EVP_PKEY_CTX *ctx),
    int (**pdecrypt)(EVP_PKEY_CTX *ctx, unsigned char *out, size_t *outlen,
        const unsigned char *in, size_t inlen));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_get_derive(const EVP_PKEY_METHOD *pmeth, int (**pderive_init)(EVP_PKEY_CTX *ctx),
    int (**pderive)(EVP_PKEY_CTX *ctx, unsigned char *key, size_t *keylen));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_get_ctrl(const EVP_PKEY_METHOD *pmeth,
    int (**pctrl)(EVP_PKEY_CTX *ctx, int type, int p1, void *p2),
    int (**pctrl_str)(EVP_PKEY_CTX *ctx, const char *type,
        const char *value));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_get_digestsign(const EVP_PKEY_METHOD *pmeth,
    int (**digestsign)(EVP_MD_CTX *ctx, unsigned char *sig, size_t *siglen,
        const unsigned char *tbs, size_t tbslen));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_get_digestverify(const EVP_PKEY_METHOD *pmeth,
    int (**digestverify)(EVP_MD_CTX *ctx, const unsigned char *sig,
        size_t siglen, const unsigned char *tbs,
        size_t tbslen));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_get_check(const EVP_PKEY_METHOD *pmeth, int (**pcheck)(EVP_PKEY *pkey));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_get_public_check(const EVP_PKEY_METHOD *pmeth, int (**pcheck)(EVP_PKEY *pkey));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_get_param_check(const EVP_PKEY_METHOD *pmeth, int (**pcheck)(EVP_PKEY *pkey));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EVP_PKEY_meth_get_digest_custom(const EVP_PKEY_METHOD *pmeth,
    int (**pdigest_custom)(EVP_PKEY_CTX *ctx, EVP_MD_CTX *mctx));
void EVP_KEYEXCH_free(EVP_KEYEXCH *exchange);
int EVP_KEYEXCH_up_ref(EVP_KEYEXCH *exchange);
EVP_KEYEXCH *EVP_KEYEXCH_fetch(OSSL_LIB_CTX *ctx, const char *algorithm,
    const char *properties);
OSSL_PROVIDER *EVP_KEYEXCH_get0_provider(const EVP_KEYEXCH *exchange);
int EVP_KEYEXCH_is_a(const EVP_KEYEXCH *keyexch, const char *name);
const char *EVP_KEYEXCH_get0_name(const EVP_KEYEXCH *keyexch);
const char *EVP_KEYEXCH_get0_description(const EVP_KEYEXCH *keyexch);
void EVP_KEYEXCH_do_all_provided(OSSL_LIB_CTX *libctx,
    void (*fn)(EVP_KEYEXCH *keyexch, void *data),
    void *data);
int EVP_KEYEXCH_names_do_all(const EVP_KEYEXCH *keyexch,
    void (*fn)(const char *name, void *data),
    void *data);
const OSSL_PARAM *EVP_KEYEXCH_gettable_ctx_params(const EVP_KEYEXCH *keyexch);
const OSSL_PARAM *EVP_KEYEXCH_settable_ctx_params(const EVP_KEYEXCH *keyexch);
void EVP_add_alg_module(void);
int EVP_PKEY_CTX_set_group_name(EVP_PKEY_CTX *ctx, const char *name);
int EVP_PKEY_CTX_get_group_name(EVP_PKEY_CTX *ctx, char *name, size_t namelen);
int EVP_PKEY_get_group_name(const EVP_PKEY *pkey, char *name, size_t name_sz,
    size_t *gname_len);
OSSL_LIB_CTX *EVP_PKEY_CTX_get0_libctx(EVP_PKEY_CTX *ctx);
const char *EVP_PKEY_CTX_get0_propq(const EVP_PKEY_CTX *ctx);
const OSSL_PROVIDER *EVP_PKEY_CTX_get0_provider(const EVP_PKEY_CTX *ctx);
int EVP_SKEY_is_a(const EVP_SKEY *skey, const char *name);
EVP_SKEY *EVP_SKEY_import(OSSL_LIB_CTX *libctx, const char *skeymgmtname, const char *propquery,
    int selection, const OSSL_PARAM *params);
EVP_SKEY *EVP_SKEY_generate(OSSL_LIB_CTX *libctx, const char *skeymgmtname,
    const char *propquery, const OSSL_PARAM *params);
EVP_SKEY *EVP_SKEY_import_raw_key(OSSL_LIB_CTX *libctx, const char *skeymgmtname,
    unsigned char *key, size_t keylen,
    const char *propquery);
int EVP_SKEY_get0_raw_key(const EVP_SKEY *skey, const unsigned char **key,
    size_t *len);
const char *EVP_SKEY_get0_key_id(const EVP_SKEY *skey);
int EVP_SKEY_export(const EVP_SKEY *skey, int selection,
    OSSL_CALLBACK *export_cb, void *export_cbarg);
int EVP_SKEY_up_ref(EVP_SKEY *skey);
void EVP_SKEY_free(EVP_SKEY *skey);
const char *EVP_SKEY_get0_skeymgmt_name(const EVP_SKEY *skey);
const char *EVP_SKEY_get0_provider_name(const EVP_SKEY *skey);
EVP_SKEY *EVP_SKEY_to_provider(EVP_SKEY *skey, OSSL_LIB_CTX *libctx,
    OSSL_PROVIDER *prov, const char *propquery);
       
int EVP_PKEY_CTX_set_ec_paramgen_curve_nid(EVP_PKEY_CTX *ctx, int nid);
int EVP_PKEY_CTX_set_ec_param_enc(EVP_PKEY_CTX *ctx, int param_enc);
int EVP_PKEY_CTX_set_ecdh_cofactor_mode(EVP_PKEY_CTX *ctx, int cofactor_mode);
int EVP_PKEY_CTX_get_ecdh_cofactor_mode(EVP_PKEY_CTX *ctx);
int EVP_PKEY_CTX_set_ecdh_kdf_type(EVP_PKEY_CTX *ctx, int kdf);
int EVP_PKEY_CTX_get_ecdh_kdf_type(EVP_PKEY_CTX *ctx);
int EVP_PKEY_CTX_set_ecdh_kdf_md(EVP_PKEY_CTX *ctx, const EVP_MD *md);
int EVP_PKEY_CTX_get_ecdh_kdf_md(EVP_PKEY_CTX *ctx, const EVP_MD **md);
int EVP_PKEY_CTX_set_ecdh_kdf_outlen(EVP_PKEY_CTX *ctx, int len);
int EVP_PKEY_CTX_get_ecdh_kdf_outlen(EVP_PKEY_CTX *ctx, int *len);
int EVP_PKEY_CTX_set0_ecdh_kdf_ukm(EVP_PKEY_CTX *ctx, unsigned char *ukm,
    int len);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int EVP_PKEY_CTX_get0_ecdh_kdf_ukm(EVP_PKEY_CTX *ctx, unsigned char **ukm);
typedef enum {
    POINT_CONVERSION_COMPRESSED = 2,
    POINT_CONVERSION_UNCOMPRESSED = 4,
    POINT_CONVERSION_HYBRID = 6
} point_conversion_form_t;
const char *OSSL_EC_curve_nid2name(int nid);
       
typedef struct ec_method_st EC_METHOD;
typedef struct ec_group_st EC_GROUP;
typedef struct ec_point_st EC_POINT;
typedef struct ecpk_parameters_st ECPKPARAMETERS;
typedef struct ec_parameters_st ECPARAMETERS;
__attribute__((deprecated("Since OpenSSL " "3.0"))) const EC_METHOD *EC_GFp_simple_method(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) const EC_METHOD *EC_GFp_mont_method(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) const EC_METHOD *EC_GFp_nist_method(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) const EC_METHOD *EC_GFp_nistp224_method(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) const EC_METHOD *EC_GFp_nistp256_method(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) const EC_METHOD *EC_GFp_nistp521_method(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) const EC_METHOD *EC_GF2m_simple_method(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) EC_GROUP *EC_GROUP_new(const EC_METHOD *meth);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EC_GROUP_clear_free(EC_GROUP *group);
__attribute__((deprecated("Since OpenSSL " "3.0"))) const EC_METHOD *EC_GROUP_method_of(const EC_GROUP *group);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int EC_METHOD_get_field_type(const EC_METHOD *meth);
void EC_GROUP_free(EC_GROUP *group);
int EC_GROUP_copy(EC_GROUP *dst, const EC_GROUP *src);
EC_GROUP *EC_GROUP_dup(const EC_GROUP *src);
int EC_GROUP_set_generator(EC_GROUP *group, const EC_POINT *generator,
    const BIGNUM *order, const BIGNUM *cofactor);
const EC_POINT *EC_GROUP_get0_generator(const EC_GROUP *group);
BN_MONT_CTX *EC_GROUP_get_mont_data(const EC_GROUP *group);
int EC_GROUP_get_order(const EC_GROUP *group, BIGNUM *order, BN_CTX *ctx);
const BIGNUM *EC_GROUP_get0_order(const EC_GROUP *group);
int EC_GROUP_order_bits(const EC_GROUP *group);
int EC_GROUP_get_cofactor(const EC_GROUP *group, BIGNUM *cofactor,
    BN_CTX *ctx);
const BIGNUM *EC_GROUP_get0_cofactor(const EC_GROUP *group);
void EC_GROUP_set_curve_name(EC_GROUP *group, int nid);
int EC_GROUP_get_curve_name(const EC_GROUP *group);
const BIGNUM *EC_GROUP_get0_field(const EC_GROUP *group);
int EC_GROUP_get_field_type(const EC_GROUP *group);
void EC_GROUP_set_asn1_flag(EC_GROUP *group, int flag);
int EC_GROUP_get_asn1_flag(const EC_GROUP *group);
void EC_GROUP_set_point_conversion_form(EC_GROUP *group,
    point_conversion_form_t form);
point_conversion_form_t EC_GROUP_get_point_conversion_form(const EC_GROUP *);
unsigned char *EC_GROUP_get0_seed(const EC_GROUP *x);
size_t EC_GROUP_get_seed_len(const EC_GROUP *);
size_t EC_GROUP_set_seed(EC_GROUP *, const unsigned char *, size_t len);
int EC_GROUP_set_curve(EC_GROUP *group, const BIGNUM *p, const BIGNUM *a,
    const BIGNUM *b, BN_CTX *ctx);
int EC_GROUP_get_curve(const EC_GROUP *group, BIGNUM *p, BIGNUM *a, BIGNUM *b,
    BN_CTX *ctx);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int EC_GROUP_set_curve_GFp(EC_GROUP *group,
    const BIGNUM *p,
    const BIGNUM *a,
    const BIGNUM *b,
    BN_CTX *ctx);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int EC_GROUP_get_curve_GFp(const EC_GROUP *group,
    BIGNUM *p,
    BIGNUM *a, BIGNUM *b,
    BN_CTX *ctx);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int EC_GROUP_set_curve_GF2m(EC_GROUP *group,
    const BIGNUM *p,
    const BIGNUM *a,
    const BIGNUM *b,
    BN_CTX *ctx);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int EC_GROUP_get_curve_GF2m(const EC_GROUP *group,
    BIGNUM *p,
    BIGNUM *a, BIGNUM *b,
    BN_CTX *ctx);
int EC_GROUP_get_degree(const EC_GROUP *group);
int EC_GROUP_check(const EC_GROUP *group, BN_CTX *ctx);
int EC_GROUP_check_discriminant(const EC_GROUP *group, BN_CTX *ctx);
int EC_GROUP_cmp(const EC_GROUP *a, const EC_GROUP *b, BN_CTX *ctx);
EC_GROUP *EC_GROUP_new_curve_GFp(const BIGNUM *p, const BIGNUM *a,
    const BIGNUM *b, BN_CTX *ctx);
EC_GROUP *EC_GROUP_new_curve_GF2m(const BIGNUM *p, const BIGNUM *a,
    const BIGNUM *b, BN_CTX *ctx);
EC_GROUP *EC_GROUP_new_from_params(const OSSL_PARAM params[],
    OSSL_LIB_CTX *libctx, const char *propq);
OSSL_PARAM *EC_GROUP_to_params(const EC_GROUP *group, OSSL_LIB_CTX *libctx,
    const char *propq, BN_CTX *bnctx);
EC_GROUP *EC_GROUP_new_by_curve_name_ex(OSSL_LIB_CTX *libctx, const char *propq,
    int nid);
EC_GROUP *EC_GROUP_new_by_curve_name(int nid);
EC_GROUP *EC_GROUP_new_from_ecparameters(const ECPARAMETERS *params);
ECPARAMETERS *EC_GROUP_get_ecparameters(const EC_GROUP *group,
    ECPARAMETERS *params);
EC_GROUP *EC_GROUP_new_from_ecpkparameters(const ECPKPARAMETERS *params);
ECPKPARAMETERS *EC_GROUP_get_ecpkparameters(const EC_GROUP *group,
    ECPKPARAMETERS *params);
typedef struct {
    int nid;
    const char *comment;
} EC_builtin_curve;
size_t EC_get_builtin_curves(EC_builtin_curve *r, size_t nitems);
const char *EC_curve_nid2nist(int nid);
int EC_curve_nist2nid(const char *name);
int EC_GROUP_check_named_curve(const EC_GROUP *group, int nist_only,
    BN_CTX *ctx);
EC_POINT *EC_POINT_new(const EC_GROUP *group);
void EC_POINT_free(EC_POINT *point);
void EC_POINT_clear_free(EC_POINT *point);
int EC_POINT_copy(EC_POINT *dst, const EC_POINT *src);
EC_POINT *EC_POINT_dup(const EC_POINT *src, const EC_GROUP *group);
int EC_POINT_set_to_infinity(const EC_GROUP *group, EC_POINT *point);
__attribute__((deprecated("Since OpenSSL " "3.0"))) const EC_METHOD *EC_POINT_method_of(const EC_POINT *point);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int EC_POINT_set_Jprojective_coordinates_GFp(const EC_GROUP *group, EC_POINT *p,
    const BIGNUM *x, const BIGNUM *y, const BIGNUM *z,
    BN_CTX *ctx);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int EC_POINT_get_Jprojective_coordinates_GFp(const EC_GROUP *group, const EC_POINT *p,
    BIGNUM *x, BIGNUM *y, BIGNUM *z, BN_CTX *ctx);
int EC_POINT_set_affine_coordinates(const EC_GROUP *group, EC_POINT *p,
    const BIGNUM *x, const BIGNUM *y,
    BN_CTX *ctx);
int EC_POINT_get_affine_coordinates(const EC_GROUP *group, const EC_POINT *p,
    BIGNUM *x, BIGNUM *y, BN_CTX *ctx);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int EC_POINT_set_affine_coordinates_GFp(const EC_GROUP *group, EC_POINT *p,
    const BIGNUM *x, const BIGNUM *y, BN_CTX *ctx);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int EC_POINT_get_affine_coordinates_GFp(const EC_GROUP *group, const EC_POINT *p,
    BIGNUM *x, BIGNUM *y, BN_CTX *ctx);
int EC_POINT_set_compressed_coordinates(const EC_GROUP *group, EC_POINT *p,
    const BIGNUM *x, int y_bit,
    BN_CTX *ctx);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int EC_POINT_set_compressed_coordinates_GFp(const EC_GROUP *group, EC_POINT *p,
    const BIGNUM *x, int y_bit, BN_CTX *ctx);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int EC_POINT_set_affine_coordinates_GF2m(const EC_GROUP *group, EC_POINT *p,
    const BIGNUM *x, const BIGNUM *y, BN_CTX *ctx);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int EC_POINT_get_affine_coordinates_GF2m(const EC_GROUP *group, const EC_POINT *p,
    BIGNUM *x, BIGNUM *y, BN_CTX *ctx);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int EC_POINT_set_compressed_coordinates_GF2m(const EC_GROUP *group, EC_POINT *p,
    const BIGNUM *x, int y_bit, BN_CTX *ctx);
size_t EC_POINT_point2oct(const EC_GROUP *group, const EC_POINT *p,
    point_conversion_form_t form,
    unsigned char *buf, size_t len, BN_CTX *ctx);
int EC_POINT_oct2point(const EC_GROUP *group, EC_POINT *p,
    const unsigned char *buf, size_t len, BN_CTX *ctx);
size_t EC_POINT_point2buf(const EC_GROUP *group, const EC_POINT *point,
    point_conversion_form_t form,
    unsigned char **pbuf, BN_CTX *ctx);
__attribute__((deprecated("Since OpenSSL " "3.0"))) BIGNUM *EC_POINT_point2bn(const EC_GROUP *,
    const EC_POINT *,
    point_conversion_form_t form,
    BIGNUM *, BN_CTX *);
__attribute__((deprecated("Since OpenSSL " "3.0"))) EC_POINT *EC_POINT_bn2point(const EC_GROUP *,
    const BIGNUM *,
    EC_POINT *, BN_CTX *);
char *EC_POINT_point2hex(const EC_GROUP *, const EC_POINT *,
    point_conversion_form_t form, BN_CTX *);
EC_POINT *EC_POINT_hex2point(const EC_GROUP *, const char *,
    EC_POINT *, BN_CTX *);
int EC_POINT_add(const EC_GROUP *group, EC_POINT *r, const EC_POINT *a,
    const EC_POINT *b, BN_CTX *ctx);
int EC_POINT_dbl(const EC_GROUP *group, EC_POINT *r, const EC_POINT *a,
    BN_CTX *ctx);
int EC_POINT_invert(const EC_GROUP *group, EC_POINT *a, BN_CTX *ctx);
int EC_POINT_is_at_infinity(const EC_GROUP *group, const EC_POINT *p);
int EC_POINT_is_on_curve(const EC_GROUP *group, const EC_POINT *point,
    BN_CTX *ctx);
int EC_POINT_cmp(const EC_GROUP *group, const EC_POINT *a, const EC_POINT *b,
    BN_CTX *ctx);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int EC_POINT_make_affine(const EC_GROUP *group,
    EC_POINT *point, BN_CTX *ctx);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int EC_POINTs_make_affine(const EC_GROUP *group, size_t num,
    EC_POINT *points[], BN_CTX *ctx);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int EC_POINTs_mul(const EC_GROUP *group, EC_POINT *r,
    const BIGNUM *n, size_t num,
    const EC_POINT *p[], const BIGNUM *m[],
    BN_CTX *ctx);
int EC_POINT_mul(const EC_GROUP *group, EC_POINT *r, const BIGNUM *n,
    const EC_POINT *q, const BIGNUM *m, BN_CTX *ctx);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int EC_GROUP_precompute_mult(EC_GROUP *group, BN_CTX *ctx);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int EC_GROUP_have_precompute_mult(const EC_GROUP *group);
extern const ASN1_ITEM *ECPKPARAMETERS_it(void);
extern ECPKPARAMETERS *ECPKPARAMETERS_new(void); extern void ECPKPARAMETERS_free(ECPKPARAMETERS *a);
extern const ASN1_ITEM *ECPARAMETERS_it(void);
extern ECPARAMETERS *ECPARAMETERS_new(void); extern void ECPARAMETERS_free(ECPARAMETERS *a);
int EC_GROUP_get_basis_type(const EC_GROUP *);
int EC_GROUP_get_trinomial_basis(const EC_GROUP *, unsigned int *k);
int EC_GROUP_get_pentanomial_basis(const EC_GROUP *, unsigned int *k1,
    unsigned int *k2, unsigned int *k3);
EC_GROUP *d2i_ECPKParameters(EC_GROUP **, const unsigned char **in, long len);
int i2d_ECPKParameters(const EC_GROUP *, unsigned char **out);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ECPKParameters_print(BIO *bp, const EC_GROUP *x,
    int off);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ECPKParameters_print_fp(FILE *fp, const EC_GROUP *x,
    int off);
__attribute__((deprecated("Since OpenSSL " "3.0"))) EC_KEY *EC_KEY_new_ex(OSSL_LIB_CTX *ctx, const char *propq);
__attribute__((deprecated("Since OpenSSL " "3.0"))) EC_KEY *EC_KEY_new(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int EC_KEY_get_flags(const EC_KEY *key);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EC_KEY_set_flags(EC_KEY *key, int flags);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EC_KEY_clear_flags(EC_KEY *key, int flags);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int EC_KEY_decoded_from_explicit_params(const EC_KEY *key);
__attribute__((deprecated("Since OpenSSL " "3.0"))) EC_KEY *EC_KEY_new_by_curve_name_ex(OSSL_LIB_CTX *ctx,
    const char *propq,
    int nid);
__attribute__((deprecated("Since OpenSSL " "3.0"))) EC_KEY *EC_KEY_new_by_curve_name(int nid);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EC_KEY_free(EC_KEY *key);
__attribute__((deprecated("Since OpenSSL " "3.0"))) EC_KEY *EC_KEY_copy(EC_KEY *dst, const EC_KEY *src);
__attribute__((deprecated("Since OpenSSL " "3.0"))) EC_KEY *EC_KEY_dup(const EC_KEY *src);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int EC_KEY_up_ref(EC_KEY *key);
__attribute__((deprecated("Since OpenSSL " "3.0"))) ENGINE *EC_KEY_get0_engine(const EC_KEY *eckey);
__attribute__((deprecated("Since OpenSSL " "3.0"))) const EC_GROUP *EC_KEY_get0_group(const EC_KEY *key);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int EC_KEY_set_group(EC_KEY *key, const EC_GROUP *group);
__attribute__((deprecated("Since OpenSSL " "3.0"))) const BIGNUM *EC_KEY_get0_private_key(const EC_KEY *key);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int EC_KEY_set_private_key(EC_KEY *key, const BIGNUM *prv);
__attribute__((deprecated("Since OpenSSL " "3.0"))) const EC_POINT *EC_KEY_get0_public_key(const EC_KEY *key);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int EC_KEY_set_public_key(EC_KEY *key, const EC_POINT *pub);
__attribute__((deprecated("Since OpenSSL " "3.0"))) unsigned EC_KEY_get_enc_flags(const EC_KEY *key);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EC_KEY_set_enc_flags(EC_KEY *eckey, unsigned int flags);
__attribute__((deprecated("Since OpenSSL " "3.0"))) point_conversion_form_t EC_KEY_get_conv_form(const EC_KEY *key);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EC_KEY_set_conv_form(EC_KEY *eckey,
    point_conversion_form_t cform);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int EC_KEY_set_ex_data(EC_KEY *key, int idx, void *arg);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void *EC_KEY_get_ex_data(const EC_KEY *key, int idx);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EC_KEY_set_asn1_flag(EC_KEY *eckey, int asn1_flag);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int EC_KEY_precompute_mult(EC_KEY *key, BN_CTX *ctx);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int EC_KEY_generate_key(EC_KEY *key);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int EC_KEY_check_key(const EC_KEY *key);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int EC_KEY_can_sign(const EC_KEY *eckey);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int EC_KEY_set_public_key_affine_coordinates(EC_KEY *key,
    BIGNUM *x,
    BIGNUM *y);
__attribute__((deprecated("Since OpenSSL " "3.0"))) size_t EC_KEY_key2buf(const EC_KEY *key,
    point_conversion_form_t form,
    unsigned char **pbuf, BN_CTX *ctx);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int EC_KEY_oct2key(EC_KEY *key, const unsigned char *buf,
    size_t len, BN_CTX *ctx);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int EC_KEY_oct2priv(EC_KEY *key, const unsigned char *buf,
    size_t len);
__attribute__((deprecated("Since OpenSSL " "3.0"))) size_t EC_KEY_priv2oct(const EC_KEY *key,
    unsigned char *buf, size_t len);
__attribute__((deprecated("Since OpenSSL " "3.0"))) size_t EC_KEY_priv2buf(const EC_KEY *eckey,
    unsigned char **pbuf);
__attribute__((deprecated("Since OpenSSL " "3.0"))) EC_KEY *d2i_ECPrivateKey(EC_KEY **key,
    const unsigned char **in,
    long len);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int i2d_ECPrivateKey(const EC_KEY *key,
    unsigned char **out);
__attribute__((deprecated("Since OpenSSL " "3.0"))) EC_KEY *d2i_ECParameters(EC_KEY **key,
    const unsigned char **in,
    long len);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int i2d_ECParameters(const EC_KEY *key,
    unsigned char **out);
__attribute__((deprecated("Since OpenSSL " "3.0"))) EC_KEY *o2i_ECPublicKey(EC_KEY **key,
    const unsigned char **in, long len);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int i2o_ECPublicKey(const EC_KEY *key, unsigned char **out);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ECParameters_print(BIO *bp, const EC_KEY *key);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int EC_KEY_print(BIO *bp, const EC_KEY *key, int off);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ECParameters_print_fp(FILE *fp, const EC_KEY *key);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int EC_KEY_print_fp(FILE *fp, const EC_KEY *key, int off);
__attribute__((deprecated("Since OpenSSL " "3.0"))) const EC_KEY_METHOD *EC_KEY_OpenSSL(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) const EC_KEY_METHOD *EC_KEY_get_default_method(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EC_KEY_set_default_method(const EC_KEY_METHOD *meth);
__attribute__((deprecated("Since OpenSSL " "3.0"))) const EC_KEY_METHOD *EC_KEY_get_method(const EC_KEY *key);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int EC_KEY_set_method(EC_KEY *key, const EC_KEY_METHOD *meth);
__attribute__((deprecated("Since OpenSSL " "3.0"))) EC_KEY *EC_KEY_new_method(ENGINE *engine);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ECDH_KDF_X9_62(unsigned char *out, size_t outlen,
    const unsigned char *Z, size_t Zlen,
    const unsigned char *sinfo,
    size_t sinfolen, const EVP_MD *md);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ECDH_compute_key(void *out, size_t outlen,
    const EC_POINT *pub_key,
    const EC_KEY *ecdh,
    void *(*KDF)(const void *in,
        size_t inlen, void *out,
        size_t *outlen));
typedef struct ECDSA_SIG_st ECDSA_SIG;
ECDSA_SIG *ECDSA_SIG_new(void);
void ECDSA_SIG_free(ECDSA_SIG *sig);
extern ECDSA_SIG *d2i_ECDSA_SIG(ECDSA_SIG **a, const unsigned char **in, long len); extern int i2d_ECDSA_SIG(const ECDSA_SIG *a, unsigned char **out);
void ECDSA_SIG_get0(const ECDSA_SIG *sig, const BIGNUM **pr, const BIGNUM **ps);
const BIGNUM *ECDSA_SIG_get0_r(const ECDSA_SIG *sig);
const BIGNUM *ECDSA_SIG_get0_s(const ECDSA_SIG *sig);
int ECDSA_SIG_set0(ECDSA_SIG *sig, BIGNUM *r, BIGNUM *s);
__attribute__((deprecated("Since OpenSSL " "3.0"))) ECDSA_SIG *ECDSA_do_sign(const unsigned char *dgst,
    int dgst_len, EC_KEY *eckey);
__attribute__((deprecated("Since OpenSSL " "3.0"))) ECDSA_SIG *ECDSA_do_sign_ex(const unsigned char *dgst,
    int dgstlen, const BIGNUM *kinv,
    const BIGNUM *rp, EC_KEY *eckey);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ECDSA_do_verify(const unsigned char *dgst, int dgst_len,
    const ECDSA_SIG *sig, EC_KEY *eckey);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ECDSA_sign_setup(EC_KEY *eckey, BN_CTX *ctx,
    BIGNUM **kinv, BIGNUM **rp);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ECDSA_sign(int type, const unsigned char *dgst,
    int dgstlen, unsigned char *sig,
    unsigned int *siglen, EC_KEY *eckey);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ECDSA_sign_ex(int type, const unsigned char *dgst,
    int dgstlen, unsigned char *sig,
    unsigned int *siglen, const BIGNUM *kinv,
    const BIGNUM *rp, EC_KEY *eckey);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ECDSA_verify(int type, const unsigned char *dgst,
    int dgstlen, const unsigned char *sig,
    int siglen, EC_KEY *eckey);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ECDSA_size(const EC_KEY *eckey);
__attribute__((deprecated("Since OpenSSL " "3.0"))) EC_KEY_METHOD *EC_KEY_METHOD_new(const EC_KEY_METHOD *meth);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EC_KEY_METHOD_free(EC_KEY_METHOD *meth);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EC_KEY_METHOD_set_init(EC_KEY_METHOD *meth,
    int (*init)(EC_KEY *key),
    void (*finish)(EC_KEY *key),
    int (*copy)(EC_KEY *dest, const EC_KEY *src),
    int (*set_group)(EC_KEY *key, const EC_GROUP *grp),
    int (*set_private)(EC_KEY *key, const BIGNUM *priv_key),
    int (*set_public)(EC_KEY *key, const EC_POINT *pub_key));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EC_KEY_METHOD_set_keygen(EC_KEY_METHOD *meth,
    int (*keygen)(EC_KEY *key));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EC_KEY_METHOD_set_compute_key(EC_KEY_METHOD *meth,
    int (*ckey)(unsigned char **psec, size_t *pseclen,
        const EC_POINT *pub_key, const EC_KEY *ecdh));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EC_KEY_METHOD_set_sign(EC_KEY_METHOD *meth,
    int (*sign)(int type, const unsigned char *dgst,
        int dlen, unsigned char *sig,
        unsigned int *siglen,
        const BIGNUM *kinv, const BIGNUM *r,
        EC_KEY *eckey),
    int (*sign_setup)(EC_KEY *eckey, BN_CTX *ctx_in,
        BIGNUM **kinvp, BIGNUM **rp),
    ECDSA_SIG *(*sign_sig)(const unsigned char *dgst,
        int dgst_len,
        const BIGNUM *in_kinv,
        const BIGNUM *in_r,
        EC_KEY *eckey));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EC_KEY_METHOD_set_verify(EC_KEY_METHOD *meth,
    int (*verify)(int type, const unsigned char *dgst, int dgst_len,
        const unsigned char *sigbuf,
        int sig_len, EC_KEY *eckey),
    int (*verify_sig)(const unsigned char *dgst,
        int dgst_len, const ECDSA_SIG *sig,
        EC_KEY *eckey));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EC_KEY_METHOD_get_init(const EC_KEY_METHOD *meth,
    int (**pinit)(EC_KEY *key),
    void (**pfinish)(EC_KEY *key),
    int (**pcopy)(EC_KEY *dest, const EC_KEY *src),
    int (**pset_group)(EC_KEY *key, const EC_GROUP *grp),
    int (**pset_private)(EC_KEY *key, const BIGNUM *priv_key),
    int (**pset_public)(EC_KEY *key, const EC_POINT *pub_key));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EC_KEY_METHOD_get_keygen(const EC_KEY_METHOD *meth, int (**pkeygen)(EC_KEY *key));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EC_KEY_METHOD_get_compute_key(const EC_KEY_METHOD *meth,
    int (**pck)(unsigned char **psec,
        size_t *pseclen,
        const EC_POINT *pub_key,
        const EC_KEY *ecdh));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EC_KEY_METHOD_get_sign(const EC_KEY_METHOD *meth,
    int (**psign)(int type, const unsigned char *dgst,
        int dlen, unsigned char *sig,
        unsigned int *siglen,
        const BIGNUM *kinv, const BIGNUM *r,
        EC_KEY *eckey),
    int (**psign_setup)(EC_KEY *eckey, BN_CTX *ctx_in,
        BIGNUM **kinvp, BIGNUM **rp),
    ECDSA_SIG *(**psign_sig)(const unsigned char *dgst,
        int dgst_len,
        const BIGNUM *in_kinv,
        const BIGNUM *in_r,
        EC_KEY *eckey));
__attribute__((deprecated("Since OpenSSL " "3.0"))) void EC_KEY_METHOD_get_verify(const EC_KEY_METHOD *meth,
    int (**pverify)(int type, const unsigned char *dgst, int dgst_len,
        const unsigned char *sigbuf,
        int sig_len, EC_KEY *eckey),
    int (**pverify_sig)(const unsigned char *dgst,
        int dgst_len,
        const ECDSA_SIG *sig,
        EC_KEY *eckey));
       
       
int EVP_PKEY_CTX_set_rsa_padding(EVP_PKEY_CTX *ctx, int pad_mode);
int EVP_PKEY_CTX_get_rsa_padding(EVP_PKEY_CTX *ctx, int *pad_mode);
int EVP_PKEY_CTX_set_rsa_pss_saltlen(EVP_PKEY_CTX *ctx, int saltlen);
int EVP_PKEY_CTX_get_rsa_pss_saltlen(EVP_PKEY_CTX *ctx, int *saltlen);
int EVP_PKEY_CTX_set_rsa_keygen_bits(EVP_PKEY_CTX *ctx, int bits);
int EVP_PKEY_CTX_set1_rsa_keygen_pubexp(EVP_PKEY_CTX *ctx, BIGNUM *pubexp);
int EVP_PKEY_CTX_set_rsa_keygen_primes(EVP_PKEY_CTX *ctx, int primes);
int EVP_PKEY_CTX_set_rsa_pss_keygen_saltlen(EVP_PKEY_CTX *ctx, int saltlen);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int EVP_PKEY_CTX_set_rsa_keygen_pubexp(EVP_PKEY_CTX *ctx, BIGNUM *pubexp);
int EVP_PKEY_CTX_set_rsa_mgf1_md(EVP_PKEY_CTX *ctx, const EVP_MD *md);
int EVP_PKEY_CTX_set_rsa_mgf1_md_name(EVP_PKEY_CTX *ctx, const char *mdname,
    const char *mdprops);
int EVP_PKEY_CTX_get_rsa_mgf1_md(EVP_PKEY_CTX *ctx, const EVP_MD **md);
int EVP_PKEY_CTX_get_rsa_mgf1_md_name(EVP_PKEY_CTX *ctx, char *name,
    size_t namelen);
int EVP_PKEY_CTX_set_rsa_pss_keygen_mgf1_md(EVP_PKEY_CTX *ctx, const EVP_MD *md);
int EVP_PKEY_CTX_set_rsa_pss_keygen_mgf1_md_name(EVP_PKEY_CTX *ctx,
    const char *mdname);
int EVP_PKEY_CTX_set_rsa_pss_keygen_md(EVP_PKEY_CTX *ctx, const EVP_MD *md);
int EVP_PKEY_CTX_set_rsa_pss_keygen_md_name(EVP_PKEY_CTX *ctx,
    const char *mdname,
    const char *mdprops);
int EVP_PKEY_CTX_set_rsa_oaep_md(EVP_PKEY_CTX *ctx, const EVP_MD *md);
int EVP_PKEY_CTX_set_rsa_oaep_md_name(EVP_PKEY_CTX *ctx, const char *mdname,
    const char *mdprops);
int EVP_PKEY_CTX_get_rsa_oaep_md(EVP_PKEY_CTX *ctx, const EVP_MD **md);
int EVP_PKEY_CTX_get_rsa_oaep_md_name(EVP_PKEY_CTX *ctx, char *name,
    size_t namelen);
int EVP_PKEY_CTX_set0_rsa_oaep_label(EVP_PKEY_CTX *ctx, void *label, int llen);
int EVP_PKEY_CTX_get0_rsa_oaep_label(EVP_PKEY_CTX *ctx, unsigned char **label);
__attribute__((deprecated("Since OpenSSL " "3.0"))) RSA *RSA_new(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) RSA *RSA_new_method(ENGINE *engine);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int RSA_bits(const RSA *rsa);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int RSA_size(const RSA *rsa);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int RSA_security_bits(const RSA *rsa);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int RSA_set0_key(RSA *r, BIGNUM *n, BIGNUM *e, BIGNUM *d);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int RSA_set0_factors(RSA *r, BIGNUM *p, BIGNUM *q);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int RSA_set0_crt_params(RSA *r,
    BIGNUM *dmp1, BIGNUM *dmq1,
    BIGNUM *iqmp);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int RSA_set0_multi_prime_params(RSA *r,
    BIGNUM *primes[],
    BIGNUM *exps[],
    BIGNUM *coeffs[],
    int pnum);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void RSA_get0_key(const RSA *r,
    const BIGNUM **n, const BIGNUM **e,
    const BIGNUM **d);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void RSA_get0_factors(const RSA *r,
    const BIGNUM **p, const BIGNUM **q);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int RSA_get_multi_prime_extra_count(const RSA *r);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int RSA_get0_multi_prime_factors(const RSA *r,
    const BIGNUM *primes[]);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void RSA_get0_crt_params(const RSA *r,
    const BIGNUM **dmp1,
    const BIGNUM **dmq1,
    const BIGNUM **iqmp);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int RSA_get0_multi_prime_crt_params(const RSA *r, const BIGNUM *exps[],
    const BIGNUM *coeffs[]);
__attribute__((deprecated("Since OpenSSL " "3.0"))) const BIGNUM *RSA_get0_n(const RSA *d);
__attribute__((deprecated("Since OpenSSL " "3.0"))) const BIGNUM *RSA_get0_e(const RSA *d);
__attribute__((deprecated("Since OpenSSL " "3.0"))) const BIGNUM *RSA_get0_d(const RSA *d);
__attribute__((deprecated("Since OpenSSL " "3.0"))) const BIGNUM *RSA_get0_p(const RSA *d);
__attribute__((deprecated("Since OpenSSL " "3.0"))) const BIGNUM *RSA_get0_q(const RSA *d);
__attribute__((deprecated("Since OpenSSL " "3.0"))) const BIGNUM *RSA_get0_dmp1(const RSA *r);
__attribute__((deprecated("Since OpenSSL " "3.0"))) const BIGNUM *RSA_get0_dmq1(const RSA *r);
__attribute__((deprecated("Since OpenSSL " "3.0"))) const BIGNUM *RSA_get0_iqmp(const RSA *r);
__attribute__((deprecated("Since OpenSSL " "3.0"))) const RSA_PSS_PARAMS *RSA_get0_pss_params(const RSA *r);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void RSA_clear_flags(RSA *r, int flags);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int RSA_test_flags(const RSA *r, int flags);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void RSA_set_flags(RSA *r, int flags);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int RSA_get_version(RSA *r);
__attribute__((deprecated("Since OpenSSL " "3.0"))) ENGINE *RSA_get0_engine(const RSA *r);
__attribute__((deprecated("Since OpenSSL " "0.9.8"))) RSA *RSA_generate_key(int bits, unsigned long e, void (*callback)(int, int, void *),
    void *cb_arg);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int RSA_generate_key_ex(RSA *rsa, int bits, BIGNUM *e,
    BN_GENCB *cb);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int RSA_generate_multi_prime_key(RSA *rsa, int bits,
    int primes, BIGNUM *e,
    BN_GENCB *cb);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int RSA_X931_derive_ex(RSA *rsa, BIGNUM *p1, BIGNUM *p2,
    BIGNUM *q1, BIGNUM *q2,
    const BIGNUM *Xp1, const BIGNUM *Xp2,
    const BIGNUM *Xp, const BIGNUM *Xq1,
    const BIGNUM *Xq2, const BIGNUM *Xq,
    const BIGNUM *e, BN_GENCB *cb);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int RSA_X931_generate_key_ex(RSA *rsa, int bits,
    const BIGNUM *e,
    BN_GENCB *cb);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int RSA_check_key(const RSA *);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int RSA_check_key_ex(const RSA *, BN_GENCB *cb);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int RSA_public_encrypt(int flen, const unsigned char *from, unsigned char *to,
    RSA *rsa, int padding);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int RSA_private_encrypt(int flen, const unsigned char *from, unsigned char *to,
    RSA *rsa, int padding);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int RSA_public_decrypt(int flen, const unsigned char *from, unsigned char *to,
    RSA *rsa, int padding);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int RSA_private_decrypt(int flen, const unsigned char *from, unsigned char *to,
    RSA *rsa, int padding);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void RSA_free(RSA *r);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int RSA_up_ref(RSA *r);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int RSA_flags(const RSA *r);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void RSA_set_default_method(const RSA_METHOD *meth);
__attribute__((deprecated("Since OpenSSL " "3.0"))) const RSA_METHOD *RSA_get_default_method(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) const RSA_METHOD *RSA_null_method(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) const RSA_METHOD *RSA_get_method(const RSA *rsa);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int RSA_set_method(RSA *rsa, const RSA_METHOD *meth);
__attribute__((deprecated("Since OpenSSL " "3.0"))) const RSA_METHOD *RSA_PKCS1_OpenSSL(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) RSA *d2i_RSAPublicKey(RSA **a, const unsigned char **in, long len); __attribute__((deprecated("Since OpenSSL " "3.0"))) int i2d_RSAPublicKey(const RSA *a, unsigned char **out); __attribute__((deprecated("Since OpenSSL " "3.0"))) const ASN1_ITEM *RSAPublicKey_it(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) RSA *d2i_RSAPrivateKey(RSA **a, const unsigned char **in, long len); __attribute__((deprecated("Since OpenSSL " "3.0"))) int i2d_RSAPrivateKey(const RSA *a, unsigned char **out); __attribute__((deprecated("Since OpenSSL " "3.0"))) const ASN1_ITEM *RSAPrivateKey_it(void);
int RSA_pkey_ctx_ctrl(EVP_PKEY_CTX *ctx, int optype, int cmd, int p1, void *p2);
struct rsa_pss_params_st {
    X509_ALGOR *hashAlgorithm;
    X509_ALGOR *maskGenAlgorithm;
    ASN1_INTEGER *saltLength;
    ASN1_INTEGER *trailerField;
    X509_ALGOR *maskHash;
};
extern RSA_PSS_PARAMS *RSA_PSS_PARAMS_new(void); extern void RSA_PSS_PARAMS_free(RSA_PSS_PARAMS *a); extern RSA_PSS_PARAMS *d2i_RSA_PSS_PARAMS(RSA_PSS_PARAMS **a, const unsigned char **in, long len); extern int i2d_RSA_PSS_PARAMS(const RSA_PSS_PARAMS *a, unsigned char **out); extern const ASN1_ITEM *RSA_PSS_PARAMS_it(void);
extern RSA_PSS_PARAMS *RSA_PSS_PARAMS_dup(const RSA_PSS_PARAMS *a);
typedef struct rsa_oaep_params_st {
    X509_ALGOR *hashFunc;
    X509_ALGOR *maskGenFunc;
    X509_ALGOR *pSourceFunc;
    X509_ALGOR *maskHash;
} RSA_OAEP_PARAMS;
extern RSA_OAEP_PARAMS *RSA_OAEP_PARAMS_new(void); extern void RSA_OAEP_PARAMS_free(RSA_OAEP_PARAMS *a); extern RSA_OAEP_PARAMS *d2i_RSA_OAEP_PARAMS(RSA_OAEP_PARAMS **a, const unsigned char **in, long len); extern int i2d_RSA_OAEP_PARAMS(const RSA_OAEP_PARAMS *a, unsigned char **out); extern const ASN1_ITEM *RSA_OAEP_PARAMS_it(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int RSA_print_fp(FILE *fp, const RSA *r, int offset);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int RSA_print(BIO *bp, const RSA *r, int offset);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int RSA_sign(int type, const unsigned char *m,
    unsigned int m_length, unsigned char *sigret,
    unsigned int *siglen, RSA *rsa);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int RSA_verify(int type, const unsigned char *m,
    unsigned int m_length,
    const unsigned char *sigbuf,
    unsigned int siglen, RSA *rsa);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int RSA_sign_ASN1_OCTET_STRING(int type,
    const unsigned char *m, unsigned int m_length,
    unsigned char *sigret, unsigned int *siglen,
    RSA *rsa);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int RSA_verify_ASN1_OCTET_STRING(int type,
    const unsigned char *m, unsigned int m_length,
    unsigned char *sigbuf, unsigned int siglen,
    RSA *rsa);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int RSA_blinding_on(RSA *rsa, BN_CTX *ctx);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void RSA_blinding_off(RSA *rsa);
__attribute__((deprecated("Since OpenSSL " "3.0"))) BN_BLINDING *RSA_setup_blinding(RSA *rsa, BN_CTX *ctx);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int RSA_padding_add_PKCS1_type_1(unsigned char *to, int tlen,
    const unsigned char *f, int fl);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int RSA_padding_check_PKCS1_type_1(unsigned char *to, int tlen,
    const unsigned char *f, int fl,
    int rsa_len);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int RSA_padding_add_PKCS1_type_2(unsigned char *to, int tlen,
    const unsigned char *f, int fl);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int RSA_padding_check_PKCS1_type_2(unsigned char *to, int tlen,
    const unsigned char *f, int fl,
    int rsa_len);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int PKCS1_MGF1(unsigned char *mask, long len,
    const unsigned char *seed, long seedlen,
    const EVP_MD *dgst);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int RSA_padding_add_PKCS1_OAEP(unsigned char *to, int tlen,
    const unsigned char *f, int fl,
    const unsigned char *p, int pl);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int RSA_padding_check_PKCS1_OAEP(unsigned char *to, int tlen,
    const unsigned char *f, int fl, int rsa_len,
    const unsigned char *p, int pl);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int RSA_padding_add_PKCS1_OAEP_mgf1(unsigned char *to, int tlen,
    const unsigned char *from, int flen,
    const unsigned char *param, int plen,
    const EVP_MD *md, const EVP_MD *mgf1md);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int RSA_padding_check_PKCS1_OAEP_mgf1(unsigned char *to, int tlen,
    const unsigned char *from, int flen,
    int num,
    const unsigned char *param, int plen,
    const EVP_MD *md, const EVP_MD *mgf1md);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int RSA_padding_add_none(unsigned char *to, int tlen,
    const unsigned char *f, int fl);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int RSA_padding_check_none(unsigned char *to, int tlen,
    const unsigned char *f, int fl,
    int rsa_len);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int RSA_padding_add_X931(unsigned char *to, int tlen,
    const unsigned char *f, int fl);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int RSA_padding_check_X931(unsigned char *to, int tlen,
    const unsigned char *f, int fl,
    int rsa_len);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int RSA_X931_hash_id(int nid);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int RSA_verify_PKCS1_PSS(RSA *rsa, const unsigned char *mHash,
    const EVP_MD *Hash, const unsigned char *EM,
    int sLen);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int RSA_padding_add_PKCS1_PSS(RSA *rsa, unsigned char *EM,
    const unsigned char *mHash, const EVP_MD *Hash,
    int sLen);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int RSA_verify_PKCS1_PSS_mgf1(RSA *rsa, const unsigned char *mHash,
    const EVP_MD *Hash, const EVP_MD *mgf1Hash,
    const unsigned char *EM, int sLen);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int RSA_padding_add_PKCS1_PSS_mgf1(RSA *rsa, unsigned char *EM,
    const unsigned char *mHash,
    const EVP_MD *Hash, const EVP_MD *mgf1Hash,
    int sLen);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int RSA_set_ex_data(RSA *r, int idx, void *arg);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void *RSA_get_ex_data(const RSA *r, int idx);
__attribute__((deprecated("Since OpenSSL " "3.0"))) RSA *RSAPublicKey_dup(const RSA *a);
__attribute__((deprecated("Since OpenSSL " "3.0"))) RSA *RSAPrivateKey_dup(const RSA *a);
__attribute__((deprecated("Since OpenSSL " "3.0"))) RSA_METHOD *RSA_meth_new(const char *name, int flags);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void RSA_meth_free(RSA_METHOD *meth);
__attribute__((deprecated("Since OpenSSL " "3.0"))) RSA_METHOD *RSA_meth_dup(const RSA_METHOD *meth);
__attribute__((deprecated("Since OpenSSL " "3.0"))) const char *RSA_meth_get0_name(const RSA_METHOD *meth);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int RSA_meth_set1_name(RSA_METHOD *meth,
    const char *name);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int RSA_meth_get_flags(const RSA_METHOD *meth);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int RSA_meth_set_flags(RSA_METHOD *meth, int flags);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void *RSA_meth_get0_app_data(const RSA_METHOD *meth);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int RSA_meth_set0_app_data(RSA_METHOD *meth,
    void *app_data);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int (*RSA_meth_get_pub_enc(const RSA_METHOD *meth))(int flen,
    const unsigned char *from,
    unsigned char *to,
    RSA *rsa, int padding);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int RSA_meth_set_pub_enc(RSA_METHOD *rsa,
    int (*pub_enc)(int flen, const unsigned char *from,
        unsigned char *to, RSA *rsa,
        int padding));
__attribute__((deprecated("Since OpenSSL " "3.0")))
int (*RSA_meth_get_pub_dec(const RSA_METHOD *meth))(int flen,
    const unsigned char *from,
    unsigned char *to,
    RSA *rsa, int padding);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int RSA_meth_set_pub_dec(RSA_METHOD *rsa,
    int (*pub_dec)(int flen, const unsigned char *from,
        unsigned char *to, RSA *rsa,
        int padding));
__attribute__((deprecated("Since OpenSSL " "3.0")))
int (*RSA_meth_get_priv_enc(const RSA_METHOD *meth))(int flen,
    const unsigned char *from,
    unsigned char *to,
    RSA *rsa, int padding);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int RSA_meth_set_priv_enc(RSA_METHOD *rsa,
    int (*priv_enc)(int flen, const unsigned char *from,
        unsigned char *to, RSA *rsa,
        int padding));
__attribute__((deprecated("Since OpenSSL " "3.0")))
int (*RSA_meth_get_priv_dec(const RSA_METHOD *meth))(int flen,
    const unsigned char *from,
    unsigned char *to,
    RSA *rsa, int padding);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int RSA_meth_set_priv_dec(RSA_METHOD *rsa,
    int (*priv_dec)(int flen, const unsigned char *from,
        unsigned char *to, RSA *rsa,
        int padding));
__attribute__((deprecated("Since OpenSSL " "3.0")))
int (*RSA_meth_get_mod_exp(const RSA_METHOD *meth))(BIGNUM *r0,
    const BIGNUM *i,
    RSA *rsa, BN_CTX *ctx);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int RSA_meth_set_mod_exp(RSA_METHOD *rsa,
    int (*mod_exp)(BIGNUM *r0, const BIGNUM *i, RSA *rsa,
        BN_CTX *ctx));
__attribute__((deprecated("Since OpenSSL " "3.0")))
int (*RSA_meth_get_bn_mod_exp(const RSA_METHOD *meth))(BIGNUM *r,
    const BIGNUM *a,
    const BIGNUM *p,
    const BIGNUM *m,
    BN_CTX *ctx,
    BN_MONT_CTX *m_ctx);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int RSA_meth_set_bn_mod_exp(RSA_METHOD *rsa,
    int (*bn_mod_exp)(BIGNUM *r,
        const BIGNUM *a,
        const BIGNUM *p,
        const BIGNUM *m,
        BN_CTX *ctx,
        BN_MONT_CTX *m_ctx));
__attribute__((deprecated("Since OpenSSL " "3.0")))
int (*RSA_meth_get_init(const RSA_METHOD *meth))(RSA *rsa);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int RSA_meth_set_init(RSA_METHOD *rsa, int (*init)(RSA *rsa));
__attribute__((deprecated("Since OpenSSL " "3.0")))
int (*RSA_meth_get_finish(const RSA_METHOD *meth))(RSA *rsa);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int RSA_meth_set_finish(RSA_METHOD *rsa, int (*finish)(RSA *rsa));
__attribute__((deprecated("Since OpenSSL " "3.0")))
int (*RSA_meth_get_sign(const RSA_METHOD *meth))(int type,
    const unsigned char *m,
    unsigned int m_length,
    unsigned char *sigret,
    unsigned int *siglen,
    const RSA *rsa);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int RSA_meth_set_sign(RSA_METHOD *rsa,
    int (*sign)(int type, const unsigned char *m,
        unsigned int m_length,
        unsigned char *sigret, unsigned int *siglen,
        const RSA *rsa));
__attribute__((deprecated("Since OpenSSL " "3.0")))
int (*RSA_meth_get_verify(const RSA_METHOD *meth))(int dtype,
    const unsigned char *m,
    unsigned int m_length,
    const unsigned char *sigbuf,
    unsigned int siglen,
    const RSA *rsa);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int RSA_meth_set_verify(RSA_METHOD *rsa,
    int (*verify)(int dtype, const unsigned char *m,
        unsigned int m_length,
        const unsigned char *sigbuf,
        unsigned int siglen, const RSA *rsa));
__attribute__((deprecated("Since OpenSSL " "3.0")))
int (*RSA_meth_get_keygen(const RSA_METHOD *meth))(RSA *rsa, int bits,
    BIGNUM *e, BN_GENCB *cb);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int RSA_meth_set_keygen(RSA_METHOD *rsa,
    int (*keygen)(RSA *rsa, int bits, BIGNUM *e,
        BN_GENCB *cb));
__attribute__((deprecated("Since OpenSSL " "3.0")))
int (*RSA_meth_get_multi_prime_keygen(const RSA_METHOD *meth))(RSA *rsa,
    int bits,
    int primes,
    BIGNUM *e,
    BN_GENCB *cb);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int RSA_meth_set_multi_prime_keygen(RSA_METHOD *meth,
    int (*keygen)(RSA *rsa, int bits,
        int primes, BIGNUM *e,
        BN_GENCB *cb));
       
       
int EVP_PKEY_CTX_set_dh_paramgen_type(EVP_PKEY_CTX *ctx, int typ);
int EVP_PKEY_CTX_set_dh_paramgen_gindex(EVP_PKEY_CTX *ctx, int gindex);
int EVP_PKEY_CTX_set_dh_paramgen_seed(EVP_PKEY_CTX *ctx,
    const unsigned char *seed,
    size_t seedlen);
int EVP_PKEY_CTX_set_dh_paramgen_prime_len(EVP_PKEY_CTX *ctx, int pbits);
int EVP_PKEY_CTX_set_dh_paramgen_subprime_len(EVP_PKEY_CTX *ctx, int qlen);
int EVP_PKEY_CTX_set_dh_paramgen_generator(EVP_PKEY_CTX *ctx, int gen);
int EVP_PKEY_CTX_set_dh_nid(EVP_PKEY_CTX *ctx, int nid);
int EVP_PKEY_CTX_set_dh_rfc5114(EVP_PKEY_CTX *ctx, int gen);
int EVP_PKEY_CTX_set_dhx_rfc5114(EVP_PKEY_CTX *ctx, int gen);
int EVP_PKEY_CTX_set_dh_pad(EVP_PKEY_CTX *ctx, int pad);
int EVP_PKEY_CTX_set_dh_kdf_type(EVP_PKEY_CTX *ctx, int kdf);
int EVP_PKEY_CTX_get_dh_kdf_type(EVP_PKEY_CTX *ctx);
int EVP_PKEY_CTX_set0_dh_kdf_oid(EVP_PKEY_CTX *ctx, ASN1_OBJECT *oid);
int EVP_PKEY_CTX_get0_dh_kdf_oid(EVP_PKEY_CTX *ctx, ASN1_OBJECT **oid);
int EVP_PKEY_CTX_set_dh_kdf_md(EVP_PKEY_CTX *ctx, const EVP_MD *md);
int EVP_PKEY_CTX_get_dh_kdf_md(EVP_PKEY_CTX *ctx, const EVP_MD **md);
int EVP_PKEY_CTX_set_dh_kdf_outlen(EVP_PKEY_CTX *ctx, int len);
int EVP_PKEY_CTX_get_dh_kdf_outlen(EVP_PKEY_CTX *ctx, int *len);
int EVP_PKEY_CTX_set0_dh_kdf_ukm(EVP_PKEY_CTX *ctx, unsigned char *ukm, int len);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int EVP_PKEY_CTX_get0_dh_kdf_ukm(EVP_PKEY_CTX *ctx, unsigned char **ukm);
       
extern const ASN1_ITEM *DHparams_it(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) DH *DHparams_dup(const DH *a);
__attribute__((deprecated("Since OpenSSL " "3.0"))) const DH_METHOD *DH_OpenSSL(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void DH_set_default_method(const DH_METHOD *meth);
__attribute__((deprecated("Since OpenSSL " "3.0"))) const DH_METHOD *DH_get_default_method(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DH_set_method(DH *dh, const DH_METHOD *meth);
__attribute__((deprecated("Since OpenSSL " "3.0"))) DH *DH_new_method(ENGINE *engine);
__attribute__((deprecated("Since OpenSSL " "3.0"))) DH *DH_new(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void DH_free(DH *dh);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DH_up_ref(DH *dh);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DH_bits(const DH *dh);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DH_size(const DH *dh);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DH_security_bits(const DH *dh);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DH_set_ex_data(DH *d, int idx, void *arg);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void *DH_get_ex_data(const DH *d, int idx);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DH_generate_parameters_ex(DH *dh, int prime_len,
    int generator,
    BN_GENCB *cb);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DH_check_params_ex(const DH *dh);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DH_check_ex(const DH *dh);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DH_check_pub_key_ex(const DH *dh, const BIGNUM *pub_key);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DH_check_params(const DH *dh, int *ret);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DH_check(const DH *dh, int *codes);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DH_check_pub_key(const DH *dh, const BIGNUM *pub_key,
    int *codes);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DH_generate_key(DH *dh);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DH_compute_key(unsigned char *key,
    const BIGNUM *pub_key, DH *dh);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DH_compute_key_padded(unsigned char *key,
    const BIGNUM *pub_key, DH *dh);
__attribute__((deprecated("Since OpenSSL " "3.0"))) DH *d2i_DHparams(DH **a, const unsigned char **in, long len); __attribute__((deprecated("Since OpenSSL " "3.0"))) int i2d_DHparams(const DH *a, unsigned char **out);
__attribute__((deprecated("Since OpenSSL " "3.0"))) DH *d2i_DHxparams(DH **a, const unsigned char **in, long len); __attribute__((deprecated("Since OpenSSL " "3.0"))) int i2d_DHxparams(const DH *a, unsigned char **out);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DHparams_print_fp(FILE *fp, const DH *x);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DHparams_print(BIO *bp, const DH *x);
__attribute__((deprecated("Since OpenSSL " "3.0"))) DH *DH_get_1024_160(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) DH *DH_get_2048_224(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) DH *DH_get_2048_256(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) DH *DH_new_by_nid(int nid);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DH_get_nid(const DH *dh);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DH_KDF_X9_42(unsigned char *out, size_t outlen,
    const unsigned char *Z, size_t Zlen,
    ASN1_OBJECT *key_oid,
    const unsigned char *ukm,
    size_t ukmlen, const EVP_MD *md);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void DH_get0_pqg(const DH *dh, const BIGNUM **p,
    const BIGNUM **q, const BIGNUM **g);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DH_set0_pqg(DH *dh, BIGNUM *p, BIGNUM *q, BIGNUM *g);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void DH_get0_key(const DH *dh, const BIGNUM **pub_key,
    const BIGNUM **priv_key);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DH_set0_key(DH *dh, BIGNUM *pub_key, BIGNUM *priv_key);
__attribute__((deprecated("Since OpenSSL " "3.0"))) const BIGNUM *DH_get0_p(const DH *dh);
__attribute__((deprecated("Since OpenSSL " "3.0"))) const BIGNUM *DH_get0_q(const DH *dh);
__attribute__((deprecated("Since OpenSSL " "3.0"))) const BIGNUM *DH_get0_g(const DH *dh);
__attribute__((deprecated("Since OpenSSL " "3.0"))) const BIGNUM *DH_get0_priv_key(const DH *dh);
__attribute__((deprecated("Since OpenSSL " "3.0"))) const BIGNUM *DH_get0_pub_key(const DH *dh);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void DH_clear_flags(DH *dh, int flags);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DH_test_flags(const DH *dh, int flags);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void DH_set_flags(DH *dh, int flags);
__attribute__((deprecated("Since OpenSSL " "3.0"))) ENGINE *DH_get0_engine(DH *d);
__attribute__((deprecated("Since OpenSSL " "3.0"))) long DH_get_length(const DH *dh);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DH_set_length(DH *dh, long length);
__attribute__((deprecated("Since OpenSSL " "3.0"))) DH_METHOD *DH_meth_new(const char *name, int flags);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void DH_meth_free(DH_METHOD *dhm);
__attribute__((deprecated("Since OpenSSL " "3.0"))) DH_METHOD *DH_meth_dup(const DH_METHOD *dhm);
__attribute__((deprecated("Since OpenSSL " "3.0"))) const char *DH_meth_get0_name(const DH_METHOD *dhm);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DH_meth_set1_name(DH_METHOD *dhm, const char *name);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DH_meth_get_flags(const DH_METHOD *dhm);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DH_meth_set_flags(DH_METHOD *dhm, int flags);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void *DH_meth_get0_app_data(const DH_METHOD *dhm);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DH_meth_set0_app_data(DH_METHOD *dhm, void *app_data);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int (*DH_meth_get_generate_key(const DH_METHOD *dhm))(DH *);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DH_meth_set_generate_key(DH_METHOD *dhm,
    int (*generate_key)(DH *));
__attribute__((deprecated("Since OpenSSL " "3.0"))) int (*DH_meth_get_compute_key(const DH_METHOD *dhm))(unsigned char *key,
    const BIGNUM *pub_key,
    DH *dh);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DH_meth_set_compute_key(DH_METHOD *dhm,
    int (*compute_key)(unsigned char *key,
        const BIGNUM *pub_key,
        DH *dh));
__attribute__((deprecated("Since OpenSSL " "3.0"))) int (*DH_meth_get_bn_mod_exp(const DH_METHOD *dhm))(const DH *, BIGNUM *,
    const BIGNUM *,
    const BIGNUM *,
    const BIGNUM *, BN_CTX *,
    BN_MONT_CTX *);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DH_meth_set_bn_mod_exp(DH_METHOD *dhm,
    int (*bn_mod_exp)(const DH *, BIGNUM *,
        const BIGNUM *, const BIGNUM *,
        const BIGNUM *, BN_CTX *,
        BN_MONT_CTX *));
__attribute__((deprecated("Since OpenSSL " "3.0"))) int (*DH_meth_get_init(const DH_METHOD *dhm))(DH *);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DH_meth_set_init(DH_METHOD *dhm, int (*init)(DH *));
__attribute__((deprecated("Since OpenSSL " "3.0"))) int (*DH_meth_get_finish(const DH_METHOD *dhm))(DH *);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DH_meth_set_finish(DH_METHOD *dhm, int (*finish)(DH *));
__attribute__((deprecated("Since OpenSSL " "3.0"))) int (*DH_meth_get_generate_params(const DH_METHOD *dhm))(DH *, int, int,
    BN_GENCB *);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DH_meth_set_generate_params(DH_METHOD *dhm,
    int (*generate_params)(DH *, int, int,
        BN_GENCB *));
__attribute__((deprecated("Since OpenSSL " "0.9.8"))) DH *DH_generate_parameters(int prime_len, int generator,
    void (*callback)(int, int,
        void *),
    void *cb_arg);
       
int EVP_PKEY_CTX_set_dsa_paramgen_bits(EVP_PKEY_CTX *ctx, int nbits);
int EVP_PKEY_CTX_set_dsa_paramgen_q_bits(EVP_PKEY_CTX *ctx, int qbits);
int EVP_PKEY_CTX_set_dsa_paramgen_md_props(EVP_PKEY_CTX *ctx,
    const char *md_name,
    const char *md_properties);
int EVP_PKEY_CTX_set_dsa_paramgen_gindex(EVP_PKEY_CTX *ctx, int gindex);
int EVP_PKEY_CTX_set_dsa_paramgen_type(EVP_PKEY_CTX *ctx, const char *name);
int EVP_PKEY_CTX_set_dsa_paramgen_seed(EVP_PKEY_CTX *ctx,
    const unsigned char *seed,
    size_t seedlen);
int EVP_PKEY_CTX_set_dsa_paramgen_md(EVP_PKEY_CTX *ctx, const EVP_MD *md);
typedef struct DSA_SIG_st DSA_SIG;
DSA_SIG *DSA_SIG_new(void);
void DSA_SIG_free(DSA_SIG *a);
extern DSA_SIG *d2i_DSA_SIG(DSA_SIG **a, const unsigned char **in, long len); extern int i2d_DSA_SIG(const DSA_SIG *a, unsigned char **out);
void DSA_SIG_get0(const DSA_SIG *sig, const BIGNUM **pr, const BIGNUM **ps);
int DSA_SIG_set0(DSA_SIG *sig, BIGNUM *r, BIGNUM *s);
__attribute__((deprecated("Since OpenSSL " "3.0"))) DSA *DSAparams_dup(const DSA *a);
__attribute__((deprecated("Since OpenSSL " "3.0"))) DSA_SIG *DSA_do_sign(const unsigned char *dgst, int dlen,
    DSA *dsa);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DSA_do_verify(const unsigned char *dgst, int dgst_len,
    DSA_SIG *sig, DSA *dsa);
__attribute__((deprecated("Since OpenSSL " "3.0"))) const DSA_METHOD *DSA_OpenSSL(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void DSA_set_default_method(const DSA_METHOD *);
__attribute__((deprecated("Since OpenSSL " "3.0"))) const DSA_METHOD *DSA_get_default_method(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DSA_set_method(DSA *dsa, const DSA_METHOD *);
__attribute__((deprecated("Since OpenSSL " "3.0"))) const DSA_METHOD *DSA_get_method(DSA *d);
__attribute__((deprecated("Since OpenSSL " "3.0"))) DSA *DSA_new(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) DSA *DSA_new_method(ENGINE *engine);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void DSA_free(DSA *r);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DSA_up_ref(DSA *r);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DSA_size(const DSA *);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DSA_bits(const DSA *d);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DSA_security_bits(const DSA *d);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DSA_sign_setup(DSA *dsa, BN_CTX *ctx_in,
    BIGNUM **kinvp, BIGNUM **rp);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DSA_sign(int type, const unsigned char *dgst,
    int dlen, unsigned char *sig,
    unsigned int *siglen, DSA *dsa);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DSA_verify(int type, const unsigned char *dgst,
    int dgst_len, const unsigned char *sigbuf,
    int siglen, DSA *dsa);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DSA_set_ex_data(DSA *d, int idx, void *arg);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void *DSA_get_ex_data(const DSA *d, int idx);
__attribute__((deprecated("Since OpenSSL " "3.0"))) DSA *d2i_DSAPublicKey(DSA **a, const unsigned char **in, long len); __attribute__((deprecated("Since OpenSSL " "3.0"))) int i2d_DSAPublicKey(const DSA *a, unsigned char **out);
__attribute__((deprecated("Since OpenSSL " "3.0"))) DSA *d2i_DSAPrivateKey(DSA **a, const unsigned char **in, long len); __attribute__((deprecated("Since OpenSSL " "3.0"))) int i2d_DSAPrivateKey(const DSA *a, unsigned char **out);
__attribute__((deprecated("Since OpenSSL " "3.0"))) DSA *d2i_DSAparams(DSA **a, const unsigned char **in, long len); __attribute__((deprecated("Since OpenSSL " "3.0"))) int i2d_DSAparams(const DSA *a, unsigned char **out);
__attribute__((deprecated("Since OpenSSL " "0.9.8")))
DSA *DSA_generate_parameters(int bits, unsigned char *seed, int seed_len,
    int *counter_ret, unsigned long *h_ret,
    void (*callback)(int, int, void *),
    void *cb_arg);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DSA_generate_parameters_ex(DSA *dsa, int bits,
    const unsigned char *seed,
    int seed_len,
    int *counter_ret,
    unsigned long *h_ret,
    BN_GENCB *cb);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DSA_generate_key(DSA *a);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DSAparams_print(BIO *bp, const DSA *x);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DSA_print(BIO *bp, const DSA *x, int off);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DSAparams_print_fp(FILE *fp, const DSA *x);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DSA_print_fp(FILE *bp, const DSA *x, int off);
__attribute__((deprecated("Since OpenSSL " "3.0"))) DH *DSA_dup_DH(const DSA *r);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void DSA_get0_pqg(const DSA *d, const BIGNUM **p,
    const BIGNUM **q, const BIGNUM **g);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DSA_set0_pqg(DSA *d, BIGNUM *p, BIGNUM *q, BIGNUM *g);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void DSA_get0_key(const DSA *d, const BIGNUM **pub_key,
    const BIGNUM **priv_key);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DSA_set0_key(DSA *d, BIGNUM *pub_key,
    BIGNUM *priv_key);
__attribute__((deprecated("Since OpenSSL " "3.0"))) const BIGNUM *DSA_get0_p(const DSA *d);
__attribute__((deprecated("Since OpenSSL " "3.0"))) const BIGNUM *DSA_get0_q(const DSA *d);
__attribute__((deprecated("Since OpenSSL " "3.0"))) const BIGNUM *DSA_get0_g(const DSA *d);
__attribute__((deprecated("Since OpenSSL " "3.0"))) const BIGNUM *DSA_get0_pub_key(const DSA *d);
__attribute__((deprecated("Since OpenSSL " "3.0"))) const BIGNUM *DSA_get0_priv_key(const DSA *d);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void DSA_clear_flags(DSA *d, int flags);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DSA_test_flags(const DSA *d, int flags);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void DSA_set_flags(DSA *d, int flags);
__attribute__((deprecated("Since OpenSSL " "3.0"))) ENGINE *DSA_get0_engine(DSA *d);
__attribute__((deprecated("Since OpenSSL " "3.0"))) DSA_METHOD *DSA_meth_new(const char *name, int flags);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void DSA_meth_free(DSA_METHOD *dsam);
__attribute__((deprecated("Since OpenSSL " "3.0"))) DSA_METHOD *DSA_meth_dup(const DSA_METHOD *dsam);
__attribute__((deprecated("Since OpenSSL " "3.0"))) const char *DSA_meth_get0_name(const DSA_METHOD *dsam);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DSA_meth_set1_name(DSA_METHOD *dsam,
    const char *name);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DSA_meth_get_flags(const DSA_METHOD *dsam);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DSA_meth_set_flags(DSA_METHOD *dsam, int flags);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void *DSA_meth_get0_app_data(const DSA_METHOD *dsam);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DSA_meth_set0_app_data(DSA_METHOD *dsam,
    void *app_data);
__attribute__((deprecated("Since OpenSSL " "3.0"))) DSA_SIG *(*DSA_meth_get_sign(const DSA_METHOD *dsam))(const unsigned char *, int, DSA *);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DSA_meth_set_sign(DSA_METHOD *dsam,
    DSA_SIG *(*sign)(const unsigned char *, int, DSA *));
__attribute__((deprecated("Since OpenSSL " "3.0"))) int (*DSA_meth_get_sign_setup(const DSA_METHOD *dsam))(DSA *, BN_CTX *, BIGNUM **, BIGNUM **);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DSA_meth_set_sign_setup(DSA_METHOD *dsam,
    int (*sign_setup)(DSA *, BN_CTX *, BIGNUM **, BIGNUM **));
__attribute__((deprecated("Since OpenSSL " "3.0"))) int (*DSA_meth_get_verify(const DSA_METHOD *dsam))(const unsigned char *, int, DSA_SIG *, DSA *);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DSA_meth_set_verify(DSA_METHOD *dsam,
    int (*verify)(const unsigned char *, int, DSA_SIG *, DSA *));
__attribute__((deprecated("Since OpenSSL " "3.0"))) int (*DSA_meth_get_mod_exp(const DSA_METHOD *dsam))(DSA *, BIGNUM *, const BIGNUM *, const BIGNUM *, const BIGNUM *,
    const BIGNUM *, const BIGNUM *, BN_CTX *, BN_MONT_CTX *);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DSA_meth_set_mod_exp(DSA_METHOD *dsam,
    int (*mod_exp)(DSA *, BIGNUM *, const BIGNUM *, const BIGNUM *,
        const BIGNUM *, const BIGNUM *, const BIGNUM *, BN_CTX *,
        BN_MONT_CTX *));
__attribute__((deprecated("Since OpenSSL " "3.0"))) int (*DSA_meth_get_bn_mod_exp(const DSA_METHOD *dsam))(DSA *, BIGNUM *, const BIGNUM *, const BIGNUM *, const BIGNUM *,
    BN_CTX *, BN_MONT_CTX *);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DSA_meth_set_bn_mod_exp(DSA_METHOD *dsam,
    int (*bn_mod_exp)(DSA *, BIGNUM *, const BIGNUM *, const BIGNUM *,
        const BIGNUM *, BN_CTX *, BN_MONT_CTX *));
__attribute__((deprecated("Since OpenSSL " "3.0"))) int (*DSA_meth_get_init(const DSA_METHOD *dsam))(DSA *);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DSA_meth_set_init(DSA_METHOD *dsam,
    int (*init)(DSA *));
__attribute__((deprecated("Since OpenSSL " "3.0"))) int (*DSA_meth_get_finish(const DSA_METHOD *dsam))(DSA *);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DSA_meth_set_finish(DSA_METHOD *dsam,
    int (*finish)(DSA *));
__attribute__((deprecated("Since OpenSSL " "3.0"))) int (*DSA_meth_get_paramgen(const DSA_METHOD *dsam))(DSA *, int, const unsigned char *, int, int *, unsigned long *,
    BN_GENCB *);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DSA_meth_set_paramgen(DSA_METHOD *dsam,
    int (*paramgen)(DSA *, int, const unsigned char *, int, int *,
        unsigned long *, BN_GENCB *));
__attribute__((deprecated("Since OpenSSL " "3.0"))) int (*DSA_meth_get_keygen(const DSA_METHOD *dsam))(DSA *);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int DSA_meth_set_keygen(DSA_METHOD *dsam,
    int (*keygen)(DSA *));
       
typedef struct SHAstate_st {
    unsigned int h0, h1, h2, h3, h4;
    unsigned int Nl, Nh;
    unsigned int data[16];
    unsigned int num;
} SHA_CTX;
__attribute__((deprecated("Since OpenSSL " "3.0"))) int SHA1_Init(SHA_CTX *c);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int SHA1_Update(SHA_CTX *c, const void *data, size_t len);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int SHA1_Final(unsigned char *md, SHA_CTX *c);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void SHA1_Transform(SHA_CTX *c, const unsigned char *data);
unsigned char *SHA1(const unsigned char *d, size_t n, unsigned char *md);
typedef struct SHA256state_st {
    unsigned int h[8];
    unsigned int Nl, Nh;
    unsigned int data[16];
    unsigned int num, md_len;
} SHA256_CTX;
__attribute__((deprecated("Since OpenSSL " "3.0"))) int SHA224_Init(SHA256_CTX *c);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int SHA224_Update(SHA256_CTX *c,
    const void *data, size_t len);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int SHA224_Final(unsigned char *md, SHA256_CTX *c);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int SHA256_Init(SHA256_CTX *c);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int SHA256_Update(SHA256_CTX *c,
    const void *data, size_t len);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int SHA256_Final(unsigned char *md, SHA256_CTX *c);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void SHA256_Transform(SHA256_CTX *c,
    const unsigned char *data);
unsigned char *SHA224(const unsigned char *d, size_t n, unsigned char *md);
unsigned char *SHA256(const unsigned char *d, size_t n, unsigned char *md);
typedef struct SHA512state_st {
    unsigned long long h[8];
    unsigned long long Nl, Nh;
    union {
        unsigned long long d[16];
        unsigned char p[(16 * 8)];
    } u;
    unsigned int num, md_len;
} SHA512_CTX;
__attribute__((deprecated("Since OpenSSL " "3.0"))) int SHA384_Init(SHA512_CTX *c);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int SHA384_Update(SHA512_CTX *c,
    const void *data, size_t len);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int SHA384_Final(unsigned char *md, SHA512_CTX *c);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int SHA512_Init(SHA512_CTX *c);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int SHA512_Update(SHA512_CTX *c,
    const void *data, size_t len);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int SHA512_Final(unsigned char *md, SHA512_CTX *c);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void SHA512_Transform(SHA512_CTX *c,
    const unsigned char *data);
unsigned char *SHA384(const unsigned char *d, size_t n, unsigned char *md);
unsigned char *SHA512(const unsigned char *d, size_t n, unsigned char *md);
       
struct stack_st_X509_NAME; typedef int (*sk_X509_NAME_compfunc)(const X509_NAME *const *a, const X509_NAME *const *b); typedef void (*sk_X509_NAME_freefunc)(X509_NAME * a); typedef X509_NAME *(*sk_X509_NAME_copyfunc)(const X509_NAME *a); static __attribute__((unused)) inline X509_NAME *ossl_check_X509_NAME_type(X509_NAME *ptr) { return ptr; } static __attribute__((unused)) inline const OPENSSL_STACK *ossl_check_const_X509_NAME_sk_type(const struct stack_st_X509_NAME *sk) { return (const OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_STACK *ossl_check_X509_NAME_sk_type(struct stack_st_X509_NAME *sk) { return (OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_sk_compfunc ossl_check_X509_NAME_compfunc_type(sk_X509_NAME_compfunc cmp) { return (OPENSSL_sk_compfunc)cmp; } static __attribute__((unused)) inline OPENSSL_sk_copyfunc ossl_check_X509_NAME_copyfunc_type(sk_X509_NAME_copyfunc cpy) { return (OPENSSL_sk_copyfunc)cpy; } static __attribute__((unused)) inline OPENSSL_sk_freefunc ossl_check_X509_NAME_freefunc_type(sk_X509_NAME_freefunc fr) { return (OPENSSL_sk_freefunc)fr; }
struct stack_st_X509; typedef int (*sk_X509_compfunc)(const X509 *const *a, const X509 *const *b); typedef void (*sk_X509_freefunc)(X509 * a); typedef X509 *(*sk_X509_copyfunc)(const X509 *a); static __attribute__((unused)) inline X509 *ossl_check_X509_type(X509 *ptr) { return ptr; } static __attribute__((unused)) inline const OPENSSL_STACK *ossl_check_const_X509_sk_type(const struct stack_st_X509 *sk) { return (const OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_STACK *ossl_check_X509_sk_type(struct stack_st_X509 *sk) { return (OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_sk_compfunc ossl_check_X509_compfunc_type(sk_X509_compfunc cmp) { return (OPENSSL_sk_compfunc)cmp; } static __attribute__((unused)) inline OPENSSL_sk_copyfunc ossl_check_X509_copyfunc_type(sk_X509_copyfunc cpy) { return (OPENSSL_sk_copyfunc)cpy; } static __attribute__((unused)) inline OPENSSL_sk_freefunc ossl_check_X509_freefunc_type(sk_X509_freefunc fr) { return (OPENSSL_sk_freefunc)fr; }
struct stack_st_X509_REVOKED; typedef int (*sk_X509_REVOKED_compfunc)(const X509_REVOKED *const *a, const X509_REVOKED *const *b); typedef void (*sk_X509_REVOKED_freefunc)(X509_REVOKED * a); typedef X509_REVOKED *(*sk_X509_REVOKED_copyfunc)(const X509_REVOKED *a); static __attribute__((unused)) inline X509_REVOKED *ossl_check_X509_REVOKED_type(X509_REVOKED *ptr) { return ptr; } static __attribute__((unused)) inline const OPENSSL_STACK *ossl_check_const_X509_REVOKED_sk_type(const struct stack_st_X509_REVOKED *sk) { return (const OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_STACK *ossl_check_X509_REVOKED_sk_type(struct stack_st_X509_REVOKED *sk) { return (OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_sk_compfunc ossl_check_X509_REVOKED_compfunc_type(sk_X509_REVOKED_compfunc cmp) { return (OPENSSL_sk_compfunc)cmp; } static __attribute__((unused)) inline OPENSSL_sk_copyfunc ossl_check_X509_REVOKED_copyfunc_type(sk_X509_REVOKED_copyfunc cpy) { return (OPENSSL_sk_copyfunc)cpy; } static __attribute__((unused)) inline OPENSSL_sk_freefunc ossl_check_X509_REVOKED_freefunc_type(sk_X509_REVOKED_freefunc fr) { return (OPENSSL_sk_freefunc)fr; }
struct stack_st_X509_CRL; typedef int (*sk_X509_CRL_compfunc)(const X509_CRL *const *a, const X509_CRL *const *b); typedef void (*sk_X509_CRL_freefunc)(X509_CRL * a); typedef X509_CRL *(*sk_X509_CRL_copyfunc)(const X509_CRL *a); static __attribute__((unused)) inline X509_CRL *ossl_check_X509_CRL_type(X509_CRL *ptr) { return ptr; } static __attribute__((unused)) inline const OPENSSL_STACK *ossl_check_const_X509_CRL_sk_type(const struct stack_st_X509_CRL *sk) { return (const OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_STACK *ossl_check_X509_CRL_sk_type(struct stack_st_X509_CRL *sk) { return (OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_sk_compfunc ossl_check_X509_CRL_compfunc_type(sk_X509_CRL_compfunc cmp) { return (OPENSSL_sk_compfunc)cmp; } static __attribute__((unused)) inline OPENSSL_sk_copyfunc ossl_check_X509_CRL_copyfunc_type(sk_X509_CRL_copyfunc cpy) { return (OPENSSL_sk_copyfunc)cpy; } static __attribute__((unused)) inline OPENSSL_sk_freefunc ossl_check_X509_CRL_freefunc_type(sk_X509_CRL_freefunc fr) { return (OPENSSL_sk_freefunc)fr; }
struct X509_algor_st {
    ASN1_OBJECT *algorithm;
    ASN1_TYPE *parameter;
} ;
typedef struct stack_st_X509_ALGOR X509_ALGORS;
typedef struct X509_val_st {
    ASN1_TIME *notBefore;
    ASN1_TIME *notAfter;
} X509_VAL;
typedef struct X509_sig_st X509_SIG;
typedef struct X509_name_entry_st X509_NAME_ENTRY;
struct stack_st_X509_NAME_ENTRY; typedef int (*sk_X509_NAME_ENTRY_compfunc)(const X509_NAME_ENTRY *const *a, const X509_NAME_ENTRY *const *b); typedef void (*sk_X509_NAME_ENTRY_freefunc)(X509_NAME_ENTRY * a); typedef X509_NAME_ENTRY *(*sk_X509_NAME_ENTRY_copyfunc)(const X509_NAME_ENTRY *a); static __attribute__((unused)) inline X509_NAME_ENTRY *ossl_check_X509_NAME_ENTRY_type(X509_NAME_ENTRY *ptr) { return ptr; } static __attribute__((unused)) inline const OPENSSL_STACK *ossl_check_const_X509_NAME_ENTRY_sk_type(const struct stack_st_X509_NAME_ENTRY *sk) { return (const OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_STACK *ossl_check_X509_NAME_ENTRY_sk_type(struct stack_st_X509_NAME_ENTRY *sk) { return (OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_sk_compfunc ossl_check_X509_NAME_ENTRY_compfunc_type(sk_X509_NAME_ENTRY_compfunc cmp) { return (OPENSSL_sk_compfunc)cmp; } static __attribute__((unused)) inline OPENSSL_sk_copyfunc ossl_check_X509_NAME_ENTRY_copyfunc_type(sk_X509_NAME_ENTRY_copyfunc cpy) { return (OPENSSL_sk_copyfunc)cpy; } static __attribute__((unused)) inline OPENSSL_sk_freefunc ossl_check_X509_NAME_ENTRY_freefunc_type(sk_X509_NAME_ENTRY_freefunc fr) { return (OPENSSL_sk_freefunc)fr; }
typedef struct X509_extension_st X509_EXTENSION;
struct stack_st_X509_EXTENSION; typedef int (*sk_X509_EXTENSION_compfunc)(const X509_EXTENSION *const *a, const X509_EXTENSION *const *b); typedef void (*sk_X509_EXTENSION_freefunc)(X509_EXTENSION * a); typedef X509_EXTENSION *(*sk_X509_EXTENSION_copyfunc)(const X509_EXTENSION *a); static __attribute__((unused)) inline X509_EXTENSION *ossl_check_X509_EXTENSION_type(X509_EXTENSION *ptr) { return ptr; } static __attribute__((unused)) inline const OPENSSL_STACK *ossl_check_const_X509_EXTENSION_sk_type(const struct stack_st_X509_EXTENSION *sk) { return (const OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_STACK *ossl_check_X509_EXTENSION_sk_type(struct stack_st_X509_EXTENSION *sk) { return (OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_sk_compfunc ossl_check_X509_EXTENSION_compfunc_type(sk_X509_EXTENSION_compfunc cmp) { return (OPENSSL_sk_compfunc)cmp; } static __attribute__((unused)) inline OPENSSL_sk_copyfunc ossl_check_X509_EXTENSION_copyfunc_type(sk_X509_EXTENSION_copyfunc cpy) { return (OPENSSL_sk_copyfunc)cpy; } static __attribute__((unused)) inline OPENSSL_sk_freefunc ossl_check_X509_EXTENSION_freefunc_type(sk_X509_EXTENSION_freefunc fr) { return (OPENSSL_sk_freefunc)fr; }
typedef struct stack_st_X509_EXTENSION X509_EXTENSIONS;
typedef struct x509_attributes_st X509_ATTRIBUTE;
struct stack_st_X509_ATTRIBUTE; typedef int (*sk_X509_ATTRIBUTE_compfunc)(const X509_ATTRIBUTE *const *a, const X509_ATTRIBUTE *const *b); typedef void (*sk_X509_ATTRIBUTE_freefunc)(X509_ATTRIBUTE * a); typedef X509_ATTRIBUTE *(*sk_X509_ATTRIBUTE_copyfunc)(const X509_ATTRIBUTE *a); static __attribute__((unused)) inline X509_ATTRIBUTE *ossl_check_X509_ATTRIBUTE_type(X509_ATTRIBUTE *ptr) { return ptr; } static __attribute__((unused)) inline const OPENSSL_STACK *ossl_check_const_X509_ATTRIBUTE_sk_type(const struct stack_st_X509_ATTRIBUTE *sk) { return (const OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_STACK *ossl_check_X509_ATTRIBUTE_sk_type(struct stack_st_X509_ATTRIBUTE *sk) { return (OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_sk_compfunc ossl_check_X509_ATTRIBUTE_compfunc_type(sk_X509_ATTRIBUTE_compfunc cmp) { return (OPENSSL_sk_compfunc)cmp; } static __attribute__((unused)) inline OPENSSL_sk_copyfunc ossl_check_X509_ATTRIBUTE_copyfunc_type(sk_X509_ATTRIBUTE_copyfunc cpy) { return (OPENSSL_sk_copyfunc)cpy; } static __attribute__((unused)) inline OPENSSL_sk_freefunc ossl_check_X509_ATTRIBUTE_freefunc_type(sk_X509_ATTRIBUTE_freefunc fr) { return (OPENSSL_sk_freefunc)fr; }
typedef struct X509_req_info_st X509_REQ_INFO;
typedef struct X509_req_st X509_REQ;
typedef struct x509_cert_aux_st X509_CERT_AUX;
typedef struct x509_cinf_st X509_CINF;
typedef struct X509_crl_info_st X509_CRL_INFO;
typedef struct private_key_st {
    int version;
    X509_ALGOR *enc_algor;
    ASN1_OCTET_STRING *enc_pkey;
    EVP_PKEY *dec_pkey;
    int key_length;
    char *key_data;
    int key_free;
    EVP_CIPHER_INFO cipher;
} X509_PKEY;
typedef struct X509_info_st {
    X509 *x509;
    X509_CRL *crl;
    X509_PKEY *x_pkey;
    EVP_CIPHER_INFO enc_cipher;
    int enc_len;
    char *enc_data;
} X509_INFO;
struct stack_st_X509_INFO; typedef int (*sk_X509_INFO_compfunc)(const X509_INFO *const *a, const X509_INFO *const *b); typedef void (*sk_X509_INFO_freefunc)(X509_INFO * a); typedef X509_INFO *(*sk_X509_INFO_copyfunc)(const X509_INFO *a); static __attribute__((unused)) inline X509_INFO *ossl_check_X509_INFO_type(X509_INFO *ptr) { return ptr; } static __attribute__((unused)) inline const OPENSSL_STACK *ossl_check_const_X509_INFO_sk_type(const struct stack_st_X509_INFO *sk) { return (const OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_STACK *ossl_check_X509_INFO_sk_type(struct stack_st_X509_INFO *sk) { return (OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_sk_compfunc ossl_check_X509_INFO_compfunc_type(sk_X509_INFO_compfunc cmp) { return (OPENSSL_sk_compfunc)cmp; } static __attribute__((unused)) inline OPENSSL_sk_copyfunc ossl_check_X509_INFO_copyfunc_type(sk_X509_INFO_copyfunc cpy) { return (OPENSSL_sk_copyfunc)cpy; } static __attribute__((unused)) inline OPENSSL_sk_freefunc ossl_check_X509_INFO_freefunc_type(sk_X509_INFO_freefunc fr) { return (OPENSSL_sk_freefunc)fr; }
typedef struct Netscape_spkac_st {
    X509_PUBKEY *pubkey;
    ASN1_IA5STRING *challenge;
} NETSCAPE_SPKAC;
typedef struct Netscape_spki_st {
    NETSCAPE_SPKAC *spkac;
    X509_ALGOR sig_algor;
    ASN1_BIT_STRING *signature;
} NETSCAPE_SPKI;
typedef struct Netscape_certificate_sequence {
    ASN1_OBJECT *type;
    struct stack_st_X509 *certs;
} NETSCAPE_CERT_SEQUENCE;
typedef struct PBEPARAM_st {
    ASN1_OCTET_STRING *salt;
    ASN1_INTEGER *iter;
} PBEPARAM;
typedef struct PBE2PARAM_st {
    X509_ALGOR *keyfunc;
    X509_ALGOR *encryption;
} PBE2PARAM;
typedef struct PBKDF2PARAM_st {
    ASN1_TYPE *salt;
    ASN1_INTEGER *iter;
    ASN1_INTEGER *keylength;
    X509_ALGOR *prf;
} PBKDF2PARAM;
typedef struct {
    X509_ALGOR *keyDerivationFunc;
    X509_ALGOR *messageAuthScheme;
} PBMAC1PARAM;
typedef struct SCRYPT_PARAMS_st {
    ASN1_OCTET_STRING *salt;
    ASN1_INTEGER *costParameter;
    ASN1_INTEGER *blockSize;
    ASN1_INTEGER *parallelizationParameter;
    ASN1_INTEGER *keyLength;
} SCRYPT_PARAMS;
       
       
typedef struct lhash_node_st OPENSSL_LH_NODE;
typedef int (*OPENSSL_LH_COMPFUNC)(const void *, const void *);
typedef int (*OPENSSL_LH_COMPFUNCTHUNK)(const void *, const void *, OPENSSL_LH_COMPFUNC cfn);
typedef unsigned long (*OPENSSL_LH_HASHFUNC)(const void *);
typedef unsigned long (*OPENSSL_LH_HASHFUNCTHUNK)(const void *, OPENSSL_LH_HASHFUNC hfn);
typedef void (*OPENSSL_LH_DOALL_FUNC)(void *);
typedef void (*OPENSSL_LH_DOALL_FUNC_THUNK)(void *, OPENSSL_LH_DOALL_FUNC doall);
typedef void (*OPENSSL_LH_DOALL_FUNCARG)(void *, void *);
typedef void (*OPENSSL_LH_DOALL_FUNCARG_THUNK)(void *, void *, OPENSSL_LH_DOALL_FUNCARG doall);
typedef struct lhash_st OPENSSL_LHASH;
int OPENSSL_LH_error(OPENSSL_LHASH *lh);
OPENSSL_LHASH *OPENSSL_LH_new(OPENSSL_LH_HASHFUNC h, OPENSSL_LH_COMPFUNC c);
OPENSSL_LHASH *OPENSSL_LH_set_thunks(OPENSSL_LHASH *lh,
    OPENSSL_LH_HASHFUNCTHUNK hw,
    OPENSSL_LH_COMPFUNCTHUNK cw,
    OPENSSL_LH_DOALL_FUNC_THUNK daw,
    OPENSSL_LH_DOALL_FUNCARG_THUNK daaw);
void OPENSSL_LH_free(OPENSSL_LHASH *lh);
void OPENSSL_LH_flush(OPENSSL_LHASH *lh);
void *OPENSSL_LH_insert(OPENSSL_LHASH *lh, void *data);
void *OPENSSL_LH_delete(OPENSSL_LHASH *lh, const void *data);
void *OPENSSL_LH_retrieve(OPENSSL_LHASH *lh, const void *data);
void OPENSSL_LH_doall(OPENSSL_LHASH *lh, OPENSSL_LH_DOALL_FUNC func);
void OPENSSL_LH_doall_arg(OPENSSL_LHASH *lh,
    OPENSSL_LH_DOALL_FUNCARG func, void *arg);
void OPENSSL_LH_doall_arg_thunk(OPENSSL_LHASH *lh,
    OPENSSL_LH_DOALL_FUNCARG_THUNK daaw,
    OPENSSL_LH_DOALL_FUNCARG fn, void *arg);
unsigned long OPENSSL_LH_strhash(const char *c);
unsigned long OPENSSL_LH_num_items(const OPENSSL_LHASH *lh);
unsigned long OPENSSL_LH_get_down_load(const OPENSSL_LHASH *lh);
void OPENSSL_LH_set_down_load(OPENSSL_LHASH *lh, unsigned long down_load);
__attribute__((deprecated("Since OpenSSL " "3.1"))) void OPENSSL_LH_stats(const OPENSSL_LHASH *lh, FILE *fp);
__attribute__((deprecated("Since OpenSSL " "3.1"))) void OPENSSL_LH_node_stats(const OPENSSL_LHASH *lh, FILE *fp);
__attribute__((deprecated("Since OpenSSL " "3.1"))) void OPENSSL_LH_node_usage_stats(const OPENSSL_LHASH *lh, FILE *fp);
__attribute__((deprecated("Since OpenSSL " "3.1"))) void OPENSSL_LH_stats_bio(const OPENSSL_LHASH *lh, BIO *out);
__attribute__((deprecated("Since OpenSSL " "3.1"))) void OPENSSL_LH_node_stats_bio(const OPENSSL_LHASH *lh, BIO *out);
__attribute__((deprecated("Since OpenSSL " "3.1"))) void OPENSSL_LH_node_usage_stats_bio(const OPENSSL_LHASH *lh, BIO *out);
struct lhash_st_OPENSSL_STRING { union lh_OPENSSL_STRING_dummy { void *d1; unsigned long d2; int d3; } dummy; }; typedef int (*lh_OPENSSL_STRING_compfunc)(const OPENSSL_STRING *a, const OPENSSL_STRING *b); typedef unsigned long (*lh_OPENSSL_STRING_hashfunc)(const OPENSSL_STRING *a); typedef void (*lh_OPENSSL_STRING_doallfunc)(OPENSSL_STRING * a); static inline unsigned long lh_OPENSSL_STRING_hash_thunk(const void *data, OPENSSL_LH_HASHFUNC hfn) { unsigned long (*hfn_conv)(const OPENSSL_STRING *) = (unsigned long (*)(const OPENSSL_STRING *))hfn; return hfn_conv((const OPENSSL_STRING *)data); } static inline int lh_OPENSSL_STRING_comp_thunk(const void *da, const void *db, OPENSSL_LH_COMPFUNC cfn) { int (*cfn_conv)(const OPENSSL_STRING *, const OPENSSL_STRING *) = (int (*)(const OPENSSL_STRING *, const OPENSSL_STRING *))cfn; return cfn_conv((const OPENSSL_STRING *)da, (const OPENSSL_STRING *)db); } static inline void lh_OPENSSL_STRING_doall_thunk(void *node, OPENSSL_LH_DOALL_FUNC doall) { void (*doall_conv)(OPENSSL_STRING *) = (void (*)(OPENSSL_STRING *))doall; doall_conv((OPENSSL_STRING *)node); } static inline void lh_OPENSSL_STRING_doall_arg_thunk(void *node, void *arg, OPENSSL_LH_DOALL_FUNCARG doall) { void (*doall_conv)(OPENSSL_STRING *, void *) = (void (*)(OPENSSL_STRING *, void *))doall; doall_conv((OPENSSL_STRING *)node, arg); } static __attribute__((unused)) inline OPENSSL_STRING * ossl_check_OPENSSL_STRING_lh_plain_type(OPENSSL_STRING *ptr) { return ptr; } static __attribute__((unused)) inline const OPENSSL_STRING * ossl_check_const_OPENSSL_STRING_lh_plain_type(const OPENSSL_STRING *ptr) { return ptr; } static __attribute__((unused)) inline const OPENSSL_LHASH * ossl_check_const_OPENSSL_STRING_lh_type(const struct lhash_st_OPENSSL_STRING *lh) { return (const OPENSSL_LHASH *)lh; } static __attribute__((unused)) inline OPENSSL_LHASH * ossl_check_OPENSSL_STRING_lh_type(struct lhash_st_OPENSSL_STRING *lh) { return (OPENSSL_LHASH *)lh; } static __attribute__((unused)) inline OPENSSL_LH_COMPFUNC ossl_check_OPENSSL_STRING_lh_compfunc_type(lh_OPENSSL_STRING_compfunc cmp) { return (OPENSSL_LH_COMPFUNC)cmp; } static __attribute__((unused)) inline OPENSSL_LH_HASHFUNC ossl_check_OPENSSL_STRING_lh_hashfunc_type(lh_OPENSSL_STRING_hashfunc hfn) { return (OPENSSL_LH_HASHFUNC)hfn; } static __attribute__((unused)) inline OPENSSL_LH_DOALL_FUNC ossl_check_OPENSSL_STRING_lh_doallfunc_type(lh_OPENSSL_STRING_doallfunc dfn) { return (OPENSSL_LH_DOALL_FUNC)dfn; } struct lhash_st_OPENSSL_STRING;
struct lhash_st_OPENSSL_CSTRING { union lh_OPENSSL_CSTRING_dummy { void *d1; unsigned long d2; int d3; } dummy; }; typedef int (*lh_OPENSSL_CSTRING_compfunc)(const OPENSSL_CSTRING *a, const OPENSSL_CSTRING *b); typedef unsigned long (*lh_OPENSSL_CSTRING_hashfunc)(const OPENSSL_CSTRING *a); typedef void (*lh_OPENSSL_CSTRING_doallfunc)(OPENSSL_CSTRING * a); static inline unsigned long lh_OPENSSL_CSTRING_hash_thunk(const void *data, OPENSSL_LH_HASHFUNC hfn) { unsigned long (*hfn_conv)(const OPENSSL_CSTRING *) = (unsigned long (*)(const OPENSSL_CSTRING *))hfn; return hfn_conv((const OPENSSL_CSTRING *)data); } static inline int lh_OPENSSL_CSTRING_comp_thunk(const void *da, const void *db, OPENSSL_LH_COMPFUNC cfn) { int (*cfn_conv)(const OPENSSL_CSTRING *, const OPENSSL_CSTRING *) = (int (*)(const OPENSSL_CSTRING *, const OPENSSL_CSTRING *))cfn; return cfn_conv((const OPENSSL_CSTRING *)da, (const OPENSSL_CSTRING *)db); } static inline void lh_OPENSSL_CSTRING_doall_thunk(void *node, OPENSSL_LH_DOALL_FUNC doall) { void (*doall_conv)(OPENSSL_CSTRING *) = (void (*)(OPENSSL_CSTRING *))doall; doall_conv((OPENSSL_CSTRING *)node); } static inline void lh_OPENSSL_CSTRING_doall_arg_thunk(void *node, void *arg, OPENSSL_LH_DOALL_FUNCARG doall) { void (*doall_conv)(OPENSSL_CSTRING *, void *) = (void (*)(OPENSSL_CSTRING *, void *))doall; doall_conv((OPENSSL_CSTRING *)node, arg); } static __attribute__((unused)) inline OPENSSL_CSTRING * ossl_check_OPENSSL_CSTRING_lh_plain_type(OPENSSL_CSTRING *ptr) { return ptr; } static __attribute__((unused)) inline const OPENSSL_CSTRING * ossl_check_const_OPENSSL_CSTRING_lh_plain_type(const OPENSSL_CSTRING *ptr) { return ptr; } static __attribute__((unused)) inline const OPENSSL_LHASH * ossl_check_const_OPENSSL_CSTRING_lh_type(const struct lhash_st_OPENSSL_CSTRING *lh) { return (const OPENSSL_LHASH *)lh; } static __attribute__((unused)) inline OPENSSL_LHASH * ossl_check_OPENSSL_CSTRING_lh_type(struct lhash_st_OPENSSL_CSTRING *lh) { return (OPENSSL_LHASH *)lh; } static __attribute__((unused)) inline OPENSSL_LH_COMPFUNC ossl_check_OPENSSL_CSTRING_lh_compfunc_type(lh_OPENSSL_CSTRING_compfunc cmp) { return (OPENSSL_LH_COMPFUNC)cmp; } static __attribute__((unused)) inline OPENSSL_LH_HASHFUNC ossl_check_OPENSSL_CSTRING_lh_hashfunc_type(lh_OPENSSL_CSTRING_hashfunc hfn) { return (OPENSSL_LH_HASHFUNC)hfn; } static __attribute__((unused)) inline OPENSSL_LH_DOALL_FUNC ossl_check_OPENSSL_CSTRING_lh_doallfunc_type(lh_OPENSSL_CSTRING_doallfunc dfn) { return (OPENSSL_LH_DOALL_FUNC)dfn; } struct lhash_st_OPENSSL_CSTRING;
typedef enum {
    X509_LU_NONE = 0,
    X509_LU_X509,
    X509_LU_CRL
} X509_LOOKUP_TYPE;
struct stack_st_X509_LOOKUP; typedef int (*sk_X509_LOOKUP_compfunc)(const X509_LOOKUP *const *a, const X509_LOOKUP *const *b); typedef void (*sk_X509_LOOKUP_freefunc)(X509_LOOKUP * a); typedef X509_LOOKUP *(*sk_X509_LOOKUP_copyfunc)(const X509_LOOKUP *a); static __attribute__((unused)) inline X509_LOOKUP *ossl_check_X509_LOOKUP_type(X509_LOOKUP *ptr) { return ptr; } static __attribute__((unused)) inline const OPENSSL_STACK *ossl_check_const_X509_LOOKUP_sk_type(const struct stack_st_X509_LOOKUP *sk) { return (const OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_STACK *ossl_check_X509_LOOKUP_sk_type(struct stack_st_X509_LOOKUP *sk) { return (OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_sk_compfunc ossl_check_X509_LOOKUP_compfunc_type(sk_X509_LOOKUP_compfunc cmp) { return (OPENSSL_sk_compfunc)cmp; } static __attribute__((unused)) inline OPENSSL_sk_copyfunc ossl_check_X509_LOOKUP_copyfunc_type(sk_X509_LOOKUP_copyfunc cpy) { return (OPENSSL_sk_copyfunc)cpy; } static __attribute__((unused)) inline OPENSSL_sk_freefunc ossl_check_X509_LOOKUP_freefunc_type(sk_X509_LOOKUP_freefunc fr) { return (OPENSSL_sk_freefunc)fr; }
struct stack_st_X509_OBJECT; typedef int (*sk_X509_OBJECT_compfunc)(const X509_OBJECT *const *a, const X509_OBJECT *const *b); typedef void (*sk_X509_OBJECT_freefunc)(X509_OBJECT * a); typedef X509_OBJECT *(*sk_X509_OBJECT_copyfunc)(const X509_OBJECT *a); static __attribute__((unused)) inline X509_OBJECT *ossl_check_X509_OBJECT_type(X509_OBJECT *ptr) { return ptr; } static __attribute__((unused)) inline const OPENSSL_STACK *ossl_check_const_X509_OBJECT_sk_type(const struct stack_st_X509_OBJECT *sk) { return (const OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_STACK *ossl_check_X509_OBJECT_sk_type(struct stack_st_X509_OBJECT *sk) { return (OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_sk_compfunc ossl_check_X509_OBJECT_compfunc_type(sk_X509_OBJECT_compfunc cmp) { return (OPENSSL_sk_compfunc)cmp; } static __attribute__((unused)) inline OPENSSL_sk_copyfunc ossl_check_X509_OBJECT_copyfunc_type(sk_X509_OBJECT_copyfunc cpy) { return (OPENSSL_sk_copyfunc)cpy; } static __attribute__((unused)) inline OPENSSL_sk_freefunc ossl_check_X509_OBJECT_freefunc_type(sk_X509_OBJECT_freefunc fr) { return (OPENSSL_sk_freefunc)fr; }
struct stack_st_X509_VERIFY_PARAM; typedef int (*sk_X509_VERIFY_PARAM_compfunc)(const X509_VERIFY_PARAM *const *a, const X509_VERIFY_PARAM *const *b); typedef void (*sk_X509_VERIFY_PARAM_freefunc)(X509_VERIFY_PARAM * a); typedef X509_VERIFY_PARAM *(*sk_X509_VERIFY_PARAM_copyfunc)(const X509_VERIFY_PARAM *a); static __attribute__((unused)) inline X509_VERIFY_PARAM *ossl_check_X509_VERIFY_PARAM_type(X509_VERIFY_PARAM *ptr) { return ptr; } static __attribute__((unused)) inline const OPENSSL_STACK *ossl_check_const_X509_VERIFY_PARAM_sk_type(const struct stack_st_X509_VERIFY_PARAM *sk) { return (const OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_STACK *ossl_check_X509_VERIFY_PARAM_sk_type(struct stack_st_X509_VERIFY_PARAM *sk) { return (OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_sk_compfunc ossl_check_X509_VERIFY_PARAM_compfunc_type(sk_X509_VERIFY_PARAM_compfunc cmp) { return (OPENSSL_sk_compfunc)cmp; } static __attribute__((unused)) inline OPENSSL_sk_copyfunc ossl_check_X509_VERIFY_PARAM_copyfunc_type(sk_X509_VERIFY_PARAM_copyfunc cpy) { return (OPENSSL_sk_copyfunc)cpy; } static __attribute__((unused)) inline OPENSSL_sk_freefunc ossl_check_X509_VERIFY_PARAM_freefunc_type(sk_X509_VERIFY_PARAM_freefunc fr) { return (OPENSSL_sk_freefunc)fr; }
typedef struct x509_trust_st {
    int trust;
    int flags;
    int (*check_trust)(struct x509_trust_st *, X509 *, int);
    char *name;
    int arg1;
    void *arg2;
} X509_TRUST;
struct stack_st_X509_TRUST; typedef int (*sk_X509_TRUST_compfunc)(const X509_TRUST *const *a, const X509_TRUST *const *b); typedef void (*sk_X509_TRUST_freefunc)(X509_TRUST * a); typedef X509_TRUST *(*sk_X509_TRUST_copyfunc)(const X509_TRUST *a); static __attribute__((unused)) inline X509_TRUST *ossl_check_X509_TRUST_type(X509_TRUST *ptr) { return ptr; } static __attribute__((unused)) inline const OPENSSL_STACK *ossl_check_const_X509_TRUST_sk_type(const struct stack_st_X509_TRUST *sk) { return (const OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_STACK *ossl_check_X509_TRUST_sk_type(struct stack_st_X509_TRUST *sk) { return (OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_sk_compfunc ossl_check_X509_TRUST_compfunc_type(sk_X509_TRUST_compfunc cmp) { return (OPENSSL_sk_compfunc)cmp; } static __attribute__((unused)) inline OPENSSL_sk_copyfunc ossl_check_X509_TRUST_copyfunc_type(sk_X509_TRUST_copyfunc cpy) { return (OPENSSL_sk_copyfunc)cpy; } static __attribute__((unused)) inline OPENSSL_sk_freefunc ossl_check_X509_TRUST_freefunc_type(sk_X509_TRUST_freefunc fr) { return (OPENSSL_sk_freefunc)fr; }
int X509_TRUST_set(int *t, int trust);
int X509_TRUST_get_count(void);
X509_TRUST *X509_TRUST_get0(int idx);
int X509_TRUST_get_by_id(int id);
int X509_TRUST_add(int id, int flags, int (*ck)(X509_TRUST *, X509 *, int),
    const char *name, int arg1, void *arg2);
void X509_TRUST_cleanup(void);
int X509_TRUST_get_flags(const X509_TRUST *xp);
char *X509_TRUST_get0_name(const X509_TRUST *xp);
int X509_TRUST_get_trust(const X509_TRUST *xp);
int X509_trusted(const X509 *x);
int X509_add1_trust_object(X509 *x, const ASN1_OBJECT *obj);
int X509_add1_reject_object(X509 *x, const ASN1_OBJECT *obj);
void X509_trust_clear(X509 *x);
void X509_reject_clear(X509 *x);
struct stack_st_ASN1_OBJECT *X509_get0_trust_objects(X509 *x);
struct stack_st_ASN1_OBJECT *X509_get0_reject_objects(X509 *x);
int (*X509_TRUST_set_default(int (*trust)(int, X509 *, int)))(int, X509 *,
    int);
int X509_check_trust(X509 *x, int id, int flags);
int X509_verify_cert(X509_STORE_CTX *ctx);
int X509_STORE_CTX_verify(X509_STORE_CTX *ctx);
struct stack_st_X509 *X509_build_chain(X509 *target, struct stack_st_X509 *certs,
    X509_STORE *store, int with_self_signed,
    OSSL_LIB_CTX *libctx, const char *propq);
int X509_STORE_set_depth(X509_STORE *store, int depth);
typedef int (*X509_STORE_CTX_verify_cb)(int, X509_STORE_CTX *);
int X509_STORE_CTX_print_verify_cb(int ok, X509_STORE_CTX *ctx);
typedef int (*X509_STORE_CTX_verify_fn)(X509_STORE_CTX *);
typedef int (*X509_STORE_CTX_get_issuer_fn)(X509 **issuer,
    X509_STORE_CTX *ctx, X509 *x);
typedef int (*X509_STORE_CTX_check_issued_fn)(X509_STORE_CTX *ctx,
    X509 *x, X509 *issuer);
typedef int (*X509_STORE_CTX_check_revocation_fn)(X509_STORE_CTX *ctx);
typedef int (*X509_STORE_CTX_get_crl_fn)(X509_STORE_CTX *ctx,
    X509_CRL **crl, X509 *x);
typedef int (*X509_STORE_CTX_check_crl_fn)(X509_STORE_CTX *ctx, X509_CRL *crl);
typedef int (*X509_STORE_CTX_cert_crl_fn)(X509_STORE_CTX *ctx,
    X509_CRL *crl, X509 *x);
typedef int (*X509_STORE_CTX_check_policy_fn)(X509_STORE_CTX *ctx);
typedef struct stack_st_X509
    *(*X509_STORE_CTX_lookup_certs_fn)(X509_STORE_CTX *ctx,
        const X509_NAME *nm);
typedef struct stack_st_X509_CRL
    *(*X509_STORE_CTX_lookup_crls_fn)(const X509_STORE_CTX *ctx,
        const X509_NAME *nm);
typedef int (*X509_STORE_CTX_cleanup_fn)(X509_STORE_CTX *ctx);
void X509_STORE_CTX_set_depth(X509_STORE_CTX *ctx, int depth);
int X509_OBJECT_idx_by_subject(struct stack_st_X509_OBJECT *h, X509_LOOKUP_TYPE type,
    const X509_NAME *name);
X509_OBJECT *X509_OBJECT_retrieve_by_subject(struct stack_st_X509_OBJECT *h,
    X509_LOOKUP_TYPE type,
    const X509_NAME *name);
X509_OBJECT *X509_OBJECT_retrieve_match(struct stack_st_X509_OBJECT *h,
    X509_OBJECT *x);
int X509_OBJECT_up_ref_count(X509_OBJECT *a);
X509_OBJECT *X509_OBJECT_new(void);
void X509_OBJECT_free(X509_OBJECT *a);
X509_LOOKUP_TYPE X509_OBJECT_get_type(const X509_OBJECT *a);
X509 *X509_OBJECT_get0_X509(const X509_OBJECT *a);
int X509_OBJECT_set1_X509(X509_OBJECT *a, X509 *obj);
X509_CRL *X509_OBJECT_get0_X509_CRL(const X509_OBJECT *a);
int X509_OBJECT_set1_X509_CRL(X509_OBJECT *a, X509_CRL *obj);
X509_STORE *X509_STORE_new(void);
void X509_STORE_free(X509_STORE *xs);
int X509_STORE_lock(X509_STORE *xs);
int X509_STORE_unlock(X509_STORE *xs);
int X509_STORE_up_ref(X509_STORE *xs);
struct stack_st_X509_OBJECT *X509_STORE_get0_objects(const X509_STORE *xs);
struct stack_st_X509_OBJECT *X509_STORE_get1_objects(X509_STORE *xs);
struct stack_st_X509 *X509_STORE_get1_all_certs(X509_STORE *xs);
struct stack_st_X509 *X509_STORE_CTX_get1_certs(X509_STORE_CTX *xs,
    const X509_NAME *nm);
struct stack_st_X509_CRL *X509_STORE_CTX_get1_crls(const X509_STORE_CTX *st,
    const X509_NAME *nm);
int X509_STORE_set_flags(X509_STORE *xs, unsigned long flags);
int X509_STORE_set_purpose(X509_STORE *xs, int purpose);
int X509_STORE_set_trust(X509_STORE *xs, int trust);
int X509_STORE_set1_param(X509_STORE *xs, const X509_VERIFY_PARAM *pm);
X509_VERIFY_PARAM *X509_STORE_get0_param(const X509_STORE *xs);
void X509_STORE_set_verify(X509_STORE *xs, X509_STORE_CTX_verify_fn verify);
void X509_STORE_CTX_set_verify(X509_STORE_CTX *ctx,
    X509_STORE_CTX_verify_fn verify);
X509_STORE_CTX_verify_fn X509_STORE_get_verify(const X509_STORE *xs);
void X509_STORE_set_verify_cb(X509_STORE *xs,
    X509_STORE_CTX_verify_cb verify_cb);
X509_STORE_CTX_verify_cb X509_STORE_get_verify_cb(const X509_STORE *xs);
void X509_STORE_set_get_issuer(X509_STORE *xs,
    X509_STORE_CTX_get_issuer_fn get_issuer);
X509_STORE_CTX_get_issuer_fn X509_STORE_get_get_issuer(const X509_STORE *xs);
void X509_STORE_set_check_issued(X509_STORE *xs,
    X509_STORE_CTX_check_issued_fn check_issued);
X509_STORE_CTX_check_issued_fn X509_STORE_get_check_issued(const X509_STORE *s);
void X509_STORE_set_check_revocation(X509_STORE *xs,
    X509_STORE_CTX_check_revocation_fn check_revocation);
X509_STORE_CTX_check_revocation_fn
X509_STORE_get_check_revocation(const X509_STORE *xs);
void X509_STORE_set_get_crl(X509_STORE *xs,
    X509_STORE_CTX_get_crl_fn get_crl);
X509_STORE_CTX_get_crl_fn X509_STORE_get_get_crl(const X509_STORE *xs);
void X509_STORE_set_check_crl(X509_STORE *xs,
    X509_STORE_CTX_check_crl_fn check_crl);
X509_STORE_CTX_check_crl_fn X509_STORE_get_check_crl(const X509_STORE *xs);
void X509_STORE_set_cert_crl(X509_STORE *xs,
    X509_STORE_CTX_cert_crl_fn cert_crl);
X509_STORE_CTX_cert_crl_fn X509_STORE_get_cert_crl(const X509_STORE *xs);
void X509_STORE_set_check_policy(X509_STORE *xs,
    X509_STORE_CTX_check_policy_fn check_policy);
X509_STORE_CTX_check_policy_fn X509_STORE_get_check_policy(const X509_STORE *s);
void X509_STORE_set_lookup_certs(X509_STORE *xs,
    X509_STORE_CTX_lookup_certs_fn lookup_certs);
X509_STORE_CTX_lookup_certs_fn X509_STORE_get_lookup_certs(const X509_STORE *s);
void X509_STORE_set_lookup_crls(X509_STORE *xs,
    X509_STORE_CTX_lookup_crls_fn lookup_crls);
X509_STORE_CTX_lookup_crls_fn X509_STORE_get_lookup_crls(const X509_STORE *xs);
void X509_STORE_set_cleanup(X509_STORE *xs,
    X509_STORE_CTX_cleanup_fn cleanup);
X509_STORE_CTX_cleanup_fn X509_STORE_get_cleanup(const X509_STORE *xs);
int X509_STORE_set_ex_data(X509_STORE *xs, int idx, void *data);
void *X509_STORE_get_ex_data(const X509_STORE *xs, int idx);
X509_STORE_CTX *X509_STORE_CTX_new_ex(OSSL_LIB_CTX *libctx, const char *propq);
X509_STORE_CTX *X509_STORE_CTX_new(void);
int X509_STORE_CTX_get1_issuer(X509 **issuer, X509_STORE_CTX *ctx, X509 *x);
void X509_STORE_CTX_free(X509_STORE_CTX *ctx);
int X509_STORE_CTX_init(X509_STORE_CTX *ctx, X509_STORE *trust_store,
    X509 *target, struct stack_st_X509 *untrusted);
int X509_STORE_CTX_init_rpk(X509_STORE_CTX *ctx, X509_STORE *trust_store,
    EVP_PKEY *rpk);
void X509_STORE_CTX_set0_trusted_stack(X509_STORE_CTX *ctx, struct stack_st_X509 *sk);
void X509_STORE_CTX_cleanup(X509_STORE_CTX *ctx);
X509_STORE *X509_STORE_CTX_get0_store(const X509_STORE_CTX *ctx);
X509 *X509_STORE_CTX_get0_cert(const X509_STORE_CTX *ctx);
EVP_PKEY *X509_STORE_CTX_get0_rpk(const X509_STORE_CTX *ctx);
struct stack_st_X509 *X509_STORE_CTX_get0_untrusted(const X509_STORE_CTX *ctx);
void X509_STORE_CTX_set0_untrusted(X509_STORE_CTX *ctx, struct stack_st_X509 *sk);
void X509_STORE_CTX_set_verify_cb(X509_STORE_CTX *ctx,
    X509_STORE_CTX_verify_cb verify);
X509_STORE_CTX_verify_cb X509_STORE_CTX_get_verify_cb(const X509_STORE_CTX *ctx);
X509_STORE_CTX_verify_fn X509_STORE_CTX_get_verify(const X509_STORE_CTX *ctx);
X509_STORE_CTX_get_issuer_fn X509_STORE_CTX_get_get_issuer(const X509_STORE_CTX *ctx);
X509_STORE_CTX_check_issued_fn X509_STORE_CTX_get_check_issued(const X509_STORE_CTX *ctx);
X509_STORE_CTX_check_revocation_fn X509_STORE_CTX_get_check_revocation(const X509_STORE_CTX *ctx);
void X509_STORE_CTX_set_get_crl(X509_STORE_CTX *ctx,
    X509_STORE_CTX_get_crl_fn get_crl);
X509_STORE_CTX_get_crl_fn X509_STORE_CTX_get_get_crl(const X509_STORE_CTX *ctx);
X509_STORE_CTX_check_crl_fn X509_STORE_CTX_get_check_crl(const X509_STORE_CTX *ctx);
X509_STORE_CTX_cert_crl_fn X509_STORE_CTX_get_cert_crl(const X509_STORE_CTX *ctx);
X509_STORE_CTX_check_policy_fn X509_STORE_CTX_get_check_policy(const X509_STORE_CTX *ctx);
X509_STORE_CTX_lookup_certs_fn X509_STORE_CTX_get_lookup_certs(const X509_STORE_CTX *ctx);
X509_STORE_CTX_lookup_crls_fn X509_STORE_CTX_get_lookup_crls(const X509_STORE_CTX *ctx);
X509_STORE_CTX_cleanup_fn X509_STORE_CTX_get_cleanup(const X509_STORE_CTX *ctx);
X509_LOOKUP *X509_STORE_add_lookup(X509_STORE *xs, X509_LOOKUP_METHOD *m);
X509_LOOKUP_METHOD *X509_LOOKUP_hash_dir(void);
X509_LOOKUP_METHOD *X509_LOOKUP_file(void);
X509_LOOKUP_METHOD *X509_LOOKUP_store(void);
typedef int (*X509_LOOKUP_ctrl_fn)(X509_LOOKUP *ctx, int cmd, const char *argc,
    long argl, char **ret);
typedef int (*X509_LOOKUP_ctrl_ex_fn)(
    X509_LOOKUP *ctx, int cmd, const char *argc, long argl, char **ret,
    OSSL_LIB_CTX *libctx, const char *propq);
typedef int (*X509_LOOKUP_get_by_subject_fn)(X509_LOOKUP *ctx,
    X509_LOOKUP_TYPE type,
    const X509_NAME *name,
    X509_OBJECT *ret);
typedef int (*X509_LOOKUP_get_by_subject_ex_fn)(X509_LOOKUP *ctx,
    X509_LOOKUP_TYPE type,
    const X509_NAME *name,
    X509_OBJECT *ret,
    OSSL_LIB_CTX *libctx,
    const char *propq);
typedef int (*X509_LOOKUP_get_by_issuer_serial_fn)(X509_LOOKUP *ctx,
    X509_LOOKUP_TYPE type,
    const X509_NAME *name,
    const ASN1_INTEGER *serial,
    X509_OBJECT *ret);
typedef int (*X509_LOOKUP_get_by_fingerprint_fn)(X509_LOOKUP *ctx,
    X509_LOOKUP_TYPE type,
    const unsigned char *bytes,
    int len,
    X509_OBJECT *ret);
typedef int (*X509_LOOKUP_get_by_alias_fn)(X509_LOOKUP *ctx,
    X509_LOOKUP_TYPE type,
    const char *str,
    int len,
    X509_OBJECT *ret);
X509_LOOKUP_METHOD *X509_LOOKUP_meth_new(const char *name);
void X509_LOOKUP_meth_free(X509_LOOKUP_METHOD *method);
int X509_LOOKUP_meth_set_new_item(X509_LOOKUP_METHOD *method,
    int (*new_item)(X509_LOOKUP *ctx));
int (*X509_LOOKUP_meth_get_new_item(const X509_LOOKUP_METHOD *method))(X509_LOOKUP *ctx);
int X509_LOOKUP_meth_set_free(X509_LOOKUP_METHOD *method,
    void (*free_fn)(X509_LOOKUP *ctx));
void (*X509_LOOKUP_meth_get_free(const X509_LOOKUP_METHOD *method))(X509_LOOKUP *ctx);
int X509_LOOKUP_meth_set_init(X509_LOOKUP_METHOD *method,
    int (*init)(X509_LOOKUP *ctx));
int (*X509_LOOKUP_meth_get_init(const X509_LOOKUP_METHOD *method))(X509_LOOKUP *ctx);
int X509_LOOKUP_meth_set_shutdown(X509_LOOKUP_METHOD *method,
    int (*shutdown)(X509_LOOKUP *ctx));
int (*X509_LOOKUP_meth_get_shutdown(const X509_LOOKUP_METHOD *method))(X509_LOOKUP *ctx);
int X509_LOOKUP_meth_set_ctrl(X509_LOOKUP_METHOD *method,
    X509_LOOKUP_ctrl_fn ctrl_fn);
X509_LOOKUP_ctrl_fn X509_LOOKUP_meth_get_ctrl(const X509_LOOKUP_METHOD *method);
int X509_LOOKUP_meth_set_get_by_subject(X509_LOOKUP_METHOD *method,
    X509_LOOKUP_get_by_subject_fn fn);
X509_LOOKUP_get_by_subject_fn X509_LOOKUP_meth_get_get_by_subject(
    const X509_LOOKUP_METHOD *method);
int X509_LOOKUP_meth_set_get_by_issuer_serial(X509_LOOKUP_METHOD *method,
    X509_LOOKUP_get_by_issuer_serial_fn fn);
X509_LOOKUP_get_by_issuer_serial_fn X509_LOOKUP_meth_get_get_by_issuer_serial(
    const X509_LOOKUP_METHOD *method);
int X509_LOOKUP_meth_set_get_by_fingerprint(X509_LOOKUP_METHOD *method,
    X509_LOOKUP_get_by_fingerprint_fn fn);
X509_LOOKUP_get_by_fingerprint_fn X509_LOOKUP_meth_get_get_by_fingerprint(
    const X509_LOOKUP_METHOD *method);
int X509_LOOKUP_meth_set_get_by_alias(X509_LOOKUP_METHOD *method,
    X509_LOOKUP_get_by_alias_fn fn);
X509_LOOKUP_get_by_alias_fn X509_LOOKUP_meth_get_get_by_alias(
    const X509_LOOKUP_METHOD *method);
int X509_STORE_add_cert(X509_STORE *xs, X509 *x);
int X509_STORE_add_crl(X509_STORE *xs, X509_CRL *x);
int X509_STORE_CTX_get_by_subject(const X509_STORE_CTX *vs,
    X509_LOOKUP_TYPE type,
    const X509_NAME *name, X509_OBJECT *ret);
X509_OBJECT *X509_STORE_CTX_get_obj_by_subject(X509_STORE_CTX *vs,
    X509_LOOKUP_TYPE type,
    const X509_NAME *name);
int X509_LOOKUP_ctrl(X509_LOOKUP *ctx, int cmd, const char *argc,
    long argl, char **ret);
int X509_LOOKUP_ctrl_ex(X509_LOOKUP *ctx, int cmd, const char *argc, long argl,
    char **ret, OSSL_LIB_CTX *libctx, const char *propq);
int X509_load_cert_file(X509_LOOKUP *ctx, const char *file, int type);
int X509_load_cert_file_ex(X509_LOOKUP *ctx, const char *file, int type,
    OSSL_LIB_CTX *libctx, const char *propq);
int X509_load_crl_file(X509_LOOKUP *ctx, const char *file, int type);
int X509_load_cert_crl_file(X509_LOOKUP *ctx, const char *file, int type);
int X509_load_cert_crl_file_ex(X509_LOOKUP *ctx, const char *file, int type,
    OSSL_LIB_CTX *libctx, const char *propq);
X509_LOOKUP *X509_LOOKUP_new(X509_LOOKUP_METHOD *method);
void X509_LOOKUP_free(X509_LOOKUP *ctx);
int X509_LOOKUP_init(X509_LOOKUP *ctx);
int X509_LOOKUP_by_subject(X509_LOOKUP *ctx, X509_LOOKUP_TYPE type,
    const X509_NAME *name, X509_OBJECT *ret);
int X509_LOOKUP_by_subject_ex(X509_LOOKUP *ctx, X509_LOOKUP_TYPE type,
    const X509_NAME *name, X509_OBJECT *ret,
    OSSL_LIB_CTX *libctx, const char *propq);
int X509_LOOKUP_by_issuer_serial(X509_LOOKUP *ctx, X509_LOOKUP_TYPE type,
    const X509_NAME *name,
    const ASN1_INTEGER *serial,
    X509_OBJECT *ret);
int X509_LOOKUP_by_fingerprint(X509_LOOKUP *ctx, X509_LOOKUP_TYPE type,
    const unsigned char *bytes, int len,
    X509_OBJECT *ret);
int X509_LOOKUP_by_alias(X509_LOOKUP *ctx, X509_LOOKUP_TYPE type,
    const char *str, int len, X509_OBJECT *ret);
int X509_LOOKUP_set_method_data(X509_LOOKUP *ctx, void *data);
void *X509_LOOKUP_get_method_data(const X509_LOOKUP *ctx);
X509_STORE *X509_LOOKUP_get_store(const X509_LOOKUP *ctx);
int X509_LOOKUP_shutdown(X509_LOOKUP *ctx);
int X509_STORE_load_file(X509_STORE *xs, const char *file);
int X509_STORE_load_path(X509_STORE *xs, const char *path);
int X509_STORE_load_store(X509_STORE *xs, const char *store);
int X509_STORE_load_locations(X509_STORE *s, const char *file, const char *dir);
int X509_STORE_set_default_paths(X509_STORE *xs);
int X509_STORE_load_file_ex(X509_STORE *xs, const char *file,
    OSSL_LIB_CTX *libctx, const char *propq);
int X509_STORE_load_store_ex(X509_STORE *xs, const char *store,
    OSSL_LIB_CTX *libctx, const char *propq);
int X509_STORE_load_locations_ex(X509_STORE *xs,
    const char *file, const char *dir,
    OSSL_LIB_CTX *libctx, const char *propq);
int X509_STORE_set_default_paths_ex(X509_STORE *xs,
    OSSL_LIB_CTX *libctx, const char *propq);
int X509_STORE_CTX_set_ex_data(X509_STORE_CTX *ctx, int idx, void *data);
void *X509_STORE_CTX_get_ex_data(const X509_STORE_CTX *ctx, int idx);
int X509_STORE_CTX_get_error(const X509_STORE_CTX *ctx);
void X509_STORE_CTX_set_error(X509_STORE_CTX *ctx, int s);
int X509_STORE_CTX_get_error_depth(const X509_STORE_CTX *ctx);
void X509_STORE_CTX_set_error_depth(X509_STORE_CTX *ctx, int depth);
X509 *X509_STORE_CTX_get_current_cert(const X509_STORE_CTX *ctx);
void X509_STORE_CTX_set_current_cert(X509_STORE_CTX *ctx, X509 *x);
X509 *X509_STORE_CTX_get0_current_issuer(const X509_STORE_CTX *ctx);
X509_CRL *X509_STORE_CTX_get0_current_crl(const X509_STORE_CTX *ctx);
X509_STORE_CTX *X509_STORE_CTX_get0_parent_ctx(const X509_STORE_CTX *ctx);
struct stack_st_X509 *X509_STORE_CTX_get0_chain(const X509_STORE_CTX *ctx);
struct stack_st_X509 *X509_STORE_CTX_get1_chain(const X509_STORE_CTX *ctx);
void X509_STORE_CTX_set_cert(X509_STORE_CTX *ctx, X509 *target);
void X509_STORE_CTX_set0_rpk(X509_STORE_CTX *ctx, EVP_PKEY *target);
void X509_STORE_CTX_set0_verified_chain(X509_STORE_CTX *c, struct stack_st_X509 *sk);
void X509_STORE_CTX_set0_crls(X509_STORE_CTX *ctx, struct stack_st_X509_CRL *sk);
int X509_STORE_CTX_set_purpose(X509_STORE_CTX *ctx, int purpose);
int X509_STORE_CTX_set_trust(X509_STORE_CTX *ctx, int trust);
int X509_STORE_CTX_purpose_inherit(X509_STORE_CTX *ctx, int def_purpose,
    int purpose, int trust);
void X509_STORE_CTX_set_flags(X509_STORE_CTX *ctx, unsigned long flags);
void X509_STORE_CTX_set_time(X509_STORE_CTX *ctx, unsigned long flags,
    time_t t);
void X509_STORE_CTX_set_current_reasons(X509_STORE_CTX *ctx,
    unsigned int current_reasons);
X509_POLICY_TREE *X509_STORE_CTX_get0_policy_tree(const X509_STORE_CTX *ctx);
int X509_STORE_CTX_get_explicit_policy(const X509_STORE_CTX *ctx);
int X509_STORE_CTX_get_num_untrusted(const X509_STORE_CTX *ctx);
X509_VERIFY_PARAM *X509_STORE_CTX_get0_param(const X509_STORE_CTX *ctx);
void X509_STORE_CTX_set0_param(X509_STORE_CTX *ctx, X509_VERIFY_PARAM *param);
int X509_STORE_CTX_set_default(X509_STORE_CTX *ctx, const char *name);
void X509_STORE_CTX_set0_dane(X509_STORE_CTX *ctx, SSL_DANE *dane);
X509_VERIFY_PARAM *X509_VERIFY_PARAM_new(void);
void X509_VERIFY_PARAM_free(X509_VERIFY_PARAM *param);
int X509_VERIFY_PARAM_inherit(X509_VERIFY_PARAM *to,
    const X509_VERIFY_PARAM *from);
int X509_VERIFY_PARAM_set1(X509_VERIFY_PARAM *to,
    const X509_VERIFY_PARAM *from);
int X509_VERIFY_PARAM_set1_name(X509_VERIFY_PARAM *param, const char *name);
int X509_VERIFY_PARAM_set_flags(X509_VERIFY_PARAM *param,
    unsigned long flags);
int X509_VERIFY_PARAM_clear_flags(X509_VERIFY_PARAM *param,
    unsigned long flags);
unsigned long X509_VERIFY_PARAM_get_flags(const X509_VERIFY_PARAM *param);
int X509_VERIFY_PARAM_set_purpose(X509_VERIFY_PARAM *param, int purpose);
int X509_VERIFY_PARAM_get_purpose(const X509_VERIFY_PARAM *param);
int X509_VERIFY_PARAM_set_trust(X509_VERIFY_PARAM *param, int trust);
void X509_VERIFY_PARAM_set_depth(X509_VERIFY_PARAM *param, int depth);
void X509_VERIFY_PARAM_set_auth_level(X509_VERIFY_PARAM *param, int auth_level);
time_t X509_VERIFY_PARAM_get_time(const X509_VERIFY_PARAM *param);
void X509_VERIFY_PARAM_set_time(X509_VERIFY_PARAM *param, time_t t);
int X509_VERIFY_PARAM_add0_policy(X509_VERIFY_PARAM *param,
    ASN1_OBJECT *policy);
int X509_VERIFY_PARAM_set1_policies(X509_VERIFY_PARAM *param,
    struct stack_st_ASN1_OBJECT *policies);
int X509_VERIFY_PARAM_set_inh_flags(X509_VERIFY_PARAM *param,
    uint32_t flags);
uint32_t X509_VERIFY_PARAM_get_inh_flags(const X509_VERIFY_PARAM *param);
char *X509_VERIFY_PARAM_get0_host(X509_VERIFY_PARAM *param, int idx);
int X509_VERIFY_PARAM_set1_host(X509_VERIFY_PARAM *param,
    const char *name, size_t namelen);
int X509_VERIFY_PARAM_add1_host(X509_VERIFY_PARAM *param,
    const char *name, size_t namelen);
void X509_VERIFY_PARAM_set_hostflags(X509_VERIFY_PARAM *param,
    unsigned int flags);
unsigned int X509_VERIFY_PARAM_get_hostflags(const X509_VERIFY_PARAM *param);
char *X509_VERIFY_PARAM_get0_peername(const X509_VERIFY_PARAM *param);
void X509_VERIFY_PARAM_move_peername(X509_VERIFY_PARAM *, X509_VERIFY_PARAM *);
char *X509_VERIFY_PARAM_get0_email(X509_VERIFY_PARAM *param);
int X509_VERIFY_PARAM_set1_email(X509_VERIFY_PARAM *param,
    const char *email, size_t emaillen);
char *X509_VERIFY_PARAM_get1_ip_asc(X509_VERIFY_PARAM *param);
int X509_VERIFY_PARAM_set1_ip(X509_VERIFY_PARAM *param,
    const unsigned char *ip, size_t iplen);
int X509_VERIFY_PARAM_set1_ip_asc(X509_VERIFY_PARAM *param,
    const char *ipasc);
int X509_VERIFY_PARAM_get_depth(const X509_VERIFY_PARAM *param);
int X509_VERIFY_PARAM_get_auth_level(const X509_VERIFY_PARAM *param);
const char *X509_VERIFY_PARAM_get0_name(const X509_VERIFY_PARAM *param);
int X509_VERIFY_PARAM_add0_table(X509_VERIFY_PARAM *param);
int X509_VERIFY_PARAM_get_count(void);
const X509_VERIFY_PARAM *X509_VERIFY_PARAM_get0(int id);
const X509_VERIFY_PARAM *X509_VERIFY_PARAM_lookup(const char *name);
void X509_VERIFY_PARAM_table_cleanup(void);
int X509_policy_check(X509_POLICY_TREE **ptree, int *pexplicit_policy,
    struct stack_st_X509 *certs,
    struct stack_st_ASN1_OBJECT *policy_oids, unsigned int flags);
void X509_policy_tree_free(X509_POLICY_TREE *tree);
int X509_policy_tree_level_count(const X509_POLICY_TREE *tree);
X509_POLICY_LEVEL *X509_policy_tree_get0_level(const X509_POLICY_TREE *tree,
    int i);
struct stack_st_X509_POLICY_NODE
*X509_policy_tree_get0_policies(const X509_POLICY_TREE *tree);
struct stack_st_X509_POLICY_NODE
*X509_policy_tree_get0_user_policies(const X509_POLICY_TREE *tree);
int X509_policy_level_node_count(X509_POLICY_LEVEL *level);
X509_POLICY_NODE *X509_policy_level_get0_node(const X509_POLICY_LEVEL *level,
    int i);
const ASN1_OBJECT *X509_policy_node_get0_policy(const X509_POLICY_NODE *node);
struct stack_st_POLICYQUALINFO
*X509_policy_node_get0_qualifiers(const X509_POLICY_NODE *node);
const X509_POLICY_NODE *X509_policy_node_get0_parent(const X509_POLICY_NODE *node);
       
       
typedef struct PKCS7_CTX_st {
    OSSL_LIB_CTX *libctx;
    char *propq;
} PKCS7_CTX;
typedef struct pkcs7_issuer_and_serial_st {
    X509_NAME *issuer;
    ASN1_INTEGER *serial;
} PKCS7_ISSUER_AND_SERIAL;
typedef struct pkcs7_signer_info_st {
    ASN1_INTEGER *version;
    PKCS7_ISSUER_AND_SERIAL *issuer_and_serial;
    X509_ALGOR *digest_alg;
    struct stack_st_X509_ATTRIBUTE *auth_attr;
    X509_ALGOR *digest_enc_alg;
    ASN1_OCTET_STRING *enc_digest;
    struct stack_st_X509_ATTRIBUTE *unauth_attr;
    EVP_PKEY *pkey;
    const PKCS7_CTX *ctx;
} PKCS7_SIGNER_INFO;
struct stack_st_PKCS7_SIGNER_INFO; typedef int (*sk_PKCS7_SIGNER_INFO_compfunc)(const PKCS7_SIGNER_INFO *const *a, const PKCS7_SIGNER_INFO *const *b); typedef void (*sk_PKCS7_SIGNER_INFO_freefunc)(PKCS7_SIGNER_INFO * a); typedef PKCS7_SIGNER_INFO *(*sk_PKCS7_SIGNER_INFO_copyfunc)(const PKCS7_SIGNER_INFO *a); static __attribute__((unused)) inline PKCS7_SIGNER_INFO *ossl_check_PKCS7_SIGNER_INFO_type(PKCS7_SIGNER_INFO *ptr) { return ptr; } static __attribute__((unused)) inline const OPENSSL_STACK *ossl_check_const_PKCS7_SIGNER_INFO_sk_type(const struct stack_st_PKCS7_SIGNER_INFO *sk) { return (const OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_STACK *ossl_check_PKCS7_SIGNER_INFO_sk_type(struct stack_st_PKCS7_SIGNER_INFO *sk) { return (OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_sk_compfunc ossl_check_PKCS7_SIGNER_INFO_compfunc_type(sk_PKCS7_SIGNER_INFO_compfunc cmp) { return (OPENSSL_sk_compfunc)cmp; } static __attribute__((unused)) inline OPENSSL_sk_copyfunc ossl_check_PKCS7_SIGNER_INFO_copyfunc_type(sk_PKCS7_SIGNER_INFO_copyfunc cpy) { return (OPENSSL_sk_copyfunc)cpy; } static __attribute__((unused)) inline OPENSSL_sk_freefunc ossl_check_PKCS7_SIGNER_INFO_freefunc_type(sk_PKCS7_SIGNER_INFO_freefunc fr) { return (OPENSSL_sk_freefunc)fr; }
typedef struct pkcs7_recip_info_st {
    ASN1_INTEGER *version;
    PKCS7_ISSUER_AND_SERIAL *issuer_and_serial;
    X509_ALGOR *key_enc_algor;
    ASN1_OCTET_STRING *enc_key;
    X509 *cert;
    const PKCS7_CTX *ctx;
} PKCS7_RECIP_INFO;
struct stack_st_PKCS7_RECIP_INFO; typedef int (*sk_PKCS7_RECIP_INFO_compfunc)(const PKCS7_RECIP_INFO *const *a, const PKCS7_RECIP_INFO *const *b); typedef void (*sk_PKCS7_RECIP_INFO_freefunc)(PKCS7_RECIP_INFO * a); typedef PKCS7_RECIP_INFO *(*sk_PKCS7_RECIP_INFO_copyfunc)(const PKCS7_RECIP_INFO *a); static __attribute__((unused)) inline PKCS7_RECIP_INFO *ossl_check_PKCS7_RECIP_INFO_type(PKCS7_RECIP_INFO *ptr) { return ptr; } static __attribute__((unused)) inline const OPENSSL_STACK *ossl_check_const_PKCS7_RECIP_INFO_sk_type(const struct stack_st_PKCS7_RECIP_INFO *sk) { return (const OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_STACK *ossl_check_PKCS7_RECIP_INFO_sk_type(struct stack_st_PKCS7_RECIP_INFO *sk) { return (OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_sk_compfunc ossl_check_PKCS7_RECIP_INFO_compfunc_type(sk_PKCS7_RECIP_INFO_compfunc cmp) { return (OPENSSL_sk_compfunc)cmp; } static __attribute__((unused)) inline OPENSSL_sk_copyfunc ossl_check_PKCS7_RECIP_INFO_copyfunc_type(sk_PKCS7_RECIP_INFO_copyfunc cpy) { return (OPENSSL_sk_copyfunc)cpy; } static __attribute__((unused)) inline OPENSSL_sk_freefunc ossl_check_PKCS7_RECIP_INFO_freefunc_type(sk_PKCS7_RECIP_INFO_freefunc fr) { return (OPENSSL_sk_freefunc)fr; }
typedef struct pkcs7_signed_st {
    ASN1_INTEGER *version;
    struct stack_st_X509_ALGOR *md_algs;
    struct stack_st_X509 *cert;
    struct stack_st_X509_CRL *crl;
    struct stack_st_PKCS7_SIGNER_INFO *signer_info;
    struct pkcs7_st *contents;
} PKCS7_SIGNED;
typedef struct pkcs7_enc_content_st {
    ASN1_OBJECT *content_type;
    X509_ALGOR *algorithm;
    ASN1_OCTET_STRING *enc_data;
    const EVP_CIPHER *cipher;
    const PKCS7_CTX *ctx;
} PKCS7_ENC_CONTENT;
typedef struct pkcs7_enveloped_st {
    ASN1_INTEGER *version;
    struct stack_st_PKCS7_RECIP_INFO *recipientinfo;
    PKCS7_ENC_CONTENT *enc_data;
} PKCS7_ENVELOPE;
typedef struct pkcs7_signedandenveloped_st {
    ASN1_INTEGER *version;
    struct stack_st_X509_ALGOR *md_algs;
    struct stack_st_X509 *cert;
    struct stack_st_X509_CRL *crl;
    struct stack_st_PKCS7_SIGNER_INFO *signer_info;
    PKCS7_ENC_CONTENT *enc_data;
    struct stack_st_PKCS7_RECIP_INFO *recipientinfo;
} PKCS7_SIGN_ENVELOPE;
typedef struct pkcs7_digest_st {
    ASN1_INTEGER *version;
    X509_ALGOR *md;
    struct pkcs7_st *contents;
    ASN1_OCTET_STRING *digest;
} PKCS7_DIGEST;
typedef struct pkcs7_encrypted_st {
    ASN1_INTEGER *version;
    PKCS7_ENC_CONTENT *enc_data;
} PKCS7_ENCRYPT;
typedef struct pkcs7_st {
    unsigned char *asn1;
    long length;
    int state;
    int detached;
    ASN1_OBJECT *type;
    union {
        char *ptr;
        ASN1_OCTET_STRING *data;
        PKCS7_SIGNED *sign;
        PKCS7_ENVELOPE *enveloped;
        PKCS7_SIGN_ENVELOPE *signed_and_enveloped;
        PKCS7_DIGEST *digest;
        PKCS7_ENCRYPT *encrypted;
        ASN1_TYPE *other;
    } d;
    PKCS7_CTX ctx;
} PKCS7;
struct stack_st_PKCS7; typedef int (*sk_PKCS7_compfunc)(const PKCS7 *const *a, const PKCS7 *const *b); typedef void (*sk_PKCS7_freefunc)(PKCS7 * a); typedef PKCS7 *(*sk_PKCS7_copyfunc)(const PKCS7 *a); static __attribute__((unused)) inline PKCS7 *ossl_check_PKCS7_type(PKCS7 *ptr) { return ptr; } static __attribute__((unused)) inline const OPENSSL_STACK *ossl_check_const_PKCS7_sk_type(const struct stack_st_PKCS7 *sk) { return (const OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_STACK *ossl_check_PKCS7_sk_type(struct stack_st_PKCS7 *sk) { return (OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_sk_compfunc ossl_check_PKCS7_compfunc_type(sk_PKCS7_compfunc cmp) { return (OPENSSL_sk_compfunc)cmp; } static __attribute__((unused)) inline OPENSSL_sk_copyfunc ossl_check_PKCS7_copyfunc_type(sk_PKCS7_copyfunc cpy) { return (OPENSSL_sk_copyfunc)cpy; } static __attribute__((unused)) inline OPENSSL_sk_freefunc ossl_check_PKCS7_freefunc_type(sk_PKCS7_freefunc fr) { return (OPENSSL_sk_freefunc)fr; }
extern PKCS7_ISSUER_AND_SERIAL *PKCS7_ISSUER_AND_SERIAL_new(void); extern void PKCS7_ISSUER_AND_SERIAL_free(PKCS7_ISSUER_AND_SERIAL *a); extern PKCS7_ISSUER_AND_SERIAL *d2i_PKCS7_ISSUER_AND_SERIAL(PKCS7_ISSUER_AND_SERIAL **a, const unsigned char **in, long len); extern int i2d_PKCS7_ISSUER_AND_SERIAL(const PKCS7_ISSUER_AND_SERIAL *a, unsigned char **out); extern const ASN1_ITEM *PKCS7_ISSUER_AND_SERIAL_it(void);
int PKCS7_ISSUER_AND_SERIAL_digest(PKCS7_ISSUER_AND_SERIAL *data,
    const EVP_MD *type, unsigned char *md,
    unsigned int *len);
PKCS7 *d2i_PKCS7_fp(FILE *fp, PKCS7 **p7);
int i2d_PKCS7_fp(FILE *fp, const PKCS7 *p7);
extern PKCS7 *PKCS7_dup(const PKCS7 *a);
PKCS7 *d2i_PKCS7_bio(BIO *bp, PKCS7 **p7);
int i2d_PKCS7_bio(BIO *bp, const PKCS7 *p7);
int i2d_PKCS7_bio_stream(BIO *out, PKCS7 *p7, BIO *in, int flags);
int PEM_write_bio_PKCS7_stream(BIO *out, PKCS7 *p7, BIO *in, int flags);
extern PKCS7_SIGNER_INFO *PKCS7_SIGNER_INFO_new(void); extern void PKCS7_SIGNER_INFO_free(PKCS7_SIGNER_INFO *a); extern PKCS7_SIGNER_INFO *d2i_PKCS7_SIGNER_INFO(PKCS7_SIGNER_INFO **a, const unsigned char **in, long len); extern int i2d_PKCS7_SIGNER_INFO(const PKCS7_SIGNER_INFO *a, unsigned char **out); extern const ASN1_ITEM *PKCS7_SIGNER_INFO_it(void);
extern PKCS7_RECIP_INFO *PKCS7_RECIP_INFO_new(void); extern void PKCS7_RECIP_INFO_free(PKCS7_RECIP_INFO *a); extern PKCS7_RECIP_INFO *d2i_PKCS7_RECIP_INFO(PKCS7_RECIP_INFO **a, const unsigned char **in, long len); extern int i2d_PKCS7_RECIP_INFO(const PKCS7_RECIP_INFO *a, unsigned char **out); extern const ASN1_ITEM *PKCS7_RECIP_INFO_it(void);
extern PKCS7_SIGNED *PKCS7_SIGNED_new(void); extern void PKCS7_SIGNED_free(PKCS7_SIGNED *a); extern PKCS7_SIGNED *d2i_PKCS7_SIGNED(PKCS7_SIGNED **a, const unsigned char **in, long len); extern int i2d_PKCS7_SIGNED(const PKCS7_SIGNED *a, unsigned char **out); extern const ASN1_ITEM *PKCS7_SIGNED_it(void);
extern PKCS7_ENC_CONTENT *PKCS7_ENC_CONTENT_new(void); extern void PKCS7_ENC_CONTENT_free(PKCS7_ENC_CONTENT *a); extern PKCS7_ENC_CONTENT *d2i_PKCS7_ENC_CONTENT(PKCS7_ENC_CONTENT **a, const unsigned char **in, long len); extern int i2d_PKCS7_ENC_CONTENT(const PKCS7_ENC_CONTENT *a, unsigned char **out); extern const ASN1_ITEM *PKCS7_ENC_CONTENT_it(void);
extern PKCS7_ENVELOPE *PKCS7_ENVELOPE_new(void); extern void PKCS7_ENVELOPE_free(PKCS7_ENVELOPE *a); extern PKCS7_ENVELOPE *d2i_PKCS7_ENVELOPE(PKCS7_ENVELOPE **a, const unsigned char **in, long len); extern int i2d_PKCS7_ENVELOPE(const PKCS7_ENVELOPE *a, unsigned char **out); extern const ASN1_ITEM *PKCS7_ENVELOPE_it(void);
extern PKCS7_SIGN_ENVELOPE *PKCS7_SIGN_ENVELOPE_new(void); extern void PKCS7_SIGN_ENVELOPE_free(PKCS7_SIGN_ENVELOPE *a); extern PKCS7_SIGN_ENVELOPE *d2i_PKCS7_SIGN_ENVELOPE(PKCS7_SIGN_ENVELOPE **a, const unsigned char **in, long len); extern int i2d_PKCS7_SIGN_ENVELOPE(const PKCS7_SIGN_ENVELOPE *a, unsigned char **out); extern const ASN1_ITEM *PKCS7_SIGN_ENVELOPE_it(void);
extern PKCS7_DIGEST *PKCS7_DIGEST_new(void); extern void PKCS7_DIGEST_free(PKCS7_DIGEST *a); extern PKCS7_DIGEST *d2i_PKCS7_DIGEST(PKCS7_DIGEST **a, const unsigned char **in, long len); extern int i2d_PKCS7_DIGEST(const PKCS7_DIGEST *a, unsigned char **out); extern const ASN1_ITEM *PKCS7_DIGEST_it(void);
extern PKCS7_ENCRYPT *PKCS7_ENCRYPT_new(void); extern void PKCS7_ENCRYPT_free(PKCS7_ENCRYPT *a); extern PKCS7_ENCRYPT *d2i_PKCS7_ENCRYPT(PKCS7_ENCRYPT **a, const unsigned char **in, long len); extern int i2d_PKCS7_ENCRYPT(const PKCS7_ENCRYPT *a, unsigned char **out); extern const ASN1_ITEM *PKCS7_ENCRYPT_it(void);
extern PKCS7 *PKCS7_new(void); extern void PKCS7_free(PKCS7 *a); extern PKCS7 *d2i_PKCS7(PKCS7 **a, const unsigned char **in, long len); extern int i2d_PKCS7(const PKCS7 *a, unsigned char **out); extern const ASN1_ITEM *PKCS7_it(void);
PKCS7 *PKCS7_new_ex(OSSL_LIB_CTX *libctx, const char *propq);
extern const ASN1_ITEM *PKCS7_ATTR_SIGN_it(void);
extern const ASN1_ITEM *PKCS7_ATTR_VERIFY_it(void);
extern int i2d_PKCS7_NDEF(const PKCS7 *a, unsigned char **out);
extern int PKCS7_print_ctx(BIO *out, const PKCS7 *x, int indent, const ASN1_PCTX *pctx);
long PKCS7_ctrl(PKCS7 *p7, int cmd, long larg, char *parg);
int PKCS7_type_is_other(PKCS7 *p7);
int PKCS7_set_type(PKCS7 *p7, int type);
int PKCS7_set0_type_other(PKCS7 *p7, int type, ASN1_TYPE *other);
int PKCS7_set_content(PKCS7 *p7, PKCS7 *p7_data);
int PKCS7_SIGNER_INFO_set(PKCS7_SIGNER_INFO *p7i, X509 *x509, EVP_PKEY *pkey,
    const EVP_MD *dgst);
int PKCS7_SIGNER_INFO_sign(PKCS7_SIGNER_INFO *si);
int PKCS7_add_signer(PKCS7 *p7, PKCS7_SIGNER_INFO *p7i);
int PKCS7_add_certificate(PKCS7 *p7, X509 *cert);
int PKCS7_add_crl(PKCS7 *p7, X509_CRL *crl);
int PKCS7_content_new(PKCS7 *p7, int nid);
int PKCS7_dataVerify(X509_STORE *cert_store, X509_STORE_CTX *ctx,
    BIO *bio, PKCS7 *p7, PKCS7_SIGNER_INFO *si);
int PKCS7_signatureVerify(BIO *bio, PKCS7 *p7, PKCS7_SIGNER_INFO *si,
    X509 *signer);
BIO *PKCS7_dataInit(PKCS7 *p7, BIO *bio);
int PKCS7_dataFinal(PKCS7 *p7, BIO *bio);
BIO *PKCS7_dataDecode(PKCS7 *p7, EVP_PKEY *pkey, BIO *in_bio, X509 *pcert);
PKCS7_SIGNER_INFO *PKCS7_add_signature(PKCS7 *p7, X509 *x509,
    EVP_PKEY *pkey, const EVP_MD *dgst);
X509 *PKCS7_cert_from_signer_info(PKCS7 *p7, PKCS7_SIGNER_INFO *si);
int PKCS7_set_digest(PKCS7 *p7, const EVP_MD *md);
struct stack_st_PKCS7_SIGNER_INFO *PKCS7_get_signer_info(PKCS7 *p7);
PKCS7_RECIP_INFO *PKCS7_add_recipient(PKCS7 *p7, X509 *x509);
void PKCS7_SIGNER_INFO_get0_algs(PKCS7_SIGNER_INFO *si, EVP_PKEY **pk,
    X509_ALGOR **pdig, X509_ALGOR **psig);
void PKCS7_RECIP_INFO_get0_alg(PKCS7_RECIP_INFO *ri, X509_ALGOR **penc);
int PKCS7_add_recipient_info(PKCS7 *p7, PKCS7_RECIP_INFO *ri);
int PKCS7_RECIP_INFO_set(PKCS7_RECIP_INFO *p7i, X509 *x509);
int PKCS7_set_cipher(PKCS7 *p7, const EVP_CIPHER *cipher);
int PKCS7_stream(unsigned char ***boundary, PKCS7 *p7);
PKCS7_ISSUER_AND_SERIAL *PKCS7_get_issuer_and_serial(PKCS7 *p7, int idx);
ASN1_OCTET_STRING *PKCS7_get_octet_string(PKCS7 *p7);
ASN1_OCTET_STRING *PKCS7_digest_from_attributes(struct stack_st_X509_ATTRIBUTE *sk);
int PKCS7_add_signed_attribute(PKCS7_SIGNER_INFO *p7si, int nid, int type,
    void *data);
int PKCS7_add_attribute(PKCS7_SIGNER_INFO *p7si, int nid, int atrtype,
    void *value);
ASN1_TYPE *PKCS7_get_attribute(const PKCS7_SIGNER_INFO *si, int nid);
ASN1_TYPE *PKCS7_get_signed_attribute(const PKCS7_SIGNER_INFO *si, int nid);
int PKCS7_set_signed_attributes(PKCS7_SIGNER_INFO *p7si,
    struct stack_st_X509_ATTRIBUTE *sk);
int PKCS7_set_attributes(PKCS7_SIGNER_INFO *p7si,
    struct stack_st_X509_ATTRIBUTE *sk);
PKCS7 *PKCS7_sign(X509 *signcert, EVP_PKEY *pkey, struct stack_st_X509 *certs,
    BIO *data, int flags);
PKCS7 *PKCS7_sign_ex(X509 *signcert, EVP_PKEY *pkey, struct stack_st_X509 *certs,
    BIO *data, int flags, OSSL_LIB_CTX *libctx,
    const char *propq);
PKCS7_SIGNER_INFO *PKCS7_sign_add_signer(PKCS7 *p7,
    X509 *signcert, EVP_PKEY *pkey,
    const EVP_MD *md, int flags);
int PKCS7_final(PKCS7 *p7, BIO *data, int flags);
int PKCS7_verify(PKCS7 *p7, struct stack_st_X509 *certs, X509_STORE *store,
    BIO *indata, BIO *out, int flags);
struct stack_st_X509 *PKCS7_get0_signers(PKCS7 *p7, struct stack_st_X509 *certs,
    int flags);
PKCS7 *PKCS7_encrypt(struct stack_st_X509 *certs, BIO *in, const EVP_CIPHER *cipher,
    int flags);
PKCS7 *PKCS7_encrypt_ex(struct stack_st_X509 *certs, BIO *in,
    const EVP_CIPHER *cipher, int flags,
    OSSL_LIB_CTX *libctx, const char *propq);
int PKCS7_decrypt(PKCS7 *p7, EVP_PKEY *pkey, X509 *cert, BIO *data,
    int flags);
int PKCS7_add_attrib_smimecap(PKCS7_SIGNER_INFO *si,
    struct stack_st_X509_ALGOR *cap);
struct stack_st_X509_ALGOR *PKCS7_get_smimecap(PKCS7_SIGNER_INFO *si);
int PKCS7_simple_smimecap(struct stack_st_X509_ALGOR *sk, int nid, int arg);
int PKCS7_add_attrib_content_type(PKCS7_SIGNER_INFO *si, ASN1_OBJECT *coid);
int PKCS7_add0_attrib_signing_time(PKCS7_SIGNER_INFO *si, ASN1_TIME *t);
int PKCS7_add1_attrib_digest(PKCS7_SIGNER_INFO *si,
    const unsigned char *md, int mdlen);
int SMIME_write_PKCS7(BIO *bio, PKCS7 *p7, BIO *data, int flags);
PKCS7 *SMIME_read_PKCS7_ex(BIO *bio, BIO **bcont, PKCS7 **p7);
PKCS7 *SMIME_read_PKCS7(BIO *bio, BIO **bcont);
BIO *BIO_new_PKCS7(BIO *out, PKCS7 *p7);
void X509_CRL_set_default_method(const X509_CRL_METHOD *meth);
X509_CRL_METHOD *X509_CRL_METHOD_new(int (*crl_init)(X509_CRL *crl),
    int (*crl_free)(X509_CRL *crl),
    int (*crl_lookup)(X509_CRL *crl,
        X509_REVOKED **ret,
        const ASN1_INTEGER *serial,
        const X509_NAME *issuer),
    int (*crl_verify)(X509_CRL *crl,
        EVP_PKEY *pk));
void X509_CRL_METHOD_free(X509_CRL_METHOD *m);
void X509_CRL_set_meth_data(X509_CRL *crl, void *dat);
void *X509_CRL_get_meth_data(X509_CRL *crl);
const char *X509_verify_cert_error_string(long n);
int X509_verify(X509 *a, EVP_PKEY *r);
int X509_self_signed(X509 *cert, int verify_signature);
int X509_REQ_verify_ex(X509_REQ *a, EVP_PKEY *r, OSSL_LIB_CTX *libctx,
    const char *propq);
int X509_REQ_verify(X509_REQ *a, EVP_PKEY *r);
int X509_CRL_verify(X509_CRL *a, EVP_PKEY *r);
int NETSCAPE_SPKI_verify(NETSCAPE_SPKI *a, EVP_PKEY *r);
NETSCAPE_SPKI *NETSCAPE_SPKI_b64_decode(const char *str, int len);
char *NETSCAPE_SPKI_b64_encode(NETSCAPE_SPKI *x);
EVP_PKEY *NETSCAPE_SPKI_get_pubkey(NETSCAPE_SPKI *x);
int NETSCAPE_SPKI_set_pubkey(NETSCAPE_SPKI *x, EVP_PKEY *pkey);
int NETSCAPE_SPKI_print(BIO *out, NETSCAPE_SPKI *spki);
int X509_signature_dump(BIO *bp, const ASN1_STRING *sig, int indent);
int X509_signature_print(BIO *bp, const X509_ALGOR *alg,
    const ASN1_STRING *sig);
int X509_sign(X509 *x, EVP_PKEY *pkey, const EVP_MD *md);
int X509_sign_ctx(X509 *x, EVP_MD_CTX *ctx);
int X509_REQ_sign(X509_REQ *x, EVP_PKEY *pkey, const EVP_MD *md);
int X509_REQ_sign_ctx(X509_REQ *x, EVP_MD_CTX *ctx);
int X509_CRL_sign(X509_CRL *x, EVP_PKEY *pkey, const EVP_MD *md);
int X509_CRL_sign_ctx(X509_CRL *x, EVP_MD_CTX *ctx);
int NETSCAPE_SPKI_sign(NETSCAPE_SPKI *x, EVP_PKEY *pkey, const EVP_MD *md);
int X509_pubkey_digest(const X509 *data, const EVP_MD *type,
    unsigned char *md, unsigned int *len);
int X509_digest(const X509 *data, const EVP_MD *type,
    unsigned char *md, unsigned int *len);
ASN1_OCTET_STRING *X509_digest_sig(const X509 *cert,
    EVP_MD **md_used, int *md_is_fallback);
int X509_CRL_digest(const X509_CRL *data, const EVP_MD *type,
    unsigned char *md, unsigned int *len);
int X509_REQ_digest(const X509_REQ *data, const EVP_MD *type,
    unsigned char *md, unsigned int *len);
int X509_NAME_digest(const X509_NAME *data, const EVP_MD *type,
    unsigned char *md, unsigned int *len);
X509 *X509_load_http(const char *url, BIO *bio, BIO *rbio, int timeout);
X509_CRL *X509_CRL_load_http(const char *url, BIO *bio, BIO *rbio, int timeout);
       
       
       
typedef struct {
    char *section;
    char *name;
    char *value;
} CONF_VALUE;
struct stack_st_CONF_VALUE; typedef int (*sk_CONF_VALUE_compfunc)(const CONF_VALUE *const *a, const CONF_VALUE *const *b); typedef void (*sk_CONF_VALUE_freefunc)(CONF_VALUE * a); typedef CONF_VALUE *(*sk_CONF_VALUE_copyfunc)(const CONF_VALUE *a); static __attribute__((unused)) inline CONF_VALUE *ossl_check_CONF_VALUE_type(CONF_VALUE *ptr) { return ptr; } static __attribute__((unused)) inline const OPENSSL_STACK *ossl_check_const_CONF_VALUE_sk_type(const struct stack_st_CONF_VALUE *sk) { return (const OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_STACK *ossl_check_CONF_VALUE_sk_type(struct stack_st_CONF_VALUE *sk) { return (OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_sk_compfunc ossl_check_CONF_VALUE_compfunc_type(sk_CONF_VALUE_compfunc cmp) { return (OPENSSL_sk_compfunc)cmp; } static __attribute__((unused)) inline OPENSSL_sk_copyfunc ossl_check_CONF_VALUE_copyfunc_type(sk_CONF_VALUE_copyfunc cpy) { return (OPENSSL_sk_copyfunc)cpy; } static __attribute__((unused)) inline OPENSSL_sk_freefunc ossl_check_CONF_VALUE_freefunc_type(sk_CONF_VALUE_freefunc fr) { return (OPENSSL_sk_freefunc)fr; }
struct lhash_st_CONF_VALUE { union lh_CONF_VALUE_dummy { void *d1; unsigned long d2; int d3; } dummy; }; typedef int (*lh_CONF_VALUE_compfunc)(const CONF_VALUE *a, const CONF_VALUE *b); typedef unsigned long (*lh_CONF_VALUE_hashfunc)(const CONF_VALUE *a); typedef void (*lh_CONF_VALUE_doallfunc)(CONF_VALUE * a); static inline unsigned long lh_CONF_VALUE_hash_thunk(const void *data, OPENSSL_LH_HASHFUNC hfn) { unsigned long (*hfn_conv)(const CONF_VALUE *) = (unsigned long (*)(const CONF_VALUE *))hfn; return hfn_conv((const CONF_VALUE *)data); } static inline int lh_CONF_VALUE_comp_thunk(const void *da, const void *db, OPENSSL_LH_COMPFUNC cfn) { int (*cfn_conv)(const CONF_VALUE *, const CONF_VALUE *) = (int (*)(const CONF_VALUE *, const CONF_VALUE *))cfn; return cfn_conv((const CONF_VALUE *)da, (const CONF_VALUE *)db); } static inline void lh_CONF_VALUE_doall_thunk(void *node, OPENSSL_LH_DOALL_FUNC doall) { void (*doall_conv)(CONF_VALUE *) = (void (*)(CONF_VALUE *))doall; doall_conv((CONF_VALUE *)node); } static inline void lh_CONF_VALUE_doall_arg_thunk(void *node, void *arg, OPENSSL_LH_DOALL_FUNCARG doall) { void (*doall_conv)(CONF_VALUE *, void *) = (void (*)(CONF_VALUE *, void *))doall; doall_conv((CONF_VALUE *)node, arg); } static __attribute__((unused)) inline CONF_VALUE * ossl_check_CONF_VALUE_lh_plain_type(CONF_VALUE *ptr) { return ptr; } static __attribute__((unused)) inline const CONF_VALUE * ossl_check_const_CONF_VALUE_lh_plain_type(const CONF_VALUE *ptr) { return ptr; } static __attribute__((unused)) inline const OPENSSL_LHASH * ossl_check_const_CONF_VALUE_lh_type(const struct lhash_st_CONF_VALUE *lh) { return (const OPENSSL_LHASH *)lh; } static __attribute__((unused)) inline OPENSSL_LHASH * ossl_check_CONF_VALUE_lh_type(struct lhash_st_CONF_VALUE *lh) { return (OPENSSL_LHASH *)lh; } static __attribute__((unused)) inline OPENSSL_LH_COMPFUNC ossl_check_CONF_VALUE_lh_compfunc_type(lh_CONF_VALUE_compfunc cmp) { return (OPENSSL_LH_COMPFUNC)cmp; } static __attribute__((unused)) inline OPENSSL_LH_HASHFUNC ossl_check_CONF_VALUE_lh_hashfunc_type(lh_CONF_VALUE_hashfunc hfn) { return (OPENSSL_LH_HASHFUNC)hfn; } static __attribute__((unused)) inline OPENSSL_LH_DOALL_FUNC ossl_check_CONF_VALUE_lh_doallfunc_type(lh_CONF_VALUE_doallfunc dfn) { return (OPENSSL_LH_DOALL_FUNC)dfn; } struct lhash_st_CONF_VALUE;
struct conf_st;
struct conf_method_st;
typedef struct conf_method_st CONF_METHOD;
       
struct conf_method_st {
    const char *name;
    CONF *(*create)(CONF_METHOD *meth);
    int (*init)(CONF *conf);
    int (*destroy)(CONF *conf);
    int (*destroy_data)(CONF *conf);
    int (*load_bio)(CONF *conf, BIO *bp, long *eline);
    int (*dump)(const CONF *conf, BIO *bp);
    int (*is_number)(const CONF *conf, char c);
    int (*to_int)(const CONF *conf, char c);
    int (*load)(CONF *conf, const char *name, long *eline);
};
struct conf_st {
    CONF_METHOD *meth;
    void *meth_data;
    struct lhash_st_CONF_VALUE *data;
    int flag_dollarid;
    int flag_abspath;
    char *includedir;
    OSSL_LIB_CTX *libctx;
};
typedef struct conf_imodule_st CONF_IMODULE;
typedef struct conf_module_st CONF_MODULE;
struct stack_st_CONF_MODULE;
struct stack_st_CONF_IMODULE;
typedef int conf_init_func(CONF_IMODULE *md, const CONF *cnf);
typedef void conf_finish_func(CONF_IMODULE *md);
int CONF_set_default_method(CONF_METHOD *meth);
void CONF_set_nconf(CONF *conf, struct lhash_st_CONF_VALUE *hash);
struct lhash_st_CONF_VALUE *CONF_load(struct lhash_st_CONF_VALUE *conf, const char *file,
    long *eline);
struct lhash_st_CONF_VALUE *CONF_load_fp(struct lhash_st_CONF_VALUE *conf, FILE *fp,
    long *eline);
struct lhash_st_CONF_VALUE *CONF_load_bio(struct lhash_st_CONF_VALUE *conf, BIO *bp,
    long *eline);
struct stack_st_CONF_VALUE *CONF_get_section(struct lhash_st_CONF_VALUE *conf,
    const char *section);
char *CONF_get_string(struct lhash_st_CONF_VALUE *conf, const char *group,
    const char *name);
long CONF_get_number(struct lhash_st_CONF_VALUE *conf, const char *group,
    const char *name);
void CONF_free(struct lhash_st_CONF_VALUE *conf);
int CONF_dump_fp(struct lhash_st_CONF_VALUE *conf, FILE *out);
int CONF_dump_bio(struct lhash_st_CONF_VALUE *conf, BIO *out);
__attribute__((deprecated("Since OpenSSL " "1.1.0"))) void OPENSSL_config(const char *config_name);
CONF *NCONF_new_ex(OSSL_LIB_CTX *libctx, CONF_METHOD *meth);
OSSL_LIB_CTX *NCONF_get0_libctx(const CONF *conf);
CONF *NCONF_new(CONF_METHOD *meth);
CONF_METHOD *NCONF_default(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) CONF_METHOD *NCONF_WIN32(void);
void NCONF_free(CONF *conf);
void NCONF_free_data(CONF *conf);
int NCONF_load(CONF *conf, const char *file, long *eline);
int NCONF_load_fp(CONF *conf, FILE *fp, long *eline);
int NCONF_load_bio(CONF *conf, BIO *bp, long *eline);
struct stack_st_OPENSSL_CSTRING *NCONF_get_section_names(const CONF *conf);
struct stack_st_CONF_VALUE *NCONF_get_section(const CONF *conf,
    const char *section);
char *NCONF_get_string(const CONF *conf, const char *group, const char *name);
int NCONF_get_number_e(const CONF *conf, const char *group, const char *name,
    long *result);
int NCONF_dump_fp(const CONF *conf, FILE *out);
int NCONF_dump_bio(const CONF *conf, BIO *out);
int CONF_modules_load(const CONF *cnf, const char *appname,
    unsigned long flags);
int CONF_modules_load_file_ex(OSSL_LIB_CTX *libctx, const char *filename,
    const char *appname, unsigned long flags);
int CONF_modules_load_file(const char *filename, const char *appname,
    unsigned long flags);
void CONF_modules_unload(int all);
void CONF_modules_finish(void);
int CONF_module_add(const char *name, conf_init_func *ifunc,
    conf_finish_func *ffunc);
const char *CONF_imodule_get_name(const CONF_IMODULE *md);
const char *CONF_imodule_get_value(const CONF_IMODULE *md);
void *CONF_imodule_get_usr_data(const CONF_IMODULE *md);
void CONF_imodule_set_usr_data(CONF_IMODULE *md, void *usr_data);
CONF_MODULE *CONF_imodule_get_module(const CONF_IMODULE *md);
unsigned long CONF_imodule_get_flags(const CONF_IMODULE *md);
void CONF_imodule_set_flags(CONF_IMODULE *md, unsigned long flags);
void *CONF_module_get_usr_data(CONF_MODULE *pmod);
void CONF_module_set_usr_data(CONF_MODULE *pmod, void *usr_data);
char *CONF_get1_default_config_file(void);
int CONF_parse_list(const char *list, int sep, int nospc,
    int (*list_cb)(const char *elem, int len, void *usr),
    void *arg);
void OPENSSL_load_builtin_modules(void);
int OSSL_parse_url(const char *url, char **pscheme, char **puser, char **phost,
    char **pport, int *pport_num,
    char **ppath, char **pquery, char **pfrag);
OSSL_HTTP_REQ_CTX *OSSL_HTTP_REQ_CTX_new(BIO *wbio, BIO *rbio, int buf_size);
void OSSL_HTTP_REQ_CTX_free(OSSL_HTTP_REQ_CTX *rctx);
int OSSL_HTTP_REQ_CTX_set_request_line(OSSL_HTTP_REQ_CTX *rctx, int method_POST,
    const char *server, const char *port,
    const char *path);
int OSSL_HTTP_REQ_CTX_add1_header(OSSL_HTTP_REQ_CTX *rctx,
    const char *name, const char *value);
int OSSL_HTTP_REQ_CTX_set_expected(OSSL_HTTP_REQ_CTX *rctx,
    const char *content_type, int asn1,
    int timeout, int keep_alive);
int OSSL_HTTP_REQ_CTX_set1_req(OSSL_HTTP_REQ_CTX *rctx, const char *content_type,
    const ASN1_ITEM *it, const ASN1_VALUE *req);
int OSSL_HTTP_REQ_CTX_nbio(OSSL_HTTP_REQ_CTX *rctx);
int OSSL_HTTP_REQ_CTX_nbio_d2i(OSSL_HTTP_REQ_CTX *rctx,
    ASN1_VALUE **pval, const ASN1_ITEM *it);
BIO *OSSL_HTTP_REQ_CTX_exchange(OSSL_HTTP_REQ_CTX *rctx);
BIO *OSSL_HTTP_REQ_CTX_get0_mem_bio(const OSSL_HTTP_REQ_CTX *rctx);
size_t OSSL_HTTP_REQ_CTX_get_resp_len(const OSSL_HTTP_REQ_CTX *rctx);
void OSSL_HTTP_REQ_CTX_set_max_response_length(OSSL_HTTP_REQ_CTX *rctx,
    unsigned long len);
void OSSL_HTTP_REQ_CTX_set_max_response_hdr_lines(OSSL_HTTP_REQ_CTX *rctx,
    size_t count);
int OSSL_HTTP_is_alive(const OSSL_HTTP_REQ_CTX *rctx);
typedef BIO *(*OSSL_HTTP_bio_cb_t)(BIO *bio, void *arg, int connect, int detail);
OSSL_HTTP_REQ_CTX *OSSL_HTTP_open(const char *server, const char *port,
    const char *proxy, const char *no_proxy,
    int use_ssl, BIO *bio, BIO *rbio,
    OSSL_HTTP_bio_cb_t bio_update_fn, void *arg,
    int buf_size, int overall_timeout);
int OSSL_HTTP_proxy_connect(BIO *bio, const char *server, const char *port,
    const char *proxyuser, const char *proxypass,
    int timeout, BIO *bio_err, const char *prog);
int OSSL_HTTP_set1_request(OSSL_HTTP_REQ_CTX *rctx, const char *path,
    const struct stack_st_CONF_VALUE *headers,
    const char *content_type, BIO *req,
    const char *expected_content_type, int expect_asn1,
    size_t max_resp_len, int timeout, int keep_alive);
BIO *OSSL_HTTP_exchange(OSSL_HTTP_REQ_CTX *rctx, char **redirection_url);
BIO *OSSL_HTTP_get(const char *url, const char *proxy, const char *no_proxy,
    BIO *bio, BIO *rbio,
    OSSL_HTTP_bio_cb_t bio_update_fn, void *arg,
    int buf_size, const struct stack_st_CONF_VALUE *headers,
    const char *expected_content_type, int expect_asn1,
    size_t max_resp_len, int timeout);
BIO *OSSL_HTTP_transfer(OSSL_HTTP_REQ_CTX **prctx,
    const char *server, const char *port,
    const char *path, int use_ssl,
    const char *proxy, const char *no_proxy,
    BIO *bio, BIO *rbio,
    OSSL_HTTP_bio_cb_t bio_update_fn, void *arg,
    int buf_size, const struct stack_st_CONF_VALUE *headers,
    const char *content_type, BIO *req,
    const char *expected_content_type, int expect_asn1,
    size_t max_resp_len, int timeout, int keep_alive);
int OSSL_HTTP_close(OSSL_HTTP_REQ_CTX *rctx, int ok);
int OSSL_HTTP_parse_url(const char *url, int *pssl, char **puser, char **phost,
    char **pport, int *pport_num,
    char **ppath, char **pquery, char **pfrag);
const char *OSSL_HTTP_adapt_proxy(const char *proxy, const char *no_proxy,
    const char *server, int use_ssl);
X509 *d2i_X509_fp(FILE *fp, X509 **x509);
int i2d_X509_fp(FILE *fp, const X509 *x509);
X509_CRL *d2i_X509_CRL_fp(FILE *fp, X509_CRL **crl);
int i2d_X509_CRL_fp(FILE *fp, const X509_CRL *crl);
X509_REQ *d2i_X509_REQ_fp(FILE *fp, X509_REQ **req);
int i2d_X509_REQ_fp(FILE *fp, const X509_REQ *req);
__attribute__((deprecated("Since OpenSSL " "3.0"))) RSA *d2i_RSAPrivateKey_fp(FILE *fp, RSA **rsa);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int i2d_RSAPrivateKey_fp(FILE *fp, const RSA *rsa);
__attribute__((deprecated("Since OpenSSL " "3.0"))) RSA *d2i_RSAPublicKey_fp(FILE *fp, RSA **rsa);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int i2d_RSAPublicKey_fp(FILE *fp, const RSA *rsa);
__attribute__((deprecated("Since OpenSSL " "3.0"))) RSA *d2i_RSA_PUBKEY_fp(FILE *fp, RSA **rsa);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int i2d_RSA_PUBKEY_fp(FILE *fp, const RSA *rsa);
__attribute__((deprecated("Since OpenSSL " "3.0"))) DSA *d2i_DSA_PUBKEY_fp(FILE *fp, DSA **dsa);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int i2d_DSA_PUBKEY_fp(FILE *fp, const DSA *dsa);
__attribute__((deprecated("Since OpenSSL " "3.0"))) DSA *d2i_DSAPrivateKey_fp(FILE *fp, DSA **dsa);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int i2d_DSAPrivateKey_fp(FILE *fp, const DSA *dsa);
__attribute__((deprecated("Since OpenSSL " "3.0"))) EC_KEY *d2i_EC_PUBKEY_fp(FILE *fp, EC_KEY **eckey);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int i2d_EC_PUBKEY_fp(FILE *fp, const EC_KEY *eckey);
__attribute__((deprecated("Since OpenSSL " "3.0"))) EC_KEY *d2i_ECPrivateKey_fp(FILE *fp, EC_KEY **eckey);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int i2d_ECPrivateKey_fp(FILE *fp, const EC_KEY *eckey);
X509_SIG *d2i_PKCS8_fp(FILE *fp, X509_SIG **p8);
int i2d_PKCS8_fp(FILE *fp, const X509_SIG *p8);
X509_PUBKEY *d2i_X509_PUBKEY_fp(FILE *fp, X509_PUBKEY **xpk);
int i2d_X509_PUBKEY_fp(FILE *fp, const X509_PUBKEY *xpk);
PKCS8_PRIV_KEY_INFO *d2i_PKCS8_PRIV_KEY_INFO_fp(FILE *fp,
    PKCS8_PRIV_KEY_INFO **p8inf);
int i2d_PKCS8_PRIV_KEY_INFO_fp(FILE *fp, const PKCS8_PRIV_KEY_INFO *p8inf);
int i2d_PKCS8PrivateKeyInfo_fp(FILE *fp, const EVP_PKEY *key);
int i2d_PrivateKey_fp(FILE *fp, const EVP_PKEY *pkey);
EVP_PKEY *d2i_PrivateKey_ex_fp(FILE *fp, EVP_PKEY **a, OSSL_LIB_CTX *libctx,
    const char *propq);
EVP_PKEY *d2i_PrivateKey_fp(FILE *fp, EVP_PKEY **a);
int i2d_PUBKEY_fp(FILE *fp, const EVP_PKEY *pkey);
EVP_PKEY *d2i_PUBKEY_ex_fp(FILE *fp, EVP_PKEY **a, OSSL_LIB_CTX *libctx,
    const char *propq);
EVP_PKEY *d2i_PUBKEY_fp(FILE *fp, EVP_PKEY **a);
X509 *d2i_X509_bio(BIO *bp, X509 **x509);
int i2d_X509_bio(BIO *bp, const X509 *x509);
X509_CRL *d2i_X509_CRL_bio(BIO *bp, X509_CRL **crl);
int i2d_X509_CRL_bio(BIO *bp, const X509_CRL *crl);
X509_REQ *d2i_X509_REQ_bio(BIO *bp, X509_REQ **req);
int i2d_X509_REQ_bio(BIO *bp, const X509_REQ *req);
__attribute__((deprecated("Since OpenSSL " "3.0"))) RSA *d2i_RSAPrivateKey_bio(BIO *bp, RSA **rsa);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int i2d_RSAPrivateKey_bio(BIO *bp, const RSA *rsa);
__attribute__((deprecated("Since OpenSSL " "3.0"))) RSA *d2i_RSAPublicKey_bio(BIO *bp, RSA **rsa);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int i2d_RSAPublicKey_bio(BIO *bp, const RSA *rsa);
__attribute__((deprecated("Since OpenSSL " "3.0"))) RSA *d2i_RSA_PUBKEY_bio(BIO *bp, RSA **rsa);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int i2d_RSA_PUBKEY_bio(BIO *bp, const RSA *rsa);
__attribute__((deprecated("Since OpenSSL " "3.0"))) DSA *d2i_DSA_PUBKEY_bio(BIO *bp, DSA **dsa);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int i2d_DSA_PUBKEY_bio(BIO *bp, const DSA *dsa);
__attribute__((deprecated("Since OpenSSL " "3.0"))) DSA *d2i_DSAPrivateKey_bio(BIO *bp, DSA **dsa);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int i2d_DSAPrivateKey_bio(BIO *bp, const DSA *dsa);
__attribute__((deprecated("Since OpenSSL " "3.0"))) EC_KEY *d2i_EC_PUBKEY_bio(BIO *bp, EC_KEY **eckey);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int i2d_EC_PUBKEY_bio(BIO *bp, const EC_KEY *eckey);
__attribute__((deprecated("Since OpenSSL " "3.0"))) EC_KEY *d2i_ECPrivateKey_bio(BIO *bp, EC_KEY **eckey);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int i2d_ECPrivateKey_bio(BIO *bp, const EC_KEY *eckey);
X509_SIG *d2i_PKCS8_bio(BIO *bp, X509_SIG **p8);
int i2d_PKCS8_bio(BIO *bp, const X509_SIG *p8);
X509_PUBKEY *d2i_X509_PUBKEY_bio(BIO *bp, X509_PUBKEY **xpk);
int i2d_X509_PUBKEY_bio(BIO *bp, const X509_PUBKEY *xpk);
PKCS8_PRIV_KEY_INFO *d2i_PKCS8_PRIV_KEY_INFO_bio(BIO *bp,
    PKCS8_PRIV_KEY_INFO **p8inf);
int i2d_PKCS8_PRIV_KEY_INFO_bio(BIO *bp, const PKCS8_PRIV_KEY_INFO *p8inf);
int i2d_PKCS8PrivateKeyInfo_bio(BIO *bp, const EVP_PKEY *key);
int i2d_PrivateKey_bio(BIO *bp, const EVP_PKEY *pkey);
EVP_PKEY *d2i_PrivateKey_ex_bio(BIO *bp, EVP_PKEY **a, OSSL_LIB_CTX *libctx,
    const char *propq);
EVP_PKEY *d2i_PrivateKey_bio(BIO *bp, EVP_PKEY **a);
int i2d_PUBKEY_bio(BIO *bp, const EVP_PKEY *pkey);
EVP_PKEY *d2i_PUBKEY_ex_bio(BIO *bp, EVP_PKEY **a, OSSL_LIB_CTX *libctx,
    const char *propq);
EVP_PKEY *d2i_PUBKEY_bio(BIO *bp, EVP_PKEY **a);
extern X509 *X509_dup(const X509 *a);
extern X509_ALGOR *X509_ALGOR_dup(const X509_ALGOR *a);
extern X509_ATTRIBUTE *X509_ATTRIBUTE_dup(const X509_ATTRIBUTE *a);
extern X509_CRL *X509_CRL_dup(const X509_CRL *a);
extern X509_EXTENSION *X509_EXTENSION_dup(const X509_EXTENSION *a);
extern X509_PUBKEY *X509_PUBKEY_dup(const X509_PUBKEY *a);
extern X509_REQ *X509_REQ_dup(const X509_REQ *a);
extern X509_REVOKED *X509_REVOKED_dup(const X509_REVOKED *a);
int X509_ALGOR_set0(X509_ALGOR *alg, ASN1_OBJECT *aobj, int ptype,
    void *pval);
void X509_ALGOR_get0(const ASN1_OBJECT **paobj, int *pptype,
    const void **ppval, const X509_ALGOR *algor);
void X509_ALGOR_set_md(X509_ALGOR *alg, const EVP_MD *md);
int X509_ALGOR_cmp(const X509_ALGOR *a, const X509_ALGOR *b);
int X509_ALGOR_copy(X509_ALGOR *dest, const X509_ALGOR *src);
extern X509_NAME *X509_NAME_dup(const X509_NAME *a);
extern X509_NAME_ENTRY *X509_NAME_ENTRY_dup(const X509_NAME_ENTRY *a);
int X509_cmp_time(const ASN1_TIME *s, time_t *t);
int X509_cmp_current_time(const ASN1_TIME *s);
int X509_cmp_timeframe(const X509_VERIFY_PARAM *vpm,
    const ASN1_TIME *start, const ASN1_TIME *end);
ASN1_TIME *X509_time_adj(ASN1_TIME *s, long adj, time_t *t);
ASN1_TIME *X509_time_adj_ex(ASN1_TIME *s,
    int offset_day, long offset_sec, time_t *t);
ASN1_TIME *X509_gmtime_adj(ASN1_TIME *s, long adj);
const char *X509_get_default_cert_area(void);
const char *X509_get_default_cert_dir(void);
const char *X509_get_default_cert_file(void);
const char *X509_get_default_cert_dir_env(void);
const char *X509_get_default_cert_file_env(void);
const char *X509_get_default_private_dir(void);
X509_REQ *X509_to_X509_REQ(X509 *x, EVP_PKEY *pkey, const EVP_MD *md);
X509 *X509_REQ_to_X509(X509_REQ *r, int days, EVP_PKEY *pkey);
extern X509_ALGOR *X509_ALGOR_new(void); extern void X509_ALGOR_free(X509_ALGOR *a); extern X509_ALGOR *d2i_X509_ALGOR(X509_ALGOR **a, const unsigned char **in, long len); extern int i2d_X509_ALGOR(const X509_ALGOR *a, unsigned char **out); extern const ASN1_ITEM *X509_ALGOR_it(void);
extern X509_ALGORS *d2i_X509_ALGORS(X509_ALGORS **a, const unsigned char **in, long len); extern int i2d_X509_ALGORS(const X509_ALGORS *a, unsigned char **out); extern const ASN1_ITEM *X509_ALGORS_it(void);
extern X509_VAL *X509_VAL_new(void); extern void X509_VAL_free(X509_VAL *a); extern X509_VAL *d2i_X509_VAL(X509_VAL **a, const unsigned char **in, long len); extern int i2d_X509_VAL(const X509_VAL *a, unsigned char **out); extern const ASN1_ITEM *X509_VAL_it(void);
extern X509_PUBKEY *X509_PUBKEY_new(void); extern void X509_PUBKEY_free(X509_PUBKEY *a); extern X509_PUBKEY *d2i_X509_PUBKEY(X509_PUBKEY **a, const unsigned char **in, long len); extern int i2d_X509_PUBKEY(const X509_PUBKEY *a, unsigned char **out); extern const ASN1_ITEM *X509_PUBKEY_it(void);
X509_PUBKEY *X509_PUBKEY_new_ex(OSSL_LIB_CTX *libctx, const char *propq);
int X509_PUBKEY_set(X509_PUBKEY **x, EVP_PKEY *pkey);
EVP_PKEY *X509_PUBKEY_get0(const X509_PUBKEY *key);
EVP_PKEY *X509_PUBKEY_get(const X509_PUBKEY *key);
int X509_get_pubkey_parameters(EVP_PKEY *pkey, struct stack_st_X509 *chain);
long X509_get_pathlen(X509 *x);
extern EVP_PKEY *d2i_PUBKEY(EVP_PKEY **a, const unsigned char **in, long len); extern int i2d_PUBKEY(const EVP_PKEY *a, unsigned char **out);
EVP_PKEY *d2i_PUBKEY_ex(EVP_PKEY **a, const unsigned char **pp, long length,
    OSSL_LIB_CTX *libctx, const char *propq);
__attribute__((deprecated("Since OpenSSL " "3.0"))) RSA *d2i_RSA_PUBKEY(RSA **a, const unsigned char **in, long len); __attribute__((deprecated("Since OpenSSL " "3.0"))) int i2d_RSA_PUBKEY(const RSA *a, unsigned char **out);
__attribute__((deprecated("Since OpenSSL " "3.0"))) DSA *d2i_DSA_PUBKEY(DSA **a, const unsigned char **in, long len); __attribute__((deprecated("Since OpenSSL " "3.0"))) int i2d_DSA_PUBKEY(const DSA *a, unsigned char **out);
__attribute__((deprecated("Since OpenSSL " "3.0"))) EC_KEY *d2i_EC_PUBKEY(EC_KEY **a, const unsigned char **in, long len); __attribute__((deprecated("Since OpenSSL " "3.0"))) int i2d_EC_PUBKEY(const EC_KEY *a, unsigned char **out);
extern X509_SIG *X509_SIG_new(void); extern void X509_SIG_free(X509_SIG *a); extern X509_SIG *d2i_X509_SIG(X509_SIG **a, const unsigned char **in, long len); extern int i2d_X509_SIG(const X509_SIG *a, unsigned char **out); extern const ASN1_ITEM *X509_SIG_it(void);
void X509_SIG_get0(const X509_SIG *sig, const X509_ALGOR **palg,
    const ASN1_OCTET_STRING **pdigest);
void X509_SIG_getm(X509_SIG *sig, X509_ALGOR **palg,
    ASN1_OCTET_STRING **pdigest);
extern X509_REQ_INFO *X509_REQ_INFO_new(void); extern void X509_REQ_INFO_free(X509_REQ_INFO *a); extern X509_REQ_INFO *d2i_X509_REQ_INFO(X509_REQ_INFO **a, const unsigned char **in, long len); extern int i2d_X509_REQ_INFO(const X509_REQ_INFO *a, unsigned char **out); extern const ASN1_ITEM *X509_REQ_INFO_it(void);
extern X509_REQ *X509_REQ_new(void); extern void X509_REQ_free(X509_REQ *a); extern X509_REQ *d2i_X509_REQ(X509_REQ **a, const unsigned char **in, long len); extern int i2d_X509_REQ(const X509_REQ *a, unsigned char **out); extern const ASN1_ITEM *X509_REQ_it(void);
X509_REQ *X509_REQ_new_ex(OSSL_LIB_CTX *libctx, const char *propq);
extern X509_ATTRIBUTE *X509_ATTRIBUTE_new(void); extern void X509_ATTRIBUTE_free(X509_ATTRIBUTE *a); extern X509_ATTRIBUTE *d2i_X509_ATTRIBUTE(X509_ATTRIBUTE **a, const unsigned char **in, long len); extern int i2d_X509_ATTRIBUTE(const X509_ATTRIBUTE *a, unsigned char **out); extern const ASN1_ITEM *X509_ATTRIBUTE_it(void);
X509_ATTRIBUTE *X509_ATTRIBUTE_create(int nid, int atrtype, void *value);
extern X509_EXTENSION *X509_EXTENSION_new(void); extern void X509_EXTENSION_free(X509_EXTENSION *a); extern X509_EXTENSION *d2i_X509_EXTENSION(X509_EXTENSION **a, const unsigned char **in, long len); extern int i2d_X509_EXTENSION(const X509_EXTENSION *a, unsigned char **out); extern const ASN1_ITEM *X509_EXTENSION_it(void);
extern X509_EXTENSIONS *d2i_X509_EXTENSIONS(X509_EXTENSIONS **a, const unsigned char **in, long len); extern int i2d_X509_EXTENSIONS(const X509_EXTENSIONS *a, unsigned char **out); extern const ASN1_ITEM *X509_EXTENSIONS_it(void);
extern X509_NAME_ENTRY *X509_NAME_ENTRY_new(void); extern void X509_NAME_ENTRY_free(X509_NAME_ENTRY *a); extern X509_NAME_ENTRY *d2i_X509_NAME_ENTRY(X509_NAME_ENTRY **a, const unsigned char **in, long len); extern int i2d_X509_NAME_ENTRY(const X509_NAME_ENTRY *a, unsigned char **out); extern const ASN1_ITEM *X509_NAME_ENTRY_it(void);
extern X509_NAME *X509_NAME_new(void); extern void X509_NAME_free(X509_NAME *a); extern X509_NAME *d2i_X509_NAME(X509_NAME **a, const unsigned char **in, long len); extern int i2d_X509_NAME(const X509_NAME *a, unsigned char **out); extern const ASN1_ITEM *X509_NAME_it(void);
int X509_NAME_set(X509_NAME **xn, const X509_NAME *name);
extern X509_CINF *X509_CINF_new(void); extern void X509_CINF_free(X509_CINF *a); extern X509_CINF *d2i_X509_CINF(X509_CINF **a, const unsigned char **in, long len); extern int i2d_X509_CINF(const X509_CINF *a, unsigned char **out); extern const ASN1_ITEM *X509_CINF_it(void);
extern X509 *X509_new(void); extern void X509_free(X509 *a); extern X509 *d2i_X509(X509 **a, const unsigned char **in, long len); extern int i2d_X509(const X509 *a, unsigned char **out); extern const ASN1_ITEM *X509_it(void);
X509 *X509_new_ex(OSSL_LIB_CTX *libctx, const char *propq);
extern X509_CERT_AUX *X509_CERT_AUX_new(void); extern void X509_CERT_AUX_free(X509_CERT_AUX *a); extern X509_CERT_AUX *d2i_X509_CERT_AUX(X509_CERT_AUX **a, const unsigned char **in, long len); extern int i2d_X509_CERT_AUX(const X509_CERT_AUX *a, unsigned char **out); extern const ASN1_ITEM *X509_CERT_AUX_it(void);
int X509_set_ex_data(X509 *r, int idx, void *arg);
void *X509_get_ex_data(const X509 *r, int idx);
extern X509 *d2i_X509_AUX(X509 **a, const unsigned char **in, long len); extern int i2d_X509_AUX(const X509 *a, unsigned char **out);
int i2d_re_X509_tbs(X509 *x, unsigned char **pp);
int X509_SIG_INFO_get(const X509_SIG_INFO *siginf, int *mdnid, int *pknid,
    int *secbits, uint32_t *flags);
void X509_SIG_INFO_set(X509_SIG_INFO *siginf, int mdnid, int pknid,
    int secbits, uint32_t flags);
int X509_get_signature_info(X509 *x, int *mdnid, int *pknid, int *secbits,
    uint32_t *flags);
void X509_get0_signature(const ASN1_BIT_STRING **psig,
    const X509_ALGOR **palg, const X509 *x);
int X509_get_signature_nid(const X509 *x);
void X509_set0_distinguishing_id(X509 *x, ASN1_OCTET_STRING *d_id);
ASN1_OCTET_STRING *X509_get0_distinguishing_id(X509 *x);
void X509_REQ_set0_distinguishing_id(X509_REQ *x, ASN1_OCTET_STRING *d_id);
ASN1_OCTET_STRING *X509_REQ_get0_distinguishing_id(X509_REQ *x);
int X509_alias_set1(X509 *x, const unsigned char *name, int len);
int X509_keyid_set1(X509 *x, const unsigned char *id, int len);
unsigned char *X509_alias_get0(X509 *x, int *len);
unsigned char *X509_keyid_get0(X509 *x, int *len);
extern X509_REVOKED *X509_REVOKED_new(void); extern void X509_REVOKED_free(X509_REVOKED *a); extern X509_REVOKED *d2i_X509_REVOKED(X509_REVOKED **a, const unsigned char **in, long len); extern int i2d_X509_REVOKED(const X509_REVOKED *a, unsigned char **out); extern const ASN1_ITEM *X509_REVOKED_it(void);
extern X509_CRL_INFO *X509_CRL_INFO_new(void); extern void X509_CRL_INFO_free(X509_CRL_INFO *a); extern X509_CRL_INFO *d2i_X509_CRL_INFO(X509_CRL_INFO **a, const unsigned char **in, long len); extern int i2d_X509_CRL_INFO(const X509_CRL_INFO *a, unsigned char **out); extern const ASN1_ITEM *X509_CRL_INFO_it(void);
extern X509_CRL *X509_CRL_new(void); extern void X509_CRL_free(X509_CRL *a); extern X509_CRL *d2i_X509_CRL(X509_CRL **a, const unsigned char **in, long len); extern int i2d_X509_CRL(const X509_CRL *a, unsigned char **out); extern const ASN1_ITEM *X509_CRL_it(void);
X509_CRL *X509_CRL_new_ex(OSSL_LIB_CTX *libctx, const char *propq);
int X509_CRL_add0_revoked(X509_CRL *crl, X509_REVOKED *rev);
int X509_CRL_get0_by_serial(X509_CRL *crl,
    X509_REVOKED **ret, const ASN1_INTEGER *serial);
int X509_CRL_get0_by_cert(X509_CRL *crl, X509_REVOKED **ret, X509 *x);
X509_PKEY *X509_PKEY_new(void);
void X509_PKEY_free(X509_PKEY *a);
extern NETSCAPE_SPKI *NETSCAPE_SPKI_new(void); extern void NETSCAPE_SPKI_free(NETSCAPE_SPKI *a); extern NETSCAPE_SPKI *d2i_NETSCAPE_SPKI(NETSCAPE_SPKI **a, const unsigned char **in, long len); extern int i2d_NETSCAPE_SPKI(const NETSCAPE_SPKI *a, unsigned char **out); extern const ASN1_ITEM *NETSCAPE_SPKI_it(void);
extern NETSCAPE_SPKAC *NETSCAPE_SPKAC_new(void); extern void NETSCAPE_SPKAC_free(NETSCAPE_SPKAC *a); extern NETSCAPE_SPKAC *d2i_NETSCAPE_SPKAC(NETSCAPE_SPKAC **a, const unsigned char **in, long len); extern int i2d_NETSCAPE_SPKAC(const NETSCAPE_SPKAC *a, unsigned char **out); extern const ASN1_ITEM *NETSCAPE_SPKAC_it(void);
extern NETSCAPE_CERT_SEQUENCE *NETSCAPE_CERT_SEQUENCE_new(void); extern void NETSCAPE_CERT_SEQUENCE_free(NETSCAPE_CERT_SEQUENCE *a); extern NETSCAPE_CERT_SEQUENCE *d2i_NETSCAPE_CERT_SEQUENCE(NETSCAPE_CERT_SEQUENCE **a, const unsigned char **in, long len); extern int i2d_NETSCAPE_CERT_SEQUENCE(const NETSCAPE_CERT_SEQUENCE *a, unsigned char **out); extern const ASN1_ITEM *NETSCAPE_CERT_SEQUENCE_it(void);
X509_INFO *X509_INFO_new(void);
void X509_INFO_free(X509_INFO *a);
char *X509_NAME_oneline(const X509_NAME *a, char *buf, int size);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int ASN1_verify(i2d_of_void *i2d, X509_ALGOR *algor1,
    ASN1_BIT_STRING *signature, char *data, EVP_PKEY *pkey);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int ASN1_digest(i2d_of_void *i2d, const EVP_MD *type, char *data,
    unsigned char *md, unsigned int *len);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int ASN1_sign(i2d_of_void *i2d, X509_ALGOR *algor1, X509_ALGOR *algor2,
    ASN1_BIT_STRING *signature, char *data, EVP_PKEY *pkey,
    const EVP_MD *type);
int ASN1_item_digest(const ASN1_ITEM *it, const EVP_MD *type, void *data,
    unsigned char *md, unsigned int *len);
int ASN1_item_verify(const ASN1_ITEM *it, const X509_ALGOR *alg,
    const ASN1_BIT_STRING *signature, const void *data,
    EVP_PKEY *pkey);
int ASN1_item_verify_ctx(const ASN1_ITEM *it, const X509_ALGOR *alg,
    const ASN1_BIT_STRING *signature, const void *data,
    EVP_MD_CTX *ctx);
int ASN1_item_sign(const ASN1_ITEM *it, X509_ALGOR *algor1, X509_ALGOR *algor2,
    ASN1_BIT_STRING *signature, const void *data,
    EVP_PKEY *pkey, const EVP_MD *md);
int ASN1_item_sign_ctx(const ASN1_ITEM *it, X509_ALGOR *algor1,
    X509_ALGOR *algor2, ASN1_BIT_STRING *signature,
    const void *data, EVP_MD_CTX *ctx);
long X509_get_version(const X509 *x);
int X509_set_version(X509 *x, long version);
int X509_set_serialNumber(X509 *x, ASN1_INTEGER *serial);
ASN1_INTEGER *X509_get_serialNumber(X509 *x);
const ASN1_INTEGER *X509_get0_serialNumber(const X509 *x);
int X509_set_issuer_name(X509 *x, const X509_NAME *name);
X509_NAME *X509_get_issuer_name(const X509 *a);
int X509_set_subject_name(X509 *x, const X509_NAME *name);
X509_NAME *X509_get_subject_name(const X509 *a);
const ASN1_TIME *X509_get0_notBefore(const X509 *x);
ASN1_TIME *X509_getm_notBefore(const X509 *x);
int X509_set1_notBefore(X509 *x, const ASN1_TIME *tm);
const ASN1_TIME *X509_get0_notAfter(const X509 *x);
ASN1_TIME *X509_getm_notAfter(const X509 *x);
int X509_set1_notAfter(X509 *x, const ASN1_TIME *tm);
int X509_set_pubkey(X509 *x, EVP_PKEY *pkey);
int X509_up_ref(X509 *x);
int X509_get_signature_type(const X509 *x);
X509_PUBKEY *X509_get_X509_PUBKEY(const X509 *x);
const struct stack_st_X509_EXTENSION *X509_get0_extensions(const X509 *x);
void X509_get0_uids(const X509 *x, const ASN1_BIT_STRING **piuid,
    const ASN1_BIT_STRING **psuid);
const X509_ALGOR *X509_get0_tbs_sigalg(const X509 *x);
EVP_PKEY *X509_get0_pubkey(const X509 *x);
EVP_PKEY *X509_get_pubkey(X509 *x);
ASN1_BIT_STRING *X509_get0_pubkey_bitstr(const X509 *x);
long X509_REQ_get_version(const X509_REQ *req);
int X509_REQ_set_version(X509_REQ *x, long version);
X509_NAME *X509_REQ_get_subject_name(const X509_REQ *req);
int X509_REQ_set_subject_name(X509_REQ *req, const X509_NAME *name);
void X509_REQ_get0_signature(const X509_REQ *req, const ASN1_BIT_STRING **psig,
    const X509_ALGOR **palg);
void X509_REQ_set0_signature(X509_REQ *req, ASN1_BIT_STRING *psig);
int X509_REQ_set1_signature_algo(X509_REQ *req, X509_ALGOR *palg);
int X509_REQ_get_signature_nid(const X509_REQ *req);
int i2d_re_X509_REQ_tbs(X509_REQ *req, unsigned char **pp);
int X509_REQ_set_pubkey(X509_REQ *x, EVP_PKEY *pkey);
EVP_PKEY *X509_REQ_get_pubkey(X509_REQ *req);
EVP_PKEY *X509_REQ_get0_pubkey(const X509_REQ *req);
X509_PUBKEY *X509_REQ_get_X509_PUBKEY(X509_REQ *req);
int X509_REQ_extension_nid(int nid);
int *X509_REQ_get_extension_nids(void);
void X509_REQ_set_extension_nids(int *nids);
struct stack_st_X509_EXTENSION *X509_REQ_get_extensions( X509_REQ *req);
int X509_REQ_add_extensions_nid(X509_REQ *req,
    const struct stack_st_X509_EXTENSION *exts, int nid);
int X509_REQ_add_extensions(X509_REQ *req, const struct stack_st_X509_EXTENSION *ext);
int X509_REQ_get_attr_count(const X509_REQ *req);
int X509_REQ_get_attr_by_NID(const X509_REQ *req, int nid, int lastpos);
int X509_REQ_get_attr_by_OBJ(const X509_REQ *req, const ASN1_OBJECT *obj,
    int lastpos);
X509_ATTRIBUTE *X509_REQ_get_attr(const X509_REQ *req, int loc);
X509_ATTRIBUTE *X509_REQ_delete_attr(X509_REQ *req, int loc);
int X509_REQ_add1_attr(X509_REQ *req, X509_ATTRIBUTE *attr);
int X509_REQ_add1_attr_by_OBJ(X509_REQ *req,
    const ASN1_OBJECT *obj, int type,
    const unsigned char *bytes, int len);
int X509_REQ_add1_attr_by_NID(X509_REQ *req,
    int nid, int type,
    const unsigned char *bytes, int len);
int X509_REQ_add1_attr_by_txt(X509_REQ *req,
    const char *attrname, int type,
    const unsigned char *bytes, int len);
int X509_CRL_set_version(X509_CRL *x, long version);
int X509_CRL_set_issuer_name(X509_CRL *x, const X509_NAME *name);
int X509_CRL_set1_lastUpdate(X509_CRL *x, const ASN1_TIME *tm);
int X509_CRL_set1_nextUpdate(X509_CRL *x, const ASN1_TIME *tm);
int X509_CRL_sort(X509_CRL *crl);
int X509_CRL_up_ref(X509_CRL *crl);
long X509_CRL_get_version(const X509_CRL *crl);
const ASN1_TIME *X509_CRL_get0_lastUpdate(const X509_CRL *crl);
const ASN1_TIME *X509_CRL_get0_nextUpdate(const X509_CRL *crl);
__attribute__((deprecated("Since OpenSSL " "1.1.0"))) ASN1_TIME *X509_CRL_get_lastUpdate(X509_CRL *crl);
__attribute__((deprecated("Since OpenSSL " "1.1.0"))) ASN1_TIME *X509_CRL_get_nextUpdate(X509_CRL *crl);
X509_NAME *X509_CRL_get_issuer(const X509_CRL *crl);
const struct stack_st_X509_EXTENSION *X509_CRL_get0_extensions(const X509_CRL *crl);
struct stack_st_X509_REVOKED *X509_CRL_get_REVOKED(X509_CRL *crl);
void X509_CRL_get0_signature(const X509_CRL *crl, const ASN1_BIT_STRING **psig,
    const X509_ALGOR **palg);
int X509_CRL_get_signature_nid(const X509_CRL *crl);
int i2d_re_X509_CRL_tbs(X509_CRL *req, unsigned char **pp);
const ASN1_INTEGER *X509_REVOKED_get0_serialNumber(const X509_REVOKED *x);
int X509_REVOKED_set_serialNumber(X509_REVOKED *x, ASN1_INTEGER *serial);
const ASN1_TIME *X509_REVOKED_get0_revocationDate(const X509_REVOKED *x);
int X509_REVOKED_set_revocationDate(X509_REVOKED *r, ASN1_TIME *tm);
const struct stack_st_X509_EXTENSION *
X509_REVOKED_get0_extensions(const X509_REVOKED *r);
X509_CRL *X509_CRL_diff(X509_CRL *base, X509_CRL *newer,
    EVP_PKEY *skey, const EVP_MD *md, unsigned int flags);
int X509_REQ_check_private_key(const X509_REQ *req, EVP_PKEY *pkey);
int X509_check_private_key(const X509 *cert, const EVP_PKEY *pkey);
int X509_chain_check_suiteb(int *perror_depth,
    X509 *x, struct stack_st_X509 *chain,
    unsigned long flags);
int X509_CRL_check_suiteb(X509_CRL *crl, EVP_PKEY *pk, unsigned long flags);
void OSSL_STACK_OF_X509_free(struct stack_st_X509 *certs);
struct stack_st_X509 *X509_chain_up_ref(struct stack_st_X509 *chain);
int X509_issuer_and_serial_cmp(const X509 *a, const X509 *b);
unsigned long X509_issuer_and_serial_hash(X509 *a);
int X509_issuer_name_cmp(const X509 *a, const X509 *b);
unsigned long X509_issuer_name_hash(X509 *a);
int X509_subject_name_cmp(const X509 *a, const X509 *b);
unsigned long X509_subject_name_hash(X509 *x);
unsigned long X509_issuer_name_hash_old(X509 *a);
unsigned long X509_subject_name_hash_old(X509 *x);
int X509_add_cert(struct stack_st_X509 *sk, X509 *cert, int flags);
int X509_add_certs(struct stack_st_X509 *sk, struct stack_st_X509 *certs, int flags);
int X509_cmp(const X509 *a, const X509 *b);
int X509_NAME_cmp(const X509_NAME *a, const X509_NAME *b);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int X509_certificate_type(const X509 *x,
    const EVP_PKEY *pubkey);
unsigned long X509_NAME_hash_ex(const X509_NAME *x, OSSL_LIB_CTX *libctx,
    const char *propq, int *ok);
unsigned long X509_NAME_hash_old(const X509_NAME *x);
int X509_CRL_cmp(const X509_CRL *a, const X509_CRL *b);
int X509_CRL_match(const X509_CRL *a, const X509_CRL *b);
int X509_aux_print(BIO *out, X509 *x, int indent);
int X509_print_ex_fp(FILE *bp, X509 *x, unsigned long nmflag,
    unsigned long cflag);
int X509_print_fp(FILE *bp, X509 *x);
int X509_CRL_print_fp(FILE *bp, X509_CRL *x);
int X509_REQ_print_fp(FILE *bp, X509_REQ *req);
int X509_NAME_print_ex_fp(FILE *fp, const X509_NAME *nm, int indent,
    unsigned long flags);
int X509_NAME_print(BIO *bp, const X509_NAME *name, int obase);
int X509_NAME_print_ex(BIO *out, const X509_NAME *nm, int indent,
    unsigned long flags);
int X509_print_ex(BIO *bp, X509 *x, unsigned long nmflag,
    unsigned long cflag);
int X509_print(BIO *bp, X509 *x);
int X509_ocspid_print(BIO *bp, X509 *x);
int X509_CRL_print_ex(BIO *out, X509_CRL *x, unsigned long nmflag);
int X509_CRL_print(BIO *bp, X509_CRL *x);
int X509_REQ_print_ex(BIO *bp, X509_REQ *x, unsigned long nmflag,
    unsigned long cflag);
int X509_REQ_print(BIO *bp, X509_REQ *req);
int X509_NAME_entry_count(const X509_NAME *name);
int X509_NAME_get_text_by_NID(const X509_NAME *name, int nid,
    char *buf, int len);
int X509_NAME_get_text_by_OBJ(const X509_NAME *name, const ASN1_OBJECT *obj,
    char *buf, int len);
int X509_NAME_get_index_by_NID(const X509_NAME *name, int nid, int lastpos);
int X509_NAME_get_index_by_OBJ(const X509_NAME *name, const ASN1_OBJECT *obj,
    int lastpos);
X509_NAME_ENTRY *X509_NAME_get_entry(const X509_NAME *name, int loc);
X509_NAME_ENTRY *X509_NAME_delete_entry(X509_NAME *name, int loc);
int X509_NAME_add_entry(X509_NAME *name, const X509_NAME_ENTRY *ne,
    int loc, int set);
int X509_NAME_add_entry_by_OBJ(X509_NAME *name, const ASN1_OBJECT *obj, int type,
    const unsigned char *bytes, int len, int loc,
    int set);
int X509_NAME_add_entry_by_NID(X509_NAME *name, int nid, int type,
    const unsigned char *bytes, int len, int loc,
    int set);
X509_NAME_ENTRY *X509_NAME_ENTRY_create_by_txt(X509_NAME_ENTRY **ne,
    const char *field, int type,
    const unsigned char *bytes,
    int len);
X509_NAME_ENTRY *X509_NAME_ENTRY_create_by_NID(X509_NAME_ENTRY **ne, int nid,
    int type,
    const unsigned char *bytes,
    int len);
int X509_NAME_add_entry_by_txt(X509_NAME *name, const char *field, int type,
    const unsigned char *bytes, int len, int loc,
    int set);
X509_NAME_ENTRY *X509_NAME_ENTRY_create_by_OBJ(X509_NAME_ENTRY **ne,
    const ASN1_OBJECT *obj, int type,
    const unsigned char *bytes,
    int len);
int X509_NAME_ENTRY_set_object(X509_NAME_ENTRY *ne, const ASN1_OBJECT *obj);
int X509_NAME_ENTRY_set_data(X509_NAME_ENTRY *ne, int type,
    const unsigned char *bytes, int len);
ASN1_OBJECT *X509_NAME_ENTRY_get_object(const X509_NAME_ENTRY *ne);
ASN1_STRING *X509_NAME_ENTRY_get_data(const X509_NAME_ENTRY *ne);
int X509_NAME_ENTRY_set(const X509_NAME_ENTRY *ne);
int X509_NAME_get0_der(const X509_NAME *nm, const unsigned char **pder,
    size_t *pderlen);
int X509v3_get_ext_count(const struct stack_st_X509_EXTENSION *x);
int X509v3_get_ext_by_NID(const struct stack_st_X509_EXTENSION *x,
    int nid, int lastpos);
int X509v3_get_ext_by_OBJ(const struct stack_st_X509_EXTENSION *x,
    const ASN1_OBJECT *obj, int lastpos);
int X509v3_get_ext_by_critical(const struct stack_st_X509_EXTENSION *x,
    int crit, int lastpos);
X509_EXTENSION *X509v3_get_ext(const struct stack_st_X509_EXTENSION *x, int loc);
X509_EXTENSION *X509v3_delete_ext(struct stack_st_X509_EXTENSION *x, int loc);
struct stack_st_X509_EXTENSION *X509v3_add_ext(struct stack_st_X509_EXTENSION **x,
    X509_EXTENSION *ex, int loc);
struct stack_st_X509_EXTENSION *X509v3_add_extensions(struct stack_st_X509_EXTENSION **target,
    const struct stack_st_X509_EXTENSION *exts);
int X509_get_ext_count(const X509 *x);
int X509_get_ext_by_NID(const X509 *x, int nid, int lastpos);
int X509_get_ext_by_OBJ(const X509 *x, const ASN1_OBJECT *obj, int lastpos);
int X509_get_ext_by_critical(const X509 *x, int crit, int lastpos);
X509_EXTENSION *X509_get_ext(const X509 *x, int loc);
X509_EXTENSION *X509_delete_ext(X509 *x, int loc);
int X509_add_ext(X509 *x, X509_EXTENSION *ex, int loc);
void *X509_get_ext_d2i(const X509 *x, int nid, int *crit, int *idx);
int X509_add1_ext_i2d(X509 *x, int nid, void *value, int crit,
    unsigned long flags);
int X509_CRL_get_ext_count(const X509_CRL *x);
int X509_CRL_get_ext_by_NID(const X509_CRL *x, int nid, int lastpos);
int X509_CRL_get_ext_by_OBJ(const X509_CRL *x, const ASN1_OBJECT *obj,
    int lastpos);
int X509_CRL_get_ext_by_critical(const X509_CRL *x, int crit, int lastpos);
X509_EXTENSION *X509_CRL_get_ext(const X509_CRL *x, int loc);
X509_EXTENSION *X509_CRL_delete_ext(X509_CRL *x, int loc);
int X509_CRL_add_ext(X509_CRL *x, X509_EXTENSION *ex, int loc);
void *X509_CRL_get_ext_d2i(const X509_CRL *x, int nid, int *crit, int *idx);
int X509_CRL_add1_ext_i2d(X509_CRL *x, int nid, void *value, int crit,
    unsigned long flags);
int X509_REVOKED_get_ext_count(const X509_REVOKED *x);
int X509_REVOKED_get_ext_by_NID(const X509_REVOKED *x, int nid, int lastpos);
int X509_REVOKED_get_ext_by_OBJ(const X509_REVOKED *x, const ASN1_OBJECT *obj,
    int lastpos);
int X509_REVOKED_get_ext_by_critical(const X509_REVOKED *x, int crit,
    int lastpos);
X509_EXTENSION *X509_REVOKED_get_ext(const X509_REVOKED *x, int loc);
X509_EXTENSION *X509_REVOKED_delete_ext(X509_REVOKED *x, int loc);
int X509_REVOKED_add_ext(X509_REVOKED *x, X509_EXTENSION *ex, int loc);
void *X509_REVOKED_get_ext_d2i(const X509_REVOKED *x, int nid, int *crit,
    int *idx);
int X509_REVOKED_add1_ext_i2d(X509_REVOKED *x, int nid, void *value, int crit,
    unsigned long flags);
X509_EXTENSION *X509_EXTENSION_create_by_NID(X509_EXTENSION **ex,
    int nid, int crit,
    ASN1_OCTET_STRING *data);
X509_EXTENSION *X509_EXTENSION_create_by_OBJ(X509_EXTENSION **ex,
    const ASN1_OBJECT *obj, int crit,
    ASN1_OCTET_STRING *data);
int X509_EXTENSION_set_object(X509_EXTENSION *ex, const ASN1_OBJECT *obj);
int X509_EXTENSION_set_critical(X509_EXTENSION *ex, int crit);
int X509_EXTENSION_set_data(X509_EXTENSION *ex, ASN1_OCTET_STRING *data);
ASN1_OBJECT *X509_EXTENSION_get_object(X509_EXTENSION *ex);
ASN1_OCTET_STRING *X509_EXTENSION_get_data(X509_EXTENSION *ne);
int X509_EXTENSION_get_critical(const X509_EXTENSION *ex);
int X509at_get_attr_count(const struct stack_st_X509_ATTRIBUTE *x);
int X509at_get_attr_by_NID(const struct stack_st_X509_ATTRIBUTE *x, int nid,
    int lastpos);
int X509at_get_attr_by_OBJ(const struct stack_st_X509_ATTRIBUTE *sk,
    const ASN1_OBJECT *obj, int lastpos);
X509_ATTRIBUTE *X509at_get_attr(const struct stack_st_X509_ATTRIBUTE *x, int loc);
X509_ATTRIBUTE *X509at_delete_attr(struct stack_st_X509_ATTRIBUTE *x, int loc);
struct stack_st_X509_ATTRIBUTE *X509at_add1_attr(struct stack_st_X509_ATTRIBUTE **x,
    X509_ATTRIBUTE *attr);
struct stack_st_X509_ATTRIBUTE *X509at_add1_attr_by_OBJ(struct stack_st_X509_ATTRIBUTE
                                                      **x,
    const ASN1_OBJECT *obj,
    int type,
    const unsigned char *bytes,
    int len);
struct stack_st_X509_ATTRIBUTE *X509at_add1_attr_by_NID(struct stack_st_X509_ATTRIBUTE
                                                      **x,
    int nid, int type,
    const unsigned char *bytes,
    int len);
struct stack_st_X509_ATTRIBUTE *X509at_add1_attr_by_txt(struct stack_st_X509_ATTRIBUTE
                                                      **x,
    const char *attrname,
    int type,
    const unsigned char *bytes,
    int len);
void *X509at_get0_data_by_OBJ(const struct stack_st_X509_ATTRIBUTE *x,
    const ASN1_OBJECT *obj, int lastpos, int type);
X509_ATTRIBUTE *X509_ATTRIBUTE_create_by_NID(X509_ATTRIBUTE **attr, int nid,
    int atrtype, const void *data,
    int len);
X509_ATTRIBUTE *X509_ATTRIBUTE_create_by_OBJ(X509_ATTRIBUTE **attr,
    const ASN1_OBJECT *obj,
    int atrtype, const void *data,
    int len);
X509_ATTRIBUTE *X509_ATTRIBUTE_create_by_txt(X509_ATTRIBUTE **attr,
    const char *atrname, int type,
    const unsigned char *bytes,
    int len);
int X509_ATTRIBUTE_set1_object(X509_ATTRIBUTE *attr, const ASN1_OBJECT *obj);
int X509_ATTRIBUTE_set1_data(X509_ATTRIBUTE *attr, int attrtype,
    const void *data, int len);
void *X509_ATTRIBUTE_get0_data(X509_ATTRIBUTE *attr, int idx, int atrtype,
    void *data);
int X509_ATTRIBUTE_count(const X509_ATTRIBUTE *attr);
ASN1_OBJECT *X509_ATTRIBUTE_get0_object(X509_ATTRIBUTE *attr);
ASN1_TYPE *X509_ATTRIBUTE_get0_type(X509_ATTRIBUTE *attr, int idx);
int EVP_PKEY_get_attr_count(const EVP_PKEY *key);
int EVP_PKEY_get_attr_by_NID(const EVP_PKEY *key, int nid, int lastpos);
int EVP_PKEY_get_attr_by_OBJ(const EVP_PKEY *key, const ASN1_OBJECT *obj,
    int lastpos);
X509_ATTRIBUTE *EVP_PKEY_get_attr(const EVP_PKEY *key, int loc);
X509_ATTRIBUTE *EVP_PKEY_delete_attr(EVP_PKEY *key, int loc);
int EVP_PKEY_add1_attr(EVP_PKEY *key, X509_ATTRIBUTE *attr);
int EVP_PKEY_add1_attr_by_OBJ(EVP_PKEY *key,
    const ASN1_OBJECT *obj, int type,
    const unsigned char *bytes, int len);
int EVP_PKEY_add1_attr_by_NID(EVP_PKEY *key,
    int nid, int type,
    const unsigned char *bytes, int len);
int EVP_PKEY_add1_attr_by_txt(EVP_PKEY *key,
    const char *attrname, int type,
    const unsigned char *bytes, int len);
X509 *X509_find_by_issuer_and_serial(struct stack_st_X509 *sk, const X509_NAME *name,
    const ASN1_INTEGER *serial);
X509 *X509_find_by_subject(struct stack_st_X509 *sk, const X509_NAME *name);
extern PBEPARAM *PBEPARAM_new(void); extern void PBEPARAM_free(PBEPARAM *a); extern PBEPARAM *d2i_PBEPARAM(PBEPARAM **a, const unsigned char **in, long len); extern int i2d_PBEPARAM(const PBEPARAM *a, unsigned char **out); extern const ASN1_ITEM *PBEPARAM_it(void);
extern PBE2PARAM *PBE2PARAM_new(void); extern void PBE2PARAM_free(PBE2PARAM *a); extern PBE2PARAM *d2i_PBE2PARAM(PBE2PARAM **a, const unsigned char **in, long len); extern int i2d_PBE2PARAM(const PBE2PARAM *a, unsigned char **out); extern const ASN1_ITEM *PBE2PARAM_it(void);
extern PBKDF2PARAM *PBKDF2PARAM_new(void); extern void PBKDF2PARAM_free(PBKDF2PARAM *a); extern PBKDF2PARAM *d2i_PBKDF2PARAM(PBKDF2PARAM **a, const unsigned char **in, long len); extern int i2d_PBKDF2PARAM(const PBKDF2PARAM *a, unsigned char **out); extern const ASN1_ITEM *PBKDF2PARAM_it(void);
extern PBMAC1PARAM *PBMAC1PARAM_new(void); extern void PBMAC1PARAM_free(PBMAC1PARAM *a); extern PBMAC1PARAM *d2i_PBMAC1PARAM(PBMAC1PARAM **a, const unsigned char **in, long len); extern int i2d_PBMAC1PARAM(const PBMAC1PARAM *a, unsigned char **out); extern const ASN1_ITEM *PBMAC1PARAM_it(void);
extern SCRYPT_PARAMS *SCRYPT_PARAMS_new(void); extern void SCRYPT_PARAMS_free(SCRYPT_PARAMS *a); extern SCRYPT_PARAMS *d2i_SCRYPT_PARAMS(SCRYPT_PARAMS **a, const unsigned char **in, long len); extern int i2d_SCRYPT_PARAMS(const SCRYPT_PARAMS *a, unsigned char **out); extern const ASN1_ITEM *SCRYPT_PARAMS_it(void);
int PKCS5_pbe_set0_algor(X509_ALGOR *algor, int alg, int iter,
    const unsigned char *salt, int saltlen);
int PKCS5_pbe_set0_algor_ex(X509_ALGOR *algor, int alg, int iter,
    const unsigned char *salt, int saltlen,
    OSSL_LIB_CTX *libctx);
X509_ALGOR *PKCS5_pbe_set(int alg, int iter,
    const unsigned char *salt, int saltlen);
X509_ALGOR *PKCS5_pbe_set_ex(int alg, int iter,
    const unsigned char *salt, int saltlen,
    OSSL_LIB_CTX *libctx);
X509_ALGOR *PKCS5_pbe2_set(const EVP_CIPHER *cipher, int iter,
    unsigned char *salt, int saltlen);
X509_ALGOR *PKCS5_pbe2_set_iv(const EVP_CIPHER *cipher, int iter,
    unsigned char *salt, int saltlen,
    unsigned char *aiv, int prf_nid);
X509_ALGOR *PKCS5_pbe2_set_iv_ex(const EVP_CIPHER *cipher, int iter,
    unsigned char *salt, int saltlen,
    unsigned char *aiv, int prf_nid,
    OSSL_LIB_CTX *libctx);
X509_ALGOR *PKCS5_pbe2_set_scrypt(const EVP_CIPHER *cipher,
    const unsigned char *salt, int saltlen,
    unsigned char *aiv, uint64_t N, uint64_t r,
    uint64_t p);
X509_ALGOR *PKCS5_pbkdf2_set(int iter, unsigned char *salt, int saltlen,
    int prf_nid, int keylen);
X509_ALGOR *PKCS5_pbkdf2_set_ex(int iter, unsigned char *salt, int saltlen,
    int prf_nid, int keylen,
    OSSL_LIB_CTX *libctx);
PBKDF2PARAM *PBMAC1_get1_pbkdf2_param(const X509_ALGOR *macalg);
extern PKCS8_PRIV_KEY_INFO *PKCS8_PRIV_KEY_INFO_new(void); extern void PKCS8_PRIV_KEY_INFO_free(PKCS8_PRIV_KEY_INFO *a); extern PKCS8_PRIV_KEY_INFO *d2i_PKCS8_PRIV_KEY_INFO(PKCS8_PRIV_KEY_INFO **a, const unsigned char **in, long len); extern int i2d_PKCS8_PRIV_KEY_INFO(const PKCS8_PRIV_KEY_INFO *a, unsigned char **out); extern const ASN1_ITEM *PKCS8_PRIV_KEY_INFO_it(void);
EVP_PKEY *EVP_PKCS82PKEY(const PKCS8_PRIV_KEY_INFO *p8);
EVP_PKEY *EVP_PKCS82PKEY_ex(const PKCS8_PRIV_KEY_INFO *p8, OSSL_LIB_CTX *libctx,
    const char *propq);
PKCS8_PRIV_KEY_INFO *EVP_PKEY2PKCS8(const EVP_PKEY *pkey);
int PKCS8_pkey_set0(PKCS8_PRIV_KEY_INFO *priv, ASN1_OBJECT *aobj,
    int version, int ptype, void *pval,
    unsigned char *penc, int penclen);
int PKCS8_pkey_get0(const ASN1_OBJECT **ppkalg,
    const unsigned char **pk, int *ppklen,
    const X509_ALGOR **pa, const PKCS8_PRIV_KEY_INFO *p8);
const struct stack_st_X509_ATTRIBUTE *
PKCS8_pkey_get0_attrs(const PKCS8_PRIV_KEY_INFO *p8);
int PKCS8_pkey_add1_attr(PKCS8_PRIV_KEY_INFO *p8, X509_ATTRIBUTE *attr);
int PKCS8_pkey_add1_attr_by_NID(PKCS8_PRIV_KEY_INFO *p8, int nid, int type,
    const unsigned char *bytes, int len);
int PKCS8_pkey_add1_attr_by_OBJ(PKCS8_PRIV_KEY_INFO *p8, const ASN1_OBJECT *obj,
    int type, const unsigned char *bytes, int len);
void X509_PUBKEY_set0_public_key(X509_PUBKEY *pub,
    unsigned char *penc, int penclen);
int X509_PUBKEY_set0_param(X509_PUBKEY *pub, ASN1_OBJECT *aobj,
    int ptype, void *pval,
    unsigned char *penc, int penclen);
int X509_PUBKEY_get0_param(ASN1_OBJECT **ppkalg,
    const unsigned char **pk, int *ppklen,
    X509_ALGOR **pa, const X509_PUBKEY *pub);
int X509_PUBKEY_eq(const X509_PUBKEY *a, const X509_PUBKEY *b);
       
       
int PEM_get_EVP_CIPHER_INFO(char *header, EVP_CIPHER_INFO *cipher);
int PEM_do_header(EVP_CIPHER_INFO *cipher, unsigned char *data, long *len,
    pem_password_cb *callback, void *u);
int PEM_read_bio(BIO *bp, char **name, char **header,
    unsigned char **data, long *len);
int PEM_read_bio_ex(BIO *bp, char **name, char **header,
    unsigned char **data, long *len, unsigned int flags);
int PEM_bytes_read_bio_secmem(unsigned char **pdata, long *plen, char **pnm,
    const char *name, BIO *bp, pem_password_cb *cb,
    void *u);
int PEM_write_bio(BIO *bp, const char *name, const char *hdr,
    const unsigned char *data, long len);
int PEM_bytes_read_bio(unsigned char **pdata, long *plen, char **pnm,
    const char *name, BIO *bp, pem_password_cb *cb,
    void *u);
void *PEM_ASN1_read_bio(d2i_of_void *d2i, const char *name, BIO *bp, void **x,
    pem_password_cb *cb, void *u);
int PEM_ASN1_write_bio(i2d_of_void *i2d, const char *name, BIO *bp,
    const void *x, const EVP_CIPHER *enc,
    const unsigned char *kstr, int klen,
    pem_password_cb *cb, void *u);
int PEM_ASN1_write_bio_ctx(OSSL_i2d_of_void_ctx *i2d, void *vctx,
    const char *name, BIO *bp, const void *x,
    const EVP_CIPHER *enc, const unsigned char *kstr,
    int klen, pem_password_cb *cb, void *u);
struct stack_st_X509_INFO *PEM_X509_INFO_read_bio(BIO *bp, struct stack_st_X509_INFO *sk,
    pem_password_cb *cb, void *u);
struct stack_st_X509_INFO
*PEM_X509_INFO_read_bio_ex(BIO *bp, struct stack_st_X509_INFO *sk,
    pem_password_cb *cb, void *u, OSSL_LIB_CTX *libctx,
    const char *propq);
int PEM_X509_INFO_write_bio(BIO *bp, const X509_INFO *xi, EVP_CIPHER *enc,
    const unsigned char *kstr, int klen,
    pem_password_cb *cd, void *u);
int PEM_read(FILE *fp, char **name, char **header,
    unsigned char **data, long *len);
int PEM_write(FILE *fp, const char *name, const char *hdr,
    const unsigned char *data, long len);
void *PEM_ASN1_read(d2i_of_void *d2i, const char *name, FILE *fp, void **x,
    pem_password_cb *cb, void *u);
int PEM_ASN1_write(i2d_of_void *i2d, const char *name, FILE *fp,
    const void *x, const EVP_CIPHER *enc,
    const unsigned char *kstr, int klen,
    pem_password_cb *callback, void *u);
struct stack_st_X509_INFO *PEM_X509_INFO_read(FILE *fp, struct stack_st_X509_INFO *sk,
    pem_password_cb *cb, void *u);
struct stack_st_X509_INFO
*PEM_X509_INFO_read_ex(FILE *fp, struct stack_st_X509_INFO *sk, pem_password_cb *cb,
    void *u, OSSL_LIB_CTX *libctx, const char *propq);
int PEM_SignInit(EVP_MD_CTX *ctx, EVP_MD *type);
int PEM_SignUpdate(EVP_MD_CTX *ctx, const unsigned char *d, unsigned int cnt);
int PEM_SignFinal(EVP_MD_CTX *ctx, unsigned char *sigret,
    unsigned int *siglen, EVP_PKEY *pkey);
int PEM_def_callback(char *buf, int num, int rwflag, void *userdata);
void PEM_proc_type(char *buf, int type);
void PEM_dek_info(char *buf, const char *type, int len, const char *str);
extern X509 *PEM_read_bio_X509(BIO *out, X509 **x, pem_password_cb *cb, void *u); extern X509 *PEM_read_X509(FILE *out, X509 **x, pem_password_cb *cb, void *u); extern int PEM_write_bio_X509(BIO *out, const X509 *x); extern int PEM_write_X509(FILE *out, const X509 *x);
extern X509 *PEM_read_bio_X509_AUX(BIO *out, X509 **x, pem_password_cb *cb, void *u); extern X509 *PEM_read_X509_AUX(FILE *out, X509 **x, pem_password_cb *cb, void *u); extern int PEM_write_bio_X509_AUX(BIO *out, const X509 *x); extern int PEM_write_X509_AUX(FILE *out, const X509 *x);
extern X509_REQ *PEM_read_bio_X509_REQ(BIO *out, X509_REQ **x, pem_password_cb *cb, void *u); extern X509_REQ *PEM_read_X509_REQ(FILE *out, X509_REQ **x, pem_password_cb *cb, void *u); extern int PEM_write_bio_X509_REQ(BIO *out, const X509_REQ *x); extern int PEM_write_X509_REQ(FILE *out, const X509_REQ *x);
extern int PEM_write_bio_X509_REQ_NEW(BIO *out, const X509_REQ *x); extern int PEM_write_X509_REQ_NEW(FILE *out, const X509_REQ *x);
extern X509_CRL *PEM_read_bio_X509_CRL(BIO *out, X509_CRL **x, pem_password_cb *cb, void *u); extern X509_CRL *PEM_read_X509_CRL(FILE *out, X509_CRL **x, pem_password_cb *cb, void *u); extern int PEM_write_bio_X509_CRL(BIO *out, const X509_CRL *x); extern int PEM_write_X509_CRL(FILE *out, const X509_CRL *x);
extern X509_PUBKEY *PEM_read_bio_X509_PUBKEY(BIO *out, X509_PUBKEY **x, pem_password_cb *cb, void *u); extern X509_PUBKEY *PEM_read_X509_PUBKEY(FILE *out, X509_PUBKEY **x, pem_password_cb *cb, void *u); extern int PEM_write_bio_X509_PUBKEY(BIO *out, const X509_PUBKEY *x); extern int PEM_write_X509_PUBKEY(FILE *out, const X509_PUBKEY *x);
extern PKCS7 *PEM_read_bio_PKCS7(BIO *out, PKCS7 **x, pem_password_cb *cb, void *u); extern PKCS7 *PEM_read_PKCS7(FILE *out, PKCS7 **x, pem_password_cb *cb, void *u); extern int PEM_write_bio_PKCS7(BIO *out, const PKCS7 *x); extern int PEM_write_PKCS7(FILE *out, const PKCS7 *x);
extern NETSCAPE_CERT_SEQUENCE *PEM_read_bio_NETSCAPE_CERT_SEQUENCE(BIO *out, NETSCAPE_CERT_SEQUENCE **x, pem_password_cb *cb, void *u); extern NETSCAPE_CERT_SEQUENCE *PEM_read_NETSCAPE_CERT_SEQUENCE(FILE *out, NETSCAPE_CERT_SEQUENCE **x, pem_password_cb *cb, void *u); extern int PEM_write_bio_NETSCAPE_CERT_SEQUENCE(BIO *out, const NETSCAPE_CERT_SEQUENCE *x); extern int PEM_write_NETSCAPE_CERT_SEQUENCE(FILE *out, const NETSCAPE_CERT_SEQUENCE *x);
extern X509_SIG *PEM_read_bio_PKCS8(BIO *out, X509_SIG **x, pem_password_cb *cb, void *u); extern X509_SIG *PEM_read_PKCS8(FILE *out, X509_SIG **x, pem_password_cb *cb, void *u); extern int PEM_write_bio_PKCS8(BIO *out, const X509_SIG *x); extern int PEM_write_PKCS8(FILE *out, const X509_SIG *x);
extern PKCS8_PRIV_KEY_INFO *PEM_read_bio_PKCS8_PRIV_KEY_INFO(BIO *out, PKCS8_PRIV_KEY_INFO **x, pem_password_cb *cb, void *u); extern PKCS8_PRIV_KEY_INFO *PEM_read_PKCS8_PRIV_KEY_INFO(FILE *out, PKCS8_PRIV_KEY_INFO **x, pem_password_cb *cb, void *u); extern int PEM_write_bio_PKCS8_PRIV_KEY_INFO(BIO *out, const PKCS8_PRIV_KEY_INFO *x); extern int PEM_write_PKCS8_PRIV_KEY_INFO(FILE *out, const PKCS8_PRIV_KEY_INFO *x);
__attribute__((deprecated("Since OpenSSL " "3.0"))) RSA *PEM_read_bio_RSAPrivateKey(BIO *out, RSA **x, pem_password_cb *cb, void *u); __attribute__((deprecated("Since OpenSSL " "3.0"))) RSA *PEM_read_RSAPrivateKey(FILE *out, RSA **x, pem_password_cb *cb, void *u); __attribute__((deprecated("Since OpenSSL " "3.0"))) int PEM_write_bio_RSAPrivateKey(BIO *out, const RSA *x, const EVP_CIPHER *enc, const unsigned char *kstr, int klen, pem_password_cb *cb, void *u); __attribute__((deprecated("Since OpenSSL " "3.0"))) int PEM_write_RSAPrivateKey(FILE *out, const RSA *x, const EVP_CIPHER *enc, const unsigned char *kstr, int klen, pem_password_cb *cb, void *u);
__attribute__((deprecated("Since OpenSSL " "3.0"))) RSA *PEM_read_bio_RSAPublicKey(BIO *out, RSA **x, pem_password_cb *cb, void *u); __attribute__((deprecated("Since OpenSSL " "3.0"))) RSA *PEM_read_RSAPublicKey(FILE *out, RSA **x, pem_password_cb *cb, void *u); __attribute__((deprecated("Since OpenSSL " "3.0"))) int PEM_write_bio_RSAPublicKey(BIO *out, const RSA *x); __attribute__((deprecated("Since OpenSSL " "3.0"))) int PEM_write_RSAPublicKey(FILE *out, const RSA *x);
__attribute__((deprecated("Since OpenSSL " "3.0"))) RSA *PEM_read_bio_RSA_PUBKEY(BIO *out, RSA **x, pem_password_cb *cb, void *u); __attribute__((deprecated("Since OpenSSL " "3.0"))) RSA *PEM_read_RSA_PUBKEY(FILE *out, RSA **x, pem_password_cb *cb, void *u); __attribute__((deprecated("Since OpenSSL " "3.0"))) int PEM_write_bio_RSA_PUBKEY(BIO *out, const RSA *x); __attribute__((deprecated("Since OpenSSL " "3.0"))) int PEM_write_RSA_PUBKEY(FILE *out, const RSA *x);
__attribute__((deprecated("Since OpenSSL " "3.0"))) DSA *PEM_read_bio_DSAPrivateKey(BIO *out, DSA **x, pem_password_cb *cb, void *u); __attribute__((deprecated("Since OpenSSL " "3.0"))) DSA *PEM_read_DSAPrivateKey(FILE *out, DSA **x, pem_password_cb *cb, void *u); __attribute__((deprecated("Since OpenSSL " "3.0"))) int PEM_write_bio_DSAPrivateKey(BIO *out, const DSA *x, const EVP_CIPHER *enc, const unsigned char *kstr, int klen, pem_password_cb *cb, void *u); __attribute__((deprecated("Since OpenSSL " "3.0"))) int PEM_write_DSAPrivateKey(FILE *out, const DSA *x, const EVP_CIPHER *enc, const unsigned char *kstr, int klen, pem_password_cb *cb, void *u);
__attribute__((deprecated("Since OpenSSL " "3.0"))) DSA *PEM_read_bio_DSA_PUBKEY(BIO *out, DSA **x, pem_password_cb *cb, void *u); __attribute__((deprecated("Since OpenSSL " "3.0"))) DSA *PEM_read_DSA_PUBKEY(FILE *out, DSA **x, pem_password_cb *cb, void *u); __attribute__((deprecated("Since OpenSSL " "3.0"))) int PEM_write_bio_DSA_PUBKEY(BIO *out, const DSA *x); __attribute__((deprecated("Since OpenSSL " "3.0"))) int PEM_write_DSA_PUBKEY(FILE *out, const DSA *x);
__attribute__((deprecated("Since OpenSSL " "3.0"))) DSA *PEM_read_bio_DSAparams(BIO *out, DSA **x, pem_password_cb *cb, void *u); __attribute__((deprecated("Since OpenSSL " "3.0"))) DSA *PEM_read_DSAparams(FILE *out, DSA **x, pem_password_cb *cb, void *u); __attribute__((deprecated("Since OpenSSL " "3.0"))) int PEM_write_bio_DSAparams(BIO *out, const DSA *x); __attribute__((deprecated("Since OpenSSL " "3.0"))) int PEM_write_DSAparams(FILE *out, const DSA *x);
__attribute__((deprecated("Since OpenSSL " "3.0"))) EC_GROUP *PEM_read_bio_ECPKParameters(BIO *out, EC_GROUP **x, pem_password_cb *cb, void *u); __attribute__((deprecated("Since OpenSSL " "3.0"))) EC_GROUP *PEM_read_ECPKParameters(FILE *out, EC_GROUP **x, pem_password_cb *cb, void *u); __attribute__((deprecated("Since OpenSSL " "3.0"))) int PEM_write_bio_ECPKParameters(BIO *out, const EC_GROUP *x); __attribute__((deprecated("Since OpenSSL " "3.0"))) int PEM_write_ECPKParameters(FILE *out, const EC_GROUP *x);
__attribute__((deprecated("Since OpenSSL " "3.0"))) EC_KEY *PEM_read_bio_ECPrivateKey(BIO *out, EC_KEY **x, pem_password_cb *cb, void *u); __attribute__((deprecated("Since OpenSSL " "3.0"))) EC_KEY *PEM_read_ECPrivateKey(FILE *out, EC_KEY **x, pem_password_cb *cb, void *u); __attribute__((deprecated("Since OpenSSL " "3.0"))) int PEM_write_bio_ECPrivateKey(BIO *out, const EC_KEY *x, const EVP_CIPHER *enc, const unsigned char *kstr, int klen, pem_password_cb *cb, void *u); __attribute__((deprecated("Since OpenSSL " "3.0"))) int PEM_write_ECPrivateKey(FILE *out, const EC_KEY *x, const EVP_CIPHER *enc, const unsigned char *kstr, int klen, pem_password_cb *cb, void *u);
__attribute__((deprecated("Since OpenSSL " "3.0"))) EC_KEY *PEM_read_bio_EC_PUBKEY(BIO *out, EC_KEY **x, pem_password_cb *cb, void *u); __attribute__((deprecated("Since OpenSSL " "3.0"))) EC_KEY *PEM_read_EC_PUBKEY(FILE *out, EC_KEY **x, pem_password_cb *cb, void *u); __attribute__((deprecated("Since OpenSSL " "3.0"))) int PEM_write_bio_EC_PUBKEY(BIO *out, const EC_KEY *x); __attribute__((deprecated("Since OpenSSL " "3.0"))) int PEM_write_EC_PUBKEY(FILE *out, const EC_KEY *x);
__attribute__((deprecated("Since OpenSSL " "3.0"))) DH *PEM_read_bio_DHparams(BIO *out, DH **x, pem_password_cb *cb, void *u); __attribute__((deprecated("Since OpenSSL " "3.0"))) DH *PEM_read_DHparams(FILE *out, DH **x, pem_password_cb *cb, void *u); __attribute__((deprecated("Since OpenSSL " "3.0"))) int PEM_write_bio_DHparams(BIO *out, const DH *x); __attribute__((deprecated("Since OpenSSL " "3.0"))) int PEM_write_DHparams(FILE *out, const DH *x);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int PEM_write_bio_DHxparams(BIO *out, const DH *x); __attribute__((deprecated("Since OpenSSL " "3.0"))) int PEM_write_DHxparams(FILE *out, const DH *x);
extern EVP_PKEY *PEM_read_bio_PrivateKey(BIO *out, EVP_PKEY **x, pem_password_cb *cb, void *u); extern EVP_PKEY *PEM_read_bio_PrivateKey_ex(BIO *out, EVP_PKEY **x, pem_password_cb *cb, void *u, OSSL_LIB_CTX *libctx, const char *propq); extern EVP_PKEY *PEM_read_PrivateKey(FILE *out, EVP_PKEY **x, pem_password_cb *cb, void *u); extern EVP_PKEY *PEM_read_PrivateKey_ex(FILE *out, EVP_PKEY **x, pem_password_cb *cb, void *u, OSSL_LIB_CTX *libctx, const char *propq); extern int PEM_write_bio_PrivateKey(BIO *out, const EVP_PKEY *x, const EVP_CIPHER *enc, const unsigned char *kstr, int klen, pem_password_cb *cb, void *u); extern int PEM_write_bio_PrivateKey_ex(BIO *out, const EVP_PKEY *x, const EVP_CIPHER *enc, const unsigned char *kstr, int klen, pem_password_cb *cb, void *u, OSSL_LIB_CTX *libctx, const char *propq); extern int PEM_write_PrivateKey(FILE *out, const EVP_PKEY *x, const EVP_CIPHER *enc, const unsigned char *kstr, int klen, pem_password_cb *cb, void *u); extern int PEM_write_PrivateKey_ex(FILE *out, const EVP_PKEY *x, const EVP_CIPHER *enc, const unsigned char *kstr, int klen, pem_password_cb *cb, void *u, OSSL_LIB_CTX *libctx, const char *propq);
extern EVP_PKEY *PEM_read_bio_PUBKEY(BIO *out, EVP_PKEY **x, pem_password_cb *cb, void *u); extern EVP_PKEY *PEM_read_bio_PUBKEY_ex(BIO *out, EVP_PKEY **x, pem_password_cb *cb, void *u, OSSL_LIB_CTX *libctx, const char *propq); extern EVP_PKEY *PEM_read_PUBKEY(FILE *out, EVP_PKEY **x, pem_password_cb *cb, void *u); extern EVP_PKEY *PEM_read_PUBKEY_ex(FILE *out, EVP_PKEY **x, pem_password_cb *cb, void *u, OSSL_LIB_CTX *libctx, const char *propq); extern int PEM_write_bio_PUBKEY(BIO *out, const EVP_PKEY *x); extern int PEM_write_bio_PUBKEY_ex(BIO *out, const EVP_PKEY *x, OSSL_LIB_CTX *libctx, const char *propq); extern int PEM_write_PUBKEY(FILE *out, const EVP_PKEY *x); extern int PEM_write_PUBKEY_ex(FILE *out, const EVP_PKEY *x, OSSL_LIB_CTX *libctx, const char *propq);
int PEM_write_bio_PrivateKey_traditional(BIO *bp, const EVP_PKEY *x,
    const EVP_CIPHER *enc,
    const unsigned char *kstr, int klen,
    pem_password_cb *cb, void *u);
int PEM_write_bio_PKCS8PrivateKey_nid(BIO *bp, const EVP_PKEY *x, int nid,
    const char *kstr, int klen,
    pem_password_cb *cb, void *u);
int PEM_write_bio_PKCS8PrivateKey(BIO *, const EVP_PKEY *, const EVP_CIPHER *,
    const char *kstr, int klen,
    pem_password_cb *cb, void *u);
int i2d_PKCS8PrivateKey_bio(BIO *bp, const EVP_PKEY *x, const EVP_CIPHER *enc,
    const char *kstr, int klen,
    pem_password_cb *cb, void *u);
int i2d_PKCS8PrivateKey_nid_bio(BIO *bp, const EVP_PKEY *x, int nid,
    const char *kstr, int klen,
    pem_password_cb *cb, void *u);
EVP_PKEY *d2i_PKCS8PrivateKey_bio(BIO *bp, EVP_PKEY **x, pem_password_cb *cb,
    void *u);
int i2d_PKCS8PrivateKey_fp(FILE *fp, const EVP_PKEY *x, const EVP_CIPHER *enc,
    const char *kstr, int klen,
    pem_password_cb *cb, void *u);
int i2d_PKCS8PrivateKey_nid_fp(FILE *fp, const EVP_PKEY *x, int nid,
    const char *kstr, int klen,
    pem_password_cb *cb, void *u);
int PEM_write_PKCS8PrivateKey_nid(FILE *fp, const EVP_PKEY *x, int nid,
    const char *kstr, int klen,
    pem_password_cb *cb, void *u);
EVP_PKEY *d2i_PKCS8PrivateKey_fp(FILE *fp, EVP_PKEY **x, pem_password_cb *cb,
    void *u);
int PEM_write_PKCS8PrivateKey(FILE *fp, const EVP_PKEY *x, const EVP_CIPHER *enc,
    const char *kstr, int klen,
    pem_password_cb *cd, void *u);
EVP_PKEY *PEM_read_bio_Parameters_ex(BIO *bp, EVP_PKEY **x,
    OSSL_LIB_CTX *libctx, const char *propq);
EVP_PKEY *PEM_read_bio_Parameters(BIO *bp, EVP_PKEY **x);
int PEM_write_bio_Parameters(BIO *bp, const EVP_PKEY *x);
EVP_PKEY *b2i_PrivateKey(const unsigned char **in, long length);
EVP_PKEY *b2i_PublicKey(const unsigned char **in, long length);
EVP_PKEY *b2i_PrivateKey_bio(BIO *in);
EVP_PKEY *b2i_PublicKey_bio(BIO *in);
int i2b_PrivateKey_bio(BIO *out, const EVP_PKEY *pk);
int i2b_PublicKey_bio(BIO *out, const EVP_PKEY *pk);
EVP_PKEY *b2i_PVK_bio(BIO *in, pem_password_cb *cb, void *u);
EVP_PKEY *b2i_PVK_bio_ex(BIO *in, pem_password_cb *cb, void *u,
    OSSL_LIB_CTX *libctx, const char *propq);
int i2b_PVK_bio(BIO *out, const EVP_PKEY *pk, int enclevel,
    pem_password_cb *cb, void *u);
int i2b_PVK_bio_ex(BIO *out, const EVP_PKEY *pk, int enclevel,
    pem_password_cb *cb, void *u,
    OSSL_LIB_CTX *libctx, const char *propq);
       
__attribute__((deprecated("Since OpenSSL " "3.0"))) size_t HMAC_size(const HMAC_CTX *e);
__attribute__((deprecated("Since OpenSSL " "3.0"))) HMAC_CTX *HMAC_CTX_new(void);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int HMAC_CTX_reset(HMAC_CTX *ctx);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void HMAC_CTX_free(HMAC_CTX *ctx);
__attribute__((deprecated("Since OpenSSL " "1.1.0"))) int HMAC_Init(HMAC_CTX *ctx,
    const void *key, int len,
    const EVP_MD *md);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int HMAC_Init_ex(HMAC_CTX *ctx, const void *key, int len,
    const EVP_MD *md, ENGINE *impl);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int HMAC_Update(HMAC_CTX *ctx, const unsigned char *data,
    size_t len);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int HMAC_Final(HMAC_CTX *ctx, unsigned char *md,
    unsigned int *len);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int HMAC_CTX_copy(HMAC_CTX *dctx, HMAC_CTX *sctx);
__attribute__((deprecated("Since OpenSSL " "3.0"))) void HMAC_CTX_set_flags(HMAC_CTX *ctx, unsigned long flags);
__attribute__((deprecated("Since OpenSSL " "3.0"))) const EVP_MD *HMAC_CTX_get_md(const HMAC_CTX *ctx);
unsigned char *HMAC(const EVP_MD *evp_md, const void *key, int key_len,
    const unsigned char *data, size_t data_len,
    unsigned char *md, unsigned int *md_len);
       
       
typedef struct async_job_st ASYNC_JOB;
typedef struct async_wait_ctx_st ASYNC_WAIT_CTX;
typedef int (*ASYNC_callback_fn)(void *arg);
int ASYNC_init_thread(size_t max_size, size_t init_size);
void ASYNC_cleanup_thread(void);
ASYNC_WAIT_CTX *ASYNC_WAIT_CTX_new(void);
void ASYNC_WAIT_CTX_free(ASYNC_WAIT_CTX *ctx);
int ASYNC_WAIT_CTX_set_wait_fd(ASYNC_WAIT_CTX *ctx, const void *key,
    int fd,
    void *custom_data,
    void (*cleanup)(ASYNC_WAIT_CTX *, const void *,
        int, void *));
int ASYNC_WAIT_CTX_get_fd(ASYNC_WAIT_CTX *ctx, const void *key,
    int *fd, void **custom_data);
int ASYNC_WAIT_CTX_get_all_fds(ASYNC_WAIT_CTX *ctx, int *fd,
    size_t *numfds);
int ASYNC_WAIT_CTX_get_callback(ASYNC_WAIT_CTX *ctx,
    ASYNC_callback_fn *callback,
    void **callback_arg);
int ASYNC_WAIT_CTX_set_callback(ASYNC_WAIT_CTX *ctx,
    ASYNC_callback_fn callback,
    void *callback_arg);
int ASYNC_WAIT_CTX_set_status(ASYNC_WAIT_CTX *ctx, int status);
int ASYNC_WAIT_CTX_get_status(ASYNC_WAIT_CTX *ctx);
int ASYNC_WAIT_CTX_get_changed_fds(ASYNC_WAIT_CTX *ctx, int *addfd,
    size_t *numaddfds, int *delfd,
    size_t *numdelfds);
int ASYNC_WAIT_CTX_clear_fd(ASYNC_WAIT_CTX *ctx, const void *key);
int ASYNC_is_capable(void);
typedef void *(*ASYNC_stack_alloc_fn)(size_t *num);
typedef void (*ASYNC_stack_free_fn)(void *addr);
int ASYNC_set_mem_functions(ASYNC_stack_alloc_fn alloc_fn,
    ASYNC_stack_free_fn free_fn);
void ASYNC_get_mem_functions(ASYNC_stack_alloc_fn *alloc_fn,
    ASYNC_stack_free_fn *free_fn);
int ASYNC_start_job(ASYNC_JOB **job, ASYNC_WAIT_CTX *ctx, int *ret,
    int (*func)(void *), void *args, size_t size);
int ASYNC_pause_job(void);
ASYNC_JOB *ASYNC_get_current_job(void);
ASYNC_WAIT_CTX *ASYNC_get_wait_ctx(ASYNC_JOB *job);
void ASYNC_block_pause(void);
void ASYNC_unblock_pause(void);
       
       
struct stack_st_SCT; typedef int (*sk_SCT_compfunc)(const SCT *const *a, const SCT *const *b); typedef void (*sk_SCT_freefunc)(SCT * a); typedef SCT *(*sk_SCT_copyfunc)(const SCT *a); static __attribute__((unused)) inline SCT *ossl_check_SCT_type(SCT *ptr) { return ptr; } static __attribute__((unused)) inline const OPENSSL_STACK *ossl_check_const_SCT_sk_type(const struct stack_st_SCT *sk) { return (const OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_STACK *ossl_check_SCT_sk_type(struct stack_st_SCT *sk) { return (OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_sk_compfunc ossl_check_SCT_compfunc_type(sk_SCT_compfunc cmp) { return (OPENSSL_sk_compfunc)cmp; } static __attribute__((unused)) inline OPENSSL_sk_copyfunc ossl_check_SCT_copyfunc_type(sk_SCT_copyfunc cpy) { return (OPENSSL_sk_copyfunc)cpy; } static __attribute__((unused)) inline OPENSSL_sk_freefunc ossl_check_SCT_freefunc_type(sk_SCT_freefunc fr) { return (OPENSSL_sk_freefunc)fr; }
struct stack_st_CTLOG; typedef int (*sk_CTLOG_compfunc)(const CTLOG *const *a, const CTLOG *const *b); typedef void (*sk_CTLOG_freefunc)(CTLOG * a); typedef CTLOG *(*sk_CTLOG_copyfunc)(const CTLOG *a); static __attribute__((unused)) inline CTLOG *ossl_check_CTLOG_type(CTLOG *ptr) { return ptr; } static __attribute__((unused)) inline const OPENSSL_STACK *ossl_check_const_CTLOG_sk_type(const struct stack_st_CTLOG *sk) { return (const OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_STACK *ossl_check_CTLOG_sk_type(struct stack_st_CTLOG *sk) { return (OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_sk_compfunc ossl_check_CTLOG_compfunc_type(sk_CTLOG_compfunc cmp) { return (OPENSSL_sk_compfunc)cmp; } static __attribute__((unused)) inline OPENSSL_sk_copyfunc ossl_check_CTLOG_copyfunc_type(sk_CTLOG_copyfunc cpy) { return (OPENSSL_sk_copyfunc)cpy; } static __attribute__((unused)) inline OPENSSL_sk_freefunc ossl_check_CTLOG_freefunc_type(sk_CTLOG_freefunc fr) { return (OPENSSL_sk_freefunc)fr; }
typedef enum {
    CT_LOG_ENTRY_TYPE_NOT_SET = -1,
    CT_LOG_ENTRY_TYPE_X509 = 0,
    CT_LOG_ENTRY_TYPE_PRECERT = 1
} ct_log_entry_type_t;
typedef enum {
    SCT_VERSION_NOT_SET = -1,
    SCT_VERSION_V1 = 0
} sct_version_t;
typedef enum {
    SCT_SOURCE_UNKNOWN,
    SCT_SOURCE_TLS_EXTENSION,
    SCT_SOURCE_X509V3_EXTENSION,
    SCT_SOURCE_OCSP_STAPLED_RESPONSE
} sct_source_t;
typedef enum {
    SCT_VALIDATION_STATUS_NOT_SET,
    SCT_VALIDATION_STATUS_UNKNOWN_LOG,
    SCT_VALIDATION_STATUS_VALID,
    SCT_VALIDATION_STATUS_INVALID,
    SCT_VALIDATION_STATUS_UNVERIFIED,
    SCT_VALIDATION_STATUS_UNKNOWN_VERSION
} sct_validation_status_t;
CT_POLICY_EVAL_CTX *CT_POLICY_EVAL_CTX_new_ex(OSSL_LIB_CTX *libctx,
    const char *propq);
CT_POLICY_EVAL_CTX *CT_POLICY_EVAL_CTX_new(void);
void CT_POLICY_EVAL_CTX_free(CT_POLICY_EVAL_CTX *ctx);
X509 *CT_POLICY_EVAL_CTX_get0_cert(const CT_POLICY_EVAL_CTX *ctx);
int CT_POLICY_EVAL_CTX_set1_cert(CT_POLICY_EVAL_CTX *ctx, X509 *cert);
X509 *CT_POLICY_EVAL_CTX_get0_issuer(const CT_POLICY_EVAL_CTX *ctx);
int CT_POLICY_EVAL_CTX_set1_issuer(CT_POLICY_EVAL_CTX *ctx, X509 *issuer);
const CTLOG_STORE *CT_POLICY_EVAL_CTX_get0_log_store(const CT_POLICY_EVAL_CTX *ctx);
void CT_POLICY_EVAL_CTX_set_shared_CTLOG_STORE(CT_POLICY_EVAL_CTX *ctx,
    CTLOG_STORE *log_store);
uint64_t CT_POLICY_EVAL_CTX_get_time(const CT_POLICY_EVAL_CTX *ctx);
void CT_POLICY_EVAL_CTX_set_time(CT_POLICY_EVAL_CTX *ctx, uint64_t time_in_ms);
SCT *SCT_new(void);
SCT *SCT_new_from_base64(unsigned char version,
    const char *logid_base64,
    ct_log_entry_type_t entry_type,
    uint64_t timestamp,
    const char *extensions_base64,
    const char *signature_base64);
void SCT_free(SCT *sct);
void SCT_LIST_free(struct stack_st_SCT *a);
sct_version_t SCT_get_version(const SCT *sct);
 int SCT_set_version(SCT *sct, sct_version_t version);
ct_log_entry_type_t SCT_get_log_entry_type(const SCT *sct);
 int SCT_set_log_entry_type(SCT *sct, ct_log_entry_type_t entry_type);
size_t SCT_get0_log_id(const SCT *sct, unsigned char **log_id);
 int SCT_set0_log_id(SCT *sct, unsigned char *log_id, size_t log_id_len);
 int SCT_set1_log_id(SCT *sct, const unsigned char *log_id,
    size_t log_id_len);
uint64_t SCT_get_timestamp(const SCT *sct);
void SCT_set_timestamp(SCT *sct, uint64_t timestamp);
int SCT_get_signature_nid(const SCT *sct);
 int SCT_set_signature_nid(SCT *sct, int nid);
size_t SCT_get0_extensions(const SCT *sct, unsigned char **ext);
void SCT_set0_extensions(SCT *sct, unsigned char *ext, size_t ext_len);
 int SCT_set1_extensions(SCT *sct, const unsigned char *ext,
    size_t ext_len);
size_t SCT_get0_signature(const SCT *sct, unsigned char **sig);
void SCT_set0_signature(SCT *sct, unsigned char *sig, size_t sig_len);
 int SCT_set1_signature(SCT *sct, const unsigned char *sig,
    size_t sig_len);
sct_source_t SCT_get_source(const SCT *sct);
 int SCT_set_source(SCT *sct, sct_source_t source);
const char *SCT_validation_status_string(const SCT *sct);
void SCT_print(const SCT *sct, BIO *out, int indent, const CTLOG_STORE *logs);
void SCT_LIST_print(const struct stack_st_SCT *sct_list, BIO *out, int indent,
    const char *separator, const CTLOG_STORE *logs);
sct_validation_status_t SCT_get_validation_status(const SCT *sct);
 int SCT_validate(SCT *sct, const CT_POLICY_EVAL_CTX *ctx);
 int SCT_LIST_validate(const struct stack_st_SCT *scts,
    CT_POLICY_EVAL_CTX *ctx);
 int i2o_SCT_LIST(const struct stack_st_SCT *a, unsigned char **pp);
struct stack_st_SCT *o2i_SCT_LIST(struct stack_st_SCT **a, const unsigned char **pp,
    size_t len);
 int i2d_SCT_LIST(const struct stack_st_SCT *a, unsigned char **pp);
struct stack_st_SCT *d2i_SCT_LIST(struct stack_st_SCT **a, const unsigned char **pp,
    long len);
 int i2o_SCT(const SCT *sct, unsigned char **out);
SCT *o2i_SCT(SCT **psct, const unsigned char **in, size_t len);
CTLOG *CTLOG_new_ex(EVP_PKEY *public_key, const char *name, OSSL_LIB_CTX *libctx,
    const char *propq);
CTLOG *CTLOG_new(EVP_PKEY *public_key, const char *name);
int CTLOG_new_from_base64_ex(CTLOG **ct_log, const char *pkey_base64,
    const char *name, OSSL_LIB_CTX *libctx,
    const char *propq);
int CTLOG_new_from_base64(CTLOG **ct_log,
    const char *pkey_base64, const char *name);
void CTLOG_free(CTLOG *log);
const char *CTLOG_get0_name(const CTLOG *log);
void CTLOG_get0_log_id(const CTLOG *log, const uint8_t **log_id,
    size_t *log_id_len);
EVP_PKEY *CTLOG_get0_public_key(const CTLOG *log);
CTLOG_STORE *CTLOG_STORE_new_ex(OSSL_LIB_CTX *libctx, const char *propq);
CTLOG_STORE *CTLOG_STORE_new(void);
void CTLOG_STORE_free(CTLOG_STORE *store);
const CTLOG *CTLOG_STORE_get0_log_by_id(const CTLOG_STORE *store,
    const uint8_t *log_id,
    size_t log_id_len);
 int CTLOG_STORE_load_file(CTLOG_STORE *store, const char *file);
 int CTLOG_STORE_load_default_file(CTLOG_STORE *store);
       
       
__attribute__((deprecated("Since OpenSSL " "3.0"))) int ERR_load_SSL_strings(void);
       
typedef struct ssl_st *ssl_crock_st;
typedef struct tls_session_ticket_ext_st TLS_SESSION_TICKET_EXT;
typedef struct ssl_method_st SSL_METHOD;
typedef struct ssl_cipher_st SSL_CIPHER;
typedef struct ssl_session_st SSL_SESSION;
typedef struct tls_sigalgs_st TLS_SIGALGS;
typedef struct ssl_conf_ctx_st SSL_CONF_CTX;
struct stack_st_SSL_CIPHER;
typedef struct srtp_protection_profile_st {
    const char *name;
    unsigned long id;
} SRTP_PROTECTION_PROFILE;
struct stack_st_SRTP_PROTECTION_PROFILE; typedef int (*sk_SRTP_PROTECTION_PROFILE_compfunc)(const SRTP_PROTECTION_PROFILE *const *a, const SRTP_PROTECTION_PROFILE *const *b); typedef void (*sk_SRTP_PROTECTION_PROFILE_freefunc)(SRTP_PROTECTION_PROFILE * a); typedef SRTP_PROTECTION_PROFILE *(*sk_SRTP_PROTECTION_PROFILE_copyfunc)(const SRTP_PROTECTION_PROFILE *a); static __attribute__((unused)) inline SRTP_PROTECTION_PROFILE *ossl_check_SRTP_PROTECTION_PROFILE_type(SRTP_PROTECTION_PROFILE *ptr) { return ptr; } static __attribute__((unused)) inline const OPENSSL_STACK *ossl_check_const_SRTP_PROTECTION_PROFILE_sk_type(const struct stack_st_SRTP_PROTECTION_PROFILE *sk) { return (const OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_STACK *ossl_check_SRTP_PROTECTION_PROFILE_sk_type(struct stack_st_SRTP_PROTECTION_PROFILE *sk) { return (OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_sk_compfunc ossl_check_SRTP_PROTECTION_PROFILE_compfunc_type(sk_SRTP_PROTECTION_PROFILE_compfunc cmp) { return (OPENSSL_sk_compfunc)cmp; } static __attribute__((unused)) inline OPENSSL_sk_copyfunc ossl_check_SRTP_PROTECTION_PROFILE_copyfunc_type(sk_SRTP_PROTECTION_PROFILE_copyfunc cpy) { return (OPENSSL_sk_copyfunc)cpy; } static __attribute__((unused)) inline OPENSSL_sk_freefunc ossl_check_SRTP_PROTECTION_PROFILE_freefunc_type(sk_SRTP_PROTECTION_PROFILE_freefunc fr) { return (OPENSSL_sk_freefunc)fr; }
typedef int (*tls_session_ticket_ext_cb_fn)(SSL *s, const unsigned char *data,
    int len, void *arg);
typedef int (*tls_session_secret_cb_fn)(SSL *s, void *secret, int *secret_len,
    struct stack_st_SSL_CIPHER *peer_ciphers,
    const SSL_CIPHER **cipher, void *arg);
typedef int (*custom_ext_add_cb)(SSL *s, unsigned int ext_type,
    const unsigned char **out, size_t *outlen,
    int *al, void *add_arg);
typedef void (*custom_ext_free_cb)(SSL *s, unsigned int ext_type,
    const unsigned char *out, void *add_arg);
typedef int (*custom_ext_parse_cb)(SSL *s, unsigned int ext_type,
    const unsigned char *in, size_t inlen,
    int *al, void *parse_arg);
typedef int (*SSL_custom_ext_add_cb_ex)(SSL *s, unsigned int ext_type,
    unsigned int context,
    const unsigned char **out,
    size_t *outlen, X509 *x,
    size_t chainidx,
    int *al, void *add_arg);
typedef void (*SSL_custom_ext_free_cb_ex)(SSL *s, unsigned int ext_type,
    unsigned int context,
    const unsigned char *out,
    void *add_arg);
typedef int (*SSL_custom_ext_parse_cb_ex)(SSL *s, unsigned int ext_type,
    unsigned int context,
    const unsigned char *in,
    size_t inlen, X509 *x,
    size_t chainidx,
    int *al, void *parse_arg);
typedef int (*SSL_verify_cb)(int preverify_ok, X509_STORE_CTX *x509_ctx);
typedef int (*SSL_async_callback_fn)(SSL *s, void *arg);
uint64_t SSL_CTX_get_options(const SSL_CTX *ctx);
uint64_t SSL_get_options(const SSL *s);
uint64_t SSL_CTX_clear_options(SSL_CTX *ctx, uint64_t op);
uint64_t SSL_clear_options(SSL *s, uint64_t op);
uint64_t SSL_CTX_set_options(SSL_CTX *ctx, uint64_t op);
uint64_t SSL_set_options(SSL *s, uint64_t op);
void SSL_CTX_set_msg_callback(SSL_CTX *ctx,
    void (*cb)(int write_p, int version,
        int content_type, const void *buf,
        size_t len, SSL *ssl, void *arg));
void SSL_set_msg_callback(SSL *ssl,
    void (*cb)(int write_p, int version,
        int content_type, const void *buf,
        size_t len, SSL *ssl, void *arg));
__attribute__((deprecated("Since OpenSSL " "3.0"))) int SSL_SRP_CTX_init(SSL *s);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int SSL_CTX_SRP_CTX_init(SSL_CTX *ctx);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int SSL_SRP_CTX_free(SSL *ctx);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int SSL_CTX_SRP_CTX_free(SSL_CTX *ctx);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int SSL_srp_server_param_with_username(SSL *s,
    int *ad);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int SRP_Calc_A_param(SSL *s);
typedef int (*GEN_SESSION_CB)(SSL *ssl, unsigned char *id,
    unsigned int *id_len);
struct lhash_st_SSL_SESSION *SSL_CTX_sessions(SSL_CTX *ctx);
void SSL_CTX_sess_set_new_cb(SSL_CTX *ctx,
    int (*new_session_cb)(struct ssl_st *ssl,
        SSL_SESSION *sess));
int (*SSL_CTX_sess_get_new_cb(SSL_CTX *ctx))(struct ssl_st *ssl,
    SSL_SESSION *sess);
void SSL_CTX_sess_set_remove_cb(SSL_CTX *ctx,
    void (*remove_session_cb)(struct ssl_ctx_st
                                  *ctx,
        SSL_SESSION *sess));
void (*SSL_CTX_sess_get_remove_cb(SSL_CTX *ctx))(struct ssl_ctx_st *ctx,
    SSL_SESSION *sess);
void SSL_CTX_sess_set_get_cb(SSL_CTX *ctx,
    SSL_SESSION *(*get_session_cb)(struct ssl_st
                                       *ssl,
        const unsigned char
            *data,
        int len,
        int *copy));
SSL_SESSION *(*SSL_CTX_sess_get_get_cb(SSL_CTX *ctx))(struct ssl_st *ssl,
    const unsigned char *data,
    int len, int *copy);
void SSL_CTX_set_info_callback(SSL_CTX *ctx,
    void (*cb)(const SSL *ssl, int type, int val));
void (*SSL_CTX_get_info_callback(SSL_CTX *ctx))(const SSL *ssl, int type,
    int val);
void SSL_CTX_set_client_cert_cb(SSL_CTX *ctx,
    int (*client_cert_cb)(SSL *ssl, X509 **x509,
        EVP_PKEY **pkey));
int (*SSL_CTX_get_client_cert_cb(SSL_CTX *ctx))(SSL *ssl, X509 **x509,
    EVP_PKEY **pkey);
 int SSL_CTX_set_client_cert_engine(SSL_CTX *ctx, ENGINE *e);
void SSL_CTX_set_cookie_generate_cb(SSL_CTX *ctx,
    int (*app_gen_cookie_cb)(SSL *ssl,
        unsigned char
            *cookie,
        unsigned int
            *cookie_len));
void SSL_CTX_set_cookie_verify_cb(SSL_CTX *ctx,
    int (*app_verify_cookie_cb)(SSL *ssl,
        const unsigned char *cookie,
        unsigned int
            cookie_len));
void SSL_CTX_set_stateless_cookie_generate_cb(
    SSL_CTX *ctx,
    int (*gen_stateless_cookie_cb)(SSL *ssl,
        unsigned char *cookie,
        size_t *cookie_len));
void SSL_CTX_set_stateless_cookie_verify_cb(
    SSL_CTX *ctx,
    int (*verify_stateless_cookie_cb)(SSL *ssl,
        const unsigned char *cookie,
        size_t cookie_len));
typedef int (*SSL_CTX_npn_advertised_cb_func)(SSL *ssl,
    const unsigned char **out,
    unsigned int *outlen,
    void *arg);
void SSL_CTX_set_next_protos_advertised_cb(SSL_CTX *s,
    SSL_CTX_npn_advertised_cb_func cb,
    void *arg);
typedef int (*SSL_CTX_npn_select_cb_func)(SSL *s,
    unsigned char **out,
    unsigned char *outlen,
    const unsigned char *in,
    unsigned int inlen,
    void *arg);
void SSL_CTX_set_next_proto_select_cb(SSL_CTX *s,
    SSL_CTX_npn_select_cb_func cb,
    void *arg);
void SSL_get0_next_proto_negotiated(const SSL *s, const unsigned char **data,
    unsigned *len);
 int SSL_select_next_proto(unsigned char **out, unsigned char *outlen,
    const unsigned char *in, unsigned int inlen,
    const unsigned char *client,
    unsigned int client_len);
 int SSL_CTX_set_alpn_protos(SSL_CTX *ctx, const unsigned char *protos,
    unsigned int protos_len);
 int SSL_set_alpn_protos(SSL *ssl, const unsigned char *protos,
    unsigned int protos_len);
typedef int (*SSL_CTX_alpn_select_cb_func)(SSL *ssl,
    const unsigned char **out,
    unsigned char *outlen,
    const unsigned char *in,
    unsigned int inlen,
    void *arg);
void SSL_CTX_set_alpn_select_cb(SSL_CTX *ctx,
    SSL_CTX_alpn_select_cb_func cb,
    void *arg);
void SSL_get0_alpn_selected(const SSL *ssl, const unsigned char **data,
    unsigned int *len);
typedef unsigned int (*SSL_psk_client_cb_func)(SSL *ssl,
    const char *hint,
    char *identity,
    unsigned int max_identity_len,
    unsigned char *psk,
    unsigned int max_psk_len);
void SSL_CTX_set_psk_client_callback(SSL_CTX *ctx, SSL_psk_client_cb_func cb);
void SSL_set_psk_client_callback(SSL *ssl, SSL_psk_client_cb_func cb);
typedef unsigned int (*SSL_psk_server_cb_func)(SSL *ssl,
    const char *identity,
    unsigned char *psk,
    unsigned int max_psk_len);
void SSL_CTX_set_psk_server_callback(SSL_CTX *ctx, SSL_psk_server_cb_func cb);
void SSL_set_psk_server_callback(SSL *ssl, SSL_psk_server_cb_func cb);
 int SSL_CTX_use_psk_identity_hint(SSL_CTX *ctx, const char *identity_hint);
 int SSL_use_psk_identity_hint(SSL *s, const char *identity_hint);
const char *SSL_get_psk_identity_hint(const SSL *s);
const char *SSL_get_psk_identity(const SSL *s);
typedef int (*SSL_psk_find_session_cb_func)(SSL *ssl,
    const unsigned char *identity,
    size_t identity_len,
    SSL_SESSION **sess);
typedef int (*SSL_psk_use_session_cb_func)(SSL *ssl, const EVP_MD *md,
    const unsigned char **id,
    size_t *idlen,
    SSL_SESSION **sess);
void SSL_set_psk_find_session_callback(SSL *s, SSL_psk_find_session_cb_func cb);
void SSL_CTX_set_psk_find_session_callback(SSL_CTX *ctx,
    SSL_psk_find_session_cb_func cb);
void SSL_set_psk_use_session_callback(SSL *s, SSL_psk_use_session_cb_func cb);
void SSL_CTX_set_psk_use_session_callback(SSL_CTX *ctx,
    SSL_psk_use_session_cb_func cb);
 int SSL_CTX_has_client_custom_ext(const SSL_CTX *ctx,
    unsigned int ext_type);
 int SSL_CTX_add_client_custom_ext(SSL_CTX *ctx,
    unsigned int ext_type,
    custom_ext_add_cb add_cb,
    custom_ext_free_cb free_cb,
    void *add_arg,
    custom_ext_parse_cb parse_cb,
    void *parse_arg);
 int SSL_CTX_add_server_custom_ext(SSL_CTX *ctx,
    unsigned int ext_type,
    custom_ext_add_cb add_cb,
    custom_ext_free_cb free_cb,
    void *add_arg,
    custom_ext_parse_cb parse_cb,
    void *parse_arg);
 int SSL_CTX_add_custom_ext(SSL_CTX *ctx, unsigned int ext_type,
    unsigned int context,
    SSL_custom_ext_add_cb_ex add_cb,
    SSL_custom_ext_free_cb_ex free_cb,
    void *add_arg,
    SSL_custom_ext_parse_cb_ex parse_cb,
    void *parse_arg);
 int SSL_extension_supported(unsigned int ext_type);
typedef void (*SSL_CTX_keylog_cb_func)(const SSL *ssl, const char *line);
void SSL_CTX_set_keylog_callback(SSL_CTX *ctx, SSL_CTX_keylog_cb_func cb);
SSL_CTX_keylog_cb_func SSL_CTX_get_keylog_callback(const SSL_CTX *ctx);
int SSL_CTX_set_max_early_data(SSL_CTX *ctx, uint32_t max_early_data);
uint32_t SSL_CTX_get_max_early_data(const SSL_CTX *ctx);
int SSL_set_max_early_data(SSL *s, uint32_t max_early_data);
uint32_t SSL_get_max_early_data(const SSL *s);
int SSL_CTX_set_recv_max_early_data(SSL_CTX *ctx, uint32_t recv_max_early_data);
uint32_t SSL_CTX_get_recv_max_early_data(const SSL_CTX *ctx);
int SSL_set_recv_max_early_data(SSL *s, uint32_t recv_max_early_data);
uint32_t SSL_get_recv_max_early_data(const SSL *s);
       
       
       
int SSL_CTX_set_tlsext_max_fragment_length(SSL_CTX *ctx, uint8_t mode);
int SSL_set_tlsext_max_fragment_length(SSL *ssl, uint8_t mode);
 const char *SSL_get_servername(const SSL *s, const int type);
 int SSL_get_servername_type(const SSL *s);
 int SSL_export_keying_material(SSL *s, unsigned char *out, size_t olen,
    const char *label, size_t llen,
    const unsigned char *context,
    size_t contextlen, int use_context);
 int SSL_export_keying_material_early(SSL *s, unsigned char *out,
    size_t olen, const char *label,
    size_t llen,
    const unsigned char *context,
    size_t contextlen);
int SSL_get_peer_signature_type_nid(const SSL *s, int *pnid);
int SSL_get_signature_type_nid(const SSL *s, int *pnid);
int SSL_get_sigalgs(SSL *s, int idx,
    int *psign, int *phash, int *psignandhash,
    unsigned char *rsig, unsigned char *rhash);
char *SSL_get1_builtin_sigalgs(OSSL_LIB_CTX *libctx);
int SSL_get_shared_sigalgs(SSL *s, int idx,
    int *psign, int *phash, int *psignandhash,
    unsigned char *rsig, unsigned char *rhash);
 int SSL_check_chain(SSL *s, X509 *x, EVP_PKEY *pk, struct stack_st_X509 *chain);
int SSL_CTX_set_tlsext_ticket_key_evp_cb(SSL_CTX *ctx, int (*fp)(SSL *, unsigned char *, unsigned char *, EVP_CIPHER_CTX *, EVP_MAC_CTX *, int));
struct tls_session_ticket_ext_st {
    unsigned short length;
    void *data;
};
       
       
 int SSL_CTX_set_tlsext_use_srtp(SSL_CTX *ctx, const char *profiles);
 int SSL_set_tlsext_use_srtp(SSL *ssl, const char *profiles);
 struct stack_st_SRTP_PROTECTION_PROFILE *SSL_get_srtp_profiles(SSL *ssl);
 SRTP_PROTECTION_PROFILE *SSL_get_selected_srtp_profile(SSL *s);
       
 const SSL_METHOD *OSSL_QUIC_client_method(void);
 const SSL_METHOD *OSSL_QUIC_client_thread_method(void);
 const SSL_METHOD *OSSL_QUIC_server_method(void);
struct stack_st_SSL_CIPHER; typedef int (*sk_SSL_CIPHER_compfunc)(const SSL_CIPHER *const *a, const SSL_CIPHER *const *b); typedef void (*sk_SSL_CIPHER_freefunc)(SSL_CIPHER * a); typedef SSL_CIPHER *(*sk_SSL_CIPHER_copyfunc)(const SSL_CIPHER *a); static __attribute__((unused)) inline const SSL_CIPHER *ossl_check_SSL_CIPHER_type(const SSL_CIPHER *ptr) { return ptr; } static __attribute__((unused)) inline const OPENSSL_STACK *ossl_check_const_SSL_CIPHER_sk_type(const struct stack_st_SSL_CIPHER *sk) { return (const OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_STACK *ossl_check_SSL_CIPHER_sk_type(struct stack_st_SSL_CIPHER *sk) { return (OPENSSL_STACK *)sk; } static __attribute__((unused)) inline OPENSSL_sk_compfunc ossl_check_SSL_CIPHER_compfunc_type(sk_SSL_CIPHER_compfunc cmp) { return (OPENSSL_sk_compfunc)cmp; } static __attribute__((unused)) inline OPENSSL_sk_copyfunc ossl_check_SSL_CIPHER_copyfunc_type(sk_SSL_CIPHER_copyfunc cpy) { return (OPENSSL_sk_copyfunc)cpy; } static __attribute__((unused)) inline OPENSSL_sk_freefunc ossl_check_SSL_CIPHER_freefunc_type(sk_SSL_CIPHER_freefunc fr) { return (OPENSSL_sk_freefunc)fr; }
__attribute__((deprecated("Since OpenSSL " "1.1.0"))) void SSL_set_debug(SSL *s, int debug);
typedef enum {
    TLS_ST_BEFORE,
    TLS_ST_OK,
    DTLS_ST_CR_HELLO_VERIFY_REQUEST,
    TLS_ST_CR_SRVR_HELLO,
    TLS_ST_CR_CERT,
    TLS_ST_CR_COMP_CERT,
    TLS_ST_CR_CERT_STATUS,
    TLS_ST_CR_KEY_EXCH,
    TLS_ST_CR_CERT_REQ,
    TLS_ST_CR_SRVR_DONE,
    TLS_ST_CR_SESSION_TICKET,
    TLS_ST_CR_CHANGE,
    TLS_ST_CR_FINISHED,
    TLS_ST_CW_CLNT_HELLO,
    TLS_ST_CW_CERT,
    TLS_ST_CW_COMP_CERT,
    TLS_ST_CW_KEY_EXCH,
    TLS_ST_CW_CERT_VRFY,
    TLS_ST_CW_CHANGE,
    TLS_ST_CW_NEXT_PROTO,
    TLS_ST_CW_FINISHED,
    TLS_ST_SW_HELLO_REQ,
    TLS_ST_SR_CLNT_HELLO,
    DTLS_ST_SW_HELLO_VERIFY_REQUEST,
    TLS_ST_SW_SRVR_HELLO,
    TLS_ST_SW_CERT,
    TLS_ST_SW_COMP_CERT,
    TLS_ST_SW_KEY_EXCH,
    TLS_ST_SW_CERT_REQ,
    TLS_ST_SW_SRVR_DONE,
    TLS_ST_SR_CERT,
    TLS_ST_SR_COMP_CERT,
    TLS_ST_SR_KEY_EXCH,
    TLS_ST_SR_CERT_VRFY,
    TLS_ST_SR_NEXT_PROTO,
    TLS_ST_SR_CHANGE,
    TLS_ST_SR_FINISHED,
    TLS_ST_SW_SESSION_TICKET,
    TLS_ST_SW_CERT_STATUS,
    TLS_ST_SW_CHANGE,
    TLS_ST_SW_FINISHED,
    TLS_ST_SW_ENCRYPTED_EXTENSIONS,
    TLS_ST_CR_ENCRYPTED_EXTENSIONS,
    TLS_ST_CR_CERT_VRFY,
    TLS_ST_SW_CERT_VRFY,
    TLS_ST_CR_HELLO_REQ,
    TLS_ST_SW_KEY_UPDATE,
    TLS_ST_CW_KEY_UPDATE,
    TLS_ST_SR_KEY_UPDATE,
    TLS_ST_CR_KEY_UPDATE,
    TLS_ST_EARLY_DATA,
    TLS_ST_PENDING_EARLY_DATA_END,
    TLS_ST_CW_END_OF_EARLY_DATA,
    TLS_ST_SR_END_OF_EARLY_DATA
} OSSL_HANDSHAKE_STATE;
int SSL_in_init(const SSL *s);
int SSL_in_before(const SSL *s);
int SSL_is_init_finished(const SSL *s);
size_t SSL_get_finished(const SSL *s, void *buf, size_t count);
size_t SSL_get_peer_finished(const SSL *s, void *buf, size_t count);
extern SSL_SESSION *PEM_read_bio_SSL_SESSION(BIO *out, SSL_SESSION **x, pem_password_cb *cb, void *u); extern SSL_SESSION *PEM_read_SSL_SESSION(FILE *out, SSL_SESSION **x, pem_password_cb *cb, void *u); extern int PEM_write_bio_SSL_SESSION(BIO *out, const SSL_SESSION *x); extern int PEM_write_SSL_SESSION(FILE *out, const SSL_SESSION *x);
const char *SSL_get0_group_name(SSL *s);
const char *SSL_group_to_name(SSL *s, int id);
int SSL_set0_tmp_dh_pkey(SSL *s, EVP_PKEY *dhpkey);
int SSL_CTX_set0_tmp_dh_pkey(SSL_CTX *ctx, EVP_PKEY *dhpkey);
 const BIO_METHOD *BIO_f_ssl(void);
 BIO *BIO_new_ssl(SSL_CTX *ctx, int client);
 BIO *BIO_new_ssl_connect(SSL_CTX *ctx);
 BIO *BIO_new_buffer_ssl_connect(SSL_CTX *ctx);
 int BIO_ssl_copy_session_id(BIO *to, BIO *from);
void BIO_ssl_shutdown(BIO *ssl_bio);
 int SSL_CTX_set_cipher_list(SSL_CTX *, const char *str);
 SSL_CTX *SSL_CTX_new(const SSL_METHOD *meth);
 SSL_CTX *SSL_CTX_new_ex(OSSL_LIB_CTX *libctx, const char *propq,
    const SSL_METHOD *meth);
int SSL_CTX_up_ref(SSL_CTX *ctx);
void SSL_CTX_free(SSL_CTX *);
 long SSL_CTX_set_timeout(SSL_CTX *ctx, long t);
 long SSL_CTX_get_timeout(const SSL_CTX *ctx);
 X509_STORE *SSL_CTX_get_cert_store(const SSL_CTX *);
void SSL_CTX_set_cert_store(SSL_CTX *, X509_STORE *);
void SSL_CTX_set1_cert_store(SSL_CTX *, X509_STORE *);
 int SSL_want(const SSL *s);
 int SSL_clear(SSL *s);
__attribute__((deprecated("Since OpenSSL " "3.4" ";" "not Y2038-safe, replace with SSL_CTX_flush_sessions_ex()")))
void SSL_CTX_flush_sessions(SSL_CTX *ctx, long tm);
void SSL_CTX_flush_sessions_ex(SSL_CTX *ctx, time_t tm);
 const SSL_CIPHER *SSL_get_current_cipher(const SSL *s);
 const SSL_CIPHER *SSL_get_pending_cipher(const SSL *s);
 int SSL_CIPHER_get_bits(const SSL_CIPHER *c, int *alg_bits);
 const char *SSL_CIPHER_get_version(const SSL_CIPHER *c);
 const char *SSL_CIPHER_get_name(const SSL_CIPHER *c);
 const char *SSL_CIPHER_standard_name(const SSL_CIPHER *c);
 const char *OPENSSL_cipher_name(const char *rfc_name);
 uint32_t SSL_CIPHER_get_id(const SSL_CIPHER *c);
 uint16_t SSL_CIPHER_get_protocol_id(const SSL_CIPHER *c);
 int SSL_CIPHER_get_kx_nid(const SSL_CIPHER *c);
 int SSL_CIPHER_get_auth_nid(const SSL_CIPHER *c);
 const EVP_MD *SSL_CIPHER_get_handshake_digest(const SSL_CIPHER *c);
 int SSL_CIPHER_is_aead(const SSL_CIPHER *c);
 int SSL_get_fd(const SSL *s);
 int SSL_get_rfd(const SSL *s);
 int SSL_get_wfd(const SSL *s);
 const char *SSL_get_cipher_list(const SSL *s, int n);
 char *SSL_get_shared_ciphers(const SSL *s, char *buf, int size);
 int SSL_get_read_ahead(const SSL *s);
 int SSL_pending(const SSL *s);
 int SSL_has_pending(const SSL *s);
 int SSL_set_fd(SSL *s, int fd);
 int SSL_set_rfd(SSL *s, int fd);
 int SSL_set_wfd(SSL *s, int fd);
void SSL_set0_rbio(SSL *s, BIO *rbio);
void SSL_set0_wbio(SSL *s, BIO *wbio);
void SSL_set_bio(SSL *s, BIO *rbio, BIO *wbio);
 BIO *SSL_get_rbio(const SSL *s);
 BIO *SSL_get_wbio(const SSL *s);
 int SSL_set_cipher_list(SSL *s, const char *str);
 int SSL_CTX_set_ciphersuites(SSL_CTX *ctx, const char *str);
 int SSL_set_ciphersuites(SSL *s, const char *str);
void SSL_set_read_ahead(SSL *s, int yes);
 int SSL_get_verify_mode(const SSL *s);
 int SSL_get_verify_depth(const SSL *s);
 SSL_verify_cb SSL_get_verify_callback(const SSL *s);
void SSL_set_verify(SSL *s, int mode, SSL_verify_cb callback);
void SSL_set_verify_depth(SSL *s, int depth);
void SSL_set_cert_cb(SSL *s, int (*cb)(SSL *ssl, void *arg), void *arg);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int SSL_use_RSAPrivateKey(SSL *ssl, RSA *rsa);
__attribute__((deprecated("Since OpenSSL " "3.0")))
 int SSL_use_RSAPrivateKey_ASN1(SSL *ssl,
    const unsigned char *d, long len);
 int SSL_use_PrivateKey(SSL *ssl, EVP_PKEY *pkey);
 int SSL_use_PrivateKey_ASN1(int pk, SSL *ssl, const unsigned char *d,
    long len);
 int SSL_use_certificate(SSL *ssl, X509 *x);
 int SSL_use_certificate_ASN1(SSL *ssl, const unsigned char *d, int len);
 int SSL_use_cert_and_key(SSL *ssl, X509 *x509, EVP_PKEY *privatekey,
    struct stack_st_X509 *chain, int override);
 int SSL_CTX_use_serverinfo(SSL_CTX *ctx, const unsigned char *serverinfo,
    size_t serverinfo_length);
 int SSL_CTX_use_serverinfo_ex(SSL_CTX *ctx, unsigned int version,
    const unsigned char *serverinfo,
    size_t serverinfo_length);
 int SSL_CTX_use_serverinfo_file(SSL_CTX *ctx, const char *file);
__attribute__((deprecated("Since OpenSSL " "3.0")))
 int SSL_use_RSAPrivateKey_file(SSL *ssl, const char *file, int type);
 int SSL_use_PrivateKey_file(SSL *ssl, const char *file, int type);
 int SSL_use_certificate_file(SSL *ssl, const char *file, int type);
__attribute__((deprecated("Since OpenSSL " "3.0")))
 int SSL_CTX_use_RSAPrivateKey_file(SSL_CTX *ctx, const char *file,
    int type);
 int SSL_CTX_use_PrivateKey_file(SSL_CTX *ctx, const char *file,
    int type);
 int SSL_CTX_use_certificate_file(SSL_CTX *ctx, const char *file,
    int type);
 int SSL_CTX_use_certificate_chain_file(SSL_CTX *ctx, const char *file);
 int SSL_use_certificate_chain_file(SSL *ssl, const char *file);
 struct stack_st_X509_NAME *SSL_load_client_CA_file(const char *file);
 struct stack_st_X509_NAME *SSL_load_client_CA_file_ex(const char *file, OSSL_LIB_CTX *libctx,
    const char *propq);
 int SSL_add_file_cert_subjects_to_stack(struct stack_st_X509_NAME *stackCAs,
    const char *file);
int SSL_add_dir_cert_subjects_to_stack(struct stack_st_X509_NAME *stackCAs,
    const char *dir);
int SSL_add_store_cert_subjects_to_stack(struct stack_st_X509_NAME *stackCAs,
    const char *uri);
 const char *SSL_state_string(const SSL *s);
 const char *SSL_rstate_string(const SSL *s);
 const char *SSL_state_string_long(const SSL *s);
 const char *SSL_rstate_string_long(const SSL *s);
__attribute__((deprecated("Since OpenSSL " "3.4" ";" "not Y2038-safe, replace with SSL_SESSION_get_time_ex()")))
 long SSL_SESSION_get_time(const SSL_SESSION *s);
__attribute__((deprecated("Since OpenSSL " "3.4" ";" "not Y2038-safe, replace with SSL_SESSION_set_time_ex()")))
 long SSL_SESSION_set_time(SSL_SESSION *s, long t);
 long SSL_SESSION_get_timeout(const SSL_SESSION *s);
 long SSL_SESSION_set_timeout(SSL_SESSION *s, long t);
 int SSL_SESSION_get_protocol_version(const SSL_SESSION *s);
 int SSL_SESSION_set_protocol_version(SSL_SESSION *s, int version);
 time_t SSL_SESSION_get_time_ex(const SSL_SESSION *s);
 time_t SSL_SESSION_set_time_ex(SSL_SESSION *s, time_t t);
 const char *SSL_SESSION_get0_hostname(const SSL_SESSION *s);
 int SSL_SESSION_set1_hostname(SSL_SESSION *s, const char *hostname);
void SSL_SESSION_get0_alpn_selected(const SSL_SESSION *s,
    const unsigned char **alpn,
    size_t *len);
 int SSL_SESSION_set1_alpn_selected(SSL_SESSION *s,
    const unsigned char *alpn,
    size_t len);
 const SSL_CIPHER *SSL_SESSION_get0_cipher(const SSL_SESSION *s);
 int SSL_SESSION_set_cipher(SSL_SESSION *s, const SSL_CIPHER *cipher);
 int SSL_SESSION_has_ticket(const SSL_SESSION *s);
 unsigned long SSL_SESSION_get_ticket_lifetime_hint(const SSL_SESSION *s);
void SSL_SESSION_get0_ticket(const SSL_SESSION *s, const unsigned char **tick,
    size_t *len);
 uint32_t SSL_SESSION_get_max_early_data(const SSL_SESSION *s);
 int SSL_SESSION_set_max_early_data(SSL_SESSION *s,
    uint32_t max_early_data);
 int SSL_copy_session_id(SSL *to, const SSL *from);
 X509 *SSL_SESSION_get0_peer(SSL_SESSION *s);
 int SSL_SESSION_set1_id_context(SSL_SESSION *s,
    const unsigned char *sid_ctx,
    unsigned int sid_ctx_len);
 int SSL_SESSION_set1_id(SSL_SESSION *s, const unsigned char *sid,
    unsigned int sid_len);
 int SSL_SESSION_is_resumable(const SSL_SESSION *s);
 SSL_SESSION *SSL_SESSION_new(void);
 SSL_SESSION *SSL_SESSION_dup(const SSL_SESSION *src);
const unsigned char *SSL_SESSION_get_id(const SSL_SESSION *s,
    unsigned int *len);
const unsigned char *SSL_SESSION_get0_id_context(const SSL_SESSION *s,
    unsigned int *len);
 unsigned int SSL_SESSION_get_compress_id(const SSL_SESSION *s);
int SSL_SESSION_print_fp(FILE *fp, const SSL_SESSION *ses);
int SSL_SESSION_print(BIO *fp, const SSL_SESSION *ses);
int SSL_SESSION_print_keylog(BIO *bp, const SSL_SESSION *x);
int SSL_SESSION_up_ref(SSL_SESSION *ses);
void SSL_SESSION_free(SSL_SESSION *ses);
 int i2d_SSL_SESSION(const SSL_SESSION *in, unsigned char **pp);
 int SSL_set_session(SSL *to, SSL_SESSION *session);
int SSL_CTX_add_session(SSL_CTX *ctx, SSL_SESSION *session);
int SSL_CTX_remove_session(SSL_CTX *ctx, SSL_SESSION *session);
 int SSL_CTX_set_generate_session_id(SSL_CTX *ctx, GEN_SESSION_CB cb);
 int SSL_set_generate_session_id(SSL *s, GEN_SESSION_CB cb);
 int SSL_has_matching_session_id(const SSL *s,
    const unsigned char *id,
    unsigned int id_len);
SSL_SESSION *d2i_SSL_SESSION(SSL_SESSION **a, const unsigned char **pp,
    long length);
SSL_SESSION *d2i_SSL_SESSION_ex(SSL_SESSION **a, const unsigned char **pp,
    long length, OSSL_LIB_CTX *libctx,
    const char *propq);
 X509 *SSL_get0_peer_certificate(const SSL *s);
 X509 *SSL_get1_peer_certificate(const SSL *s);
 struct stack_st_X509 *SSL_get_peer_cert_chain(const SSL *s);
 int SSL_CTX_get_verify_mode(const SSL_CTX *ctx);
 int SSL_CTX_get_verify_depth(const SSL_CTX *ctx);
 SSL_verify_cb SSL_CTX_get_verify_callback(const SSL_CTX *ctx);
void SSL_CTX_set_verify(SSL_CTX *ctx, int mode, SSL_verify_cb callback);
void SSL_CTX_set_verify_depth(SSL_CTX *ctx, int depth);
void SSL_CTX_set_cert_verify_callback(SSL_CTX *ctx,
    int (*cb)(X509_STORE_CTX *, void *),
    void *arg);
void SSL_CTX_set_cert_cb(SSL_CTX *c, int (*cb)(SSL *ssl, void *arg),
    void *arg);
__attribute__((deprecated("Since OpenSSL " "3.0")))
 int SSL_CTX_use_RSAPrivateKey(SSL_CTX *ctx, RSA *rsa);
__attribute__((deprecated("Since OpenSSL " "3.0")))
 int SSL_CTX_use_RSAPrivateKey_ASN1(SSL_CTX *ctx, const unsigned char *d,
    long len);
 int SSL_CTX_use_PrivateKey(SSL_CTX *ctx, EVP_PKEY *pkey);
 int SSL_CTX_use_PrivateKey_ASN1(int pk, SSL_CTX *ctx,
    const unsigned char *d, long len);
 int SSL_CTX_use_certificate(SSL_CTX *ctx, X509 *x);
 int SSL_CTX_use_certificate_ASN1(SSL_CTX *ctx, int len,
    const unsigned char *d);
 int SSL_CTX_use_cert_and_key(SSL_CTX *ctx, X509 *x509, EVP_PKEY *privatekey,
    struct stack_st_X509 *chain, int override);
void SSL_CTX_set_default_passwd_cb(SSL_CTX *ctx, pem_password_cb *cb);
void SSL_CTX_set_default_passwd_cb_userdata(SSL_CTX *ctx, void *u);
pem_password_cb *SSL_CTX_get_default_passwd_cb(SSL_CTX *ctx);
void *SSL_CTX_get_default_passwd_cb_userdata(SSL_CTX *ctx);
void SSL_set_default_passwd_cb(SSL *s, pem_password_cb *cb);
void SSL_set_default_passwd_cb_userdata(SSL *s, void *u);
pem_password_cb *SSL_get_default_passwd_cb(SSL *s);
void *SSL_get_default_passwd_cb_userdata(SSL *s);
 int SSL_CTX_check_private_key(const SSL_CTX *ctx);
 int SSL_check_private_key(const SSL *ctx);
 int SSL_CTX_set_session_id_context(SSL_CTX *ctx,
    const unsigned char *sid_ctx,
    unsigned int sid_ctx_len);
SSL *SSL_new(SSL_CTX *ctx);
int SSL_up_ref(SSL *s);
int SSL_is_dtls(const SSL *s);
int SSL_is_tls(const SSL *s);
int SSL_is_quic(const SSL *s);
 int SSL_set_session_id_context(SSL *ssl, const unsigned char *sid_ctx,
    unsigned int sid_ctx_len);
 int SSL_CTX_set_purpose(SSL_CTX *ctx, int purpose);
 int SSL_set_purpose(SSL *ssl, int purpose);
 int SSL_CTX_set_trust(SSL_CTX *ctx, int trust);
 int SSL_set_trust(SSL *ssl, int trust);
 int SSL_set1_host(SSL *s, const char *host);
 int SSL_add1_host(SSL *s, const char *host);
 const char *SSL_get0_peername(SSL *s);
void SSL_set_hostflags(SSL *s, unsigned int flags);
 int SSL_CTX_dane_enable(SSL_CTX *ctx);
 int SSL_CTX_dane_mtype_set(SSL_CTX *ctx, const EVP_MD *md,
    uint8_t mtype, uint8_t ord);
 int SSL_dane_enable(SSL *s, const char *basedomain);
 int SSL_dane_tlsa_add(SSL *s, uint8_t usage, uint8_t selector,
    uint8_t mtype, const unsigned char *data, size_t dlen);
 int SSL_get0_dane_authority(SSL *s, X509 **mcert, EVP_PKEY **mspki);
 int SSL_get0_dane_tlsa(SSL *s, uint8_t *usage, uint8_t *selector,
    uint8_t *mtype, const unsigned char **data,
    size_t *dlen);
SSL_DANE *SSL_get0_dane(SSL *ssl);
unsigned long SSL_CTX_dane_set_flags(SSL_CTX *ctx, unsigned long flags);
unsigned long SSL_CTX_dane_clear_flags(SSL_CTX *ctx, unsigned long flags);
unsigned long SSL_dane_set_flags(SSL *ssl, unsigned long flags);
unsigned long SSL_dane_clear_flags(SSL *ssl, unsigned long flags);
 int SSL_CTX_set1_param(SSL_CTX *ctx, X509_VERIFY_PARAM *vpm);
 int SSL_set1_param(SSL *ssl, X509_VERIFY_PARAM *vpm);
 X509_VERIFY_PARAM *SSL_CTX_get0_param(SSL_CTX *ctx);
 X509_VERIFY_PARAM *SSL_get0_param(SSL *ssl);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int SSL_CTX_set_srp_username(SSL_CTX *ctx, char *name);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int SSL_CTX_set_srp_password(SSL_CTX *ctx, char *password);
__attribute__((deprecated("Since OpenSSL " "3.0"))) int SSL_CTX_set_srp_strength(SSL_CTX *ctx, int strength);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int SSL_CTX_set_srp_client_pwd_callback(SSL_CTX *ctx,
    char *(*cb)(SSL *, void *));
__attribute__((deprecated("Since OpenSSL " "3.0")))
int SSL_CTX_set_srp_verify_param_callback(SSL_CTX *ctx,
    int (*cb)(SSL *, void *));
__attribute__((deprecated("Since OpenSSL " "3.0")))
int SSL_CTX_set_srp_username_callback(SSL_CTX *ctx,
    int (*cb)(SSL *, int *, void *));
__attribute__((deprecated("Since OpenSSL " "3.0"))) int SSL_CTX_set_srp_cb_arg(SSL_CTX *ctx, void *arg);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int SSL_set_srp_server_param(SSL *s, const BIGNUM *N, const BIGNUM *g,
    BIGNUM *sa, BIGNUM *v, char *info);
__attribute__((deprecated("Since OpenSSL " "3.0")))
int SSL_set_srp_server_param_pw(SSL *s, const char *user, const char *pass,
    const char *grp);
__attribute__((deprecated("Since OpenSSL " "3.0"))) BIGNUM *SSL_get_srp_g(SSL *s);
__attribute__((deprecated("Since OpenSSL " "3.0"))) BIGNUM *SSL_get_srp_N(SSL *s);
__attribute__((deprecated("Since OpenSSL " "3.0"))) char *SSL_get_srp_username(SSL *s);
__attribute__((deprecated("Since OpenSSL " "3.0"))) char *SSL_get_srp_userinfo(SSL *s);
typedef int (*SSL_client_hello_cb_fn)(SSL *s, int *al, void *arg);
void SSL_CTX_set_client_hello_cb(SSL_CTX *c, SSL_client_hello_cb_fn cb,
    void *arg);
typedef int (*SSL_new_pending_conn_cb_fn)(SSL_CTX *ctx, SSL *new_ssl,
    void *arg);
void SSL_CTX_set_new_pending_conn_cb(SSL_CTX *c, SSL_new_pending_conn_cb_fn cb,
    void *arg);
int SSL_client_hello_isv2(SSL *s);
unsigned int SSL_client_hello_get0_legacy_version(SSL *s);
size_t SSL_client_hello_get0_random(SSL *s, const unsigned char **out);
size_t SSL_client_hello_get0_session_id(SSL *s, const unsigned char **out);
size_t SSL_client_hello_get0_ciphers(SSL *s, const unsigned char **out);
size_t SSL_client_hello_get0_compression_methods(SSL *s,
    const unsigned char **out);
int SSL_client_hello_get1_extensions_present(SSL *s, int **out, size_t *outlen);
int SSL_client_hello_get_extension_order(SSL *s, uint16_t *exts,
    size_t *num_exts);
int SSL_client_hello_get0_ext(SSL *s, unsigned int type,
    const unsigned char **out, size_t *outlen);
void SSL_certs_clear(SSL *s);
void SSL_free(SSL *ssl);
 int SSL_waiting_for_async(SSL *s);
 int SSL_get_all_async_fds(SSL *s, int *fds, size_t *numfds);
 int SSL_get_changed_async_fds(SSL *s, int *addfd,
    size_t *numaddfds, int *delfd,
    size_t *numdelfds);
 int SSL_CTX_set_async_callback(SSL_CTX *ctx, SSL_async_callback_fn callback);
 int SSL_CTX_set_async_callback_arg(SSL_CTX *ctx, void *arg);
 int SSL_set_async_callback(SSL *s, SSL_async_callback_fn callback);
 int SSL_set_async_callback_arg(SSL *s, void *arg);
 int SSL_get_async_status(SSL *s, int *status);
 int SSL_accept(SSL *ssl);
 int SSL_stateless(SSL *s);
 int SSL_connect(SSL *ssl);
 int SSL_read(SSL *ssl, void *buf, int num);
 int SSL_read_ex(SSL *ssl, void *buf, size_t num, size_t *readbytes);
 int SSL_read_early_data(SSL *s, void *buf, size_t num,
    size_t *readbytes);
 int SSL_peek(SSL *ssl, void *buf, int num);
 int SSL_peek_ex(SSL *ssl, void *buf, size_t num, size_t *readbytes);
 ssize_t SSL_sendfile(SSL *s, int fd, off_t offset, size_t size,
    int flags);
 int SSL_write(SSL *ssl, const void *buf, int num);
 int SSL_write_ex(SSL *s, const void *buf, size_t num, size_t *written);
 int SSL_write_early_data(SSL *s, const void *buf, size_t num,
    size_t *written);
long SSL_ctrl(SSL *ssl, int cmd, long larg, void *parg);
long SSL_callback_ctrl(SSL *, int, void (*)(void));
long SSL_CTX_ctrl(SSL_CTX *ctx, int cmd, long larg, void *parg);
long SSL_CTX_callback_ctrl(SSL_CTX *, int, void (*)(void));
 int SSL_write_ex2(SSL *s, const void *buf, size_t num,
    uint64_t flags,
    size_t *written);
 int SSL_get_early_data_status(const SSL *s);
 int SSL_get_error(const SSL *s, int ret_code);
 const char *SSL_get_version(const SSL *s);
 int SSL_get_handshake_rtt(const SSL *s, uint64_t *rtt);
__attribute__((deprecated("Since OpenSSL " "3.0")))
 int SSL_CTX_set_ssl_version(SSL_CTX *ctx, const SSL_METHOD *meth);
 const SSL_METHOD *TLS_method(void);
 const SSL_METHOD *TLS_server_method(void);
 const SSL_METHOD *TLS_client_method(void);
__attribute__((deprecated("Since OpenSSL " "1.1.0"))) const SSL_METHOD *TLSv1_method(void);
__attribute__((deprecated("Since OpenSSL " "1.1.0"))) const SSL_METHOD *TLSv1_server_method(void);
__attribute__((deprecated("Since OpenSSL " "1.1.0"))) const SSL_METHOD *TLSv1_client_method(void);
__attribute__((deprecated("Since OpenSSL " "1.1.0"))) const SSL_METHOD *TLSv1_1_method(void);
__attribute__((deprecated("Since OpenSSL " "1.1.0"))) const SSL_METHOD *TLSv1_1_server_method(void);
__attribute__((deprecated("Since OpenSSL " "1.1.0"))) const SSL_METHOD *TLSv1_1_client_method(void);
__attribute__((deprecated("Since OpenSSL " "1.1.0"))) const SSL_METHOD *TLSv1_2_method(void);
__attribute__((deprecated("Since OpenSSL " "1.1.0"))) const SSL_METHOD *TLSv1_2_server_method(void);
__attribute__((deprecated("Since OpenSSL " "1.1.0"))) const SSL_METHOD *TLSv1_2_client_method(void);
__attribute__((deprecated("Since OpenSSL " "1.1.0"))) const SSL_METHOD *DTLSv1_method(void);
__attribute__((deprecated("Since OpenSSL " "1.1.0"))) const SSL_METHOD *DTLSv1_server_method(void);
__attribute__((deprecated("Since OpenSSL " "1.1.0"))) const SSL_METHOD *DTLSv1_client_method(void);
__attribute__((deprecated("Since OpenSSL " "1.1.0"))) const SSL_METHOD *DTLSv1_2_method(void);
__attribute__((deprecated("Since OpenSSL " "1.1.0"))) const SSL_METHOD *DTLSv1_2_server_method(void);
__attribute__((deprecated("Since OpenSSL " "1.1.0"))) const SSL_METHOD *DTLSv1_2_client_method(void);
 const SSL_METHOD *DTLS_method(void);
 const SSL_METHOD *DTLS_server_method(void);
 const SSL_METHOD *DTLS_client_method(void);
 size_t DTLS_get_data_mtu(const SSL *s);
 struct stack_st_SSL_CIPHER *SSL_get_ciphers(const SSL *s);
 struct stack_st_SSL_CIPHER *SSL_CTX_get_ciphers(const SSL_CTX *ctx);
 struct stack_st_SSL_CIPHER *SSL_get_client_ciphers(const SSL *s);
 struct stack_st_SSL_CIPHER *SSL_get1_supported_ciphers(SSL *s);
 int SSL_do_handshake(SSL *s);
int SSL_key_update(SSL *s, int updatetype);
int SSL_get_key_update_type(const SSL *s);
int SSL_renegotiate(SSL *s);
int SSL_renegotiate_abbreviated(SSL *s);
 int SSL_renegotiate_pending(const SSL *s);
int SSL_new_session_ticket(SSL *s);
int SSL_shutdown(SSL *s);
 int SSL_verify_client_post_handshake(SSL *s);
void SSL_CTX_set_post_handshake_auth(SSL_CTX *ctx, int val);
void SSL_set_post_handshake_auth(SSL *s, int val);
 const SSL_METHOD *SSL_CTX_get_ssl_method(const SSL_CTX *ctx);
 const SSL_METHOD *SSL_get_ssl_method(const SSL *s);
 int SSL_set_ssl_method(SSL *s, const SSL_METHOD *method);
 const char *SSL_alert_type_string_long(int value);
 const char *SSL_alert_type_string(int value);
 const char *SSL_alert_desc_string_long(int value);
 const char *SSL_alert_desc_string(int value);
void SSL_set0_CA_list(SSL *s, struct stack_st_X509_NAME *name_list);
void SSL_CTX_set0_CA_list(SSL_CTX *ctx, struct stack_st_X509_NAME *name_list);
 const struct stack_st_X509_NAME *SSL_get0_CA_list(const SSL *s);
 const struct stack_st_X509_NAME *SSL_CTX_get0_CA_list(const SSL_CTX *ctx);
 int SSL_add1_to_CA_list(SSL *ssl, const X509 *x);
 int SSL_CTX_add1_to_CA_list(SSL_CTX *ctx, const X509 *x);
 const struct stack_st_X509_NAME *SSL_get0_peer_CA_list(const SSL *s);
void SSL_set_client_CA_list(SSL *s, struct stack_st_X509_NAME *name_list);
void SSL_CTX_set_client_CA_list(SSL_CTX *ctx, struct stack_st_X509_NAME *name_list);
 struct stack_st_X509_NAME *SSL_get_client_CA_list(const SSL *s);
 struct stack_st_X509_NAME *SSL_CTX_get_client_CA_list(const SSL_CTX *s);
 int SSL_add_client_CA(SSL *ssl, X509 *x);
 int SSL_CTX_add_client_CA(SSL_CTX *ctx, X509 *x);
void SSL_set_connect_state(SSL *s);
void SSL_set_accept_state(SSL *s);
 long SSL_get_default_timeout(const SSL *s);
 char *SSL_CIPHER_description(const SSL_CIPHER *, char *buf, int size);
 struct stack_st_X509_NAME *SSL_dup_CA_list(const struct stack_st_X509_NAME *sk);
 SSL *SSL_dup(SSL *ssl);
 X509 *SSL_get_certificate(const SSL *ssl);
struct evp_pkey_st *SSL_get_privatekey(const SSL *ssl);
 X509 *SSL_CTX_get0_certificate(const SSL_CTX *ctx);
 EVP_PKEY *SSL_CTX_get0_privatekey(const SSL_CTX *ctx);
void SSL_CTX_set_quiet_shutdown(SSL_CTX *ctx, int mode);
 int SSL_CTX_get_quiet_shutdown(const SSL_CTX *ctx);
void SSL_set_quiet_shutdown(SSL *ssl, int mode);
 int SSL_get_quiet_shutdown(const SSL *ssl);
void SSL_set_shutdown(SSL *ssl, int mode);
 int SSL_get_shutdown(const SSL *ssl);
 int SSL_version(const SSL *ssl);
 int SSL_client_version(const SSL *s);
 int SSL_CTX_set_default_verify_paths(SSL_CTX *ctx);
 int SSL_CTX_set_default_verify_dir(SSL_CTX *ctx);
 int SSL_CTX_set_default_verify_file(SSL_CTX *ctx);
 int SSL_CTX_set_default_verify_store(SSL_CTX *ctx);
 int SSL_CTX_load_verify_file(SSL_CTX *ctx, const char *CAfile);
 int SSL_CTX_load_verify_dir(SSL_CTX *ctx, const char *CApath);
 int SSL_CTX_load_verify_store(SSL_CTX *ctx, const char *CAstore);
 int SSL_CTX_load_verify_locations(SSL_CTX *ctx,
    const char *CAfile,
    const char *CApath);
 SSL_SESSION *SSL_get_session(const SSL *ssl);
 SSL_SESSION *SSL_get1_session(SSL *ssl);
 SSL_CTX *SSL_get_SSL_CTX(const SSL *ssl);
SSL_CTX *SSL_set_SSL_CTX(SSL *ssl, SSL_CTX *ctx);
void SSL_set_info_callback(SSL *ssl,
    void (*cb)(const SSL *ssl, int type, int val));
void (*SSL_get_info_callback(const SSL *ssl))(const SSL *ssl, int type,
    int val);
 OSSL_HANDSHAKE_STATE SSL_get_state(const SSL *ssl);
void SSL_set_verify_result(SSL *ssl, long v);
 long SSL_get_verify_result(const SSL *ssl);
 struct stack_st_X509 *SSL_get0_verified_chain(const SSL *s);
 size_t SSL_get_client_random(const SSL *ssl, unsigned char *out,
    size_t outlen);
 size_t SSL_get_server_random(const SSL *ssl, unsigned char *out,
    size_t outlen);
 size_t SSL_SESSION_get_master_key(const SSL_SESSION *sess,
    unsigned char *out, size_t outlen);
 int SSL_SESSION_set1_master_key(SSL_SESSION *sess,
    const unsigned char *in, size_t len);
uint8_t SSL_SESSION_get_max_fragment_length(const SSL_SESSION *sess);
 int SSL_set_ex_data(SSL *ssl, int idx, void *data);
void *SSL_get_ex_data(const SSL *ssl, int idx);
 int SSL_SESSION_set_ex_data(SSL_SESSION *ss, int idx, void *data);
void *SSL_SESSION_get_ex_data(const SSL_SESSION *ss, int idx);
 int SSL_CTX_set_ex_data(SSL_CTX *ssl, int idx, void *data);
void *SSL_CTX_get_ex_data(const SSL_CTX *ssl, int idx);
 int SSL_get_ex_data_X509_STORE_CTX_idx(void);
void SSL_CTX_set_default_read_buffer_len(SSL_CTX *ctx, size_t len);
void SSL_set_default_read_buffer_len(SSL *s, size_t len);
__attribute__((deprecated("Since OpenSSL " "3.0")))
void SSL_CTX_set_tmp_dh_callback(SSL_CTX *ctx,
    DH *(*dh)(SSL *ssl, int is_export,
        int keylength));
__attribute__((deprecated("Since OpenSSL " "3.0")))
void SSL_set_tmp_dh_callback(SSL *ssl,
    DH *(*dh)(SSL *ssl, int is_export,
        int keylength));
 const COMP_METHOD *SSL_get_current_compression(const SSL *s);
 const COMP_METHOD *SSL_get_current_expansion(const SSL *s);
 const char *SSL_COMP_get_name(const COMP_METHOD *comp);
 const char *SSL_COMP_get0_name(const SSL_COMP *comp);
 int SSL_COMP_get_id(const SSL_COMP *comp);
struct stack_st_SSL_COMP *SSL_COMP_get_compression_methods(void);
 struct stack_st_SSL_COMP *SSL_COMP_set0_compression_methods(struct stack_st_SSL_COMP
        *meths);
 int SSL_COMP_add_compression_method(int id, COMP_METHOD *cm);
const SSL_CIPHER *SSL_CIPHER_find(SSL *ssl, const unsigned char *ptr);
int SSL_CIPHER_get_cipher_nid(const SSL_CIPHER *c);
int SSL_CIPHER_get_digest_nid(const SSL_CIPHER *c);
int SSL_bytes_to_cipher_list(SSL *s, const unsigned char *bytes, size_t len,
    int isv2format, struct stack_st_SSL_CIPHER **sk,
    struct stack_st_SSL_CIPHER **scsvs);
 int SSL_set_session_ticket_ext(SSL *s, void *ext_data, int ext_len);
 int SSL_set_session_ticket_ext_cb(SSL *s,
    tls_session_ticket_ext_cb_fn cb,
    void *arg);
 int SSL_set_session_secret_cb(SSL *s,
    tls_session_secret_cb_fn session_secret_cb,
    void *arg);
void SSL_CTX_set_not_resumable_session_callback(SSL_CTX *ctx,
    int (*cb)(SSL *ssl,
        int
            is_forward_secure));
void SSL_set_not_resumable_session_callback(SSL *ssl,
    int (*cb)(SSL *ssl,
        int is_forward_secure));
void SSL_CTX_set_record_padding_callback(SSL_CTX *ctx,
    size_t (*cb)(SSL *ssl, int type,
        size_t len, void *arg));
void SSL_CTX_set_record_padding_callback_arg(SSL_CTX *ctx, void *arg);
void *SSL_CTX_get_record_padding_callback_arg(const SSL_CTX *ctx);
int SSL_CTX_set_block_padding(SSL_CTX *ctx, size_t block_size);
int SSL_CTX_set_block_padding_ex(SSL_CTX *ctx, size_t app_block_size,
    size_t hs_block_size);
int SSL_set_record_padding_callback(SSL *ssl,
    size_t (*cb)(SSL *ssl, int type,
        size_t len, void *arg));
void SSL_set_record_padding_callback_arg(SSL *ssl, void *arg);
void *SSL_get_record_padding_callback_arg(const SSL *ssl);
int SSL_set_block_padding(SSL *ssl, size_t block_size);
int SSL_set_block_padding_ex(SSL *ssl, size_t app_block_size,
    size_t hs_block_size);
int SSL_set_num_tickets(SSL *s, size_t num_tickets);
size_t SSL_get_num_tickets(const SSL *s);
int SSL_CTX_set_num_tickets(SSL_CTX *ctx, size_t num_tickets);
size_t SSL_CTX_get_num_tickets(const SSL_CTX *ctx);
int SSL_handle_events(SSL *s);
 int SSL_get_event_timeout(SSL *s, struct timeval *tv, int *is_infinite);
 int SSL_get_rpoll_descriptor(SSL *s, BIO_POLL_DESCRIPTOR *desc);
 int SSL_get_wpoll_descriptor(SSL *s, BIO_POLL_DESCRIPTOR *desc);
 int SSL_net_read_desired(SSL *s);
 int SSL_net_write_desired(SSL *s);
 int SSL_set_blocking_mode(SSL *s, int blocking);
 int SSL_get_blocking_mode(SSL *s);
 int SSL_set1_initial_peer_addr(SSL *s, const BIO_ADDR *peer_addr);
 SSL *SSL_get0_connection(SSL *s);
 int SSL_is_connection(SSL *s);
 int SSL_is_listener(SSL *ssl);
 SSL *SSL_get0_listener(SSL *s);
 SSL *SSL_new_listener(SSL_CTX *ctx, uint64_t flags);
 SSL *SSL_new_listener_from(SSL *ssl, uint64_t flags);
 SSL *SSL_new_from_listener(SSL *ssl, uint64_t flags);
 SSL *SSL_accept_connection(SSL *ssl, uint64_t flags);
 size_t SSL_get_accept_connection_queue_len(SSL *ssl);
 int SSL_listen(SSL *ssl);
 int SSL_is_domain(SSL *s);
 SSL *SSL_get0_domain(SSL *s);
 SSL *SSL_new_domain(SSL_CTX *ctx, uint64_t flags);
 int SSL_CTX_set_domain_flags(SSL_CTX *ctx, uint64_t domain_flags);
 int SSL_CTX_get_domain_flags(const SSL_CTX *ctx, uint64_t *domain_flags);
 int SSL_get_domain_flags(const SSL *ssl, uint64_t *domain_flags);
 int SSL_get_stream_type(SSL *s);
 uint64_t SSL_get_stream_id(SSL *s);
 int SSL_is_stream_local(SSL *s);
 int SSL_set_default_stream_mode(SSL *s, uint32_t mode);
 SSL *SSL_new_stream(SSL *s, uint64_t flags);
 int SSL_set_incoming_stream_policy(SSL *s, int policy, uint64_t aec);
 SSL *SSL_accept_stream(SSL *s, uint64_t flags);
 size_t SSL_get_accept_stream_queue_len(SSL *s);
 int SSL_inject_net_dgram(SSL *s, const unsigned char *buf,
    size_t buf_len,
    const BIO_ADDR *peer,
    const BIO_ADDR *local);
typedef struct ssl_shutdown_ex_args_st {
    uint64_t quic_error_code;
    const char *quic_reason;
} SSL_SHUTDOWN_EX_ARGS;
 int SSL_shutdown_ex(SSL *ssl, uint64_t flags,
    const SSL_SHUTDOWN_EX_ARGS *args,
    size_t args_len);
 int SSL_stream_conclude(SSL *ssl, uint64_t flags);
typedef struct ssl_stream_reset_args_st {
    uint64_t quic_error_code;
} SSL_STREAM_RESET_ARGS;
 int SSL_stream_reset(SSL *ssl,
    const SSL_STREAM_RESET_ARGS *args,
    size_t args_len);
 int SSL_get_stream_read_state(SSL *ssl);
 int SSL_get_stream_write_state(SSL *ssl);
 int SSL_get_stream_read_error_code(SSL *ssl, uint64_t *app_error_code);
 int SSL_get_stream_write_error_code(SSL *ssl, uint64_t *app_error_code);
typedef struct ssl_conn_close_info_st {
    uint64_t error_code, frame_type;
    const char *reason;
    size_t reason_len;
    uint32_t flags;
} SSL_CONN_CLOSE_INFO;
 int SSL_get_conn_close_info(SSL *ssl,
    SSL_CONN_CLOSE_INFO *info,
    size_t info_len);
int SSL_get_value_uint(SSL *s, uint32_t class_, uint32_t id, uint64_t *v);
int SSL_set_value_uint(SSL *s, uint32_t class_, uint32_t id, uint64_t v);
typedef struct ssl_poll_item_st {
    BIO_POLL_DESCRIPTOR desc;
    uint64_t events, revents;
} SSL_POLL_ITEM;
 int SSL_poll(SSL_POLL_ITEM *items,
    size_t num_items,
    size_t stride,
    const struct timeval *timeout,
    uint64_t flags,
    size_t *result_count);
static inline __attribute__((unused)) BIO_POLL_DESCRIPTOR
SSL_as_poll_descriptor(SSL *s)
{
    BIO_POLL_DESCRIPTOR d;
    d.type = 2;
    d.value.ssl = s;
    return d;
}
 int SSL_session_reused(const SSL *s);
 int SSL_is_server(const SSL *s);
 SSL_CONF_CTX *SSL_CONF_CTX_new(void);
int SSL_CONF_CTX_finish(SSL_CONF_CTX *cctx);
void SSL_CONF_CTX_free(SSL_CONF_CTX *cctx);
unsigned int SSL_CONF_CTX_set_flags(SSL_CONF_CTX *cctx, unsigned int flags);
 unsigned int SSL_CONF_CTX_clear_flags(SSL_CONF_CTX *cctx,
    unsigned int flags);
 int SSL_CONF_CTX_set1_prefix(SSL_CONF_CTX *cctx, const char *pre);
void SSL_CONF_CTX_set_ssl(SSL_CONF_CTX *cctx, SSL *ssl);
void SSL_CONF_CTX_set_ssl_ctx(SSL_CONF_CTX *cctx, SSL_CTX *ctx);
 int SSL_CONF_cmd(SSL_CONF_CTX *cctx, const char *cmd, const char *value);
 int SSL_CONF_cmd_argv(SSL_CONF_CTX *cctx, int *pargc, char ***pargv);
 int SSL_CONF_cmd_value_type(SSL_CONF_CTX *cctx, const char *cmd);
void SSL_add_ssl_module(void);
int SSL_config(SSL *s, const char *name);
int SSL_CTX_config(SSL_CTX *ctx, const char *name);
void SSL_trace(int write_p, int version, int content_type,
    const void *buf, size_t len, SSL *ssl, void *arg);
int DTLSv1_listen(SSL *s, BIO_ADDR *client);
typedef int (*ssl_ct_validation_cb)(const CT_POLICY_EVAL_CTX *ctx,
    const struct stack_st_SCT *scts, void *arg);
int SSL_set_ct_validation_callback(SSL *s, ssl_ct_validation_cb callback,
    void *arg);
int SSL_CTX_set_ct_validation_callback(SSL_CTX *ctx,
    ssl_ct_validation_cb callback,
    void *arg);
enum {
    SSL_CT_VALIDATION_PERMISSIVE = 0,
    SSL_CT_VALIDATION_STRICT
};
int SSL_enable_ct(SSL *s, int validation_mode);
int SSL_CTX_enable_ct(SSL_CTX *ctx, int validation_mode);
int SSL_ct_is_enabled(const SSL *s);
int SSL_CTX_ct_is_enabled(const SSL_CTX *ctx);
const struct stack_st_SCT *SSL_get0_peer_scts(SSL *s);
int SSL_CTX_set_default_ctlog_list_file(SSL_CTX *ctx);
int SSL_CTX_set_ctlog_list_file(SSL_CTX *ctx, const char *path);
void SSL_CTX_set0_ctlog_store(SSL_CTX *ctx, CTLOG_STORE *logs);
const CTLOG_STORE *SSL_CTX_get0_ctlog_store(const SSL_CTX *ctx);
void SSL_set_security_level(SSL *s, int level);
 int SSL_get_security_level(const SSL *s);
void SSL_set_security_callback(SSL *s,
    int (*cb)(const SSL *s, const SSL_CTX *ctx,
        int op, int bits, int nid,
        void *other, void *ex));
int (*SSL_get_security_callback(const SSL *s))(const SSL *s,
    const SSL_CTX *ctx, int op,
    int bits, int nid, void *other,
    void *ex);
void SSL_set0_security_ex_data(SSL *s, void *ex);
 void *SSL_get0_security_ex_data(const SSL *s);
void SSL_CTX_set_security_level(SSL_CTX *ctx, int level);
 int SSL_CTX_get_security_level(const SSL_CTX *ctx);
void SSL_CTX_set_security_callback(SSL_CTX *ctx,
    int (*cb)(const SSL *s, const SSL_CTX *ctx,
        int op, int bits, int nid,
        void *other, void *ex));
int (*SSL_CTX_get_security_callback(const SSL_CTX *ctx))(const SSL *s,
    const SSL_CTX *ctx,
    int op, int bits,
    int nid,
    void *other,
    void *ex);
void SSL_CTX_set0_security_ex_data(SSL_CTX *ctx, void *ex);
 void *SSL_CTX_get0_security_ex_data(const SSL_CTX *ctx);
int OPENSSL_init_ssl(uint64_t opts, const OPENSSL_INIT_SETTINGS *settings);
 const struct openssl_ssl_test_functions *SSL_test_functions(void);
 int SSL_free_buffers(SSL *ssl);
 int SSL_alloc_buffers(SSL *ssl);
typedef int SSL_TICKET_STATUS;
typedef int SSL_TICKET_RETURN;
typedef int (*SSL_CTX_generate_session_ticket_fn)(SSL *s, void *arg);
typedef SSL_TICKET_RETURN (*SSL_CTX_decrypt_session_ticket_fn)(SSL *s, SSL_SESSION *ss,
    const unsigned char *keyname,
    size_t keyname_length,
    SSL_TICKET_STATUS status,
    void *arg);
int SSL_CTX_set_session_ticket_cb(SSL_CTX *ctx,
    SSL_CTX_generate_session_ticket_fn gen_cb,
    SSL_CTX_decrypt_session_ticket_fn dec_cb,
    void *arg);
int SSL_SESSION_set1_ticket_appdata(SSL_SESSION *ss, const void *data, size_t len);
int SSL_SESSION_get0_ticket_appdata(SSL_SESSION *ss, void **data, size_t *len);
typedef unsigned int (*DTLS_timer_cb)(SSL *s, unsigned int timer_us);
void DTLS_set_timer_cb(SSL *s, DTLS_timer_cb cb);
typedef int (*SSL_allow_early_data_cb_fn)(SSL *s, void *arg);
void SSL_CTX_set_allow_early_data_cb(SSL_CTX *ctx,
    SSL_allow_early_data_cb_fn cb,
    void *arg);
void SSL_set_allow_early_data_cb(SSL *s,
    SSL_allow_early_data_cb_fn cb,
    void *arg);
const char *OSSL_default_cipher_list(void);
const char *OSSL_default_ciphersuites(void);
int SSL_CTX_compress_certs(SSL_CTX *ctx, int alg);
int SSL_compress_certs(SSL *ssl, int alg);
int SSL_CTX_set1_cert_comp_preference(SSL_CTX *ctx, int *algs, size_t len);
int SSL_set1_cert_comp_preference(SSL *ssl, int *algs, size_t len);
int SSL_CTX_set1_compressed_cert(SSL_CTX *ctx, int algorithm, unsigned char *comp_data,
    size_t comp_length, size_t orig_length);
int SSL_set1_compressed_cert(SSL *ssl, int algorithm, unsigned char *comp_data,
    size_t comp_length, size_t orig_length);
size_t SSL_CTX_get1_compressed_cert(SSL_CTX *ctx, int alg, unsigned char **data, size_t *orig_len);
size_t SSL_get1_compressed_cert(SSL *ssl, int alg, unsigned char **data, size_t *orig_len);
 int SSL_add_expected_rpk(SSL *s, EVP_PKEY *rpk);
 EVP_PKEY *SSL_get0_peer_rpk(const SSL *s);
 EVP_PKEY *SSL_SESSION_get0_peer_rpk(SSL_SESSION *s);
 int SSL_get_negotiated_client_cert_type(const SSL *s);
 int SSL_get_negotiated_server_cert_type(const SSL *s);
 int SSL_set1_client_cert_type(SSL *s, const unsigned char *val, size_t len);
 int SSL_set1_server_cert_type(SSL *s, const unsigned char *val, size_t len);
 int SSL_CTX_set1_client_cert_type(SSL_CTX *ctx, const unsigned char *val, size_t len);
 int SSL_CTX_set1_server_cert_type(SSL_CTX *ctx, const unsigned char *val, size_t len);
 int SSL_get0_client_cert_type(const SSL *s, unsigned char **t, size_t *len);
 int SSL_get0_server_cert_type(const SSL *s, unsigned char **t, size_t *len);
 int SSL_CTX_get0_client_cert_type(const SSL_CTX *ctx, unsigned char **t, size_t *len);
 int SSL_CTX_get0_server_cert_type(const SSL_CTX *s, unsigned char **t, size_t *len);
int SSL_set_quic_tls_cbs(SSL *s, const OSSL_DISPATCH *qtdis, void *arg);
int SSL_set_quic_tls_transport_params(SSL *s,
    const unsigned char *params,
    size_t params_len);
int SSL_set_quic_tls_early_data_enabled(SSL *s, int enabled);
       
struct err_state_st {
    int err_flags[16];
    int err_marks[16];
    unsigned long err_buffer[16];
    char *err_data[16];
    size_t err_data_size[16];
    int err_data_flags[16];
    char *err_file[16];
    int err_line[16];
    char *err_func[16];
    int top, bottom;
};
static __attribute__((unused)) inline int ERR_GET_LIB(unsigned long errcode)
{
    if ((((errcode) & ((unsigned int)0x7fffffff + 1)) != 0))
        return 2;
    return (errcode >> 23L) & 0xFF;
}
static __attribute__((unused)) inline int ERR_GET_RFLAGS(unsigned long errcode)
{
    if ((((errcode) & ((unsigned int)0x7fffffff + 1)) != 0))
        return 0;
    return errcode & (0x1F << 18L);
}
static __attribute__((unused)) inline int ERR_GET_REASON(unsigned long errcode)
{
    if ((((errcode) & ((unsigned int)0x7fffffff + 1)) != 0))
        return errcode & ((unsigned int)0x7fffffff);
    return errcode & 0X7FFFFF;
}
static __attribute__((unused)) inline int ERR_FATAL_ERROR(unsigned long errcode)
{
    return (ERR_GET_RFLAGS(errcode) & (0x1 << 18L)) != 0;
}
static __attribute__((unused)) inline int ERR_COMMON_ERROR(unsigned long errcode)
{
    return (ERR_GET_RFLAGS(errcode) & (0x2 << 18L)) != 0;
}
typedef struct ERR_string_data_st {
    unsigned long error;
    const char *string;
} ERR_STRING_DATA;
struct lhash_st_ERR_STRING_DATA { union lh_ERR_STRING_DATA_dummy { void *d1; unsigned long d2; int d3; } dummy; }; typedef int (*lh_ERR_STRING_DATA_compfunc)(const ERR_STRING_DATA *a, const ERR_STRING_DATA *b); typedef unsigned long (*lh_ERR_STRING_DATA_hashfunc)(const ERR_STRING_DATA *a); typedef void (*lh_ERR_STRING_DATA_doallfunc)(ERR_STRING_DATA * a); static inline unsigned long lh_ERR_STRING_DATA_hash_thunk(const void *data, OPENSSL_LH_HASHFUNC hfn) { unsigned long (*hfn_conv)(const ERR_STRING_DATA *) = (unsigned long (*)(const ERR_STRING_DATA *))hfn; return hfn_conv((const ERR_STRING_DATA *)data); } static inline int lh_ERR_STRING_DATA_comp_thunk(const void *da, const void *db, OPENSSL_LH_COMPFUNC cfn) { int (*cfn_conv)(const ERR_STRING_DATA *, const ERR_STRING_DATA *) = (int (*)(const ERR_STRING_DATA *, const ERR_STRING_DATA *))cfn; return cfn_conv((const ERR_STRING_DATA *)da, (const ERR_STRING_DATA *)db); } static inline void lh_ERR_STRING_DATA_doall_thunk(void *node, OPENSSL_LH_DOALL_FUNC doall) { void (*doall_conv)(ERR_STRING_DATA *) = (void (*)(ERR_STRING_DATA *))doall; doall_conv((ERR_STRING_DATA *)node); } static inline void lh_ERR_STRING_DATA_doall_arg_thunk(void *node, void *arg, OPENSSL_LH_DOALL_FUNCARG doall) { void (*doall_conv)(ERR_STRING_DATA *, void *) = (void (*)(ERR_STRING_DATA *, void *))doall; doall_conv((ERR_STRING_DATA *)node, arg); } static __attribute__((unused)) inline ERR_STRING_DATA * ossl_check_ERR_STRING_DATA_lh_plain_type(ERR_STRING_DATA *ptr) { return ptr; } static __attribute__((unused)) inline const ERR_STRING_DATA * ossl_check_const_ERR_STRING_DATA_lh_plain_type(const ERR_STRING_DATA *ptr) { return ptr; } static __attribute__((unused)) inline const OPENSSL_LHASH * ossl_check_const_ERR_STRING_DATA_lh_type(const struct lhash_st_ERR_STRING_DATA *lh) { return (const OPENSSL_LHASH *)lh; } static __attribute__((unused)) inline OPENSSL_LHASH * ossl_check_ERR_STRING_DATA_lh_type(struct lhash_st_ERR_STRING_DATA *lh) { return (OPENSSL_LHASH *)lh; } static __attribute__((unused)) inline OPENSSL_LH_COMPFUNC ossl_check_ERR_STRING_DATA_lh_compfunc_type(lh_ERR_STRING_DATA_compfunc cmp) { return (OPENSSL_LH_COMPFUNC)cmp; } static __attribute__((unused)) inline OPENSSL_LH_HASHFUNC ossl_check_ERR_STRING_DATA_lh_hashfunc_type(lh_ERR_STRING_DATA_hashfunc hfn) { return (OPENSSL_LH_HASHFUNC)hfn; } static __attribute__((unused)) inline OPENSSL_LH_DOALL_FUNC ossl_check_ERR_STRING_DATA_lh_doallfunc_type(lh_ERR_STRING_DATA_doallfunc dfn) { return (OPENSSL_LH_DOALL_FUNC)dfn; } struct lhash_st_ERR_STRING_DATA;
void ERR_new(void);
void ERR_set_debug(const char *file, int line, const char *func);
void ERR_set_error(int lib, int reason, const char *fmt, ...);
void ERR_vset_error(int lib, int reason, const char *fmt, va_list args);
void ERR_set_error_data(char *data, int flags);
unsigned long ERR_get_error(void);
unsigned long ERR_get_error_all(const char **file, int *line,
    const char **func,
    const char **data, int *flags);
__attribute__((deprecated("Since OpenSSL " "3.0")))
unsigned long ERR_get_error_line(const char **file, int *line);
__attribute__((deprecated("Since OpenSSL " "3.0")))
unsigned long ERR_get_error_line_data(const char **file, int *line,
    const char **data, int *flags);
unsigned long ERR_peek_error(void);
unsigned long ERR_peek_error_line(const char **file, int *line);
unsigned long ERR_peek_error_func(const char **func);
unsigned long ERR_peek_error_data(const char **data, int *flags);
unsigned long ERR_peek_error_all(const char **file, int *line,
    const char **func,
    const char **data, int *flags);
__attribute__((deprecated("Since OpenSSL " "3.0")))
unsigned long ERR_peek_error_line_data(const char **file, int *line,
    const char **data, int *flags);
unsigned long ERR_peek_last_error(void);
unsigned long ERR_peek_last_error_line(const char **file, int *line);
unsigned long ERR_peek_last_error_func(const char **func);
unsigned long ERR_peek_last_error_data(const char **data, int *flags);
unsigned long ERR_peek_last_error_all(const char **file, int *line,
    const char **func,
    const char **data, int *flags);
__attribute__((deprecated("Since OpenSSL " "3.0")))
unsigned long ERR_peek_last_error_line_data(const char **file, int *line,
    const char **data, int *flags);
void ERR_clear_error(void);
char *ERR_error_string(unsigned long e, char *buf);
void ERR_error_string_n(unsigned long e, char *buf, size_t len);
const char *ERR_lib_error_string(unsigned long e);
__attribute__((deprecated("Since OpenSSL " "3.0"))) const char *ERR_func_error_string(unsigned long e);
const char *ERR_reason_error_string(unsigned long e);
void ERR_print_errors_cb(int (*cb)(const char *str, size_t len, void *u),
    void *u);
void ERR_print_errors_fp(FILE *fp);
void ERR_print_errors(BIO *bp);
void ERR_add_error_data(int num, ...);
void ERR_add_error_vdata(int num, va_list args);
void ERR_add_error_txt(const char *sepr, const char *txt);
void ERR_add_error_mem_bio(const char *sep, BIO *bio);
int ERR_load_strings(int lib, ERR_STRING_DATA *str);
int ERR_load_strings_const(const ERR_STRING_DATA *str);
int ERR_unload_strings(int lib, ERR_STRING_DATA *str);
__attribute__((deprecated("Since OpenSSL " "1.1.0"))) void ERR_remove_thread_state(void *);
__attribute__((deprecated("Since OpenSSL " "1.0.0"))) void ERR_remove_state(unsigned long pid);
__attribute__((deprecated("Since OpenSSL " "3.0"))) ERR_STATE *ERR_get_state(void);
int ERR_get_next_error_library(void);
int ERR_set_mark(void);
int ERR_pop_to_mark(void);
int ERR_clear_last_mark(void);
int ERR_count_to_mark(void);
int ERR_pop(void);
ERR_STATE *OSSL_ERR_STATE_new(void);
void OSSL_ERR_STATE_save(ERR_STATE *es);
void OSSL_ERR_STATE_save_to_mark(ERR_STATE *es);
void OSSL_ERR_STATE_restore(const ERR_STATE *es);
void OSSL_ERR_STATE_free(ERR_STATE *es);
static ssize_t ssl_read(conn *c, void *buf, size_t count);
static ssize_t ssl_sendmsg(conn *c, struct msghdr *msg, int flags);
static ssize_t ssl_write(conn *c, void *buf, size_t count);
static void print_ssl_error(char *buff, size_t len);
static void ssl_callback(const SSL *s, int where, int ret);
static int ssl_new_session_callback(SSL *s, SSL_SESSION *sess);
static pthread_mutex_t ssl_ctx_lock = { { 0, 0, 0, 0, PTHREAD_MUTEX_TIMED_NP, 0, 0, { ((void *)0), ((void *)0) } } };
const unsigned ERROR_MSG_SIZE = 64;
const size_t SSL_ERROR_MSG_SIZE = 256;
static void SSL_LOCK(void) {
    pthread_mutex_lock(&(ssl_ctx_lock));
}
static void SSL_UNLOCK(void) {
    pthread_mutex_unlock(&(ssl_ctx_lock));
}
void *ssl_accept(conn *c, int sfd, bool *fail) {
    SSL *ssl = ((void *)0);
    if (c->ssl_enabled) {
        ((void) (0));
        if (settings.ssl_ctx == ((void *)0)) {
            if (settings.verbose) {
                fprintf(stderr, "SSL context is not initialized\n");
            }
            *fail = true;
            return ((void *)0);
        }
        SSL_LOCK();
        ssl = SSL_new(settings.ssl_ctx);
        SSL_UNLOCK();
        if (ssl == ((void *)0)) {
            if (settings.verbose) {
                fprintf(stderr, "Failed to created the SSL object\n");
            }
            *fail = true;
            ERR_clear_error();
            return ((void *)0);
        }
        SSL_set_fd(ssl, sfd);
        if (c->ssl_enabled == 2) {
            SSL_set_verify(ssl, 0x00, ((void *)0));
        } else if (c->ssl_enabled == 3) {
            SSL_set_verify(ssl, 0x01|0x02, ((void *)0));
        }
        ERR_clear_error();
        int ret = SSL_accept(ssl);
        if (ret <= 0) {
            int err = SSL_get_error(ssl, ret);
            if (err == 3 || err == 2) {
                ERR_clear_error();
            } else {
                if (err == 5) {
                    do { logger *myl = ((void *)0); if (((void *)0) == ((void *)0)) myl = ((logger *) pthread_getspecific(logger_key));; if (myl->eflags & (1<<5)) logger_log(myl, LOGGER_CONNECTION_TLSERROR, ((void *)0), c->sfd, strerror((*__errno_location ()))); } while (0);
                } else {
                    char ssl_err[SSL_ERROR_MSG_SIZE];
                    ssl_err[0] = '\0';
                    print_ssl_error(ssl_err, SSL_ERROR_MSG_SIZE);
                    do { logger *myl = ((void *)0); if (((void *)0) == ((void *)0)) myl = ((logger *) pthread_getspecific(logger_key));; if (myl->eflags & (1<<5)) logger_log(myl, LOGGER_CONNECTION_TLSERROR, ((void *)0), c->sfd, ssl_err); } while (0);
                }
                ERR_clear_error();
                SSL_free(ssl);
                STATS_LOCK();
                stats.ssl_handshake_errors++;
                STATS_UNLOCK();
                *fail = true;
                return ((void *)0);
            }
        }
    }
    return ssl;
}
const unsigned char *ssl_get_peer_cn(conn *c, int *len) {
    if (!c->ssl) {
        return ((void *)0);
    }
    X509 *cert = SSL_get1_peer_certificate(c->ssl);
    if (cert == ((void *)0)) {
        return ((void *)0);
    }
    X509_NAME *name = X509_get_subject_name(cert);
    if (name == ((void *)0)) {
        X509_free(cert);
        return ((void *)0);
    }
    int r = X509_NAME_get_index_by_NID(name, 13, -1);
    if (r == -1) {
        X509_free(cert);
        return ((void *)0);
    }
    ASN1_STRING *asn1 = X509_NAME_ENTRY_get_data(X509_NAME_get_entry(name, r));
    if (asn1 == ((void *)0)) {
        X509_free(cert);
        return ((void *)0);
    }
    *len = ASN1_STRING_length(asn1);
    X509_free(cert);
    return ASN1_STRING_get0_data(asn1);
}
static ssize_t ssl_read(conn *c, void *buf, size_t count) {
    ((void) (0));
    ssize_t ret = SSL_read(c->ssl, buf, count);
    if (ret <= 0) {
        int err = SSL_get_error(c->ssl, ret);
        if (err == 3 || err == 2) {
            (*__errno_location ()) = 11;
        } else if (err == 6) {
            return 0;
        } else if (err == 5) {
            do { logger *myl = c->thread->l; if (c->thread->l == ((void *)0)) myl = ((logger *) pthread_getspecific(logger_key));; if (myl->eflags & (1<<5)) logger_log(myl, LOGGER_CONNECTION_TLSERROR, ((void *)0), c->sfd, strerror((*__errno_location ()))); } while (0);
        } else if (ret != 0) {
            char ssl_err[SSL_ERROR_MSG_SIZE];
            print_ssl_error(ssl_err, SSL_ERROR_MSG_SIZE);
            do { logger *myl = c->thread->l; if (c->thread->l == ((void *)0)) myl = ((logger *) pthread_getspecific(logger_key));; if (myl->eflags & (1<<5)) logger_log(myl, LOGGER_CONNECTION_TLSERROR, ((void *)0), c->sfd, ssl_err); } while (0);
            STATS_LOCK();
            stats.ssl_proto_errors++;
            STATS_UNLOCK();
        }
        ERR_clear_error();
    }
    return ret;
}
static ssize_t ssl_write(conn *c, void *buf, size_t count) {
    ((void) (0));
    ssize_t ret = SSL_write(c->ssl, buf, count);
    if (ret <= 0) {
        int err = SSL_get_error(c->ssl, ret);
        if (err == 3 || err == 2) {
            (*__errno_location ()) = 11;
        } else if (err == 6) {
            return 0;
        } else if (err == 5) {
            do { logger *myl = c->thread->l; if (c->thread->l == ((void *)0)) myl = ((logger *) pthread_getspecific(logger_key));; if (myl->eflags & (1<<5)) logger_log(myl, LOGGER_CONNECTION_TLSERROR, ((void *)0), c->sfd, strerror((*__errno_location ()))); } while (0);
        } else if (ret != 0) {
            char ssl_err[SSL_ERROR_MSG_SIZE];
            print_ssl_error(ssl_err, SSL_ERROR_MSG_SIZE);
            do { logger *myl = c->thread->l; if (c->thread->l == ((void *)0)) myl = ((logger *) pthread_getspecific(logger_key));; if (myl->eflags & (1<<5)) logger_log(myl, LOGGER_CONNECTION_TLSERROR, ((void *)0), c->sfd, ssl_err); } while (0);
            STATS_LOCK();
            stats.ssl_proto_errors++;
            STATS_UNLOCK();
        }
        ERR_clear_error();
    }
    return ret;
}
static ssize_t ssl_sendmsg(conn *c, struct msghdr *msg, int flags) {
    ((void) (0));
    size_t buf_remain = settings.ssl_wbuf_size;
    size_t bytes = 0;
    size_t to_copy;
    int i;
    ((void) (0));
    ((void) (0));
    char *bp = c->ssl_wbuf;
    for (i = 0; i < msg->msg_iovlen; i++) {
        size_t len = msg->msg_iov[i].iov_len;
        to_copy = len < buf_remain ? len : buf_remain;
        memcpy(bp + bytes, (void*)msg->msg_iov[i].iov_base, to_copy);
        buf_remain -= to_copy;
        bytes += to_copy;
        if (buf_remain == 0)
            break;
    }
    return ssl_write(c, c->ssl_wbuf, bytes);
}
static void print_ssl_error(char *buff, size_t len) {
    unsigned long err;
    if ((err = ERR_get_error()) != 0) {
        ERR_error_string_n(err, buff, len);
    }
}
static bool load_server_certificates(char **errmsg) {
    bool success = false;
    const size_t CRLF_NULLCHAR_LEN = 3;
    char *error_msg = malloc(4096 + ERROR_MSG_SIZE +
        SSL_ERROR_MSG_SIZE);
    size_t errmax = 4096 + ERROR_MSG_SIZE + SSL_ERROR_MSG_SIZE -
        CRLF_NULLCHAR_LEN;
    if (error_msg == ((void *)0)) {
        *errmsg = ((void *)0);
        return false;
    }
    if (settings.ssl_ctx == ((void *)0)) {
        snprintf(error_msg, errmax, "Error TLS not enabled\r\n");
        *errmsg = error_msg;
        return false;
    }
    char *ssl_err_msg = malloc(SSL_ERROR_MSG_SIZE);
    if (ssl_err_msg == ((void *)0)) {
        free(error_msg);
        *errmsg = ((void *)0);
        return false;
    }
    bzero(ssl_err_msg, SSL_ERROR_MSG_SIZE);
    size_t err_msg_size = 0;
    SSL_LOCK();
    if (!SSL_CTX_use_certificate_chain_file(settings.ssl_ctx,
        settings.ssl_chain_cert)) {
        print_ssl_error(ssl_err_msg, SSL_ERROR_MSG_SIZE);
        err_msg_size = snprintf(error_msg, errmax, "Error loading the certificate chain: "
            "%s : %s", settings.ssl_chain_cert, ssl_err_msg);
    } else if (!SSL_CTX_use_PrivateKey_file(settings.ssl_ctx, settings.ssl_key,
                                        settings.ssl_keyformat)) {
        print_ssl_error(ssl_err_msg, SSL_ERROR_MSG_SIZE);
        err_msg_size = snprintf(error_msg, errmax, "Error loading the key: %s : %s",
            settings.ssl_key, ssl_err_msg);
    } else if (!SSL_CTX_check_private_key(settings.ssl_ctx)) {
        print_ssl_error(ssl_err_msg, SSL_ERROR_MSG_SIZE);
        err_msg_size = snprintf(error_msg, errmax, "Error validating the certificate: %s",
            ssl_err_msg);
    } else if (settings.ssl_ca_cert) {
        if (!SSL_CTX_load_verify_locations(settings.ssl_ctx,
          settings.ssl_ca_cert, ((void *)0))) {
            print_ssl_error(ssl_err_msg, SSL_ERROR_MSG_SIZE);
            err_msg_size = snprintf(error_msg, errmax,
              "Error loading the CA certificate: %s : %s",
              settings.ssl_ca_cert, ssl_err_msg);
        } else {
            SSL_CTX_set_client_CA_list(settings.ssl_ctx,
              SSL_load_client_CA_file(settings.ssl_ca_cert));
            success = true;
        }
    } else {
        success = true;
    }
    SSL_UNLOCK();
    free(ssl_err_msg);
    if (success) {
        settings.ssl_last_cert_refresh_time = current_time;
        free(error_msg);
    } else {
        *errmsg = error_msg;
        error_msg += (err_msg_size >= errmax ? errmax - 1: err_msg_size);
        snprintf(error_msg, CRLF_NULLCHAR_LEN, "\r\n");
        ERR_print_errors_fp(stderr);
    }
    return success;
}
void ssl_conn_close(void *ssl_in) {
    SSL *ssl = ssl_in;
    SSL_shutdown(ssl);
    SSL_free(ssl);
}
int ssl_pending(void *ssl_in) {
    SSL *ssl = ssl_in;
    return SSL_pending(ssl);
}
void ssl_init_conn(conn *c, void *ssl_in) {
    if (ssl_in) {
        SSL *ssl = ssl_in;
        c->ssl = (SSL*)ssl;
        c->read = ssl_read;
        c->sendmsg = ssl_sendmsg;
        c->write = ssl_write;
        SSL_set_info_callback(c->ssl, ssl_callback);
    }
}
void ssl_init_settings(void) {
    settings.ssl_enabled = false;
    settings.ssl_ctx = ((void *)0);
    settings.ssl_chain_cert = ((void *)0);
    settings.ssl_key = ((void *)0);
    settings.ssl_verify_mode = 0x00;
    settings.ssl_keyformat = 1;
    settings.ssl_ciphers = ((void *)0);
    settings.ssl_ca_cert = ((void *)0);
    settings.ssl_last_cert_refresh_time = current_time;
    settings.ssl_wbuf_size = 16 * 1024;
    settings.ssl_session_cache = false;
    settings.ssl_kernel_tls = false;
    settings.ssl_min_version = 0x0303;
}
int ssl_init(void) {
    ((void) (0));
    OPENSSL_init_ssl(0, ((void *)0));
    settings.ssl_ctx = SSL_CTX_new(TLS_server_method());
    SSL_CTX_ctrl(settings.ssl_ctx, 123, settings.ssl_min_version, ((void *)0));
    char *error_msg;
    if (!load_server_certificates(&error_msg)) {
        fprintf(stderr, "%s", error_msg);
        free(error_msg);
        exit(64);
    }
    SSL_CTX_set_verify(settings.ssl_ctx, settings.ssl_verify_mode, ((void *)0));
    if (settings.ssl_ciphers && !SSL_CTX_set_cipher_list(settings.ssl_ctx,
                                                    settings.ssl_ciphers)) {
        fprintf(stderr, "Error setting the provided cipher(s): %s\n",
                settings.ssl_ciphers);
        exit(64);
    }
    if (settings.ssl_session_cache) {
        SSL_CTX_sess_set_new_cb(settings.ssl_ctx, ssl_new_session_callback);
        SSL_CTX_ctrl(settings.ssl_ctx, 44, 0x0002, ((void *)0));
        SSL_CTX_set_session_id_context(settings.ssl_ctx,
                                       (const unsigned char *) "memcached",
                                       strlen("memcached"));
    } else {
        SSL_CTX_ctrl(settings.ssl_ctx, 44, 0x0000, ((void *)0));
    }
    if (settings.ssl_kernel_tls) {
        SSL_CTX_set_options(settings.ssl_ctx, ((uint64_t)1 << (uint64_t)3));
    }
    SSL_CTX_set_options(settings.ssl_ctx, ((uint64_t)1 << (uint64_t)30));
    SSL_CTX_ctrl((settings.ssl_ctx), 33, (0x00000010U), ((void *)0));
    return 0;
}
void ssl_callback(const SSL *s, int where, int ret) {
}
int ssl_new_session_callback(SSL *s, SSL_SESSION *sess) {
    STATS_LOCK();
    stats.ssl_new_sessions++;
    STATS_UNLOCK();
    return 0;
}
bool refresh_certs(char **errmsg) {
    return load_server_certificates(errmsg);
}
void ssl_help(void) {
    printf("   - ssl_chain_cert:      certificate chain file in PEM format\n"
           "   - ssl_key:             private key, if not part of the -ssl_chain_cert\n"
           "   - ssl_keyformat:       private key format (PEM, DER or ENGINE) (default: PEM)\n");
    printf("   - ssl_verify_mode:     peer certificate verification mode, default is 0(None).\n"
           "                          valid values are 0(None), 1(Request), 2(Require)\n"
           "                          or 3(Once)\n");
    printf("   - ssl_ciphers:         specify cipher list to be used\n"
           "   - ssl_ca_cert:         PEM format file of acceptable client CA's\n"
           "   - ssl_wbuf_size:       size in kilobytes of per-connection SSL output buffer\n"
           "                          (default: %u)\n", settings.ssl_wbuf_size / (1 << 10));
    printf("   - ssl_session_cache:   enable server-side SSL session cache, to support session\n"
           "                          resumption\n"
           "   - ssl_kernel_tls:      enable kernel TLS offload\n"
           "   - ssl_min_version:     minimum protocol version to accept (default: %s)\n",
           ssl_proto_text(settings.ssl_min_version));
    printf("                          valid values are 0(%s), 1(%s), 2(%s), or 3(%s).\n",
           ssl_proto_text(0x0301), ssl_proto_text(0x0302),
           ssl_proto_text(0x0303), ssl_proto_text(0x0304));
    verify_default("ssl_keyformat", settings.ssl_keyformat == 1);
    verify_default("ssl_verify_mode", settings.ssl_verify_mode == 0x00);
    verify_default("ssl_min_version", settings.ssl_min_version == 0x0303);
}
const char *ssl_proto_text(int version) {
    switch (version) {
        case 0x0301:
            return "tlsv1.0";
        case 0x0302:
            return "tlsv1.1";
        case 0x0303:
            return "tlsv1.2";
        case 0x0304:
            return "tlsv1.3";
        default:
            return "unknown";
    }
}
bool ssl_set_verify_mode(int verify) {
    switch(verify) {
        case 0:
            settings.ssl_verify_mode = 0x00;
            break;
        case 1:
            settings.ssl_verify_mode = 0x01;
            break;
        case 2:
            settings.ssl_verify_mode = 0x01 |
                                        0x02;
            break;
        case 3:
            settings.ssl_verify_mode = 0x01 |
                                        0x02 |
                                        0x04;
            break;
        default:
            return false;
    }
    return true;
}
bool ssl_set_min_version(int version) {
    switch (version) {
        case 0:
            settings.ssl_min_version = 0x0301;
            break;
        case 1:
            settings.ssl_min_version = 0x0302;
            break;
        case 2:
            settings.ssl_min_version = 0x0303;
            break;
        case 3:
            settings.ssl_min_version = 0x0304;
            break;
        default:
            return false;
    }
    return true;
}
