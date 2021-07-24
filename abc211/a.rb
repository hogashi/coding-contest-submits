a, b = gets.chomp.split(' ').map(&:to_i)

puts (a - b) / 3.0 + b
