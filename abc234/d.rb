n, k = gets.chomp.split(' ').map(&:to_i)
pp = gets.chomp.split(' ').map(&:to_i)

maxk = pp[0 .. k - 1].sort{|a, b| b - a }[0 .. k]
puts maxk[k - 1]

(n - k).times{|i|
  ppik = pp[i + k]
  index = maxk.bsearch_index{|v| v <= ppik }
  # p maxk
  # p ["ppik-index:", ppik, index]
  if !index.nil?
    maxk.pop()
    maxk.insert(index, ppik)
  end
  # p maxk
  puts maxk[k - 1]
}
