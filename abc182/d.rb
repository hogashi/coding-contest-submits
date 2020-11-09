n = gets.chomp.to_i
max = 0
sumposmax = 0
sum = 0
pos = 0
a = gets.chomp.split(' ').map{|ii|
  i = ii.to_i

  # p [pos, max, sumposmax, sum, i]

  posmax = pos + sumposmax
  max = posmax if max < posmax

  pos += sum + i
  max = pos if max < pos
  if sum + i > sumposmax
    sumposmax = sum + i
  end
  sum += i
}

# p [pos, max, sumposmax, sum]

puts max
