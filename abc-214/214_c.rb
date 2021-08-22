s,k=gets.split.map &:to_s; k=k.to_i; n=s.size;
puts s.chars.permutation(n).map{|a| a.join}.uniq.sort[k-1]