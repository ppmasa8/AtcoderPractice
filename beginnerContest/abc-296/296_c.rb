require 'set'

n,x=gets.split.map(&:to_i)
a=gets.split.map(&:to_i)

s=Set.new(a)
s.each do |num|
  if s.include?(num+x)
    puts "Yes"
    exit
  end
end
puts "No"

### Set#include?とArray#include?の実行速度が10倍くらい違う理由 → https://qiita.com/an_sony/items/708c47d073ad709431d6#%E3%81%A7%E3%81%AA%E3%82%93%E3%81%A7%E9%80%9F%E3%81%84%E3%81%AE%E3%82%88
