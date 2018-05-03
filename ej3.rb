h = {'x'=> 1, 'y'=>2}

puts h
puts '//////'

h['z']= 3
puts h
puts '//////'

h['x']=5
puts h
puts '//////'


h.delete('y')
puts h
puts '//////'

puts 'yeeah' if h['z']
puts '//////'

h = h.invert
puts h
puts '//////'
