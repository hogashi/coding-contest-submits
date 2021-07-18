n = gets.chomp.to_i

aindex = 0
b4a = []

a = gets.chomp.split(' ').map(&:to_i).sort

# b
gets.chomp.split(' ').map(&:to_i).sort.each{|vv|
  v = vv.to_i

  if a[aindex] < v
    b4a.push(v)
    aindex += 1
  end
}

b4alength = b4a.length
b4aindex = 0
ans = 0

# c
gets.chomp.split(' ').map(&:to_i).sort.each{|vv|
  v = vv.to_i

  break if b4aindex == b4alength

  if b4a[b4aindex] < v
    b4aindex += 1
    ans += 1
  end
}

puts ans
