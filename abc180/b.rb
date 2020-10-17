n = gets.chomp.to_i

m = 0.0
y = 0.0
c = 0.0

gets.chomp.split(' ').each{|ii|
  i = ii.to_i.abs

  m += i
  y += i ** 2
  c = i if c < i
}

puts m
puts Math.sqrt(y)
puts c
