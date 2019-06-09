l, a, b, m = gets.chomp.split(' ').map{|i| i.to_i }

str = ''
l.times{|i|
  str += (a + b * i).to_s
}
puts str.to_i % m

