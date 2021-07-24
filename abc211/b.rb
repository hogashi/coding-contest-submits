ans = 'Yes'

count = {}

4.times{|i|
  v = gets.chomp
  unless count[v].nil?
    ans = 'No'
    break
  end
  count[v] = 1
}

puts ans
