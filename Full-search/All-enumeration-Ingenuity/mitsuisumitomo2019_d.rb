n = gets.to_i
s = gets.chomp
def main(s)
  ans = 0
  ('000'..'999').each do |i|
    (a = s.index(i[0], 0))
    (b = s.index(i[1], a + 1)) unless a.nil?
    (c = s.index(i[2], b + 1)) unless b.nil?
    ans += 1 if c
  end
end

puts main(s)