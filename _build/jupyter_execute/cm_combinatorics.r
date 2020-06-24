# Combinatorics


Combinatorics is the branch of maths concerned with counting.  A **permutation** is an arrangement with regard to order, whereas in a **combination** the order does not matter. For example, the letters AB and BA are two different permutations, but the same combination of letters.

## Permutations

### Permutations of $n$ objects

If we have 3 distinct objects, labelled $A$, $B$ and $C$, how many permutations are there? 

There are 6 permutations: $ABC, ACB, BAC, BCA, CAB$ and $CBA$.  

More generally, suppose we have $n$ different objects. In how many ways can $n$ different objects be arranged? Each arrangement (i.e. respecting different orders) is a permutation. To obtain a general expression for the number of permutations, imagine there are $n$ empty boxes and $n$ items labelled $1$, $2$, ..., $n$, to put in the $n$ boxes.  One way of putting the items in the boxes would be:


| Box 1  | Box 2 | . | . | . | Box $n$ |
| :-: | :-: | :-: | :-: | :-: | :-: |
| Item 1  | Item 2  |  . | . | . | Item n |

So, let's start with the $n$ empty boxes and think about ways in which we can fill them. 
- There are $n$ ways of filling the first box (we can pick item 1, item 2, ..., or item $n$).
- Once we have filled the first box, we have $(n-1)$ objects left and $(n-1)$ empty boxes left. 
- There are $(n-1)$ ways of filling the second box, leaving $(n-2)$ objects to choose from.
- There are $(n-2)$ ways of filling the third box, leaving $(n-3)$ objects.
- ...
- There is just one way of filling the (last) $n$th box.

For each of the $n$ ways of filling the first slot, there are $n-1$ ways of filling the second slot, i.e. there are $n(n-1)$ ways of filling the first two slots. For each of these $n(n-1)$ ways, there are $n-2$ ways to fill the third slot, etc. So there are $n\times(n-1)\times(n-2)\times...\times3\times2\times1$ ways of arranging the $n$ objects, i.e.the number of permutations of $n$ objects is equal to

$$
n \times (n-1) \times \ldots \times 3 \times 2 \times 1  = n!
$$

We denote this expression by $n!$ (pronounced $n$ factorial). As a matter of convention we set $0!=1$.

### Permutations of a subset of $x$ objects chosen from $n$

If we only select $x$ objects from the total $n$ possible, how many possible permutations are there of these $x$ objects? Once again, we can think of the number of ways that we can fill $x$ boxes, as in the diagram below.  

| Box 1  | Box 2 | . | . | . | Box $x$ |
| :-: | :-: | :-: | :-: | :-: | :-: |
| ?  | ?  |  . | . | . | ? |

So, let's start with the $x$ empty boxes and think about ways in which we can fill them with the $n$ items. 
- There are $n$ ways of filling the first box, leaving $(n-1)$ objects and $(n-1)$ boxes.  
- There are $(n-1)$ ways of filling the second box, leaving $(n-2)$ objects to choose from.
- There are $(n-2)$ ways of filling the third box, leaving $(n-3)$ objects.
- ...
- There are $(n-x+1)$ ways of filling the (last) $x$th box.

So there are $n \times (n-1) \ldots \times (n-x+1)$ ways of arranging (or permuting) $x$ objects from $n$.

We often write $_n P_x$ or $^n P _x$ to denote the number of permutations of $x$ objects from $n$ different objects.

Including $(n-x)(n-x-1)...\times 3 \times 2 \times 1$ in the numerator and denominator, we can express the number permutations of $x$ objects from $n$ as:

$$
^n P _x = \frac{n(n-1)(n-2)...(n-x+1)(n-x)(n-x-1)...\times 3 \times 2 \times 1}{(n-x)(n-x-1)...\times 3 \times 2 \times 1}  =  \frac{n!}{(n-x)!}
$$


We can think of the number of permutations of $x$ objects chosen from $n$ as the number of permutations of $n$ objects, divided by the number of of permutations of the $(n-x)$ objects that we don't choose.

## Combinations

### Combinations of $x$ objects chosen from $n$

Suppose now we select $x$ objects chosen from $n$, but we are not concerned with the order of the $x$ objects.  

Let $k$ be the number of ways of choosing $x$ from $n$ objects without regard to order, i.e. the number of combinations of $x$ objects from $n$ objects. From above, we know that for each of these combinations (of $x$ objects) there are $x!$ permutations. Hence 

$$
k = \frac{n!}{x! (n-x)!}
$$

Intuitively, there are more permutations than combinations, since for every combination there are several permutations:

$$
\frac{n!}{(n-x)!} > \frac{n!}{x! (n-x)!}
$$

We often write $^n C_x$ or the binomial coefficient $\begin{pmatrix}n \\ x \end{pmatrix}$ to denote the number of combinations of $x$ objects from $n$,

$$
^n C_x  = \begin{pmatrix}n \\ x \end{pmatrix} = \frac{n!}{x! (n-x)!}.
$$
