ctoi = {
  'c' => 0,
  'h' => 1,
  'o' => 2,
  'k' => 3,
  'u' => 4,
  'd' => 5,
  'a' => 6,
  'i' => 7,
}
numid = [[], [], [], [], [], [], [], []]
index = 0
sr = gets.chomp.split('').map{|c| ctoi[c] }.filter{|i| ! i.nil? }.reverse.map{|c|
  numid[c].push(index)
  index += 1
  c
}

p numid

srlength = sr.length
numidsum = [[], [], [], [], [], [], [], []]
sum = 0
oldid = -1
(numid[7] + [srlength + 7]).map{|id|
  numidsum[7].concat(Array.new(id - oldid - 1, sum) + [sum + 1])
  sum += 1
  oldid = id
}

p numidsum

7.times{|cc|
  c = 7 - cc - 1
  oldsum = 0
  oldid = -1
  (numid[c] + [srlength + c]).map{|id|
    sum = numidsum[c + 1][id] + oldsum
    p [c, id, numidsum[c + 1][id], oldsum, sum]
    numidsum[c].concat(Array.new(id - oldid - 1, oldsum) + [sum])
    oldid = id
    oldsum = sum
  }
}

numidsum.each{|i|
  p i
}



#   numid[c].map{|index|
#     newindex = numid[i + 1].bsearch{|v| v > index }
#     numcount[i].push(newindex.nil? ? 0 : newindex)
#   }
# }


# index = 0
# sr.each{|c|
#   if c == 7
#     numcount[c].push(1)
#     index += 1
#     next
#   end

#   numid[c] = numid[c - 1].sum
#   count = idnumlength === 0 ? 0 : numid[c].last
#   numid[c].concat(Array.new(index - idnumlength, count) + [count + 1])
#   index += 1
# }

# p numid

# numid[0].map{|i0|
# }

