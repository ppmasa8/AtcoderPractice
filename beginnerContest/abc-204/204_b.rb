n=gets.to_i
a=gets.split.map &:to_i

sum=0
a.each do |ai|
  if ai > 10
    sum+=ai-10
  end
end

puts sum