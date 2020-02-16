n, k = gets.chomp.split(' ').map{|i| i.to_i }
a = []
sekis = []
gets.chomp.split(' ').each{|i|
  ii = i.to_i
  sekis.concat(a.map{|j| ii * j })
  a.push(ii)
}

sorted = sekis.sort

puts sorted[k - 1]
