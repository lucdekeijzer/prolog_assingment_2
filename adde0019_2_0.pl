same_member(L1, L2, E) :- member(E, L1), member(E, L2).

% First check if the head of the list is the element we are looking for

eq_pos([E1|_], [E2|_], E1, E2).

% if that is not the case, we check for the next element in the list and run the same function again
eq_pos([_|Tail1], [_|Tail2], E1, E2) :- eq_pos(Tail1, Tail2, E1, E2).