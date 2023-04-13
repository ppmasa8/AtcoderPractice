s=gets.chomp.chars.freeze
t=gets.chomp.chars
if s==t
  puts "Yes"
  exit
end
(0...s.size-1).each do |i|
  cp=s.dup
  tmp = cp[i]
  cp[i] = cp[i+1]
  cp[i+1] = tmp
  if cp == t
    puts "Yes"
    exit
  end
end
puts "No"
