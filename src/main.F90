program main

use naivemath
use bettermath
use dotmath
implicit none

integer :: x, y

open (41, file = "./res/naive_4", status = "replace", action="write")
open (42, file = "./res/better_4.dat", status = "replace", action="write")
open (43, file = "./res/dot_4.dat", status = "replace", action="write")  
open (44, file = "./res/math_4.dat", status = "replace", action="write")
open (81, file = "./res/naive_8.dat", status = "replace", action="write")
open (82, file = "./res/better_8.dat", status = "replace", action="write")
open (83, file = "./res/dot_8.dat", status = "replace", action="write")
open (84, file = "./res/math_8.dat", status = "replace", action="write")
open (161, file = "./res/naive_16.dat", status = "replace", action="write")
open (162, file = "./res/better_16.dat", status = "replace", action="write")
open (163, file = "./res/dot_16.dat", status = "replace", action="write")  
open (164, file = "./res/math_16.dat", status = "replace", action="write")
   
y = 10
do x = 1, 8
    y = y*2
    call multi4(y, 41, 42, 43, 44)
    call multi8(y, 81, 82, 83, 84)
    call multi16(y, 161, 162, 163, 164)
end do

contains

subroutine multi4(x, file1, file2, file3, file4)
    integer(kind = 4), intent(in) :: x, file1, file2, file3, file4
    real(kind = 4), dimension(x,x) :: A, B, C
    real(kind = 16) :: start, end

    call random_number(A)
    call random_number(B)

    call cpu_time(start)
    C = naivmull(A, B)
    call cpu_time(end)
    write(file1, *) x, ' ', end - start
    call cpu_time(start)
    C = bettmull(A, B)
    call cpu_time(end)
    write(file2, *) x, ' ', end - start
    call cpu_time(start)
    C = dotmull(A, B)
    call cpu_time(end)
    write(file3, *) x, ' ', end - start
    call cpu_time(start)
    C = matmul(A, B)
    call cpu_time(end)
    write(file4, *) x, ' ', end - start

end subroutine multi4

subroutine multi8(x, file1, file2, file3, file4)
    integer(kind = 4), intent(in) :: x, file1, file2, file3, file4
    real(kind = 8) :: A(x, x), B(x, x), C(x, x)
    real(kind = 16) :: start, end

    call random_number(A)
    call random_number(B)

    call cpu_time(start)
    C = naivmull(A, B)
    call cpu_time(end)
    write(file1, *) x, ' ', end - start
    call cpu_time(start)
    C = bettmull(A, B)
    call cpu_time(end)
    write(file2, *) x, ' ', end - start
    call cpu_time(start)
    C = dotmull(A, B)
    call cpu_time(end)
    write(file3, *) x, ' ', end - start
    call cpu_time(start)
    C = matmul(A, B)
    call cpu_time(end)
    write(file4, *) x, ' ', end - start
end subroutine multi8

subroutine multi16(x, file1, file2, file3, file4)
    integer(kind = 4), intent(in) :: x, file1, file2, file3, file4
    real(kind = 16) :: A(x, x), B(x, x), C(x, x)
    real(kind = 16) :: start, end

    call random_number(A)
    call random_number(B)

    call cpu_time(start)
    C = naivmull(A, B)
    call cpu_time(end)
    write(file1, *) x, ' ', end - start
    call cpu_time(start)
    C = bettmull(A, B)
    call cpu_time(end)
    write(file2, *) x, ' ', end - start
    call cpu_time(start)
    C = dotmull(A, B)
    call cpu_time(end)
    write(file3, *) x, ' ', end - start
    call cpu_time(start)
    C = matmul(A, B)
    call cpu_time(end)
    write(file4, *) x, ' ', end - start
end subroutine multi16

end program main