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
Subject.delete_all

puts "Seeding..."

subject = Subject.create(name: "yoga")

User.create!([
  {
    email: "frank@gmail.com",
    password: "123secret",
    first_name: "Frank",
    last_name: "Alkema",
    phone_number: "1234567890",
    bio: "I am Frank",
    website_url: "iamfrank.com",
    facebook_url: "facebook.com",
    instagram_url: "instagram.com",
    available: true,
    address: "Amsterdam"
  },
  {
    email: "jordy@gmail.com",
    password: "123secret",
    first_name: "Jordy",
    last_name: "Kleberg",
    phone_number: "1234567890",
    bio: "I am Jordy",
    website_url: "iamjordy.com",
    facebook_url: "facebook.com",
    instagram_url: "instagram.com",
    available: true,
    address: "Haarlem"
  },
  {
    email: "max@gmail.com",
    password: "123secret",
    first_name: "Max",
    last_name: "Fontana",
    phone_number: "1234567890",
    bio: "I am Max",
    website_url: "iammax.com",
    facebook_url: "facebook.com",
    instagram_url: "instagram.com",
    available: true,
    address: "Utrecht"
  }
])

owner = User.create!(email: "owner@gmail.com",
    password: "123secret",
    first_name: "Owner",
    last_name: "Fontana",
    phone_number: "1234567890",
    bio: "I am Ownerx",
    website_url: "iammax.com",
    facebook_url: "facebook.com",
    instagram_url: "instagram.com",
    available: true,
    address: "Utrecht")


Lesson.create!([
  {
    start_time: DateTime.strptime("17:00", "%H:%M"),
    start_date: DateTime.strptime("09/01/2019", "%m/%d/%Y"),
    duration: 50,
    price: 20,
    address: "Amsterdam",
    description: "Yoga class",
    subject: subject,
    user: owner
  },
  {
    start_time: DateTime.strptime("8:00", "%H:%M"),
    start_date: DateTime.strptime("09/14/2019", "%m/%d/%Y"),
    duration: 40,
    price: 10,
    address: "Haarlem",
    description: "Yoga class",
    subject: subject,
    user: owner
  },
  {
    start_time: DateTime.strptime("9:00", "%H:%M"),
    start_date: DateTime.strptime("09/14/2019", "%m/%d/%Y"),
    duration: 50,
    price: 20,
    address: "Utrecht",
    description: "Yoga class",
    subject: subject,
    user: owner
  },
  {
    start_time: DateTime.strptime("10:00", "%H:%M"),
    start_date: DateTime.strptime("09/14/2019", "%m/%d/%Y"),
    duration: 60,
    price: 50,
    address: "Maastricht",
    description: "Yoga class",
    subject: subject,
    user: owner
  }
])

