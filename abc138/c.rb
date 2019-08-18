n = gets.chomp.to_i
vs = gets.chomp.split(' ').map{|i| i.to_i }.sort

(n - 1).times{|i|
  vs.unshift((vs.shift + vs.shift) / 2.0)
}

puts vs[0]
