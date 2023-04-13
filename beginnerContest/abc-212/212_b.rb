pass = gets.chomp.chars
if pass.uniq.size == 1
    puts "Weak"
    exit
end

stack = []
pass.each do |str|
  	str = str.to_i
    if stack != []
        unless stack[-1] + 1 == str ||
            stack[-1] == 9 && str == 0
            puts "Strong"
            exit
        end
    end
  	stack << str
end
puts "Weak"
