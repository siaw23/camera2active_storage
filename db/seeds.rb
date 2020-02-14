# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  dob = Faker::Date.birthday(min_age: 16, max_age: 40)

  Player.create(
    name: Faker::Sports::Football.player,
    dob: dob,
    pob: Faker::Address.city,
    age: Time.now.year - dob.year,
    height: [*170..200].sample,
    citizenship: Faker::Address.country,
    position: Faker::Sports::Football.position,
    foot: %w[Left Right Both].sample,
    current_club: Faker::Sports::Football.team,
    contract_expires: DateTime.now + 10.years,
    outfitter: %w[Nike Puma Adidas UnderArmour DKS].sample
  )
end
