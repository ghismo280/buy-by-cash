require 'faker'
puts "Deleting all Users"

User.destroy_all
Conversation.destroy_all
Message.destroy_all
Review.destroy_all



# USER --------------------------------------

puts "Creating eBuyers"
10.times do
url = "http://i.pravatar.cc/150"
  ebuyer = User.new(
    name: Faker::Name.first_name,
    surname: Faker::Name.middle_name,
    email: Faker::Internet.email,
    city: Faker::Address.city,
    address: Faker::Address.street_address,
    ebuyer: true,
    age: rand(18..65),
    bio: Faker::Lorem.paragraph,
    tagline: Faker::RickAndMorty.quote,
    password: "123456",
    photo: url,
    average_rating: rand(0..5),
    fee: rand(10..20),
    start_date: Faker::Date.between(2.days.ago, Date.today) #=> "Wed, 24 Sep 2014"
  )
  ebuyer.save!
end

puts "Creating Customers"
10.times do
url = "http://i.pravatar.cc/150"
  customer = User.new(
    name: Faker::Name.first_name,
    surname: Faker::Name.middle_name,
    email: Faker::Internet.email,
    city: Faker::Address.city,
    address: Faker::Address.street_address,
    ebuyer: false,
    age: rand(18..65),
    password: "123456",
    photo: url,
  )
  customer.save!
end


# CONVERSATION -----------------------------------
puts "Creating Conversations"
10.times do
  conversation = Conversation.new(
    sender_id: User.where(ebuyer: false).sample.id,
    recipient_id: User.where(ebuyer: true).sample.id,
  )
  conversation.save!
end


# MESSAGE -----------------------------------
puts "Creating Messages"
80.times do
  message = Message.new(
    body: Faker::Seinfeld.quote,
    conversation_id: Conversation.all.sample.id,
  )
  message.save!
end


# REVIEW -----------------------------------
puts "Creating Reviews"
30.times do
  review = Review.new(
    body: Faker::SiliconValley.quote,
    stars:  rand(0..5),
    user_id: User.all.sample.id,
    recipient_id: rand(1..User.all.length)
  )
  review.save!
end
