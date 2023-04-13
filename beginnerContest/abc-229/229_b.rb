a,b=gets.split.map(&:to_i)
while a>0 && b>0
  if (a%10)+(b%10)>=10
    puts "Hard"
    exit
  end
  a/=10
  b/=10
end
puts "Easy"
