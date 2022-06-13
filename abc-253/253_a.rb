l=gets.split.map(&:to_i)
sorted=l.sort
puts (l[1] == sorted[1] ? "Yes" : "No")
