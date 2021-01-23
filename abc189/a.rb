cs = gets.chomp.split('')

if cs[0] == cs[1] && cs[1] == cs[2]
  puts 'Won'
else
  puts 'Lost'
end
