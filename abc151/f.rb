n = gets.chomp.to_i
x = []
y = []
dis1 = 0
dis_index1 = 0
dis2 = 0
dis_index2 = 0
x[0], y[0] = gets.chomp.split(' ').map{|i| i.to_i }
(n - 1).times{|i|
  ii = i + 1
  x[ii], y[ii] = gets.chomp.split(' ').map{|iii| iii.to_i }
  dis = (x[0] - x[ii]) ** 2 + (y[0] - y[ii]) ** 2
  if dis > dis1
    dis1 = dis
    dis_index1 = ii
  end
}

n.times{|i|
  dis = (x[dis_index1] - x[i]) ** 2 + (y[dis_index1] - y[i]) ** 2
  if dis > dis2
    dis2 = dis
    dis_index2 = i
  end
}

dis3 = 0
dis_index3 = 0
n.times{|i|
  dis = (x[dis_index2] - x[i]) ** 2 + (y[dis_index2] - y[i]) ** 2
  if dis > dis3
    dis3 = dis
    dis_index3 = i
  end
}

puts Math.sqrt(dis3) / 2.0
