% Define the database with objects and their relationships
% Facts: parent(Parent, Child), male(Name), female(Name)

% Example facts
parent(ivan, anna).
parent(ivan, sergey).
parent(maria, anna).
parent(maria, sergey).
parent(sergey, dmitry).
parent(anna, katya).

male(ivan).
male(sergey).
male(dmitry).

female(maria).
female(anna).
female(katya).

% Predicate to find children
% children(Parent, Child)
children(Parent, Child) :-
    parent(Parent, Child).

% Predicate to find all children of a specific person
all_children(Parent, Children) :-
    findall(Child, children(Parent, Child), Children).

% Example query:
% ?- all_children(ivan, Children).
% Should return: Children = [anna, sergey].

% Predicate to find all parents of a specific child
parents(Child, Parents) :-
    findall(Parent, parent(Parent, Child), Parents).

% Example query:
% ?- parents(anna, Parents).
% Should return: Parents = [ivan, maria].

% Predicate to check if a person is male
is_male(Name) :-
    male(Name).

% Predicate to check if a person is female
is_female(Name) :-
    female(Name).
