n = gets.chomp.to_i
sum = 0
idxsmap = {}
a = []
gets.chomp.split(' ').map{|ii|
  sum += 1
  i = ii.to_i
  if idxsmap[i].nil?
    a.push(1)
    idx = a.length - 1
    idxsmap[i] = idx
  else
    a[idxsmap[i]] += 1
  end
}
a.sort!{|i, j| j <=> i }

# p a

sums = [sum]

(n - 1).times{|ii|
  k = ii + 2
  af = a.clone

  count = 0
  while af.length >= k
    (af.length / k).times{|jj|
      j = jj + 1
      willeat = af[k * j - 1]
      k.times{|i|
        af[k * (j - 1) + i] -= willeat
      }
      count += willeat

      # p '-- eat --'
      # p af
    }

    # p '--- done ---'
    # p af
    af -= [0]
    af.sort!{|i, j| j <=> i }
    # p af
  end

  sums[k - 1] = count
}

puts sums
