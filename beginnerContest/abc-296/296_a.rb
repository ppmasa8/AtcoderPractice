n=gets.to_i
s=gets.chomp
(0...s.size-1).each do |i|
  if s[i] == s[i+1]
    puts "No"
    exit
  end
end
puts "Yes"
