a, b, c, d = gets.chomp.split(' ').map{|i| i.to_i }
a -= 1
cd = c.lcm(d)
abcc = (b / c).floor - (a / c).floor
abdc = (b / d).floor - (a / d).floor
abcdc = (b / cd).floor - (a / cd).floor
puts b - a - abcc - abdc + abcdc

