n = gets.chomp.to_i
a = []
xy = []
n.times{|i|
  a[i] = gets.chomp.to_i
  xy[i] = []
  a[i].times{|j|
    x, y = gets.chomp.split(' ').map{|k| k.to_i }
    xy[i][j] = [x, y == 1]
  }
}

p n
p a
p xy
