n = gets.chomp.to_i

s = []
max1 = 0
max2 = 0
maxi1 = 0
maxi2 = 0

n.times{|i|
  s[i], tt = gets.chomp.split(' ')
  t = tt.to_i
  if max1 < t
    max2 = max1
    max1 = t
    maxi2 = maxi1
    maxi1 = i
  elsif max2 < t
    max2 = t
    maxi2 = i
  end
}

puts s[maxi2]
