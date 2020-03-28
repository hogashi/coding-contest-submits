k, n = gets.chomp.split(' ').map{|i| i.to_i }

a1 = 0
old = -1
sum = 0
max = 0

alast = gets.chomp.split(' ').map{|i|
  ii = i.to_i
  if old == -1
    a1 = ii
    old = ii
    next
  end
  diff = ii - old
  sum += diff
  max = diff if max < diff
  old = ii
  ii
}.last

uediff = k - (alast - a1)
sum += uediff
max = uediff if max < uediff

puts sum - max
