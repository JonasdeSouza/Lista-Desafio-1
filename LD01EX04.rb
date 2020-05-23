def check_lados(lados_numericos)
  codigo_erro = 0
  for i in 0..2 do
    if lados_numericos[i] < 0
      codigo_erro = 1
      return codigo_erro
    end
  end
  if lados_numericos[0] > lados_numericos[1] + lados_numericos[2]
    codigo_erro = 2
  elsif lados_numericos[1] > lados_numericos[0] + lados_numericos[2]
    codigo_erro = 2
  elsif lados_numericos[2] > lados_numericos[1] + lados_numericos[0]
    codigo_erro = 2
  end
  return codigo_erro
end

def get_lados
  lados = gets
  lados_numericos = [0, 0, 0]

  lados = lados.split

  for i in 0..2 do
    lados_numericos[i] = lados[i].to_i
  end

  return lados_numericos
end

puts "Digite o tamanho dos lados do triangulo"
lados_numericos = get_lados

check = check_lados(lados_numericos)
while check != 0
  if check == 1
    puts "Entrada invalida"
  elsif  check == 2
    puts "Nao forma triangulo"
    break
  end
  lados_numericos = get_lados
  check = check_lados(lados_numericos)
end

if lados_numericos[0] == lados_numericos[1] and lados_numericos[1] == lados_numericos[2] and check == 0
  print "Forma triangulo equilatero"
elsif lados_numericos[0] == lados_numericos[1] or lados_numericos[0] == lados_numericos[2] or  lados_numericos[1] == lados_numericos[2] and check == 0
  print "Forma triangulo isosceles"
elsif check == 0
  print "Froma triangulo escaleno"
  end
