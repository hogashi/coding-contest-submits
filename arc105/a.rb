a, b, c, d = gets.chomp.split(' ').map(&:to_i)

ab = a + b
cd = c + d
ac = a + c
bd = b + d
ad = a + d
bc = b + c

if ab == cd || ac == bd || ad == bc
  puts 'Yes'
else
  puts 'No'
end
