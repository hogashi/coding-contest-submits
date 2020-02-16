n, k = gets.chomp.split(' ').map{|i| i.to_i }
ar = gets.chomp.split(' ').map{|i| i.to_i }.sort{|a, b| b <=> a}
sekis = []

all_count = n * (n - 1) / 2

if (all_count / 2) >= k
  a = ar.reverse
  a.each_index{|i|
    ii = a[i]
    ar.each_index{|j|
      next if j >= (n - i - 1)
      jj = ar[j]
      seki = ii * jj
      if sekis.length < k || sekis[k - 1] > seki
        index = sekis.bsearch_index{|k| k >= seki }
        if index.nil?
          index = sekis.length
        end
        sekis.insert(index, seki)
      end
    }
  }

  puts sekis[k - 1]
else
  ar.each_index{|i|
    ii = ar[i]
    ar.each_index{|j|
      next if j <= i
      jj = ar[j]
      seki = ii * jj
      if (sekis.length < (all_count - k + 1)) || (sekis[all_count - k] < seki)
        index = sekis.bsearch_index{|k| k <= seki }
        if index.nil?
          index = sekis.length
        end
        sekis.insert(index, seki)
      end
    }
  }

  puts sekis[all_count - k]
end
