n = gets.chomp.to_i
max = 0
summax = 0
sumrest = 0
pos = 0
a = gets.chomp.split(' ').map{|ii|
  i = ii.to_i

  # p [pos, summax, sumrest, i]

  pos += summax
  if i > 0
    pos += i
    max = pos if max < pos
  else
    max = pos if max < pos
    pos += i
  end
  pos += sumrest
  if i > sumrest
    summax += i + sumrest
    sumrest = 0
  else
    sumrest += i
  end
}

puts max
