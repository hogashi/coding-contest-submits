max = 1000003
sqrtmax = 1003

primes = []
hurui = [0, 1]
huruip = [0]

i = 2
while i < sqrtmax do
  iindex = i - 1

  if hurui[iindex] == 0
    i += 1
    next
  end
  primes.push(i)
  hurui[iindex] = 1
  huruip[iindex] = i
  j = i
  while j < max do
    j += i
    jindex = j - 1

    hurui[jindex] = 0
    huruip[jindex] = i
  end

  i += 1
end

n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i)

is_pc = 1
is_sc = 1

asois = {}
a.each{|ai|
  aiindex = ai - 1
  sqrtai = Math.sqrt(ai)
  asoisai = {}
  while ai > 1 do
    huruip_ai = huruip[aiindex]
    asoisai[huruip_ai] = true
    ai /= huruip_ai
  end
  asoisai.each{|soi, _c|
    # p [soi, _c]
    asois[soi] = 0 if asois[soi].nil?
    asois[soi] += 1
  }
}

p asois

asois.each{|soi, count|
  is_pc = 0 if count > 1
  is_sc = 0 if count == n
}

if is_pc
  puts 'pairwise coprime'
elsif is_sc
  puts 'setwise coprime'
else
  puts 'not coprime'
end
