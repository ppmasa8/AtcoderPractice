n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i).map{|v|v % 200}
hash = Hash.new(0)
cnt = 0

a.each do |ai|
  hash[ai] += 1
end

hash.each do |k,v|
  cnt += v*(v-1)/2
end

puts cnt