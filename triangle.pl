triangle(real,real).

triangle(B, HL) :- _  = 0.5*B*HL.

test(triangle(6,4)).
