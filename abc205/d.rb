n, q = gets.chomp.split(' ').map(&:to_i)
a = gets.chomp.split(' ').map(&:to_i)

# p a

q.times{|i|
  k = gets.chomp.to_i
  oldindex = a.bsearch_index{|v| v > k }
  index = oldindex.nil? ? nil : a.bsearch_index{|v| v > (k + oldindex) }

  # p [oldindex, index]

  while !index.nil? && oldindex < index
    oldindex = index
    index = a.bsearch_index{|v| v > (k + oldindex) }

    # p [oldindex, index]
  end

  puts k + (index.nil? ? a.length : index)
}

