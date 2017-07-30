road(ballybay, scotstown, 8).
road(trim, navan, 12).
road(enfield, navan, 5).
road(finglas, ballymun, 3).
road(ballymun, finglas, 3).
road(finglas, glasnevin, 2).
road(deanhill, furze, 1 ).
road(slane, tullyallen, 8 ).

route(slane, tullyallen, 2, 4).
route(furze, deanhill, 1, 8).
route(balymun, finglas, 4, 3).
route(cobh, youghal, 2, 9).
route(ballymun, santry, 3, 2).

shortest(slane, tullyallen, 2, 4).
shortest(slane, tullyallen, 1, 8).
shortest(finglas, cobh, 4, 3).
shortest(finglas, cobh, 2, 9).
shortest(ballymun, santry, 3, 2).
shortest(ballymun, santry, 2, 5).

destinations(X, Y, T, [Y|T], Distance_one) :-
    road(X, Y, Distance_one).

route(X, Y, R, N) :-
    destinations(X, Y, [X], A, N),
    reverse(A,R).

destinations(X, Y, Driveby, R, Distance) :-
    road(X, Z, Distance_one),
    Z \== Y,
	\+member(Z, Driveby),
    destinations(Z, Y, [Z|Driveby], R, Distance_two),
    Distance is Distance_one +  Distance_two.

shortest(X, Y, R, N) :-
    setof((Distance_one, MyRoute), route(X, Y, MyRoute, Distance_one), [(N,R)|_]).

