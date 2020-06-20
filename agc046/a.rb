x = gets.chomp.to_i

deg = 180 - x

if 360 % deg == 0
  puts 360 / deg
else
  puts 360.lcm(deg) / deg
end
