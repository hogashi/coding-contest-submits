k = gets.chomp.to_i
a, b = gets.chomp.split(' ')
as = a.split('').map(&:to_i)
bs = b.split('').map(&:to_i)

index = 0
asum = as.reverse.map{|i|
  kake = k ** index
  index += 1
  i * kake
}.sum
index = 0
bsum = bs.reverse.map{|i|
  kake = k ** index
  index += 1
  i * kake
}.sum

puts asum * bsum
