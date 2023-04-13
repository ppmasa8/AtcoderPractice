n=gets.to_i
st=n.times.map{gets.to_s}
puts (st.size != st.uniq.size ? "Yes" : "No")