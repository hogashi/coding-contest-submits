n, k, s = gets.chomp.split(' ').map{|i| i.to_i }

sign = s == 1000000000 ? -1 : 1
head = Array.new(k, s)
tail = Array.new(n - k, s + sign)
puts (head + tail).join(' ')
