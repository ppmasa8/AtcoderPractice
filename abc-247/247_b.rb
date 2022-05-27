n=gets.to_i
st=n.times.map{gets.split.map(&:to_s)}
name=Hash.new(0)
st.each do |s, t|
  name[s]+=1
  name[t]+=1 if s != t
end
puts st.all?{|x, y| name[x] == 1 || name[y] == 1 } ? "Yes" : "No"
