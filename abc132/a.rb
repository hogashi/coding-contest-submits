s = {}

gets.chomp.split('').map{|i|
  s[i] = 0 if !s[i]
  s[i] += 1
}

if s.keys.length == 2 && (s.values - [2]).length == 0
    puts 'Yes'
else
  puts 'No'
end
