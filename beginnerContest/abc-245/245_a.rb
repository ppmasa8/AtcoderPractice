a,b,c,d=gets.split.map(&:to_i)
puts (a*60+b > c*60+d+0.1 ? "Aoki" : "Takahashi")
