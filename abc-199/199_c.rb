n = gets.to_i
s = gets.chomp.chars
q = gets.to_i
bool = false

def main (n, s, q, bool)
  tab = q.times.map {gets.split.map(&:to_i)}
  tab.each do |t,a,b|
    if t == 1
      if bool
        a = a > n ? a - n : n + a
        b = b > n ? b - n : n + b
      end
      s[b-1], s[a-1] = s[a-1], s[b-1]
    else
      bool = !bool
    end
  end
end

main(n, s, q, bool)
puts bool ? (s[n, n] + s[0, n]).join : s.join