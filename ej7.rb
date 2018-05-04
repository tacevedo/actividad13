inventario = {"Notebooks" => 4, "PC Escritorio" => 6, "Routers" => 10, "Impresoras" => 6}

opcion = ''
until opcion == 7 do
  puts "Ingresa opcion: 1: agregar, 2:eliminar, 3: actualizar, 4: stock total, 5: item con mas stock, 6: existe? "
  opcion = gets.chomp
  case opcion
  when "1"
    puts "agregue un item en formato: item, 1"
    agrega = gets.chomp
    valores = agrega.split(',')
    inventario[valores[0]] = valores[1].to_i
    puts inventario

  when "2"
    puts 'Ingrese el nombre del elemento que quiere eliminar de el siguiente inventario? '
    puts inventario
    eliminar = gets.chomp
    inventario.delete(eliminar)

  when "3"
    puts 'Acualizar, ingrese valores nuevos en formato, item, 0'
    actualiza = gets.chomp
    valores = actualiza.split(',')
    inventario[valores[0]] = valores[1].to_i
    puts inventario

  when "4"
    total = inventario.inject(0) do |sum, (k, v)|
       sum += v
    end
    puts "El stock total es: #{total}"

  when "5"
    max = inventario.max_by { |k, v| v }
    puts "El producto con mayor stock es #{max[0]} con #{max[1]} items"

  when "6"
    puts 'Ingrese el nombre de un item para ver si esta en inventario'
    existe = gets.chomp
    if inventario.has_key?(existe)
      puts 'Si existe'
    else
      puts 'No existe'
    end

  when "7"
    puts 'Adios'
    break

  else
    puts "opcion incorrecta"
  end
end
