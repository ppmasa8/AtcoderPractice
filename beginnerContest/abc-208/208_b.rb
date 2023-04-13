p=gets.to_i
cnt=0
10.downto(1) do |i|
  num = (1..i).inject(:*)
  if p/num > 0
    cnt+=p/num
    p = p%num
  end
end
puts cnt
