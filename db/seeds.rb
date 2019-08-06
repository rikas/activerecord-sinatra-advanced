require 'faker'

10.times do
  Restaurant.create(
    name: Faker::Coffee.unique.blend_name,
    city: Faker::Address.city
  )
end