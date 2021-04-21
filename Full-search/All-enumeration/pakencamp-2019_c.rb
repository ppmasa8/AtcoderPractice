n,m=gets.split.map &:to_i
a=n.times.map{gets.split.map(&:to_i)}

def main(n,m,a)
  max=0
  (0..m-1).to_a.combination(2) do |i,j|
    sum=0
    (0..n-1).each do |k|
      sum += [a[k][i],a[k][j]].max
    end
    max=[sum,max].max
  end
  max
end

puts main(n,m,a)