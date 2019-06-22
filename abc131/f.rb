n = gets.chomp.to_i
points = {}
n.times{|i|
  x, y = gets.chomp.split(' ').map{|i| i.to_i }
  points[x] = [] unless points[x]
  points[x].push(y)
}

opes = 0
points.keys.each{|k|
  next if points[k].length < 2
  points[k].length.times{|i|
    y1 = points[k][i]
    (points[k].length - i).times{|ii|
      y2 = points[k][ii]
    }
  }
}

puts opes

