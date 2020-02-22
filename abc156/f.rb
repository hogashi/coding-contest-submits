k, q = gets.chomp.split(' ').map{|i| i.to_i }
d = gets.chomp.split(' ').map{|i| i.to_i }

q.times{|i|
  n, x, m = gets.chomp.split(' ').map{|i| i.to_i }

  dans = 0
  danss = [0]

  dsummodms = [x % m]
  (k - 1).times{|jj|
    j = jj + 1
    dsummodms[j] = (dsummodms[j - 1] + d[j]) % m
    dans += 1 if dsummodms[j - 1] < dsummodms[j]
    danss[j] = dans
  }
  danss[0] = 1 if dsummodms[k - 1] < ((dsummodms[0] + dsummodms[k - 1]) % m)

  nmodk = n % k
  sets = (n - nmodk) / k
  # p dsummodms
  # p danss
  # p [nmodk, sets]
  puts dans * sets + (nmodk == 0 || nmodk == 1 ? 0 : danss[nmodk - 1]) + (sets - (nmodk == 0 ? 1 : 0)) * danss[0]
}
