x = gets.chomp.to_i

ure = 0

if x >= 500
  ure += 1000 * ((x - (x % 500)) / 500)
  x = x % 500
end

ure += 5 * ((x - (x % 5)) / 5)

puts ure
