# SameMultiSetElement_SML
Define a function mequal which takes two lists as inputs and checks whether they have same multiset of elements. (Thus multiplicities must be taken into account.)


Define a function mequal which takes two lists as inputs and checks whether they have same multiset
of elements. (Thus multiplicities must be taken into account.)
- mequal;
val it = fn : ''a list * ''a list -> bool
- mequal([1,2,2], [2,1,2]);
val it = true : bool
- mequal([1,2,2], [1,1,2]);
val it = false : bool
- mequal([true, false, false, false], [false, false, true, true]);
val it = false : bool

