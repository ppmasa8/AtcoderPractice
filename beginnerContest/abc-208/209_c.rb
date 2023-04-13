n, k= gets.split.map &:to_i
a = gets.split.map &:to_i
q, w= k/n, k%n
as = a.sort[w]
if n == 1
  puts k
  exit
end

until a == []
  af=a.shift
  if af < as
    puts q + 1
  else
    puts q
  end
end
