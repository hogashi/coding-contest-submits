n, k = gets.chomp.split(' ').map{|i| i.to_i }
count = 0
sum = 0
maxsum = 0
pp = []
gets.chomp.split(' ').map{|i|
  ii = i.to_i
  pp[count] = ii
  sum += ii
  if count >= k
    sum -= pp[count - k]
    if sum > maxsum
      maxsum = sum
    end
  end
  count += 1
}

if maxsum == 0
  maxsum = sum
end
puts (1.0 * (maxsum + k) / 2)
