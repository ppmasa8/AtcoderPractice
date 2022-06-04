N=gets.to_i
a=Array.new(10){Array.new(10,0)}
N.times{
	s=gets.chomp
	10.times{|i|
		a[s[i].to_i][i]+=1
	}
}
min=N*10
10.times{|d|
	l=0
	r=0
	10.times{|i|
		next if l>a[d][i]
		l=a[d][i]
		r=i
	}
	min=[min,(l-1)*10+r].min
}
puts min

