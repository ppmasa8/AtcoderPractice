s = gets.chomp.chars

def main(s)
  max,cnt=0,0
  s.each do |si|
    if si == "A" || si == "T" || si == "G" || si == "C"
      cnt+=1
    else
      cnt=0
    end
    max=[max,cnt].max
  end
  max
end

puts main(s)
