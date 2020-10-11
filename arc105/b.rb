n = gets.chomp.to_i
as = []
aset = {}
a = gets.chomp.split(' ').map{|ii|
  i = ii.to_i

  if aset[i].nil?
    as.push(i)
    aset[i] = true
  end

  i
}

as.sort!

# p a
# p aset
# p as
# p '----- ----- -----'

max = as.pop
aset[max] = nil
min = as[0]
while (max != min) do
  mm = max - min
  index = as.bsearch_index{|v| v > mm }
  # p as
  # p [max, min, mm, index]
  if index.nil?
    max = mm
  else
    if aset[mm].nil?
      as.insert(index, mm)
      aset[mm] = true
    end
    min = as[0]
    max = as.pop
    aset[max] = nil
  end
  # p '----- ----- -----'
end

# p [max, min]
puts max
