n = gets.chomp.to_i
a = gets.chomp.split(' ').map{|i| i.to_i }

p a

(n - 2).times{|i|
  min = 1000000001
  index = 0
  a[1 .. -2].each_with_index{|aa, ii|
    j = ii + 1
    if aa < min
      min = aa
      index = j
    elsif aa == min
      before = a[index - 1] + a[index + 1]
      after = a[j - 1] + a[j + 1]
      p [before, after]
      if before < after
        min = aa
        index = j
      end
    end
  }
  head = index - 2 < 0 ? [] : a[0 .. index - 2]
  a = head + [a[index - 1] + a[index], a[index + 1] + a[index]] + a[index + 2 .. -1]

  p a
}

puts a[0] + a[1]
