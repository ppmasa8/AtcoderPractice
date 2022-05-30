n=gets.to_i
a=gets.split.map(&:to_i)
a.tally.each do |k, v|
  if v == 3
    puts k
    exit
  end
end
