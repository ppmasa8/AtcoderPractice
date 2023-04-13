# 入力で与えられたnは使わない。
n,x=gets.split.map &:to_i
a=gets.split.map &:to_i

def main(x,a)
  a.sort!
  cnt=0
  a.each do |ai|
    x-=ai
    if x>=0
      cnt+=1
    else
      puts cnt
      exit
    end
  end
  cnt-=1 if x>0
  cnt
end

puts main(x,a)