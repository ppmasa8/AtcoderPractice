def del_a(a, b, c)
  af = a.shift
  if af == "a"
    if a == []
      puts "A"
      exit
    end
    del_a(a, b, c)
  elsif af == "b"
    if b == []
      puts "B"
      exit
    end
    del_b(a, b, c)
  else
    if c == []
      puts "C"
      exit
    end
    del_c(a, b, c)
  end
end

def del_b(a, b, c)
  bf = b.shift
  if bf == "a"
    if a == []
      puts "A"
      exit
    end
    del_a(a, b, c)
  elsif bf == "b"
    if b == []
      puts "B"
      exit
    end
    del_b(a, b, c)
  else
    if c == []
      puts "C"
      exit
    end
    del_c(a, b, c)
  end
end

def del_c(a, b, c)
  cf = c.shift
  if cf == "a"
    if a == []
      puts "A"
      exit
    end
    del_a(a, b, c)
  elsif cf == "b"
    if b == []
      puts "B"
      exit
    end
    del_b(a, b, c)
  else
    if c == []
      puts "C"
      exit
    end
    del_c(a, b, c)
  end
end

a, b, c = gets.chomp.chars, gets.chomp.chars, gets.chomp.chars
del_a(a, b, c)
