a1, a2, a3 = gets.chomp.split(' ').map{|i| i.to_i }
if a1 + a2 + a3 >= 22
  puts 'bust'
else
  puts 'win'
end
