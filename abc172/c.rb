n, m, k = gets.chomp.split(' ').map{|i| i.to_i }
a = [0]
b = [0]
gets.chomp.split(' ').each{|i|
  a.push(a.last + i.to_i)
}
gets.chomp.split(' ').each{|i|
  b.push(b.last + i.to_i)
}
a.shift
b.shift

oldj = m - 1
maxcount = 0

n.times{|i|
  ai = a[i]
  break if ai > k
  (oldj + 1).times{|jj|
    j = oldj - jj
    count = i + j + 2
    # next if maxcount >= count
    bj = b[j]
    # p [oldj, i, j, ai, bj, ai + bj, k]
    if ai + bj <= k
      # p [maxcount, i, j, count]
      maxcount = count if maxcount < count
      oldj = j
      break
    end
  }
}

puts maxcount
