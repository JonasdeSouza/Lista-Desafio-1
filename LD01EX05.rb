puts "Digite quantas velas estao disponiveis"
velas = gets.to_i
horas = 0

while velas < 0
  puts "Entrada invalida"
  velas = gets.to_i
end

while velas != 0
  velas -= 1
  horas += 1
  if horas%2 == 0
    velas += 1
  end
end

print "#{horas} horas"