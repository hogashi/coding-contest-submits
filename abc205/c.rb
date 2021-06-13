a, b, c = gets.chomp.split(' ').map(&:to_i)

ans = '='

if c % 2 == 0
  a = a.abs
  b = b.abs
end
if a < b
  ans = '<'
elsif a > b
  ans = '>'
end

puts ans
