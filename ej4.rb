personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edades = [32, 28, 41, 19]
personas_hash = {}
personas.each_with_index do |persona, index|
  personas_hash[persona.to_sym] = edades[index]
end

puts personas_hash

def promedio(hash)
  a = hash.inject(0) do |sum, (k, v)|
     sum += v
  end
  a = a/hash.length

end

prom = promedio(personas_hash)
puts "promedio: #{prom}"
