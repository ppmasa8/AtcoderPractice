n = gets.to_i
a = gets.split.map &:to_i
q = gets.to_i
m = gets.split.map &:to_i

ans = []
m.each do |mi|
  cnt = 0
  1.upto(n.size) do |i|
    a.combination(i) do |combi|
      if combi.inject(:+) == mi
        cnt += 1
      end
    end
  end
  if cnt.zero?
    ans << "no"
  else
    ans << "yes"
  end
end

puts ans

