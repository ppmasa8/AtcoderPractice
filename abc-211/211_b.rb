s1=gets.chomp
s2=gets.chomp
s3=gets.chomp
s4=gets.chomp
list = []
list << s1 << s2 << s3 << s4
operator = ["3B", "HR", "2B", "H"]
puts (list.sort == operator.sort ? "Yes" : "No")