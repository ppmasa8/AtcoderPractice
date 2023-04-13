n,p=gets.split.map(&:to_i)
a=gets.split.map(&:to_i)
cnt=0
a.each do |elem|
  if elem < p
    cnt+=1
  end
end
p cnt
