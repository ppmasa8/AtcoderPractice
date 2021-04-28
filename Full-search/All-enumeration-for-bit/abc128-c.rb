n,m=gets.split.map &:to_i
k=m.times.map{gets.split.map(&:to_i)}
p=gets.split.map &:to_i

def main(n,m,k,p)
  result = 0
  (0...(1 << n)).each do |bit|
    bool = true
    (0..m-1).each do |i|
      cnt = 0
      k[i][1..].each do |swi|
        cnt += 1 if ((bit >> swi-1) & 1) == 1
      end
      bool = false if cnt % 2 != p[i]
    end
    result += 1 if bool
  end
  result
end

puts main(n,m,k,p)