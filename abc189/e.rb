x = []
y = []
n = gets.chomp.to_i
n.times{|i|
  x[i], y[i] = gets.chomp.split(' ').map(&:to_i)
}

yokohantenshogen = [
  -1, # ignore 0
  4, 3, 2, 1
]
tatehantenshogen = [
  -1, # ignore 0
  2, 1, 4, 3
]

genten = [0, 0]
# dai1 on init_shogen (1, 2, 3, 4)
shogen = 1
jikunamae = 1

# remember each time
all_cases = [{
  :genten => genten.clone,
  :shogen => shogen,
  :jikunamae => jikunamae,
}]

op = []
m = gets.chomp.to_i
m.times{|i|
  op[i] = gets.chomp.split(' ').map(&:to_i)
  o = op[i]

  case o[0]
  when 1
    if jikunamae == 1
      shogen -= 1
      shogen = 4 if shogen == 0
    else
      shogen += 1
      shogen = 1 if shogen == 5
    end
    jikunamae *= -1
  when 2
    if jikunamae == 1
      shogen += 1
      shogen = 1 if shogen == 5
    else
      shogen -= 1
      shogen = 4 if shogen == 0
    end
    jikunamae *= -1
  when 3
    kijun = o[1]
    xjikumuki = 1
    if jikunamae == 1
      xjikumuki = -1 if shogen == 3 || shogen == 4
      genten[0] += 2 * kijun * xjikumuki
      shogen = yokohantenshogen[shogen]
    else
      xjikumuki = -1 if shogen == 2 || shogen == 3
      genten[1] += 2 * kijun * xjikumuki
      shogen = tatehantenshogen[shogen]
    end
  when 4
    kijun = o[1]
    yjikumuki = 1
    if jikunamae == 1
      yjikumuki = -1 if shogen == 2 || shogen == 3
      genten[1] += 2 * kijun * yjikumuki
      shogen = tatehantenshogen[shogen]
    else
      yjikumuki = -1 if shogen == 3 || shogen == 4
      genten[0] += 2 * kijun * yjikumuki
      shogen = yokohantenshogen[shogen]
    end
  else
    p o
  end

  all_cases.push({
    :genten => genten.clone,
    :shogen => shogen,
    :jikunamae => jikunamae,
  })
}
# p all_cases

q = gets.chomp.to_i
q.times{|i|
  a, b = gets.chomp.split(' ').map(&:to_i)
  b -= 1

  acase = all_cases[a]
  agenten = acase[:genten]
  ashogen = acase[:shogen]
  ajikunamae = acase[:jikunamae]

  bx = x[b]
  by = y[b]

  # p [1, bx, by]

  bx -= agenten[0]
  by -= agenten[1]

  # p [2, bx, by]

  if ajikunamae == -1
    if bx * by > 0
      bx, by = -by, -bx
    else
      bx, by = by, bx
    end
  end

  # p [3, bx, by]

  case ashogen
  when 2
    by *= -1
  when 3
    bx *= -1
    by *= -1
  when 4
    bx *= -1
  end

  puts "#{bx} #{by}"
}
