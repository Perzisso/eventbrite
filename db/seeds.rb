require 'faker'

User.destroy_all
Event.destroy_all
Attendance.destroy_all

mails = 

5.times do
    user = User.create!(
        email: "#{Faker::Name.initials(number: 4).downcase}@yopmail.fr",
        encrypted_password: "azertyuiop",
        description: Faker::Lorem.sentence,
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name
    )
end

puts "***** 5 users has been created *****"
=begin
10.times do
    event = Event.create!(
        start_date: Faker::Date.between(from: Date.today, to: '2023-12-31'),
        duration: rand(6..11)*5,
        title: Faker::Fantasy::Tolkien.poem,
        description: Faker::Lorem.sentence,
        price: Faker::Number.positive(from: 1, to: 1000),
        location: Faker::Nation.capital_city,
        admin_id: rand(1..5)
    )
end

puts "****** events has been created *****"

50.times do
    attendance = Attendance.create!(
        user_id: rand(1..5),
        event_id: rand(1..10)
    )
end

puts "***** attendances has been created *****"
    
=end

