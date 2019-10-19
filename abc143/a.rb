a, b = gets.chomp.split(' ').map{|i| i.to_i }

diff = a - b * 2

puts diff < 0 ? 0 : diff

