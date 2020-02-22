k, q = gets.chomp.split(' ').map{|i| i.to_i }
d = gets.chomp.split(' ').map{|i| i.to_i }

q.times{|i|
  n, x, m = gets.chomp.split(' ').map{|i| i.to_i }

  dans = 0
  danss = [0]

  dsummodms = [d[0] % m]
  (k - 1).times{|jj|
    j = jj + 1
    dsummodms[j] = (dsummodms[j - 1] + d[j]) % m
    dans += 1 if dsummodms[j - 1] < dsummodms[j]
    danss[j] = dans
  }
  danss[0] = 1 if dsummodms[k - 1] < dsummodms[0]

  nmodk = n % k
  sets = (n - nmodk) / k
  # p dsummodms
  # p danss
  # p [nmodk, sets]
  puts dans * sets + (sets - (nmodk == 0 ? 1 : 0)) * danss[0]
}
