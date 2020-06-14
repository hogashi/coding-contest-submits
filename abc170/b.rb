x, y = gets.chomp.split(' ').map{|i| i.to_i }

if y % 2 == 0 && x * 2 <= y && y <= x * 4
  puts 'Yes'
else
  puts 'No'
end
