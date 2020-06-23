# Probability - an introduction

## Defining probability
We all have some intuitive idea about what we mean by the word 'probability'. 

- When tossing a coin the probability of obtaining a head is 0.5.
- The probability that it will rain tomorrow in London is 0.8.

But how can we define probability more formally? 

One way to define probability is through the notion of *relative frequency*. If we carry out an experiment (e.g. rolling of a die) a large number of times, then the proportion of times a particular result (e.g. a six) occurs is known as the relative frequency.  If we repeat the experiment a very large number of times then the limiting value of the relative frequency (i.e. the value that the relative frequency approaches as the number of times approaches infinity) is called a *probability*.

$$
P(\mbox{roll a six}) = \lim_{n \rightarrow \infty} \frac{\mbox{number of 6s in} \ n \ \mbox{rolls}}{n}
$$

The plot below shows the relative frequency of 6s when a die is rolled repeatedly. The first roll was not a 6, and so the relative frequency is zero. The second roll was a 6, so the relative frequency is 0.5. As we then roll the die further, the relative frequency fluctuates. But from the figure we see that as the number of rolls increases, the relative frequency converges to 1/6.

set.seed(123)
roll <-sample(1:6,1000,replace=T)
n <- seq_along(roll)
d <- cumsum(roll==6)/n
 
plot(n, d, 
  xlab="Number of rolls", ylab="Relative frequency of 6s",
  xlim=c(1, 1000), ylim=c(0, 1)) 


Probability is crucial to medical statistics. For example:
- Predicting events 
    - What is the probability that a particular patient will suffer from heart disease in the next 10 years?
- Assessing whether two characteristics are related
    - Is LVEF related to systolic blood pressure?
- Quantifying uncertainty around estimates
    - We estimate that this new drug decreases 10-year mortality by 5\%. Can we provide a range of values which captures the uncertainty around this estimate?


## Useful definitions

An **experiment** is a process that produces one outcome from some set of alternatives.

The **sample space** is the set of points representing all the possible outcomes of an experiment.

Suppose the experiment involved selecting an individual at random from the above population and denoting their smoking and asthma status. If we let $A$ denote having asthma and $S$ being a smoker, we can write the sample space as $\{AS,A\bar{S},\bar{A}S,\bar{A}\bar{S}\}$, where $\bar{A}$ denotes not having asthma.

An **event** is a subset of the sample space, e.g. the event that a randomly selected individual is a smoker is $\{AS,\bar{A}S\}$.



## Venn diagrams and set notation

Venn Diagrams are sometimes used to represent probabilities in the whole sample space graphically. The whole diagram (bordered by the rectangle) represents the sample space and events within it are drawn with areas proportional to their probabilities.


The **union** of two events $X$ and $Y$, denote $X \cup Y$, is the event that either $X$ occurs, or $Y$ occurs, or both occur. For example, $A \cup S$ is the event that the randomly selected individual has asthma, is a smoker, or has asthma and is a smoker. 

The **intersection** of two events $X$ and $Y$, denoted $X \cap Y$, is the event that both $X$ and $Y$ occur. It is sometimes referred to as the joint probability of $X$ and $Y$. For example $A \cap S$ is the event that the randomly selected individual has asthma and is a smoker. 

The **complement** of an event $X$, denoted $\bar{X}$, is the event that $X$ does not occur. The complement of $X$ is also sometimes denoted $X'$.

[Add venn diagrams]


## Axioms of probability

The probabilities of events must follow the **axioms** of probability theory:

- $0 \leq P(A) \leq 1$ for every event $A$.
- $P(\Omega)=1$ where $\Omega$ is the total sample space.
- For disjoint (mutually exclusive) events $A_{1},..,A_{n}$:

$$
P(A_{1} \cup A_{2} \cup \ldots \cup A_{n}) = P(A_{1}) + P(A_{2}) + \ldots + P(A_{n}).
$$

The events $A_{1},..,A_{n}$ are disjoint if at most one of them can occur, i.e. there are no intersections between any of the events.


Axiom 3 is sometimes referred to as the *additive rule* of probability.

### Consequences of the axioms of probability

Given these axioms we can prove a number of useful results. Drawing a Venn diagram often helps us in constructing a proof, by appealing to a our visual intuition.

For example, using the axioms above, we can prove the **complement rule**:

$$
P(\bar{A})=1-P(A)
$$

We can similarly prove the useful rule for non-disjoint events $A_1$ and $A_2$,

$$
P(A_{1} \cup A_{2}) = P(A_{1}) + P(A_{2}) - P(A_{1} \cap A_{2})
$$

Proof is left as an exercise.