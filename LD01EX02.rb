puts "Digite um numero para saber se é primo"
num = gets.to_i

while num < 0
  puts "Numero invalido, por favor digite outro"
  num = gets.to_i
end

divisores = []

for i in 2..num do
  aux = num%i
  if aux == 0
    divisores.push(i)
  end
end

if divisores.size == 1
  puts "#{num} e primo!"
else
  print "#{num} nao e primo, pois tem #{divisores.size} divisores: #{divisores.join(", ")}"
end
