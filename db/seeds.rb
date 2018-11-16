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


user1 = User.create!(email: "hell-n-ah@gmail.com",
    password: "123secret",
    first_name: "Helena",
    last_name: "Baars",
    phone_number: "0600 221843",
    bio: "I recently moved to the Netherlands.
    I'm an independent full-time yoga teacher, looking forward to help teach those in need of a good strech. ",
    website_url: "Helena-Yoga.com",
    facebook_url: "facebook.com",
    instagram_url: "instagram.com",
    available: true,
    address: "Amsterdam")

user2 = User.create!(email: "christina-dancing@gmail.com",
    password: "123secret",
    first_name: "Christina",
    last_name: "Davidson",
    phone_number: "0655 222243",
    bio: "I'm a profesionnal dancer. I create dances for a living.
    I've worked as a profesional choreographist throughout all my career.",
    website_url: "David-Lloyd.com",
    facebook_url: "facebook.com",
    instagram_url: "instagram.com",
    available: true,
    address: "Haarlem")

user3 = User.create!(email: "alexandra-gram@gmail.com",
    password: "123secret",
    first_name: "Alexandra",
    last_name: "De Jong",
    phone_number: "0605 221843",
    bio: "I'm very motivated and ambitious.
    I just graduated from university, gotten my gym license to become a full-time gym teacher in various fields.
    Currently, I'm experienced in Zumba classes, but open to try different approaches to teaching.
    In other words, i'm open for anything",
    website_url: "de-young-jong.com",
    facebook_url: "facebook.com",
    instagram_url: "instagram.com",
    available: true,
    address: "Gorinchem")

user4 = User.create!(email: "jannes-brinkmann@gmail.com",
    password: "123secret",
    first_name: "Jannes",
    last_name: "Brinkmann",
    phone_number: "0601 181843",
    bio: "I'm junior professional boxer. I teach gymnastics, yoga, pilates, cross fit and many other sports. Regularly available.",
    website_url: "Brinkmann-Boxers.com",
    facebook_url: "facebook.com",
    instagram_url: "instagram.com",
    available: true,
    address: "Breda")

user5 = User.create!(email: "marcel@gmail.com",
    password: "123secret",
    first_name: "Marcel",
    last_name: "Peters",
    phone_number: "0680 431843",
    bio: "I used to be a banker and since my last burn out, I have changed my lifestyle.
    Now I teach Body Balance, Pilates and Yoga in my free time",
    website_url: "marcel-peters.com",
    facebook_url: "facebook.com",
    instagram_url: "instagram.com",
    available: true,
    address: "Roosendaal")

user6 = User.create!(email: "karen-pilat@gmail.com",
    password: "123secret",
    first_name: "Karen",
    last_name: "Gouda",
    phone_number: "0611 184343",
    bio: "I am professional Pilates teacher.
    I won 3 winter olympic medals in cross-country skiing as child.
    Today I teach Pilates full-time and in my spare time. I'm always up for challenges.",
    website_url: "sweedish-workouts.com",
    facebook_url: "facebook.com",
    instagram_url: "instagram.com",
    available: true,
    address: "Eindhoven")



lesson1 = Lesson.create(start_time: DateTime.strptime("11/19/2019 10:00", "%m/%d/%Y %H:%M"),
    duration: 50,
    price: 20,
    address: "Amsterdam",
    description: "Vinyasa Yoga",
    subject: subject1,
    user: user1)

lesson2 = Lesson.create(start_time: DateTime.strptime("11/18/2019 7:00", "%m/%d/%Y %H:%M"),
    duration: 40,
    price: 10,
    address: "Haarlem",
    description: "Boxing for kids",
    subject: subject8,
    user: user4)

lesson3 = Lesson.create(start_time: DateTime.strptime("11/16/2019 7:00", "%m/%d/%Y %H:%M"),
    duration: 50,
    price: 20,
    address: "Utrecht",
    description: "Zumba for anyone",
    subject: subject6,
    user: user3)

lesson4 = Lesson.create(start_time: DateTime.strptime("09/14/2019 8:00", "%m/%d/%Y %H:%M"),
    duration: 60,
    price: 50,
    address: "Maastricht",
    description: "Dance for professionals",
    subject: subject10,
    user: user2)

lesson5 = Lesson.create(start_time: DateTime.strptime("09/14/2019 8:00", "%m/%d/%Y %H:%M"),
    duration: 60,
    price: 50,
    address: "Maastricht",
    description: "Body Balance for Beginners",
    subject: subject10,
    user: user5)

lesson6 = Lesson.create(start_time: DateTime.strptime("09/14/2019 8:00", "%m/%d/%Y %H:%M"),
    duration: 60,
    price: 50,
    address: "Maastricht",
    description: "Pilates Intermediate Level",
    subject: subject10,
    user: user6)
