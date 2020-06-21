n, k = gets.chomp.split(' ').map{|i| i.to_i }
pp = gets.chomp.split(' ').map{|i| i.to_i }.sort

puts pp[0 .. k - 1].sum
