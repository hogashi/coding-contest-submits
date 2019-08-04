n = gets.chomp.to_i
h = gets.chomp.split(' ').map{|i| i.to_i }

len = h.length
(len - 1).times{|i|
  j = len - i - 1
  if h[j - 1] > h[j]
    h[j - 1] -= 1
    if h[j - 1] > h[j]
      puts 'No'
      exit
    end
  end
}
puts 'Yes'
