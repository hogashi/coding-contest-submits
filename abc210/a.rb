n, a, x, y = gets.chomp.split(' ').map(&:to_i)

if n > a
  puts x * a + y * (n - a)
else
  puts x * n
end
