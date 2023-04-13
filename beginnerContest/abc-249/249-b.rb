s=gets.chomp.chars
if s.size != s.uniq.size || s.join.downcase == s.join || s.join.upcase == s.join
    puts "No"
else
    puts "Yes"
end