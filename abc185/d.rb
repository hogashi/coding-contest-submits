n, m = gets.chomp.split(' ').map(&:to_i)
min = n
aidas = []
olda = 0
a = gets.chomp.split(' ').map(&:to_i).sort
a.push(n + 1)
a.each{|ii|
  i = ii.to_i

  aida = i - olda - 1
  min = aida if aida != 0 && aida < min

  aidas.push(aida) if aida != 0

  olda = i
}

sum = aidas.map{|i|
  (1.0 * i / min).ceil
}.sum

puts sum
