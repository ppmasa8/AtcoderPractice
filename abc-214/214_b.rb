n=gets.to_i; cnt = 0; sum = 0
while sum <= n
  cnt += 1
  sum = 2**cnt
end
puts cnt-1