n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i)

satans = {}
satans[a[0]] = 1
(n - 1).times{|ii|
  i = ii + 1
  # p satans
  keys = satans.keys
  newsatans = {}
  keys.each{|satan|
    f = (satan + a[i]) % 10
    g = (satan * a[i]) % 10
    if newsatans[f].nil?
      newsatans[f] = satans[satan]
    else
      newsatans[f] += satans[satan]
    end
    if newsatans[g].nil?
      newsatans[g] = satans[satan]
    else
      newsatans[g] += satans[satan]
    end
  }
  satans = newsatans
}
puts satans[0].nil? ? 0 : satans[0]
puts satans[1].nil? ? 0 : satans[1]
puts satans[2].nil? ? 0 : satans[2]
puts satans[3].nil? ? 0 : satans[3]
puts satans[4].nil? ? 0 : satans[4]
puts satans[5].nil? ? 0 : satans[5]
puts satans[6].nil? ? 0 : satans[6]
puts satans[7].nil? ? 0 : satans[7]
puts satans[8].nil? ? 0 : satans[8]
puts satans[9].nil? ? 0 : satans[9]
