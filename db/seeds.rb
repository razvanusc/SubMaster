# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroying all..."
Lesson.destroy_all
User.destroy_all
Subject.destroy_all
Booking.destroy_all

puts "Seeding..."

subject1 = Subject.create(name: "Yoga")
subject2 = Subject.create(name: "Pilates")
subject3 = Subject.create(name: "Aerobic")
subject4 = Subject.create(name: "Body Balance")
subject5 = Subject.create(name: "Boxing")
subject6 = Subject.create(name: "Crossfit")
subject7 = Subject.create(name: "Dance")
subject8 = Subject.create(name: "Kick Boxing")
subject9 = Subject.create(name: "Pole Dance")
subject10 = Subject.create(name: "Zumba")


user1 = User.create!(email: "frank@gmail.com",
    password: "123secret",
    first_name: "Frank",
    last_name: "Alkema",
    phone_number: "1234567890",
    bio: "I am Frank",
    website_url: "iamfrank.com",
    facebook_url: "facebook.com",
    instagram_url: "instagram.com",
    available: true,
    address: "Amsterdam")

user2 = User.create!(email: "jordy@gmail.com",
    password: "123secret",
    first_name: "Jordy",
    last_name: "Kleberg",
    phone_number: "1234567890",
    bio: "I am Jordy",
    website_url: "iamjordy.com",
    facebook_url: "facebook.com",
    instagram_url: "instagram.com",
    available: true,
    address: "Haarlem")

user3 = User.create!(email: "max@gmail.com",
    password: "123secret",
    first_name: "Max",
    last_name: "Fontana",
    phone_number: "1234567890",
    bio: "I am Max",
    website_url: "iammax.com",
    facebook_url: "facebook.com",
    instagram_url: "instagram.com",
    available: true,
    address: "Utrecht")


lesson1 = Lesson.create(start_time: DateTime.strptime("11/19/2019 10:00", "%m/%d/%Y %H:%M"),
    duration: 50,
    price: 20,
    address: "Amsterdam",
    description: "Yoga class",
    subject: subject1,
    user: user1)

lesson2 = Lesson.create(start_time: DateTime.strptime("11/18/2019 7:00", "%m/%d/%Y %H:%M"),
    duration: 40,
    price: 10,
    address: "Haarlem",
    description: "Kick Boxing class",
    subject: subject8,
    user: user2)

lesson3 = Lesson.create(start_time: DateTime.strptime("11/16/2019 7:00", "%m/%d/%Y %H:%M"),
    duration: 50,
    price: 20,
    address: "Utrecht",
    description: "Crossfit class",
    subject: subject6,
    user: user3)

lesson4 = Lesson.create(start_time: DateTime.strptime("09/14/2019 8:00", "%m/%d/%Y %H:%M"),
    duration: 60,
    price: 50,
    address: "Maastricht",
    description: "Zumba class",
    subject: subject10,
    user: user1)

