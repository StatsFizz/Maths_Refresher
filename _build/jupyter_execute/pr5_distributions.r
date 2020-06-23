# Distributions

This page goes through some distributions that you may encounter during this year. 

## Discrete distributions

### Bernoulli distribution

The simplest discrete distribution that we are likely to encounter is the Bernouilli. The Bernoulli distribution corresponds to a single binary outcome (1="success", 0="failure"), with $P(X = 1) = \pi$.

The expectation and variance of a variable $X$ which follows a Bernoulli distribution are given by:

- $E[X] = \pi$
- $Var(X) = \pi(1-\pi)$

So if we randomly generate a value for $X$, it will either take the value of 0 or 1. If we do this many times (e.g. 50 times), then each of those 50 values will take the value either 0 or 1. On average, we expect the value to be $\pi$. So if we simulate a large number of values, we expect the sample mean to be around $\pi$. And we expect the sample variance to be around $\pi(1-\pi)$. 

The code below randomly generates values from a Bernoulli distribution. The first number is the number of values to draw (generate). The second number is always 1 for a Bernoulli distribution. The third number is the probability of success, $\pi$. If you are reading this interactively, change the first and third number and see what happens to the individual values, sample mean and sample variance.

X <- rbinom(50, 1, 0.48)
head(X)
mean(X)
var(X)

### Binomial distribution

Now suppose we conduct many Bernoulli trials (we will call this number $n$) and combine the results together to form a single number --- the total number of "successes" among the $n$ trials. This number follows a Binomial distribution.

If $X$ is the total number of successes from $n$ trials. Then $X$ follows a binomial distribution, 

$$
X \sim binomial(n; \pi), 
$$

The expectation and variance of a variable $X$ which follows a binomial distribution are given by:

- $E[X] = n \pi$
- $Var(X) = n \pi(1-\pi)$

The code below randomly generates values from a Binomial distribution. The first number is the number of values to draw (generate). The second number is the number of trials $n$. The third number is the probability of success, $\pi$ within each trial. If you are reading this interactively, change the first and third number and see what happens to the individual values, sample mean and sample variance.

X <- rbinom(100, 10, 0.48)
head(X)
hist(X)
mean(X)
var(X)

## Continuous distributions

### The normal (Gaussian) distribution

The normal distribution has a 'bell-shape'. It is centred around its mean, $\mu$. The spread of the different values is determined by the variance, $\sigma^2$.

If a variable $X$ follows a normal distribution, we write

$$
X \sim N(\mu, \sigma^2)
$$

The code below (in R) simulates 1000 observations from a normal distribution. If you are reading these notes interactively, try changing the values $\mu$ and $\sigma^2$ in the first two lines and see how the histogram of values change.

If you would like to see the values generated, try adding the lines of code `head(r)` and `summary(r)`.

mu <- 13
sigma2 <- 5
X <- rnorm(1000, mu, sigma2)
hist(X)