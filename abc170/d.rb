n = gets.chomp.to_i
as = []
aset = {}
gets.chomp.split(' ').each{|i|
  ii = i.to_i
  if aset[ii].nil?
    aset[ii] = 0
    index = as.bsearch_index{|v| v > ii }
    if index.nil?
      as.push(ii)
    else
      as.insert(index, ii)
    end
  end
  aset[ii] += 1
}

# p aset
# p as

length = as.length

j = 0
as.each{|aj|
  if aset[aj] === -1
    j += 1
    next
  end

  (length - j - 1).times{|ii|
    ai = as[ii + j + 1]
    # p [ai, aj, aset[aj] != -1, ai % aj, ai % aj === 0, aset[aj] != -1 && ai % aj === 0]
    if aset[ai] != -1 && ai % aj === 0
      aset[ai] = -1
    end
  }
  j += 1
}

# p aset

puts as.filter{|ai| aset[ai] === 1 }.length
