meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'tam']
ventas = [2000, 3000, 1000, 5002, 4000, 5001]

h = {}
meses.each_with_index do |mes, index|
  h[mes.to_sym] = ventas[index]
end
puts h
h = h.invert
max = h.max_by { |k| k }
puts max[1]
