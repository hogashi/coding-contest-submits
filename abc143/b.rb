n = gets.chomp.to_i
d = gets.chomp.split(' ').map{|i| i.to_i }

sum = 0
n.times{|i|
  (n - i - 1).times{|jj|
    j = jj + i + 1
    sum += d[i] * d[j]
  }
}

puts sum
