n=gets.to_i
a=gets.split.map(&:to_i)
for i in 0..10000
  unless a.include?(i)
    puts i
    exit
  end
end
