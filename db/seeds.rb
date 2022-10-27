# Seed to create X Dogs

# Create X times city
10.times do
  city_name = City.create(
    city_name: Faker::Address.city
  )
end

# Create X times dogsitters
10.times do
dogsitters = Dogsitter.create(
    name: Faker::Lorem.words(number: 1),
    city_id: rand(1..10)
  )
end

# Create X times dogs
10.times do
  dogs = Dog.create(
    name: Faker::Lorem.words(number: 1),
    city_id: rand(1..10)
  )
end

# Create X times strolls
10.times do
  stroll = Stroll.create(
    number: rand(1..100),
    dogsitter_id: rand(1..10),
    dog_id: rand(1..10)
  )
end

puts 'Succesfully done'
