# Discrete Random Variables

A random variable $X$ is a variable which takes a numerical value which depends on the outcome of the experiment under consideration. Random variables which take a value either from a *finite* or *countably infinite* set (e.g. the positive integers) are known as **discrete random variables**. In contrast, continuous random variables take values in an uncountable set (e.g. positive real numbers). For now we will consider discrete random variables. 

## Probability Distribution Function

A random variable is characterised by its **probability distribution function** (often abbreviated **PDF**). For discrete random variables the probability distribution function gives the probability that the variable takes each of the values which it might take:

$$
P(X=x_j), \ \ \mbox{for each value} \ x_j \ \mbox{that} \ X \ \mbox{can take}
$$ 


Suppose $X$ represents the number of boys within a set of quadruplets. It is important to understand the distinction between $X$ and $x$. 
- Capital $X$ denotes the random variable whose value is the number of boys in a set of quadruplets.
- Little $x$ is used to denote a (generic) possible value which the random variable $X$ might take. 
- So the expression $P(X=x)$ can be read as "the probability that the random variable $X$ takes value little $x$".

### Example: PDF

Suppose we are doing a study of quadruplets (i.e. four children born within the same pregnancy). Suppose $X$ is the number of the children, within the four siblings, that are male. Then the sample space is $X \in \{ 0, 1, 2, 3, 4 \}.$ The probability distribution function is shown in the table below.


| $x$  |  P(X=$x$) |
|---- | ---- |
| 0 | 0.06 |
| 1 | 0.24 |
| 2 | 0.37 |
| 3 | 0.26 |
| 4 | 0.07 |


## Cumulative distribution function

For a random variable $X$, its **cumulative distribution function** (CDF) is given by:

$$
F(x)=P(X \leq x)
$$

Given the probability distribution function for $X$ we can derive the CDF, and vice-versa. They are two different ways of encoding the same information.

### Example: CDF

In the study of quadruplets above, the CDF is:


| $x$  |  P(X=x) | P(X$\geq$=$x$) |
|---- | ---- | ---- |
| 0 | 0.06 | 0.06 |
| 1 | 0.24 | 0.30 | 
| 2 | 0.37 | 0.67 | 
| 3 | 0.26 | 0.93 | 
| 4 | 0.07 | 1 | 


## Expectation of a random variable

The expectation (or mean) of a random variable $X$ is one measure of the centre of its distribution (another is the median). For discrete random variables $X$, it is defined as:

$$
E(X) = \sum_{x_{j}} x_{j} P(X=x_{j})
$$

where the summation is over all possible $x_{j}$ values that $X$ can take. 

One way to think of $E(X)$ is the average value of $X$ over a large number of repetitions of the experiment or random process that produces $X$. The Greek letter $\mu$ is often used for $E(X)$. Note that here we are defining the population mean, which is not the same as the sample mean.

### Example: Mean

Returning to the example of number of boys within sets of quadruplets, for each value $x$ we can calculate $x \times P(X=x)$. 


| $x$  |  P(X=$x$) | P(X$\geq$=$x$) | $x$ $\times$ P(X$\geq$=x) | 
|---- | ---- | ---- | ---- |
| 0 | 0.06 | 0.06 | 0 $\times$ 0.06 |
| 1 | 0.24 | 0.30 | 1 $\times$  0.24 |
| 2 | 0.37 | 0.67 | 2 $\times$  0.37 |
| 3 | 0.26 | 0.93 | 3 $\times$  0.26 |
| 4 | 0.07 | 1 | 4 $\times$  0.07 |


To find $E(X)$ we then simply take the sum of these values across all values of $x$:

$$
E(X) = 0 \times 0.06 + 1 \times 0.24 + 2 \times 0.37 + 3 \times 0.26 + 4\times 0.07 = 2.04
$$

Note that we do not actually expect to find 2.04 boys in a set of quadruplets! 

Rather, if we repeatedly sample sets of quadruplets, and then take the average of the values of $X$ across the samples, the value we expect to get is 2.04, with the value getting closer and closer the more samples we take.

### Expectation of functions of random variables

Expectations of functions of random variables satisfy certain rules. 

For now, we will consider the effects (on the expectation) of multiplying a random variable by a constant $a$ or adding a constant $b$ to the random variable. 

If we add a constant $b$ to $X$, the expectation of the newly obtained random variable is simply $E(X)+b$. This is because adding $b$ just shifts the distribution of $X$ by $b$.  Similarly, if we multiply $X$ by a constant $a$, the new random variable $aX$ has expectation $aE(X)$, since for each value $x$ which $X$ takes, $aX$ takes the value $ax$. Combining these two results, we have that $E(aX+b)=aE(X)+b$. 

In summary,for constants $a$ and $b$,

- $E(X+b) = E(X) + b$
- $E(aX) = a E(X)$
- $E(aX + b) = aE(X) + b$

In general, the expectation of a function of $X$, $g(X)$ is defined as

$$
E(g(X))=\sum_{x_j}g(x_j)P(X=x_j)
$$

## Variance of a random variable

Expectation is a measure of the centre of a distribution. In contrast, the variance of a random variable measures the magnitude of the dispersion in the distribution around its expectation. The variance of a discrete random variable $X$ is defined as

$$
Var(X) = E((X-\mu)^{2})
$$

where $\mu=E(X)$. The variance uses the square of the distance from observations to the mean because this is always positive. If we were to define variance instead as $E(X-\mu)$, this would always be equal to zero!

An alternative expression for the variance is $Var(X)$ is $E(X^{2})-\mu^{2}$. This expression is equivalent to the previous and is often more useful for performing calculations involving variances.

The equivalence of the two expressions is easily proved:

\begin{eqnarray*}
Var(X) &=& E((X-\mu)^{2}) \\
&=& E(X^{2}-2X\mu + \mu^{2}) \\
&=& E(X^{2}) - 2 \mu^{2} + \mu^{2} \\
&=& E(X^{2}) - \mu^{2}.
\end{eqnarray*}


### Variance of functions of random variables

Expectations of functions of random variables satisfy certain rules. 

In contrast to expectation, adding a constant $b$ to a random variable does not affect its variance. This makes sense intuitively - shifting a distribution does not affect how dispersed the distribution is around its (newly shifted) mean. Multiplication of $X$ by a constant $a$ does affect the variability.

In summary,for constants $a$ and $b$,

- $Var(X+b) = Var(X)$
- $Var(aX) = a^2 E(X)$
- $Var(aX + b) = a^2 Var(X)$

In general, the variance of a function of $X$, $g(X)$ is defined as

$$
Var(g(X))= Var((g(X)- E(g(X)))^{2})
$$

## Joint distributions

So far we have considered a single random variable $X$. Often in medical statistics we are concerned with the associations between two or more random variables, and so we need to be able to characterise how one variable depends on another. The starting point for this is to define the joint distribution of two random variables $X$ and $Y$.

Let $X$ and $Y$ be two discrete random variables. We define their **joint** distribution function $P(X=x,Y=y)$ for values $x,y$ which $X$ and $Y$ can take by the probability $P(X=x \cap Y=y)$. (Note that $X=x$ and $Y=y$ are events, as defined previously). The joint distribution function must satisfy:

$$
P(X=x, Y=y) \geq 0 \ \ \mbox{for all} \ \ x,y
$$

and

$$
\sum_{x} \sum_{y} P(X=x, Y=y) = 1
$$

where the summation above is over all possible values $X$ can take and all possible values $Y$ can take.


### Marginal and conditional distributions

The **marginal distribution** of either $X$ and $Y$ can be found from the joint distribution, e.g.

$$
P(X=x) = \sum_{y} P(X=x, Y=y).
$$

The **conditional distribution** of one variable given the other can then be found as

$$
P(X=x|Y=y) = \frac{P(X=x,Y=y)}{P(Y=y)}.
$$

Lastly, the joint cumulative distribution function is defined as

$$
F(x,y) = P(X \leq x, Y \leq y).
$$

### Independence between two random variables

Two random variables $X$ and $Y$ are independent if

$$
P(X=x,Y=y) = P(X=x)P(Y=y)
$$

for all possible values $x$ and $y$ that $X$ and $Y$ take.

### Variance and expectation of linear combinations and products

In general, for random variables $X$ and $Y$, and constants $a, b$ and $c$,

$$
E(aX+bY+c)=aE(X)+bE(Y)+c
$$

If random variables $X$ and $Y$ are independent we can find the expectation of their product as:

$$
E(XY) = E(X) E(Y)
$$

Again suppose that $X$ and $Y$ are independent. Then the variance of their sum is:

$$
Var(X+Y) = Var(X) + Var(Y)
$$
