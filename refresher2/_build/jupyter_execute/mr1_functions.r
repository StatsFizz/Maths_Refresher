# Functions and calculus 

## Exponential rules

$$a^m \times a^n = a^{m + n}$$

$$a^{-m}  = \frac{1}{a^m}$$

$$\frac{a^m}{a^n} = a^{m – n}$$

$$(a^m)^n = a^{mn}$$

$$(ab)^m  = a^m b^m$$

$$a^0 = 1$$

## Logarithm rules

$$log (ab) = log(a) + log(b)$$

$$log \left(\frac{a}{b}\right) = log(a) – log(b)$$

$$log (a^n) = n log(a)$$
        
$$log_a (a) = 1$$

$$log_a(1) = 0$$

We often use natural logarithms. This is sometimes written as $log_e(x)$ or more often $ln(x)$. Sometimes, $log(x)$ is used to refer to the natural logarithm but where possible we will try to use the unambiguous notation.

## Summation and product functions

### The summation function

The summation notation is a convenient and concise way of writing sums. For two integers, $a$ and $b$, with $a\leq b$, and a function $f(.)$ the general notation is:

$$\sum_{i=a}^b f(i) = f(a) + f(a+1) + \cdots + f(b)$$

So, for example, 

$$\sum_{i=2}^3 \frac{e^i \lambda^i}{i!} = \frac{e^2 \lambda^2}{2!} + \frac{e^3 \lambda^3}{3!}$$

An example that you are likely to encounter frequently is the sum of $x_1$, $x_2$, until $x_n$, 

$$\sum_{i=1}^n x_i = (x_1 + x_2 + x_3 + \cdots + x_n)$$

Two useful rules are:

$$\sum_{i=1}^n (a x_i) = a \sum_{i=1}^{n} x_i$$

and

$$\sum_{i=1}^n a = n a$$	


### The product function

Similarly, the product notation allows us to summarise long multiplications. The product of $x_1$, $x_2$, etc. until $x_n$, for example, can be written

$$\prod_{i=1}^n x_i = (x_1 \times x_2 \times x_3 \times \cdots \times x_n)$$

A useful multiplication rule is:

$$\prod_{i=1}^n (a x_i) = a^n \prod_{i=1}^n x_i$$