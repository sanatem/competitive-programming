# Jumping Clouds Problem

This algorithm is a simple recursion.

## [Problem description](https://hackerrank-challenge-pdfs.s3.amazonaws.com/20832-jumping-on-the-clouds-English?AWSAccessKeyId=AKIAJ4WZFDFQTZRGO3QA&Expires=1569338653&Signature=02QaGElqkjNbVykHzIijrCORLdM%3D&response-content-disposition=inline%3B%20filename%3Djumping-on-the-clouds-English.pdf&response-content-type=application%2Fpdf)

Emma is playing a new mobile game that starts with consecutively numbered clouds. Some of the clouds are thunderheads and others are cumulus. She can jump on any cumulus cloud having a number that is equal to the number of the current cloud plus  or . She must avoid the thunderheads. Determine the minimum number of jumps it will take Emma to jump from her starting postion to the last cloud. It is always possible to win the game.

For each game, Emma will get an array of clouds numbered  if they are safe or  if they must be avoided. For example,  indexed from . The number on each cloud is its index in the list so she must avoid the clouds at indexes  and . She could follow the following two paths:  or . The first path takes  jumps while the second takes .

## Solution

As we have the base case that Emma can win the game, we can apply a recursive algorithm. The `jump_cloud` method will call until we don't have more clouds to jump. We want to get less jumps so we go through 2 clouds first and then through 1.


```ruby
def jump_cloud(clouds, index, jumps)
  return jumps if index >= (clouds.length - 1) # We get into the end.

  if clouds[index + 2] != 1
    jump_cloud(clouds, index + 2, jumps + 1)
  elsif clouds[index + 1] != 1
    jump_cloud(clouds, index + 1, jumps + 1)
  end
end  
```
