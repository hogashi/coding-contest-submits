n, r = gets.chomp.split(' ').map{|i| i.to_i }

if n < 10
  hiku = 100 * (10 - n)
  puts r + hiku
else
  puts r
end
