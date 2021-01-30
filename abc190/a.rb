a, b, c = gets.chomp.split(' ').map(&:to_i)

if a < b
  puts 'Aoki'
elsif b < a
  puts 'Takahashi'
else
  puts c == 0 ? 'Aoki' : 'Takahashi'
end
