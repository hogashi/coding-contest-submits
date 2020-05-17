a, b, h, m = gets.chomp.split(' ').map{|i| i.to_i }

a2 = a ** 2
b2 = b ** 2

tab = 2 * a * b

theta1 = 2.0 * Math::PI * (h + (m / 60.0)) / 12.0
theta2 = 2.0 * Math::PI * m / 60.0

theta = theta1 - theta2

cos = Math.cos(theta)

puts Math.sqrt(a2 + b2 - tab * cos)
