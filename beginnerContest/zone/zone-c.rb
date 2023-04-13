n = gets.to_i
arr = Array.new(n) { gets.split.map(&:to_i) }

ans = (1..10**9 + 1).bsearch do |i|
  tmp = arr.map do |e|
    5.times.sum { e[_1] >= i ? (1 << _1) : 0 }
  end
  tmp.uniq!
  case tmp.size
  when 1 then tmp[0] < 31
  when 2 then tmp[0] | tmp[1] < 31
  else tmp.combination(3).all? { |x, y, z| x | y | z < 31 }
  end
end

puts ans - 1
