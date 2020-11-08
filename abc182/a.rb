a, b = gets.chomp.split(' ').map(&:to_i)

c = (2 * a + 100) - b
if c < 0
  puts 0
else
  puts c
end
