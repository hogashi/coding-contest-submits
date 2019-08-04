n = gets.chomp.to_i

d = Math.log10(n).floor + 1

# p d

if d == 1
  puts n
elsif d % 2 == 0
  puts '90' * (d / 2 - 1) + '9'
else
  c =  ('90' * ((d - 1) / 2 - 1) + '9').to_i
  puts c + (n - ('9' * (d - 1)).to_i)
end
