n, k, m = gets.chomp.split(' ').map{|i| i.to_i }
a = gets.chomp.split(' ').map{|i| i.to_i }

sum = 0
a.each{|i| sum += i }

want = m * n - sum
if want > k
  puts -1
elsif want < 0
  puts 0
else
  puts want
end
