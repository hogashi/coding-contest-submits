sum = 0
bunpu = [0, 0, 0]
ns = gets.chomp.split('').map{|ii|
  i = ii.to_i

  sum += i

  amari = i % 3
  bunpu[amari] += 1

  i
}

kesu = -1
amari = sum % 3
if amari == 0
  kesu = 0
elsif bunpu[amari] > 0
  kesu = 1
else
  if amari == 1
    if bunpu[2] >= 2
      kesu = 2
    end
  else
    if bunpu[1] >= 2
      kesu = 2
    end
  end
end

if kesu == -1 || ns.length == kesu
  puts -1
else
  puts kesu
end


