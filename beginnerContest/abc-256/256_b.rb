n=gets.to_i
a=gets.split.map(&:to_i)
p=0
m=[0, 0, 0, 0]
a.each do |ai|
  nm=[0, 0, 0, 0]
  m[0]=1
  (0..3).each do |i|
    if m[i] == 1
      if ai + i >= 4
        p += 1
      else
        nm[ai + i] = 1
      end
    end
  end
  m = nm
end
puts p
