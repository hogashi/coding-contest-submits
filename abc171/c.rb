n = gets.chomp.to_i - 1
ab = 'abcdefghijklmnopqrstuvwxyz'

keta_shikiis = [26, 702, 18278, 475254, 12356630, 321272406, 8353082582, 217180147158, 5646683826134, 146813779479510, 3817158266467286]
#        1000000000000001
# ruijos = [141167095653376, 5429503678976, 208827064576, 8031810176, 308915776, 11881376, 456976, 17576, 676, 26]
name = []

keta_index = keta_shikiis.bsearch_index{|v| v > n }
n -= keta_shikiis[keta_index - 1] if keta_index > 0

if n == 0
  puts 'a' * (keta_index + 1)
else
  while n != 0
    amari = n % 26
    name.push(ab[amari])
    # p [n, name]
    n = (n - amari) / 26
  end

  puts name.reverse.join('')
end
