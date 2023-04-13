a, b, k = gets.split.map(&:to_i)
for i in 0..10000000000 do
  if a * (k ** i) >= b
    puts i
    exit
  end
end
