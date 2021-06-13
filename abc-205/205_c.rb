a, b, c =gets.split.map &:to_i
if a == b || a.abs == b.abs && c.even?
  puts "="
  exit
end
if c.odd?
  puts (a > b ? ">" : "<")
else
  puts (a.abs > b.abs ? ">" : "<")
end