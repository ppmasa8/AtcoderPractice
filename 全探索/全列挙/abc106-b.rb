n = gets.to_i

def main(n)
  num = 1
  cnt = 0
  while num <= n
    cnt+=1 if divisor(num).size == 8
    num+=2
  end
  cnt
end

def divisor(num)
  (1..num).select{ |i| num % i == 0 }
end

puts main(n)