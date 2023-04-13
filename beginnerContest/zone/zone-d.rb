s = gets.chomp.chars
rev = 1
t = []
s.each do |str|
  if str == "R"
    rev *= -1
  else
    if rev == 1
      t << str
    else
      t.unshift(str)
    end
  end
end
t.reverse! if rev == -1

result = []
t.each do |str|
  if str == result.last
    result.pop
  else
    result << str
  end
end
puts result.join