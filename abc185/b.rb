n, m, t = gets.chomp.split(' ').map(&:to_i)
a = []
b = []
oldb = 0
nown = n
is_success = true
m.times{|i|
  a[i], b[i] = gets.chomp.split(' ').map(&:to_i)
  nown -= a[i] - oldb
  oldb = b[i]
  if nown <= 0
    is_success = false
    break
  end

  nown += b[i] - a[i]
  nown = n if nown > n
}

is_success = false if (t - oldb) >= nown

puts is_success ? 'Yes' : 'No'
