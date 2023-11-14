%silnia

silnia(0,1).
silnia(N,Wynik):-
    N>0,
    NewN is N-1,
    silnia(NewN,NewWynik),
    Wynik is N*NewWynik.

%Fibonacci

fib(0,0).
fib(1,1).
fib(N,Wynik):-
    N>1,
    N1 is N-1, N2 is N-2,
    fib(N1, Wynik1), fib(N2, Wynik2),
    Wynik is Wynik1+Wynik2.

%a^n

pow(_,0,1).
pow(A,N,Wynik):-
    N>0,
    NewN is N-1,
    pow(A,NewN,NewWynik),
    Wynik is A*NewWynik.

%Hanoi
hanoi(1,W1,W2,_) :-
   write('Przenies krazek z wiezy '), write(W1), write(' na wieze '), write(W2), nl.
hanoi(N,W1,W2,W3) :-
   N>1,
   N1 is N-1,
   hanoi(N1,W1,W3,W2),
   hanoi(1,W1,W2,_),
   hanoi(N1,W3,W2,W1).
