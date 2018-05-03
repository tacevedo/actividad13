inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6}


until opcion == 7 do
  print "Ingresa opcion: 1: agregar, 2:eliminar, 3: actualizar, 4: stock total, 5: item con mas stock, 6: existe? "
  opcion = gets.chomp
  case opcion
  when "1"
    puts '1'
  when "2"
    puts '2'
  when "3"
    puts '3'
  when "4"
    puts '4'
  when "5"
    puts '5'
  when "6"
    puts '6'
  else
    break
  end
end
