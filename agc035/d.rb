n = gets.chomp.to_i
a = gets.chomp.split(' ').map{|i| i.to_i }

p a

(n - 2).times{|i|
  min = 1000000001
  index = 0
  a[1 .. -2].each_with_index{|aa, i|
    if aa < min
      min = aa
      index = i + 1
    end
  }
  head = index - 2 < 0 ? [] : a[0 .. index - 2]
  a = head + [a[index - 1] + a[index], a[index + 1] + a[index]] + a[index + 2 .. -1]

  p a
}

puts a[0] + a[1]
