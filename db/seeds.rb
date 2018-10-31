require 'faker'
puts "Deleting all Users"

User.destroy_all

# USER --------------------------------------
puts "Creating eBuyers"
10.times do
  ebuyer = User.new(
    name: Faker::Name.first_name,
    surname: Faker::Name.middle_name,
    email: Faker::Internet.email,
    city: Faker::Address.city,
    ebuyer: true,
    password: "123456"
  )
  ebuyer.save!
end

puts "Creating Customers"
10.times do
  customer = User.new(
    name: Faker::Name.first_name,
    surname: Faker::Name.middle_name,
    email: Faker::Internet.email,
    city: Faker::Address.city,
    ebuyer: false,
    password: "123456"
  )
  customer.save!
end


# CONVERSATION -----------------------------------
puts "Creating Conversations"
10.times do
  conversation = Conversation.new(
    string: Faker::Lebowski.quote,
  )
  conversation.save!
end


# MESSAGE -----------------------------------
puts "Creating Messages"
10.times do
  message = Message.new(
    body: Faker::Seinfeld.quote,
  )
  message.save!
end


# REVIEW -----------------------------------
puts "Creating Reviews"
10.times do
  review = Review.new(
    body: Faker::SiliconValley.quote,
    stars:  rand(0..5)
  )
  review.save!
end
