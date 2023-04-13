n=gets.to_i
arr=Array.new(n+1,0)
arr[0]=1
(n-1).times do 
  a, b = gets.split.map(&:to_i)
  arr[a]+=1
  arr[b]+=1
end
puts arr.all?{|v|v==1||v==n-1} ? "Yes" : "No"
