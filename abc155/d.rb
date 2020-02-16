n, k = gets.chomp.split(' ').map{|i| i.to_i }
a = []
sekis = []
gets.chomp.split(' ').each{|i|
  ii = i.to_i
  a.each{|j|
    seki = ii * j
    index = sekis.bsearch_index{|k| k >= seki }
    if index.nil?
      index = sekis.length
    end
    sekis.insert(index, seki)
  }
  a.push(ii)
}

puts sekis[k - 1]
