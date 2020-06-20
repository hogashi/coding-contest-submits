x = gets.chomp.to_i

deg = 180 - x

puts 360 / 360.gcd(deg)
