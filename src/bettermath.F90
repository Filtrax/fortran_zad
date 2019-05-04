module bettermath
    implicit none
    public :: bettmull
    private :: bettmull4, bettmull8, bettmull16

    interface bettmull
    procedure bettmull4, bettmull8, bettmull16
    end interface bettmull

    contains
    function bettmull4 (A, B) result(C)
    real (kind = 4), intent (in), dimension (:, :) :: A, B
    real (kind = 4), dimension (SIZE(A,1), SIZE(B,2)) :: C
    integer :: i, j, k
    C = 0.
    do j = 1, SIZE(B, 2)
        do k = 1, SIZE(A, 2)
            do i = 1, SIZE(A, 1)
                C(i, j) = C(i, j) + A(k, i) * B(j, k)
            end do
        end do
    end do
    end function bettmull4

    function bettmull8 (A, B) result(C)
    real (kind = 8), intent (in), dimension (:, :) :: A, B
    real (kind = 8), dimension (SIZE(A,1), SIZE(B,2)) :: C
    integer :: i, j, k
    C = 0.
    do j = 1, SIZE(B, 2)
        do k = 1, SIZE(A, 2)
            do i = 1, SIZE(A, 1)
                C(i, j) = C(i, j) + A(k, i) * B(j, k)
            end do
        end do
    end do
    end function bettmull8


    function bettmull16 (A, B) result(C)
    real (kind = 16), intent (in), dimension (:, :) :: A, B
    real (kind = 16), dimension (SIZE(A,1), SIZE(B,2)) :: C
    integer :: i, j, k
    C = 0.
    do j = 1, SIZE(B, 2)
        do k = 1, SIZE(A, 2)
            do i = 1, SIZE(A, 1)
                C(i, j) = C(i, j) + A(k, i) * B(j, k)
            end do
        end do
    end do
    end function bettmull16
end module bettermath