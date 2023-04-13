s=gets.chomp.chars
if s.last == "s"
  puts s.join + "es"
else
  puts s.join + "s"
end