restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
max = restaurant_menu.max_by { |k, v| v }
puts "maximo: #{max[0]}"

min = restaurant_menu.min_by { |k, v| v }
puts "minimo: #{min[0]}"


def promedio(hash)
  a = hash.inject(0) do |sum, (k, v)|
     sum += v
  end
  a = a/hash.length

end

prom = promedio(restaurant_menu)
puts "promedio: #{prom}"

platos = restaurant_menu.map do |k, v|
  k
end
puts platos


restaurant_menu.each do |key, value|
  restaurant_menu[key] = value.to_f * 1.19
end
puts "restaurant_menu co iva #{restaurant_menu}"


restaurant_menu.each do |key, value|
  if key.include? ' '
    restaurant_menu[key] = value.to_f * 0.8
  end
end
puts "restaurant_menu con descuentos #{restaurant_menu}"
