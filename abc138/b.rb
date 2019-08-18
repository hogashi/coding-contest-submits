n = gets.chomp.to_i
sum = 0.0
gets.chomp.split(' ').map{|i|
  sum += 1.0 / i.to_i
}

puts 1.0 / sum
