n = gets.chomp.to_i
pp = gets.chomp.split(' ').map{|i| i.to_i }

def split_sum(pp)
  if pp.length <= 1
    return 0
  end

  ps = pp.sort

  sum = 0
  fir, sec = ps[0], ps[1]
  fi = pp.find_index(fir)
  si = pp.find_index(sec)

  count = (fi + (pp.length - si))
  p [[fi, fir], [si, sec], pp.length, count]
  if pp.length == 2
    return ps[1] * count
  end
  return si * count + split_sum(pp[0 ... fi]) + split_sum(fi == pp.length - 1 ? [] : pp[fi + 1 .. -1]) + split_sum(pp[0 ... si]) + split_sum(si == pp.length - 1 ? [] : pp[si + 1 .. -1])
end

puts split_sum(pp)
