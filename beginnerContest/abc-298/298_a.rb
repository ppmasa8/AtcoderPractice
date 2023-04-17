n=gets.to_i
s=gets.chomp
puts s.include?("o") && !s.include?("x") ? "Yes" : "No"
