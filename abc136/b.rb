n = gets.chomp.to_i

d = Math.log10(n).floor + 1

# p d

c = 0

if d % 2 == 0
  (d / 2).times{|i|
    c += 10 ** (i * 2) * 9
  }
  puts c
else
  ((d - 1) / 2).times{|i|
    c += 10 ** (i * 2) * 9
  }
  puts c + (n - (10 ** (d - 1) - 1))
end
