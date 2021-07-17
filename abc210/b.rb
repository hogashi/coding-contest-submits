n = gets.chomp.to_i
index = gets.chomp.split('').find_index{|v| v == '1' }

if index % 2 == 0
  puts 'Takahashi'
else
  puts 'Aoki'
end
