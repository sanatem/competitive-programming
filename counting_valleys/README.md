# Counting Valleys Problem

This algorithm is about sum sequences.

## [Problem description](https://hackerrank-challenge-pdfs.s3.amazonaws.com/22936-counting-valleys-English?AWSAccessKeyId=AKIAJ4WZFDFQTZRGO3QA&Expires=1569299560&Signature=l8JJ3v5Yb2lRNSsJ%2F1FaV2vYeOM%3D&response-content-disposition=inline%3B%20filename%3Dcounting-valleys-English.pdf&response-content-type=application%2Fpdf)

In a given string found the sequences of 'U' and 'D' which pair to be a "Valley".

## Solution

1. To achieve this solution I count everytime we get again at level 0 (Sea level). So we have to simply have in mind every time we go down and up.

```ruby
    valley_steps -= 1 if step == 'D'
    valley_steps += 1 if step == 'U'
```
2. Just to be sure it's a valley we have to ensure our last step is an Uphill 

```ruby
    total_valleys += 1 if valley_steps.zero? && step == 'U'
```
