t = gets.chomp.to_i
w = gets.chomp.split(' ').map{|i| i.to_i }

df = []
t.times{|i|
  w1 = w[0 .. i]
  w2 = w[i + 1 .. -1]
  sum1 = 0
  sum2 = 0
  w1.each{|ii| sum1 += ii }
  w2.each{|ii| sum2 += ii }
  df[i] = (sum1 - sum2).abs
}
puts df.min

