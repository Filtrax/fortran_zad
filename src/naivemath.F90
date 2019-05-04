module naivemath
    implicit none
    public :: naivmull
    private :: naivmull4, naivmull8, naivmull16

    interface naivmull
    procedure naivmull4, naivmull8, naivmull16
    end interface naivmull

    contains
    function naivmull4 (A, B) result(C)
    real (kind = 4), intent (in), dimension (:, :) :: A, B
    real (kind = 4), dimension (SIZE(A,1), SIZE(B,2)) :: C
    integer :: i, j, k
    C = 0.
    do i = 1, SIZE(A, 1)
        do j = 1, SIZE(B, 2)
            do k = 1, SIZE(A, 2)
                C(i, j) = C(i, j) + A(k, i) * B(j, k)
            end do
        end do
    end do
    end function naivmull4

    function naivmull8 (A, B) result(C)
    real (kind = 8), intent (in), dimension (:, :) :: A, B
    real (kind = 8), dimension (SIZE(A,1), SIZE(B,2)) :: C
    integer :: i, j, k
    C = 0.
    do i = 1, SIZE(A, 1)
        do j = 1, SIZE(B, 2)
            do k = 1, SIZE(A, 2)
                C(i, j) = C(i, j) + A(k, i) * B(j, k)
            end do
        end do
    end do
    end function naivmull8


    function naivmull16 (A, B) result(C)
    real (kind = 16), intent (in), dimension (:, :) :: A, B
    real (kind = 16), dimension (SIZE(A,1), SIZE(B,2)) :: C
    integer :: i, j, k
    C = 0.
    do i = 1, SIZE(A, 1)
        do j = 1, SIZE(B, 2)
            do k = 1, SIZE(A, 2)
                C(i, j) = C(i, j) + A(k, i) * B(j, k)
            end do
        end do
    end do
    end function naivmull16
end module naivemath