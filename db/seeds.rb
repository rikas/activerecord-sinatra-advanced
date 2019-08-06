require 'faker'

30.times do
  City.create(
    name: Faker::Address.city
  )
end

10.times do
  Restaurant.create(
    name: Faker::Coffee.unique.blend_name,
    city: City.order('RANDOM()').first
  )
end