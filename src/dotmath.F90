module dotmath
    implicit none
    public :: dotmull
    private :: dotmull4, dotmull8, dotmull16

    interface dotmull
    procedure dotmull4, dotmull8, dotmull16
    end interface dotmull

    contains
    function dotmull4 (A, B) result(C)
    real (kind = 4), intent (in), dimension (:, :) :: A, B
    real (kind = 4), dimension (size(A,1), size(B,2)) :: C
    integer :: i, j, k
    C = 0.
        do i = 1 , size(A, 1)
            do j = 1, size(B, 2)
                C(i, j) = dot_product(A(i,:), B(:,j))
            end do
        end do  
    end function dotmull4

    function dotmull8 (A, B) result(C)
    real (kind = 8), intent (in), dimension (:, :) :: A, B
    real (kind = 8), dimension (size(A,1), size(B,2)) :: C
    integer :: i, j, k
    C = 0.
        do i = 1 , size(A, 1)
            do j = 1, size(B, 2)
                C(i, j) = dot_product(A(i,:), B(:,j))
            end do
        end do  
    end function dotmull8


    function dotmull16 (A, B) result(C)
    real (kind = 16), intent (in), dimension (:, :) :: A, B
    real (kind = 16), dimension (size(A,1), size(B,2)) :: C
    integer :: i, j, k
    C = 0.
        do i = 1 , size(A, 1)
            do j = 1, size(B, 2)
                C(i, j) = dot_product(A(i,:), B(:,j))
            end do
        end do 
    end function dotmull16
end module dotmath