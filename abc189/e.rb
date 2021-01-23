x = []
y = []
n = gets.chomp.to_i
n.times{|i|
  x[i], y[i] = gets.chomp.split(' ').map(&:to_i)
}

xhantenshogen = [
  -1, # ignore 0
  4, 3, 2, 1
]
yhantenshogen = [
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
  when '1'
    shogen -= 1
    shogen = 4 if shogen == 0
    jikunamae *= -1
  when '2'
    shogen += 1
    shogen = 1 if shogen == 5
    jikunamae *= -1
  when '3'
    kijun = o[2].to_i
    yjikumuki = 1
    if shogen == 2 || shogen == 3
      yjikumuki = -1
    end
    genten[1] += 2 * kijun * yjikumuki
    shogen = yhantenshogen[shogen]
  when '4'
    kijun = o[2].to_i
    xjikumuki = 1
    if shogen == 3 || shogen == 4
      xjikumuki = -1
    end
    genten[0] += 2 * kijun * xjikumuki
    shogen = xhantenshogen[shogen]
  else
    p o
  end

  all_cases.push({
    :genten => genten.clone,
    :shogen => shogen,
    :jikunamae => jikunamae,
  })
}

q = gets.chomp.to_i
q.times{|i|
  a, b = gets.chomp.split(' ').map(&:to_i)



  puts -1
}
