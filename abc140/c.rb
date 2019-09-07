n = gets.chomp.to_i
b = gets.chomp.split(' ').map{|i| i.to_i }

sum = b[0] + b.last
(n - 2).times{|i|
  bmin = b[i] < b[i + 1] ? b[i] : b[i + 1]
  sum += bmin
}

puts sum
