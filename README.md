# fortran_zad
![czasy dla kind = 4](https://github.com/Filtrax/fortran_zad/blob/master/res/wykres4.pdf)

![czasy dla kind = 8](https://github.com/Filtrax/fortran_zad/blob/master/res/wykres8.pdf)

![czasy dla kind = 16](https://github.com/Filtrax/fortran_zad/blob/master/res/wykres16.pdf)

Dla kind = 4 i kind = 8 algorytmy 'naive' i 'better' działają z bardzo podobną szybkością.
Algorytm 'dot' wyraźnie działa szybciej, chociaż różnica maleje przy większych macierzach. 
Funkcja 'matmul' jest zdecydowanie szybsza od pozostałych. Dla mniejszych rozmiarów macierzy jej czas działania jest przybliżany do zera.
Dla kind = 16 czasy działania funkcji są znacznie bliższe sobie zawzajem. Dalej jednak widać, że funkcje dot i math są szybsze.
