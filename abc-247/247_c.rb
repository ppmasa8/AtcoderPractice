n=gets.to_i
a=["1"]
(1...n).each do |i|
  a[i] = "#{a[i-1]} #{i+1} #{a[i-1]}"
end
puts a[n-1]
  
