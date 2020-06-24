# Probability Theorems

This section discusses two key theorems:

1. The theorem of total probability, and
2. Bayes theorem

## Partitions

The theorem of total probability involves the concept of a partition of a sample space. So we begin by defining a partition.

The events $B_{1},B_{2},...B_{n}$ partition the sample space $\Omega$ if

- $P(B_{i}) > 0$ for all $i$ (all events in the partition have non-zero probability of occurring)
- $\bigcup^{n}_{i=1} B_{i} = \Omega$ (i.e. the union of the events = the sample space)
- $B_{i} \cap B_{j} = \emptyset$ (empty) for all $i \neq j$,  . i.e. $B_{i}$ and $B_{j}$ are disjoint

That is, the events $B_{1},...,B_{n}$ partition the sample space if
- all events are possible
- at least one event must occur, but
- no two events can occur simultaneously

### Examples

Some examples of partitions of sample spaces are:
- Blood groups A, B, AB and O partition the sample space of blood groups.
- Dead and alive partition the sample space of vital statuses.

## Theorem of total probability

Sometimes we wish to know the probability of a particular event $A$, but we only have data regarding the probability of the event conditional on some other event. The theorem of total probability allows us to express the probability of an event $A$ occurring in terms of other events which partition the sample space.

Let $A$ be some event, and let $B_1, ..., B_n$ be a partition of the sample space 

Then the theorem of total probability says that

$$
P(A) = P(A | B_1)P(B_1) + P(A | B_2)P(B_2) + ... + P(A | B_n)P(B_n)
$$

or equivalently

$$
P(A) = \sum_{j=1}^n P(A | B_j)P(B_j)
$$


That is, the total probability of $A$ can be calculated if the conditional probability of $A$ given $B_j$ and
$P(B_j)$ are known, for all $j$.

## Bayes theorem

In the theorem of total probability, $P(A)$ is calculated using the knowledge of the conditional probabilities of $A$ given $B$, $P(A|B)$.  In many situations we would like to make statements about the probability of $B$ knowing or conditional on $A$, i.e. we would like to reverse the conditioning. Bayes' Theorem provides a useful and very powerful theorem to do this.

From the definition of conditional probability we can express $P(A \cap B_{j})$ in two different ways

$$
P(A \cap B_{j}) = P(A|B_{j}) P(B_{j}) \\
$$

or

$$
P(A \cap B_{j}) = P(B_{j}|A) P(A).
$$

Equating the two, we therefore have

$$
P(A|B_{j}) P(B_{j}) = P(B_{j}|A) P(A) \ \ \Rightarrow \ \ P(B_{j}|A) = \frac{P(A|B_{j}) P(B_{j})}{P(A)}
$$


From the theorem of total probability (above) we know that

$$
P(A) = \sum^{n}_{k=1} P(A|B_{k}) P(B_{k})
$$

And so we can write

$$
P(B_{j}|A) = \frac{P(A|B_{j}) P(B_{j})}{P(A)} = \frac{P(A|B_{j}) P(B_{j})}{\sum^{n}_{k=1} P(A|B_{k}) P(B_{k})}.
$$

This is **Bayes' Theorem**.