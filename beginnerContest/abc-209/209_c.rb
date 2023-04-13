n=gets.to_i
c=gets.split.map(&:to_i).sort
MOD = 10**9 + 7

ans, i = 1, 0
while i<n
  x   = c[i] - i
  ans = (ans * x) % MOD
  i += 1
end
puts ans
