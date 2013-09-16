module zmq
  use, intrinsic :: iso_c_binding

  implicit none

  interface

    ! void zmq_version (int *major, int *minor, int *patch);
    function zmq_version(major, minor, path) bind(c)
      use :: iso_c_binding

      integer(c_int) :: major, minor, path

    end function zmq_version

    ! int zmq_errno (void);
    function zmq_errno() bind(c)
      use :: iso_c_binding
      
      integer(c_int) :: zmq_errno
      
    end function zmq_errno

    ! const char *zmq_strerror (int errnum);
    function zmq_strerror(errnum) bind(c)
      use :: iso_c_binding

      type(c_ptr) :: zmq_strerror
      integer(c_int), value :: errnum

    end function zmq_strerror

    ! void *zmq_ctx_new (void);
    function zmq_ctx_new() bind(c)
      use :: iso_c_binding

      type(c_ptr) :: zmq_ctx_new

    end function zmq_ctx_new

    ! int zmq_ctx_term (void *context);
    function zmq_ctx_term(context) bind(c)
      use :: iso_c_binding

      integer(c_int) :: zmq_ctx_term
      type(c_ptr), value :: context

    end function zmq_ctx_term

    ! int zmq_ctx_shutdown (void *ctx_);
    function zmq_ctx_shutdown(ctx_) bind(c)
      use :: iso_c_binding

      integer(c_int) :: zmq_ctx_term
      type(c_ptr), value :: ctx_

    end function zmq_ctx_shutdown

    ! int zmq_ctx_set (void *context, int option, int optval);
    function zmq_ctx_set(context, option, optval) bind(c)
      use :: iso_c_binding

      integer(c_int) :: zmq_ctx_set
      type(c_ptr), value :: context
      integer(c_int), value :: option, optval

    end function zmq_ctx_set

    ! int zmq_ctx_get (void *context, int option);
    function zmq_ctx_get(context, option) bind(c)
      use :: iso_c_binding

      integer(c_int) :: zmq_ctx_get
      type(c_ptr), value :: context
      integer(c_int), value :: option

    end function zmq_ctx_get

    ! void *zmq_init (int io_threads);
    function zmq_init(io_threads) bind(c)
      use :: iso_c_binding

      type(c_ptr) :: zmq_init
      integer(c_int), value :: io_threads

    end function zmq_init

    ! int zmq_term (void *context);
    function zmq_term(context) bind(c)
      use :: iso_c_binding

      integer(c_int) :: zmq_term
      type(c_ptr) :: context

    end function zmq_term

    ! int zmq_ctx_destroy (void *context);
    function zmq_ctx_destroy(context) bind(c)
      use :: iso_c_binding

      integer(c_int) :: zmq_ctx_destroy
      type(c_ptr), value :: context

    end function zmq_ctx_destroy

    ! int zmq_msg_init (zmq_msg_t *msg);
    function zmq_msg_init(msg) bind(c)
      use :: iso_c_binding

      integer(c_int) :: zmq_msg_init
      type(c_ptr), value :: msg

    end function zmq_msg_init

    ! int zmq_msg_init_size (zmq_msg_t *msg, size_t size);
    function zmq_msg_init_size(msg, size) bind(c)
      use :: iso_c_binding

      integer(c_int) :: zmq_msg_init_size
      type(c_ptr), value :: msg
      integer(c_size_t), value :: size

    end function zmq_msg_init_size

    ! int zmq_msg_init_data (zmq_msg_t *msg, void *data,
    ! size_t size, zmq_free_fn *ffn, void *hint);
    function zmq_msg_init_data(msg, data, size, ffn, hint) bind(c)
      use :: iso_c_binding

      integer(c_int) :: zmq_msg_init_data
      type(c_ptr), value :: msg
      type(c_ptr), value :: data
      integer(c_size_t), value :: size
      type(c_ptr), value :: ffn
      type(c_ptr), value :: hint

    end function zmq_msg_init_data

    ! int zmq_msg_send (zmq_msg_t *msg, void *s, int flags);
    function zmq_msg_send(msg, s, flags) bind(c)
      use :: iso_c_binding

      integer(c_int) :: zmq_msg_send
      type(c_ptr), value :: msg
      type(c_ptr), value :: s
      integer(c_int) :: flags

    end function zmq_msg_send

    ! int zmq_msg_recv (zmq_msg_t *msg, void *s, int flags);
    function zmq_msg_recv(msg, s, flags) bind(c)
      use :: iso_c_binding

      integer(c_int) :: zmg_msg_recv
      type(c_ptr), value :: msg
      type(c_ptr), value :: s
      integer(c_int), value :: flags

    end function zmq_msg_recv

    ! int zmq_msg_close (zmq_msg_t *msg);
    function zmq_msg_close(msg) bind(c)
       use :: iso_c_binding

       integer(c_int) :: zmq_msg_close
       type(c_ptr), value :: msg

    end function zmq_msg_close

    ! int zmq_msg_move (zmq_msg_t *dest, zmq_msg_t *src);
    function zmq_msg_move(dest, src) bind(c)
      use :: iso_c_binding

      integer(c_int) :: zmq_msg_move
      type(c_ptr), value :: dest
      type(c_ptr), value :: src

    end function zmq_msg_move

    ! int zmq_msg_copy (zmq_msg_t *dest, zmq_msg_t *src);
    function zmq_msg_copy(dest, src) bind(c)
      use :: iso_c_binding

      integer(c_int) :: zmq_msg_move
      type(c_ptr), value :: dest
      type(c_ptr), value :: src

    end function zmq_msg_copy

    ! void *zmq_msg_data (zmq_msg_t *msg);
    function zmq_msg_data(msg) bind(c)
      use :: iso_c_binding

      type(c_ptr) :: zmq_msg_data
      type(c_ptr), value :: msg

    end function zmq_msg_data

    ! size_t zmq_msg_size (zmq_msg_t *msg);
    function zmq_msg_size(msg) bind(c)
      use :: iso_c_binding

      integer(c_size_t) :: zmq_msg_size
      type(c_ptr), value :: msg

    end function zmq_msg_size

    ! int zmq_msg_more (zmq_msg_t *msg);
    function zmq_msg_more(msg) bind(c)
      use :: iso_c_binding

      integer(c_int) :: zmq_msg_more
      type(c_ptr), value :: msg

    end function zmq_msg_more

    ! int zmq_msg_get (zmq_msg_t *msg, int option);
    function zmq_msg_get(msg, option) bind(c)
      use :: iso_c_binding

      integer(c_int) :: zmq_msg_get
      type(c_ptr), value :: msg
      integer(c_int), value :: option

    end function zmq_msg_get

    ! int zmq_msg_set (zmq_msg_t *msg, int option, int optval);
    function zmq_msg_set(msg, option, optval) bind(c)
      use :: iso_c_binding

      integer(c_int) :: zmq_msg_set
      type(c_ptr), value :: msg
      integer(c_int), value :: option
      integer(c_int), value :: optval

    end function zmq_msg_set

    ! void *zmq_socket (void *, int type);
    function zmq_socket(context, type) bind(c)
      use :: iso_c_binding

      type(c_ptr) :: zmq_socket
      type(c_ptr), value :: context
      integer(c_int), value :: type

    end function zmq_socket

    ! int zmq_close (void *s);
    function zmq_close(s) bind(c)
      use :: iso_c_binding

      integer(c_int) :: zmq_close
      type(c_ptr), value :: s

    end function zmq_close

    ! int zmq_setsockopt (void *s, int option, const void *optval,
    ! size_t optvallen); 
    function zmq_setsockopt(s, option, optval, optvallen) bind(c)
      use :: iso_c_binding

      integer(c_int) :: zmq_setsockopt
      type(c_ptr), value :: s
      integer(c_int), value :: option
      type(c_ptr), value :: optval
      integer(c_size_t), value :: optvallen

    end function zmq_setsockopt

    ! int zmq_getsockopt (void *s, int option, void *optval,
    ! size_t *optvallen);
    function zmq_getsockopt(s, option, optval, optvallen) bind(c)
      use :: iso_c_binding

      integer(c_int) :: zmq_getsockopt
      type(c_ptr), value :: s
      integer(c_int), value :: option
      type(c_ptr), value :: optval
      integer(c_size_t) :: optvallen

    end function zmq_getsockopt

    ! int zmq_bind (void *s, const char *addr);
    function zmq_bind(socket, addr) bind(c)
      use :: iso_c_binding

      integer(c_int) :: zmq_bind
      type(c_ptr), value :: socket
      character(kind=c_char) :: addr(*)

    end function zmq_bind

    ! int zmq_connect (void *s, const char *addr);
    function zmq_connect(s, addr) bind(c)
      use :: iso_c_binding

      integer(c_int) :: zmq_connect
      type(c_ptr), value :: s
      character(kind=c_char) :: addr(*)

    end function zmq_connect

    ! int zmq_unbind (void *s, const char *addr);
    function zmq_unbind(s, addr) bind(c)
      use :: iso_c_binding

      type(c_ptr), value :: s
      type(c_ptr), value :: addr

    end function zmq_unbind

    ! int zmq_disconnect (void *s, const char *addr);
    function zmq_disconnect(s, addr) bind(c)
      use :: iso_c_binding

      type(c_ptr), value :: s
      type(c_ptr), value :: addr

    end function zmq_disconnect

    ! int zmq_send (void *s, const void *buf, size_t len, int flags);
    function zmq_send(socket, buf, len, flags) bind(c)
      use :: iso_c_binding

      integer(c_int) :: zmq_send
      type(c_ptr), value :: socket
      type(c_ptr), value :: buf
      integer(c_size_t), value :: len
      integer(c_int), value :: flags

    end function zmq_send

    ! int zmq_send_const (void *s, const void *buf, size_t len, int flags);
    function zmq_send_const(socket, buf, len, flags) bind(c)
      use :: iso_c_binding

      integer(c_int) :: zmq_send_const
      type(c_ptr), value :: socket
      type(c_ptr), value :: buf
      integer(c_size_t), value :: len
      integer(c_int), value :: flags

    end function zmq_send_const

    ! int zmq_recv (void *s, void *buf, size_t len, int flags);
    function zmq_recv(socket, buf, len, flags) bind(c)
      use :: iso_c_binding

      integer(c_int) :: zmq_recv
      type(c_ptr), value :: socket
      type(c_ptr), value :: buf
      integer(c_size_t), value :: len
      integer(c_int), value :: flags

    end function zmq_recv

    ! int zmq_socket_monitor (void *s, const char *addr, int events);
    function zmq_socket_monitor(s, addr, events) bind(c)
      use :: iso_c_binding

      integer(c_int) :: zmq_socket_monitor
      type(c_ptr), value :: s
      type(c_ptr), value :: addr
      integer(c_int), value :: events

    end function

    ! int zmq_sendmsg (void *s, zmq_msg_t *msg, int flags);
    function zmq_sendmsg(s, msg, flags) bind(c)
      use :: iso_c_binding

      integer(c_int) :: zmq_sendmsg
      type(c_ptr), value :: s
      type(c_ptr), value :: msg
      integer(c_int), value :: flags

    end function zmq_sendmsg

    ! int zmq_recvmsg (void *s, zmq_msg_t *msg, int flags);
    function zmq_recvmsg(s, msg, flags) bind(c)
      use :: iso_c_binding

      integer(c_int) :: zmq_recvmsg
      type(c_ptr), value :: s
      type(c_ptr), value :: msg
      integer(c_int), value :: flags

    end function zmq_recvmsg

    ! int zmq_sendiov (void *s, struct iovec *iov, size_t count, int flags);
    function zmq_sendiov(s, iov, count, flags) bind(c)
      use :: iso_c_binding

      integer(c_int) :: zmq_sendiov
      type(c_ptr), value :: s
      type(c_ptr), value :: iov
      integer(c_size_t), value :: count
      integer(c_int), value :: flags

    end function zmq_sendiov

    ! int zmq_recviov (void *s, struct iovec *iov, size_t *count, int flags);
    function zmq_recviov(s, iov, count, flags) bind(c)
      use :: iso_c_binding

      integer(c_int) :: zmq_recviov
      type(c_ptr), value :: s
      type(c_ptr), value :: iov
      integer(c_size_t) :: count
      integer(c_int), value :: flags

    end function zmq_recviov

    ! int zmq_poll (zmq_pollitem_t *items, int nitems, long timeout);
    function zmq_poll(items, nitems, timeout) bind(c)
      use :: iso_c_binding

      type(c_ptr), value :: items
      integer(c_int), value :: nitems
      integer(c_long), value :: timeout

    end function zmq_poll

    ! int zmq_proxy (void *frontend, void *backend, void *capture);
    function zmq_proxy(frontend, backend, capture) bind(c)
      use :: iso_c_binding

      integer(c_int) :: zmq_proxy
      type(c_ptr), value :: frontend, backend, capture

    end function zmq_proxy

    ! int zmq_device (int type, void *frontend, void *backend);
    function zmq_device(type, frontend, backend) bind(c)
      use :: iso_c_binding

      integer(c_int) :: zmq_device
      integer(c_int), value :: type
      type(c_ptr), value :: frontend, backend

    end function zmq_device

  end interface

  integer, parameter :: ZMQ_VERSION_MAJOR=3, ZMQ_VERSION_MINOR=3, ZMQ_VERSION_PATCH=0
  !integer, parameter :: ZMQ_VERSION=ZMQ_VERSION_MAJOR*10000 + ZMQ_VERSION_MINOR*100 + ZMQ_VERSION_PATCH

  integer, parameter :: ZMQ_HAUSNUMERO=156384712

  integer, parameter :: ENOTSUP = (ZMQ_HAUSNUMERO + 1)
  integer, parameter :: EPROTONOSUPPORT = (ZMQ_HAUSNUMERO + 2)
  integer, parameter :: ENOBUFS = (ZMQ_HAUSNUMERO + 3)
  integer, parameter :: ENETDOWN = (ZMQ_HAUSNUMERO + 4)
  integer, parameter :: EADDRINUSE = (ZMQ_HAUSNUMERO + 5)
  integer, parameter :: EADDRNOTAVAIL = (ZMQ_HAUSNUMERO + 6)
  integer, parameter :: ECONNREFUSED = (ZMQ_HAUSNUMERO + 7)
  integer, parameter :: EINPROGRESS = (ZMQ_HAUSNUMERO + 8)
  integer, parameter :: ENOTSOCK = (ZMQ_HAUSNUMERO + 9)
  integer, parameter :: EMSGSIZE = (ZMQ_HAUSNUMERO + 10)
  integer, parameter :: EAFNOSUPPORT = (ZMQ_HAUSNUMERO + 11)
  integer, parameter :: ENETUNREACH = (ZMQ_HAUSNUMERO + 12)
  integer, parameter :: ECONNABORTED = (ZMQ_HAUSNUMERO + 13)
  integer, parameter :: ECONNRESET = (ZMQ_HAUSNUMERO + 14)
  integer, parameter :: ENOTCONN = (ZMQ_HAUSNUMERO + 15)
  integer, parameter :: ETIMEDOUT = (ZMQ_HAUSNUMERO + 16)
  integer, parameter :: EHOSTUNREACH = (ZMQ_HAUSNUMERO + 17)
  integer, parameter :: ENETRESET = (ZMQ_HAUSNUMERO + 18)
  integer, parameter :: EFSM = (ZMQ_HAUSNUMERO + 51)
  integer, parameter :: ENOCOMPATPROTO = (ZMQ_HAUSNUMERO + 52)
  integer, parameter :: ETERM = (ZMQ_HAUSNUMERO + 53)
  integer, parameter :: EMTHREAD = (ZMQ_HAUSNUMERO + 54)

  integer, parameter :: ZMQ_IO_THREADS = 1
  integer, parameter :: ZMQ_MAX_SOCKETS = 2
  integer, parameter :: ZMQ_IO_THREADS_DFLT = 1
  integer, parameter :: ZMQ_MAX_SOCKETS_DFLT = 1024
  integer, parameter :: ZMQ_PAIR = 0
  integer, parameter :: ZMQ_PUB = 1
  integer, parameter :: ZMQ_SUB = 2
  integer, parameter :: ZMQ_REQ = 3
  integer, parameter :: ZMQ_REP = 4
  integer, parameter :: ZMQ_DEALER = 5
  integer, parameter :: ZMQ_ROUTER = 6
  integer, parameter :: ZMQ_PULL = 7
  integer, parameter :: ZMQ_PUSH = 8
  integer, parameter :: ZMQ_XPUB = 9
  integer, parameter :: ZMQ_XSUB = 10
  integer, parameter :: ZMQ_STREAM = 11
  integer, parameter :: ZMQ_XREQ = ZMQ_DEALER
  integer, parameter :: ZMQ_XREP = ZMQ_ROUTER
  integer, parameter :: ZMQ_AFFINITY = 4
  integer, parameter :: ZMQ_IDENTITY = 5
  integer, parameter :: ZMQ_SUBSCRIBE = 6
  integer, parameter :: ZMQ_UNSUBSCRIBE = 7
  integer, parameter :: ZMQ_RATE = 8
  integer, parameter :: ZMQ_RECOVERY_IVL = 9
  integer, parameter :: ZMQ_SNDBUF = 11
  integer, parameter :: ZMQ_RCVBUF = 12
  integer, parameter :: ZMQ_RCVMORE = 13
  integer, parameter :: ZMQ_FD = 14
  integer, parameter :: ZMQ_EVENTS = 15
  integer, parameter :: ZMQ_TYPE = 16
  integer, parameter :: ZMQ_LINGER = 17
  integer, parameter :: ZMQ_RECONNECT_IVL = 18
  integer, parameter :: ZMQ_BACKLOG = 19
  integer, parameter :: ZMQ_RECONNECT_IVL_MAX = 21
  integer, parameter :: ZMQ_MAXMSGSIZE = 22
  integer, parameter :: ZMQ_SNDHWM = 23
  integer, parameter :: ZMQ_RCVHWM = 24
  integer, parameter :: ZMQ_MULTICAST_HOPS = 25
  integer, parameter :: ZMQ_RCVTIMEO = 27
  integer, parameter :: ZMQ_SNDTIMEO = 28
  integer, parameter :: ZMQ_LAST_ENDPOINT = 32
  integer, parameter :: ZMQ_ROUTER_MANDATORY =  33
  integer, parameter :: ZMQ_TCP_KEEPALIVE = 34
  integer, parameter :: ZMQ_TCP_KEEPALIVE_CNT = 35
  integer, parameter :: ZMQ_TCP_KEEPALIVE_IDLE = 36
  integer, parameter :: ZMQ_TCP_KEEPALIVE_INTVL = 37
  integer, parameter :: ZMQ_TCP_ACCEPT_FILTER = 38
  integer, parameter :: ZMQ_IMMEDIATE = 39
  integer, parameter :: ZMQ_XPUB_VERBOSE = 40
  integer, parameter :: ZMQ_ROUTER_RAW = 41
  integer, parameter :: ZMQ_IPV6 = 42
  integer, parameter :: ZMQ_MECHANISM = 43
  integer, parameter :: ZMQ_PLAIN_SERVER = 44
  integer, parameter :: ZMQ_PLAIN_USERNAME = 45
  integer, parameter :: ZMQ_PLAIN_PASSWORD = 46
  integer, parameter :: ZMQ_CURVE_SERVER = 47
  integer, parameter :: ZMQ_CURVE_PUBLICKEY = 48
  integer, parameter :: ZMQ_CURVE_SECRETKEY = 49
  integer, parameter :: ZMQ_CURVE_SERVERKEY = 50
  integer, parameter :: ZMQ_PROBE_ROUTER = 51
  integer, parameter :: ZMQ_REQ_REQUEST_IDS = 52
  integer, parameter :: ZMQ_REQ_STRICT = 53
  integer, parameter :: ZMQ_CONFLATE = 54
  integer, parameter :: ZMQ_ZAP_DOMAIN = 55
  integer, parameter :: ZMQ_MORE = 1
  integer, parameter :: ZMQ_DONTWAIT = 1
  integer, parameter :: ZMQ_SNDMORE = 2
  integer, parameter :: ZMQ_NULL = 0
  integer, parameter :: ZMQ_PLAIN = 1
  integer, parameter :: ZMQ_CURVE = 2
  integer, parameter :: ZMQ_IPV4ONLY = 31
  integer, parameter :: ZMQ_DELAY_ATTACH_ON_CONNECT = ZMQ_IMMEDIATE
  integer, parameter :: ZMQ_NOBLOCK = ZMQ_DONTWAIT
  integer, parameter :: ZMQ_FAIL_UNROUTABLE = ZMQ_ROUTER_MANDATORY
  integer, parameter :: ZMQ_ROUTER_BEHAVIOR = ZMQ_ROUTER_MANDATORY
  integer, parameter :: ZMQ_EVENT_CONNECTED = 1
  integer, parameter :: ZMQ_EVENT_CONNECT_DELAYED = 2
  integer, parameter :: ZMQ_EVENT_CONNECT_RETRIED = 4
  integer, parameter :: ZMQ_EVENT_LISTENING = 8
  integer, parameter :: ZMQ_EVENT_BIND_FAILED = 16
  integer, parameter :: ZMQ_EVENT_ACCEPTED = 32
  integer, parameter :: ZMQ_EVENT_ACCEPT_FAILED = 64
  integer, parameter :: ZMQ_EVENT_CLOSED = 128
  integer, parameter :: ZMQ_EVENT_CLOSE_FAILED = 256
  integer, parameter :: ZMQ_EVENT_DISCONNECTED = 512
  integer, parameter :: ZMQ_EVENT_MONITOR_STOPPED = 1024
!  integer, parameter :: ZMQ_EVENT_ALL ( ZMQ_EVENT_CONNECTED | ZMQ_EVENT_CONNECT_DELAYED | \
  integer, parameter :: ZMQ_POLLIN = 1
  integer, parameter :: ZMQ_POLLOUT = 2
  integer, parameter :: ZMQ_POLLERR = 4
  integer, parameter :: ZMQ_POLLITEMS_DFLT = 16
  integer, parameter :: ZMQ_STREAMER = 1
  integer, parameter :: ZMQ_FORWARDER = 2
  integer, parameter :: ZMQ_QUEUE = 3

  public :: zmq_send_string

contains

  function zmq_send_string(socket, buffer, flags)
    use :: iso_c_binding

    integer(c_int) :: zmq_send_string
    type(c_ptr) :: socket
    character(len=*) :: buffer
    integer(c_int) :: flags
    
    integer(c_size_t) :: length

    length = len(buffer, kind=c_size_t)
  
    zmq_send_string = zmq_send(socket, c_loc(buffer), length, flags)

  end function zmq_send_string

end module zmq

