#1

productos = {'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' => 750}

productos.each { |producto, val| puts producto }

#2
productos['cereal'] = 2200

productos.each { |producto| puts producto }

#3
productos['bebida'] = 2000
puts "-------------3"
puts productos

#4
arrayproductos = productos.to_a
puts "-------------4"
puts arrayproductos
#5
productos.delete('galletas')
puts "-------------5"
puts productos
