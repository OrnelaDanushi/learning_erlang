2 + 15.
49 * 100.
5 / 2.
5 div 2.
5 rem 2.
$A.
monday.
'hello\n my friend'.
{a,b,c}.
[a,b,c].
"abc".
[98, 97, 99]. % is converted in the ascii code of "bac"
[98,97,99,7]. % this is not converted into the ascii code
true and true.
true and false.
true or false.
not true.
true xor false.
true or hello. % exception error
true orelse hello.
false orelse hello.
true andalso hello.
false andalso hello.
One. % with the uppercase letter is declared a variable, if it is not assigned there is a warning
One = 1.
One.
true andalso 5.
true andalso [5].
One = 2. % exception since it was already defined
Two = One + One.
b().
One=1
Two=2
4 < 5.
4 <= 5. % error because the = has to be put before the <
4 =< 5.
4 >=5.
a /= 5.
4 /= 4.0.
{a,b} < [1,2,3].
5 =:= 5.
5 =/= 5.
X=10, Y=4.
Point = {X, Y}.
{A,B} = Point.
{A1,_} = Point. % the _ is always unbound
{_,_} = {1,2}.
{point,Point}.
L = [1, 2, 3, {numbers, [4,5,6]}, 5.4, atoms]. % a list contains different elements
[1,2,3] ++ [4,5]. % concatenation
[1,2,1,3,2,3,4] -- [3,1] % removal of the first elements, a sort of difference
% it is right associative
[1,2,3] -- [1,2] -- [3]. % gives [3]
[1,2,3] -- ([1,2] -- [3]). % gives [3]
([1,2,3] -- [1,2]) -- [3]. % gives []
hd(L).
tl(L).
length(L).
List = [2,3,4].
NewList = [1 | List].
[Head|List] = List. % exception
[Head|Tail] = List.
Head.
Tail.
[H1,H2|Tail] = List.
[I|J] = [1|2].
[ 2*N || N <- [1,2,3,4,5] ]. % list comprehension
[ N || N <- [1,2,3,4,5,6,7,8,9,10], N rem 2 == 0 ].
Menu = [{steak, 5.99}, {beer, 2.99}, {pizza, 3.50}, {water, 1.0}].
[{Item, Price} || {Item, Price} <- Menu, Price >= 2, Price =< 5].
[{Item, Price*1.15} || {Item, Price} <- Menu, Price >= 2, Price =< 5].
Z = [ {X,Y} || X <- [a,b,c], Y <- [1,2,3,4]].
