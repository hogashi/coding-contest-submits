a, b, k = gets.chomp.split(' ').map{|i| i.to_i }

if a >= k
  puts "#{a - k} #{b}"
elsif b >= (k - a)
  puts "0 #{b - (k - a)}"
else
  puts "0 0"
end
