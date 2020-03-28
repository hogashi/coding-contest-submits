a, b, c = gets.chomp.split(' ').map{|i| i.to_i }

if Math.sqrt(a) + Math.sqrt(b) < Math.sqrt(c)
  puts 'Yes'
else
  puts 'No'
end
