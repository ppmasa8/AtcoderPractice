N, Q = gets.split.map(&:to_i)

a = gets.split.map(&:to_i)
a.unshift(0)
c = [0]
a.each_cons(2) do |x, y|
  c << (y - x - 1) + c[-1]
end

An = a[-1]
Cn = c[-1]
Q.times do
  k = gets.to_i
  if Cn < k
    puts An + k - Cn
  else
    i = c.bsearch_index{|x| x >= k }
    puts a[i] - 1 - (c[i] - k)
  end
end