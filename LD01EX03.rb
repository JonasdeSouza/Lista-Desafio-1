def Fibo(np)
  n1 = 1
  n2 = 1
  fibo_array = [n1, n2]
  for i in 1..(np/2) do
    n1 = n1 + n2
    fibo_array.push(n1)
    n2 = n2 + n1
    fibo_array.push(n2)
  end
  return fibo_array
end

puts "Digite a posicao do numero da sequencia de Fibonacci que deseja obter"
np = gets.to_i

while np <= 0
  puts "Numero invalido, por favor digite outro"
  np = gets.to_i
end

fibo = Fibo(np)
print fibo[np-1]