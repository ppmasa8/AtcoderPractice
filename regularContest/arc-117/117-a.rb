def main(a,b)
  ans=[]
  if a>=b
    (1..a).each do |ai|
      ans << ai
    end
    (-b+1..-1).each do |bi|
      ans << bi
    end
    ans << (0 - ans.sum)
  else
    (-b..-1).each do |bi|
      ans << bi
    end
    (1..a-1).each do |ai|
      ans << ai
    end
    ans << (0 - ans.sum)
  end
  ans.join(" ")
end

a,b=gets.split.map &:to_i
puts main(a,b)
