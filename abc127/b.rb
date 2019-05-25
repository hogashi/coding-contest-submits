r, d, x = gets.chomp.split(' ').map{|i| i.to_i }

10.times{|i|
  puts x = r * x - d
}

