def multiplication_string(num)
  while num > 0
    if num != 1
    print "#{num}*"
    else
      print "#{num}"
    end
    num -= 1
  end
end

def factorial(num)
  if num > 0
    return num * factorial(num - 1)
  else
    return 1
  end
end

puts "Digite um numero para calcular o fatorial"
num = gets.to_i

while num < 0
  puts "Numero invalido, por favor digite outro"
  num = gets.to_i
end

print "#{num}! = "
print "#{if num < 10; print "#{multiplication_string(num)} = #{factorial(num)}"; else print"#{factorial(num)}" end}"
