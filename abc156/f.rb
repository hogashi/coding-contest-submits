k, q = gets.chomp.split(' ').map{|i| i.to_i }
d = gets.chomp.split(' ').map{|i| i.to_i }

q.times{|i|
  n, x, m = gets.chomp.split(' ').map{|i| i.to_i }
  a = [x]

  ans = 0
  (n - 1).times{|jj|
    j = jj + 1
    a[j] = a[j - 1] + d[(j - 1) % k]
    ans += 1 if (a[j - 1] % m) < (a[j] % m)
  }

  puts ans
}


