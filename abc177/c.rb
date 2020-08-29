n = gets.chomp.to_i
sum = 0
asum = 0
moder = 1000000007
a = gets.chomp.split(' ').reverse.map{|ii|
  i = ii.to_i
  sum = (sum + asum * i) % moder
  asum += i
}
puts sum
