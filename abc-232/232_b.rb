s=gets.chomp.split("")
t=gets.chomp.split("")
arr=[]
if s.size != t.size
  puts "No"
  exit
end
if s==t
  puts "Yes"
  exit
end

while s!=[] && t!=[]
  a,b=s.pop,t.pop
  arr << (a.ord - b.ord)%26
end

puts arr.uniq.size == 1 ? "Yes" : "No"
  
