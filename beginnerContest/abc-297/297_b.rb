s=gets.chomp.chars
hash={}
s.each_with_index do |alp, idx|
  if hash[alp]
    hash[alp] << idx
  else
  	hash[alp] ||= [idx]
  end
end

first_cond  = hash["B"][0] % 2 != hash["B"][1] % 2
second_cond = hash["R"][0] < hash["K"][0] && hash["K"][0] < hash["R"][1]

puts first_cond && second_cond ? "Yes" : "No"
