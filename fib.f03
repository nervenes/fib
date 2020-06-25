program fibonacci
    implicit none

    character(100) :: arg
    integer :: num

    call GET_COMMAND_ARGUMENT(1,arg)
    read(arg,*)num
    write(*,*) fib_rec(num)

    contains
    recursive function fib_rec(n) result(fib)
      integer, intent(in), value :: n
      integer*8                  :: fib

      if (n <= 1) then
        fib = 1
      else
        fib = fib_rec(n - 1) + fib_rec(n - 2)
      end if
    end function fib_rec
end program fibonacci
