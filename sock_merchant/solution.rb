#!/bin/ruby

def sock_merchant(ar)
  counts = ar.inject(Hash.new(0)){ |k, v| k[v] += 1; k }
  counts.inject(0){ |memo, (k, v)| memo += v.divmod(2)[0] }
end

puts sock_merchant [1, 1, 3, 2, 1, 1]
