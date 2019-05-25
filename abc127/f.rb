q1 = gets.chomp.to_i

as1 = []
bs1 = []

def getV(as, bs, q)
  asum = 0
  bsum = 0
  as.each{|a| asum += a }
  bs.each{|b| bsum += b }

  ave = asum / as.length
  positive = 0
  negative = 0
  as.map{|i|
    positive += 1 if i > 0
    negative += 1 if i < 0
  }
  sign = -1
  if positive == negative && ave == 0 then
    return [0, 0 + bsum]
  elsif positive > negative || (positive == negative && ave > 0) then
    sign = 1
  end
  position = ave.floor - sign
  position += 1 if sign < 0
  res = 1000000000 * q + 1
  old_res = res + 1
  while true
    old_res = res
    res = 0
    as.map{|a| res += (position - a).abs }
    if sign < 0 then
      break if res > old_res
    else
      break if res >= old_res
    end
    position += sign
  end
  position -= sign
  return [position, old_res + bsum]
end

q1.times{|i|
  kind, a, b = gets.chomp.split(' ')
  if kind == '1' then
    as1.push(a.to_i)
    bs1.push(b.to_i)
  else
    puts getV(as1, bs1, q1).join(' ')
  end
}

