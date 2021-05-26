s = gets.chomp.chars
s.reverse!
(0...s.size).each do |i|
  if s[i] == "6"
    s[i] = 9
  elsif s[i] == "9"
    s[i] = 6
  end
end

puts s.join