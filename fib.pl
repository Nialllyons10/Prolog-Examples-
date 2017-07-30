fib(0,0).
fib(1,1).
fib(2,1).
fib(3,2).
fib(4,3).
fib(5,4).


fib(X, Y) :- X > 0, fib(X, Y, _).

fib(1, 1, 0).

fib(X, Y1, Y2) :- X > 1, X1 is X - 1, fib(X1, Y2, Y3), Y1 is Y2 + Y3.

test(fib(0,0)).
test(fib(1,1)).
test(fib(2,1)).
test(fib(3,2)).
test(fib(4,3)).
test(fib(5,4)).
