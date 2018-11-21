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

subject_yoga = Subject.create(name: "Yoga")
subject_pliates = Subject.create(name: "Pilates")
subject_aerobic = Subject.create(name: "Aerobic")
subject_bodybalance = Subject.create(name: "Body Balance")
subject_boxing = Subject.create(name: "Boxing")
subject_crossfit = Subject.create(name: "Crossfit")
subject_dance = Subject.create(name: "Dance")
subject_kickboxing = Subject.create(name: "Kick Boxing")
subject_poledance = Subject.create(name: "Pole Dance")
subject_zumba = Subject.create(name: "Zumba")
subject_other = Subject.create(name: "Other")


user1 = User.create!(email: "marcusp@gmail.com",
    password: "123secret",
    first_name: "Marcus",
    last_name: "Paulina",
    phone_number: "0600 221843",
    bio: "I recently moved to the Netherlands.
    I'm an independent full-time yoga teacher, looking forward to help teach those in need of a good strech.",
    website_url: "marcus-yoga.com",
    facebook_url: "facebook.com",
    instagram_url: "instagram.com",
    available: true,
    address: "Amsterdam",
    subjects: [subject_yoga, subject_pliates, subject_aerobic],
    remote_photo_url: "https://res.cloudinary.com/ddxecpwob/image/upload/v1542718356/black-and-white-boy-casual-555790.jpg")

user2 = User.create!(email: "kyrillr@gmail.com",
    password: "123secret",
    first_name: "Kyrill",
    last_name: "Roozen",
    phone_number: "0655 222243",
    bio: "I'm a profesionnal dancer. I create dances for a living.
    I've worked as a profesional choreographist throughout all my career.",
    website_url: "kyrill-dance.com",
    facebook_url: "facebook.com",
    instagram_url: "instagram.com",
    available: true,
    address: "Eindhoven",
    subjects: [subject_bodybalance, subject_boxing, subject_dance],
    remote_photo_url: "https://res.cloudinary.com/ddxecpwob/image/upload/v1542718570/adult-beard-boy-220453.jpg")

user3 = User.create!(email: "emmiep@gmail.com",
    password: "123secret",
    first_name: "Emmie",
    last_name: "Putter",
    phone_number: "0605 221843",
    bio: "I'm very motivated and ambitious.
    I just graduated from university, gotten my gym license to become a full-time gym teacher in various fields.
    Currently, I'm experienced in Zumba classes, but open to try different approaches to teaching.
    In other words, i'm open for anything",
    website_url: "emmie-zumba.com",
    facebook_url: "facebook.com",
    instagram_url: "instagram.com",
    available: true,
    address: "Amsterdam",
    subjects: [subject_dance, subject_kickboxing, subject_zumba],
    remote_photo_url: "https://res.cloudinary.com/ddxecpwob/image/upload/v1542718572/actor-adult-autumn-1043471.jpg")

user4 = User.create!(email: "jorinep@gmail.com",
    password: "123secret",
    first_name: "Jorine",
    last_name: "Pape",
    phone_number: "0601 181843",
    bio: "I'm junior professional boxer. I teach gymnastics, yoga, pilates, cross fit and many other sports. Regularly available.",
    website_url: "jorine-boxers.com",
    facebook_url: "facebook.com",
    instagram_url: "instagram.com",
    available: true,
    address: "Utrecht",
    subjects: [subject_zumba, subject_yoga, subject_boxing],
    remote_photo_url: "https://res.cloudinary.com/ddxecpwob/image/upload/v1542718590/actor-adult-beard-1040880.jpg")

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
    address: "Amsterdam",
    subjects: [subject_yoga, subject_bodybalance, subject_pliates],
    remote_photo_url: "https://res.cloudinary.com/ddxecpwob/image/upload/v1542718716/adult-baseball-cap-beard-1484793.jpg")

user6 = User.create!(email: "kareng@gmail.com",
    password: "123secret",
    first_name: "Karen",
    last_name: "Gouda",
    phone_number: "0611 184343",
    bio: "I am professional Pilates teacher.
    I won 3 winter olympic medals in cross-country skiing as child.
    Today I teach Pilates full-time and in my spare time. I'm always up for challenges.",
    website_url: "karen-workouts.com",
    facebook_url: "facebook.com",
    instagram_url: "instagram.com",
    available: false,
    address: "Eindhoven",
    subjects: [subject_pliates, subject_dance, subject_kickboxing],
    remote_photo_url: "https://res.cloudinary.com/ddxecpwob/image/upload/v1542718607/attractive-beautiful-beauty-1310518.jpg")



lesson1 = Lesson.create(start_time: DateTime.strptime("18:00", "%H:%M"),
    start_date: DateTime.strptime("11/26/2018", "%m/%d/%Y"),
    duration: 50,
    price: 20,
    address: "Amsterdam",
    description: "Vinyasa Yoga",
    subject: subject_yoga,
    user: user1)

lesson2 = Lesson.create(start_time: DateTime.strptime("19:00", "%H:%M"),
    start_date: DateTime.strptime("11/27/2018", "%m/%d/%Y"),
    duration: 40,
    price: 10,
    address: "Utrecht",
    description: "Boxing for kids",
    subject: subject_boxing,
    user: user4)

lesson3 = Lesson.create(start_time: DateTime.strptime("20:00", "%H:%M"),
    start_date: DateTime.strptime("11/28/2018", "%m/%d/%Y"),
    duration: 50,
    price: 20,
    address: "Utrecht",
    description: "Zumba for anyone",
    subject: subject_zumba,
    user: user3)

lesson4 = Lesson.create(start_time: DateTime.strptime("18:00", "%H:%M"),
    start_date: DateTime.strptime("11/29/2018", "%m/%d/%Y"),
    duration: 70,
    price: 40,
    address: "Eindhoven",
    description: "Dance for professionals",
    subject: subject_dance,
    user: user2)

lesson5 = Lesson.create(start_time: DateTime.strptime("19:00", "%H:%M"),
    start_date: DateTime.strptime("11/30/2018", "%m/%d/%Y"),
    duration: 80,
    price: 70,
    address: "Amsterdam",
    description: "Body Balance for beginners",
    subject: subject_bodybalance,
    user: user5)

lesson6 = Lesson.create(start_time: DateTime.strptime("20:00", "%H:%M"),
    start_date: DateTime.strptime("11/26/2018", "%m/%d/%Y"),
    duration: 30,
    price: 20,
    address: "Utrecht",
    description: "Pilates intermediate level",
    subject: subject_pliates,
    user: user6)

lesson7 = Lesson.create(start_time: DateTime.strptime("19:00", "%H:%M"),
    start_date: DateTime.strptime("11/27/2018", "%m/%d/%Y"),
    duration: 45,
    price: 30,
    address: "Eindhoven",
    description: "Pilates for beginners",
    subject: subject_pliates,
    user: user1)

lesson8 = Lesson.create(start_time: DateTime.strptime("17:00", "%H:%M"),
    start_date: DateTime.strptime("11/28/2018", "%m/%d/%Y"),
    duration: 65,
    price: 50,
    address: "Utrecht",
    description: "Boxing for kids",
    subject: subject_boxing,
    user: user2)

lesson9 = Lesson.create(start_time: DateTime.strptime("18:00", "%H:%M"),
    start_date: DateTime.strptime("11/29/2018", "%m/%d/%Y"),
    duration: 60,
    price: 40,
    address: "Eindhoven",
    description: "Kick Boxing for professionals",
    subject: subject_kickboxing,
    user: user3)

lesson10 = Lesson.create(start_time: DateTime.strptime("19:00", "%H:%M"),
    start_date: DateTime.strptime("11/30/2018", "%m/%d/%Y"),
    duration: 100,
    price: 60,
    address: "Amsterdam",
    description: "Dancing intermediate level",
    subject: subject_dance,
    user: user4)

lesson11 = Lesson.create(start_time: DateTime.strptime("21:00", "%H:%M"),
    start_date: DateTime.strptime("11/26/2018", "%m/%d/%Y"),
    duration: 90,
    price: 40,
    address: "Amsterdam",
    description: "Pole Dance for professionals",
    subject: subject_poledance,
    user: user5)

lesson12 = Lesson.create(start_time: DateTime.strptime("21:30", "%H:%M"),
    start_date: DateTime.strptime("11/27/2018", "%m/%d/%Y"),
    duration: 55,
    price: 30,
    address: "Utrecht",
    description: "Fun Yoga",
    subject: subject_yoga,
    user: user6)

lesson13 = Lesson.create(start_time: DateTime.strptime("19:30", "%H:%M"),
    start_date: DateTime.strptime("11/26/2018", "%m/%d/%Y"),
    duration: 50,
    price: 40,
    address: "Eindhoven",
    description: "Aerobic intermediate level",
    subject: subject_aerobic,
    user: user1)

lesson14 = Lesson.create(start_time: DateTime.strptime("20:30", "%H:%M"),
    start_date: DateTime.strptime("11/28/2018", "%m/%d/%Y"),
    duration: 60,
    price: 60,
    address: "Utrecht",
    description: "Body Balance for kids",
    subject: subject_bodybalance,
    user: user2)

lesson15 = Lesson.create(start_time: DateTime.strptime("19:30", "%H:%M"),
    start_date: DateTime.strptime("11/29/2018", "%m/%d/%Y"),
    duration: 50,
    price: 30,
    address: "Eindhoven",
    description: "Kick Boxing for professionals",
    subject: subject_kickboxing,
    user: user3)

lesson16 = Lesson.create(start_time: DateTime.strptime("18:30", "%H:%M"),
    start_date: DateTime.strptime("11/30/2018", "%m/%d/%Y"),
    duration: 60,
    price: 40,
    address: "Amsterdam",
    description: "Pole Dance intermediate level",
    subject: subject_poledance,
    user: user4)

lesson17 = Lesson.create(start_time: DateTime.strptime("18:00", "%H:%M"),
    start_date: DateTime.strptime("11/26/2018", "%m/%d/%Y"),
    duration: 40,
    price: 20,
    address: "Amsterdam",
    description: "Zumba for fun people",
    subject: subject_zumba,
    user: user5)

lesson18 = Lesson.create(start_time: DateTime.strptime("16:30", "%H:%M"),
    start_date: DateTime.strptime("11/27/2018", "%m/%d/%Y"),
    duration: 60,
    price: 50,
    address: "Utrecht",
    description: "Relaxing Yoga",
    subject: subject_yoga,
    user: user6)

lesson19 = Lesson.create(start_time: DateTime.strptime("17:00", "%H:%M"),
    start_date: DateTime.strptime("11/28/2018", "%m/%d/%Y"),
    duration: 45,
    price: 30,
    address: "Eindhoven",
    description: "Aerobic intermediate level",
    subject: subject_aerobic,
    user: user1)

lesson20 = Lesson.create(start_time: DateTime.strptime("9:00", "%H:%M"),
    start_date: DateTime.strptime("11/27/2018", "%m/%d/%Y"),
    duration: 70,
    price: 40,
    address: "Utrecht",
    description: "Kick Boxing for professionals",
    subject: subject_kickboxing,
    user: user2)

lesson21 = Lesson.create(start_time: DateTime.strptime("9:30", "%H:%M"),
    start_date: DateTime.strptime("11/28/2018", "%m/%d/%Y"),
    duration: 80,
    price: 60,
    address: "Eindhoven",
    description: "Boxing for beginners",
    subject: subject_boxing,
    user: user3)

lesson22 = Lesson.create(start_time: DateTime.strptime("9:30", "%H:%M"),
    start_date: DateTime.strptime("11/29/2018", "%m/%d/%Y"),
    duration: 100,
    price: 50,
    address: "Amsterdam",
    description: "Yoga for beginners",
    subject: subject_yoga,
    user: user4)

lesson23 = Lesson.create(start_time: DateTime.strptime("9:00", "%H:%M"),
    start_date: DateTime.strptime("11/27/2018", "%m/%d/%Y"),
    duration: 40,
    price: 50,
    address: "Amsterdam",
    description: "Crossfit intermediate level",
    subject: subject_crossfit,
    user: user5)

lesson24 = Lesson.create(start_time: DateTime.strptime("8:00", "%H:%M"),
    start_date: DateTime.strptime("11/28/2018", "%m/%d/%Y"),
    duration: 60,
    price: 60,
    address: "Utrecht",
    description: "Crossfit for professionals",
    subject: subject_crossfit,
    user: user6)
