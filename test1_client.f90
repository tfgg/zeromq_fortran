program test1
  use :: iso_c_binding
  use zmq, only : zmq_ctx_new, zmq_socket, zmq_connect,&
    zmq_send, zmq_recv, ZMQ_REQ, zmq_close, zmq_ctx_destroy
  
  implicit none

  type(c_ptr) :: context, requester
  integer(c_int) :: rc, err
  character(kind=c_char) :: recv_buffer(256)
  character(kind=c_char) :: send_buffer(256)
  
  integer :: request_nbr

  recv_buffer(:) = char(0)
  send_buffer(:) = char(0)

  context = zmq_ctx_new()
  requester = zmq_socket(context, ZMQ_REQ)

  write(*,*) "Connecting to server"

  rc = zmq_connect(requester, "tcp://localhost:6789")

  if(rc .ne. 0) then
    write(*,*) "Could not connect"
  end if

  send_buffer(1) = "H"
  send_buffer(2) = "e"
  send_buffer(3) = "l"
  send_buffer(4) = "l"
  send_buffer(5) = "o"

  do request_nbr=0,9

    write(*,*) "Sending Hello", request_nbr
    err = zmq_send(requester, c_loc(send_buffer(1)), 5, 0)

    err = zmq_recv(requester, c_loc(recv_buffer(1)), 256, 0)
    write(*,*) "Received ", recv_buffer(1:5), request_nbr

  end do

  err = zmq_close(requester)
  err = zmq_ctx_destroy(context)
  
end program test1

