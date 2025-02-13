likes(john, "Germany").
likes(dick, "France").
likes(ann, "Germany").
likes(german, "Spain").
likes(john, "Italy").
likes(mary, R) :- likes(dick, R).
likes(nina, R) :- likes(john, R), likes(ann, R).
replay(A, B, S) :- A = 0, B = 0, S = "Anydicision".
replay(A, B, S) :- A = 0, B \= 0, S = "Nodecision".
replay(A, B, S) :- A \= 0, S = "Onedecision".