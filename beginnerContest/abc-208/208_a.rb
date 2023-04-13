a,b=gets.split.map &:to_i
if a * 6 >= b && a <= b
  puts "Yes"
else
  puts "No"
end
