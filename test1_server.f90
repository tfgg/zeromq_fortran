program test1
  use :: iso_c_binding
  use zmq, only : zmq_ctx_new, zmq_socket, zmq_bind,&
    zmq_send, zmq_recv, ZMQ_REP
  
  implicit none

  type(c_ptr) :: context, responder
  integer(c_int) :: rc, err
  character(kind=c_char) :: recv_buffer(256)
  character(kind=c_char) :: send_buffer(256)
  
  integer :: request_nbr

  context = zmq_ctx_new()
  responder = zmq_socket(context, ZMQ_REP)
  
  write(*,*) "Binding to socket"

  rc = zmq_bind(responder, "tcp://*:6789")

  if(rc .ne. 0) then
    write(*,*) "Could not bind"
  end if
    
  send_buffer = "World"

  do request_nbr=0,9

    err = zmq_recv(responder, c_loc(recv_buffer(1)), 256, 0)
    write(*,*) "Received Hello" 
    write(*,*) recv_buffer

    err = zmq_send(responder, c_loc(send_buffer(1)), 5, 0)

  end do

end program test1
