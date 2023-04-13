s = gets.chomp.chars
circle = s.count("o")
quest = s.count("?")

if circle == 0
  sum = quest**4
elsif circle == 1
  sum = 1+4*quest**3+6*quest**2+4*quest
elsif circle == 2
  sum = 8+6+24*quest+12*quest**2
elsif circle == 3
  sum = 36+24*quest
elsif circle == 4
  sum = 24
else
  sum = 0
end

puts sum