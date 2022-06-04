C = Hash.new max = 0
min = 1.0/0
gets.to_i.times{
	t,x,c = gets.split.map(&:to_i)
	case t
	when 1
		C[x] += 1
		max = x if max&&max<x
		min = x if min&&x<min
	when 2
		c0 = C[x]
		if c0<=c
			C.delete x
			max = nil if max&&max==x
			min = nil if min&&min==x
		else
			C[x] -= c
		end
	when 3
		max ||= C.keys.max
		min ||= C.keys.min
		p max-min
	end
}
