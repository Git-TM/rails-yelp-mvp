puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: '0623437203', category: 'chinese' }
istanbul = { name: "Istanbul", address: "7 rue du parvis, Paris", phone_number: '0754299106', category: 'french' }
surpriz = { name: "Surpriz", address: "7 rue Oberkampf Paris", phone_number: '065129106', category: 'belgian' }
hunger = { name: "Hunger", address: "123 rue de lisbonne, Bordeaux", phone_number: '0754189106', category: 'japanese' }
michelin = { name: "Le petit Michelin", address: "7 rue du parvis, Paris", phone_number: '0754299106', category: 'french' }

['chinese', 'italian', 'japanese', 'french', 'belgian']

[dishoom, istanbul, surpriz, hunger, michelin].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
