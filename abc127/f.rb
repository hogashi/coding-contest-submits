q = gets.chomp.to_i

as1 = []
bs1 = []

def getV(as, bs)
  bsum = bs.sum

  ave = as.sum / as.length
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
  position = 0
  res = (10 ** 9) * sign
  old_res = (res + 1) * sign
  while true
    old_res = res
    res = as.map{|a| (position - a).abs }.sum
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

q.times{|i|
  kind, a, b = gets.chomp.split(' ')
  if kind == '1' then
    as1.push(a.to_i)
    bs1.push(b.to_i)
  else
    puts getV(as1, bs1).join(' ')
  end
}

