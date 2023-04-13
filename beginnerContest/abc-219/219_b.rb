a=gets.chomp
b=gets.chomp
c=gets.chomp
t=gets.chomp.chars
arr=[]
t.each do |elm|
  if elm == '1'
    arr << a
  elsif elm == '2'
    arr << b
  else
    arr << c
  end
end
puts arr.join
