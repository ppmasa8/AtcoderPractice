require 'set'

n,x=gets.split.map(&:to_i)
a=gets.split.map(&:to_i)

s=Set.new(a)
s.each do |num|
  if s.include?(num+x)
    puts "Yes"
    exit
  end
end
puts "No"
