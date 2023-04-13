n,a,b=gets.split.map(&:to_i)
(0...a*n).each do |i|
  arr=[]
  (0...b*n).each do |j|
    if ((i/a)+(j/b))%2==0
      arr<<'.'
    else
      arr<<'#'
    end
  end
  puts arr.join
end
