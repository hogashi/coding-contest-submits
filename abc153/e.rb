h, n = gets.chomp.split(' ').map{|i| i.to_i }
infos = []
n.times{|i|
  infos[i] = {
    :index => i
  }
  infos[i][:a], infos[i][:b] = gets.chomp.split(' ').map{|ii| ii.to_i }
  infos[i][:cospa] = (1.0 * infos[i][:a]) / infos[i][:b]
}

# p infos

bas = infos.sort_by{|a| a[:a] }.reverse.sort_by{|a| a[:b] }
infoss = infos.sort_by{|a| a[:cospa] }.reverse

# p bas
# p infoss

counts = 0
loss = 0

amari = h % maxcospa[:a]
counts += (h - amari) / maxcospa[:a]
loss += maxcospa[:b] * counts

n.times{|i|
  if bas[i][:a] > amari
    counts
}



