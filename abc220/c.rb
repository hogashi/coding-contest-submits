n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i)
x = gets.chomp.to_i

asum = a.sum
sho = x / asum
amari = x % asum

ans = sho * n
a.each{|i|
  amari -= i
  break if amari <= 0
  ans += 1
}

puts ans + 1
