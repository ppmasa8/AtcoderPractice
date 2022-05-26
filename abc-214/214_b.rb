s,t=gets.split.map(&:to_i)
cnt=0
for i in 0..100 do
  for j in 0..100 do
    for k in 0..100 do
      cnt+=1 if i+j+k<=s && i*j*k<=t
    end
  end
end
puts cnt
