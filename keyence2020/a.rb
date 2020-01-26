h = gets.chomp.to_i
w = gets.chomp.to_i
n = gets.chomp.to_i

hw = h < w ? w : h
puts (1.0 * n / hw).ceil
