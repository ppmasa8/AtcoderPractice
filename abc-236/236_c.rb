n,m=gets.split.map(&:to_i)
s=gets.split.map(&:to_s)
t=gets.split.map(&:to_s)
i,j=0,0
while i<n
  if s[i]==t[j]
    j+=1
    puts "Yes"
  else
    puts "No"
  end
  i+=1
end
