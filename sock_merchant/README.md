# Sock Merchant Problem

This algorithm is a classic pairs matching problem.

## [Problem description](https://hackerrank-challenge-pdfs.s3.amazonaws.com/25168-sock-merchant-English?AWSAccessKeyId=AKIAJ4WZFDFQTZRGO3QA&Expires=1568905232&Signature=cvqk4A7mui6CaaskeGGxBtdJgLY%3D&response-content-disposition=inline%3B%20filename%3Dsock-merchant-English.pdf&response-content-type=application%2Fpdf)

You will be given an array of integers representing the color of each sock. Determine how many pairs of
socks with matching colors there are.

## Solution

1. To achieve the solution, first I count occurrences of each number in a `counts` array. With this structure:

```ruby
Given: [1,1,2,4,4,4]

[{:1 => 2}, {:2 => 1}, {:4 => 3}]
```

2. The final result will be to take each element from the `counts` array and apply a [`divmod`](https://apidock.com/ruby/Numeric/divmod) function which give us all the divisors from the element. Very useful to counts how many pairs we can form !!

```ruby
Given 4 => [2,0] (It's divisible by 2 and 0).

And following the previous array of counts: [{:1 => 2}, {:2 => 1}, {:4 => 3}]

The result will be: [1,0,1]

A total of 2 pairs.

```