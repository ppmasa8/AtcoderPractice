n=gets.to_i
s=gets.chomp.split("")
x, y=0, 0
dir=0
s.each do |str|
  if str == "S"
    case dir
   	when 0
      x+=1
    when 1
      y-=1
    when 2
      x-=1
    when 3
      y+=1
    end
  else
    case dir
    when 0
      dir = 1
    when 1
      dir = 2
    when 2
      dir = 3
    when 3
      dir = 0
    end
  end
end
puts "#{x} #{y}"
