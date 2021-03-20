a, b = gets.chomp.split(' ').map(&:to_i)
c, d = gets.chomp.split(' ').map(&:to_i)

puts (a > b ? a : b) - (c < d ? c : d)
