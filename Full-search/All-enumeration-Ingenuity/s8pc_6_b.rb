n  = gets.to_i
ab = n.times.map{gets.split.map(&:to_i)}

def main(ab)
  min = 10 ** 10
  abmix = ab.flatten.sort
  abmix.each do |enter|
    abmix.each do |out|
      sum = 0
      diff = (out - enter).abs
      ab.each do |a, b|
        if enter < out
          sum += (a - enter).abs * 2 if enter > a
          sum += (b - out).abs * 2 if b > out
          sum += diff
        elsif enter == out
          sum += (a - enter).abs * 2 if enter > a
          sum += (b - out).abs * 2 if b > out
        else
          sum += (b - enter).abs * 2 if enter < b
          sum += (a - out).abs * 2 if a < out
          sum += diff
        end
      end
      min = [min, sum].min
    end
  end
  min
end

puts main(ab)