n, d = gets.chomp.split(' ').map{|i| i.to_i }
x = []
n.times{|i|
  x[i] = gets.chomp.split(' ').map{|i| i.to_i }
}

count = 0
n.times{|i|
  a = x[i]
  (n - i - 1).times{|ii|
    j = ii + i + 1
    b = x[j]

    sum = 0
    d.times{|k|
      sum += (b[k] - a[k]) ** 2
    }
    dis = Math.sqrt(sum)
    if dis == dis.floor
      count += 1
    end
  }
}

puts count

