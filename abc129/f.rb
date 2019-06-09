l, a, b, m = gets.chomp.split(' ').map{|i| i.to_i }

amr = ''
l.times{|i|
  amr = ((amr + (a + b * i).to_s).to_i % m).to_s
}
puts amr

