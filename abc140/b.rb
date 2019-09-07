n = gets.chomp.to_i
a = gets.chomp.split(' ').map{|i| i.to_i }
bsum = 0
gets.chomp.split(' ').map{|i| bsum += i.to_i }
c = gets.chomp.split(' ').map{|i| i.to_i }
csum = 0
(n - 1).times{|i|
  if a[i] + 1 == a[i + 1]
    csum += c[a[i] - 1]
  end
}

puts bsum + csum
