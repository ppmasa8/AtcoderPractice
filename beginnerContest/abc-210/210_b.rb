n=gets.to_i
s=gets.chomp.chars
s.each_with_index do |str, i|
  if str == "1"
    puts (i.odd? ? "Aoki" : "Takahashi")
    exit
  end
end
