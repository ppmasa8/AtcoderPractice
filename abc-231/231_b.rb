n=gets.to_i
s=n.times.map{gets.chomp}
puts s.tally.sort_by { |_,b| -b }.map(&:first)[0]
