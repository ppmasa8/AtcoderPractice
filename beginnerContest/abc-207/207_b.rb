a,b,c,d=gets.split.map &:to_i
if c*d-b>0
  puts (a-1)/(c*d-b)+1
else
  puts "-1"
end
