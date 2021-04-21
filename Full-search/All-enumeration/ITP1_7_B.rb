input = n.times.map{gets.split.map(&:to_i)}

def main(input)
  cnt=0
  input.each do |n, x|
    if n==0 && x==0
      return cnt
    end
    (1..n).each do |i|
      (i..n).each do |j|
        (j..n).each do |k|
          cnt += 1 if i+j+k == x
        end
      end
    end
  end
end

puts main(input)