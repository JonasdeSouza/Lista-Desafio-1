puts "Digite o valor aplicado:"
invest_value = gets.to_f
puts "Digite o rendimento mensal da aplicacao (em decimal)"
monthly_yield = gets.to_f
puts "Digite o preco da conta de luz"
eletricity_bill = gets.to_f
puts "Digite o prazo"
term = gets.to_i

revenue_to_pay = eletricity_bill - invest_value

if revenue_to_pay < 0
  revenue_to_pay = eletricity_bill
end

lucro = invest_value * monthly_yield
month = 1
puts revenue_to_pay

for i in 1..term
  month += 1
  lucro += (lucro * monthly_yield)
  eletricity_bill += eletricity_bill * 0.01
  break if lucro >= eletricity_bill
end

if month > term
  puts "Waliff não consegue pagar a conta com essa aplicação"
else
  puts "Waliff pagou a conta em #{month} meses"
end