% Define a predicate to check the mutual arrangement of points
point_relationship(X1, Y1, X2, Y2, X3, Y3, Result) :-
    (X1 = X2, Y1 = Y2, X2 = X3, Y2 = Y3 -> 
        Result = 'All points coincide'
    ; X1 = X2, Y1 = Y2 -> 
        Result = 'Two points coincide, and the third differs'
    ; X1 = X3, Y1 = Y3 -> 
        Result = 'Two points coincide, and the third differs'
    ; X2 = X3, Y2 = Y3 -> 
        Result = 'Two points coincide, and the third differs'
    ; 
        Result = 'All points are different'
    ).

% Example usage
% ?- point_relationship(1, 2, 1, 2, 1, 2, Result).
% Result = 'All points coincide'.

% ?- point_relationship(1, 2, 1, 2, 3, 4, Result).
% Result = 'Two points coincide, and the third differs'.

% ?- point_relationship(1, 2, 3, 4, 5, 6, Result).
% Result = 'All points are different'.
