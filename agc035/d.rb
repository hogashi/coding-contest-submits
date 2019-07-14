n = gets.chomp.to_i
a = gets.chomp.split(' ').map{|i| i.to_i }

p a

phi = [[[]]]

a[1 .. -2].each_with_index{|aa, i|
  head = i - 1 < 0 ? [] : a[0 .. i - 1]
  phi[0][i][0] = head + [a[i - 1] + aa, a[i + 1] + aa] + a[i + 1 .. -2]
  sum = 0
  phi[0][i][0].each{|ii| sum += ii }
  phi[0][i][1] = sum
}

(n - 3).times{|ii|
  i = ii + 2
  phi[i] = [[]]
  a[1 .. -2].each_with_index{|aa, i|
    phi[0][i] = a.sum + aa
  }
  head = index - 2 < 0 ? [] : a[0 .. index - 2]
  a = head + [a[index - 1] + a[index], a[index + 1] + a[index]] + a[index + 2 .. -1]

  p a
}

puts a[0] + a[1]
