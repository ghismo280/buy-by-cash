# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

(1..30).each do |num|
  a = User.new(email: "#{num}mail@gmail.com", password:'1q2w3e44iuhqurhq',
                name:"#{num} name", surname:"#{num} surname", city: "#{num}city")
  if num % rand(2) == 0
    bool = true
  else
    bool = false
  end
  a.ebuyer = bool
  a.save!
end
