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
subject_pilates = Subject.create(name: "Pilates")
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
    last_name: "Pinto",
    phone_number: "0600 221843",
    bio: "I recently moved to the Netherlands. I'm a full-time yoga teacher looking forward to help teach those in need of a good stretch.",
    website_url: "marcus-yoga.com",
    facebook_url: "facebook.com",
    instagram_url: "instagram.com",
    available: true,
    address: "Amsterdam",
    subjects: [subject_yoga, subject_pilates, subject_aerobic],
    remote_photo_url: "https://res.cloudinary.com/ddxecpwob/image/upload/v1542718356/black-and-white-boy-casual-555790.jpg")

user2 = User.create!(email: "kyrillr@gmail.com",
    password: "123secret",
    first_name: "Kyrill",
    last_name: "Roozen",
    phone_number: "0655 222243",
    bio: "I'm a professional dancer from London with lots of teaching experience. I also worked as a choreographer for 25 years across the world.
    I recently became a certified yoga teacher (YTTC200hours) in India",
    website_url: "kyrill-dance.com",
    facebook_url: "facebook.com",
    instagram_url: "instagram.com",
    available: true,
    address: "Eindhoven",
    subjects: [subject_yoga, subject_dance],
    remote_photo_url: "https://res.cloudinary.com/ddxecpwob/image/upload/v1542801848/andy-lee-642320-unsplash.jpg")

user3 = User.create!(email: "emmiep@gmail.com",
    password: "123secret",
    first_name: "Emily",
    last_name: "Port",
    phone_number: "0605 221843",
    bio: "I just graduated from university, and I am a full-time fitness teacher and a personal trainer.
    Currently, I look for subbing mostly Zumba classes, but I am open to teach other classes as well.",
    website_url: "emmie-zumba.com",
    facebook_url: "facebook.com",
    instagram_url: "instagram.com",
    available: true,
    address: "Amsterdam",
    subjects: [subject_crossfit, subject_zumba],
    remote_photo_url: "https://res.cloudinary.com/ddxecpwob/image/upload/v1542801917/s-a-r-a-h-s-h-a-r-p-757806-unsplash.jpg")

user4 = User.create!(email: "jorisk@gmail.com",
    password: "123secret",
    first_name: "Joris",
    last_name: "Kohn",
    phone_number: "0601 181843",
    bio: "I'm junior professional boxer. I teach box, crossfit and kickbox for 3 years part-time.",
    website_url: "jorine-boxers.com",
    facebook_url: "facebook.com",
    instagram_url: "instagram.com",
    available: true,
    address: "Utrecht",
    subjects: [subject_boxing, subject_kickboxing],
    remote_photo_url: "https://res.cloudinary.com/ddxecpwob/image/upload/v1542718590/actor-adult-beard-1040880.jpg")

user5 = User.create!(email: "marias@gmail.com",
    password: "123secret",
    first_name: "Maria",
    last_name: "Schmidt",
    phone_number: "0680 431843",
    bio: "I teach Body Balance, Pilates and Yoga in my free time. I love teaching restorative evening classes.",
    website_url: "maria-schmidt.com",
    facebook_url: "facebook.com",
    instagram_url: "instagram.com",
    available: true,
    address: "Amsterdam",
    subjects: [subject_pilates],
    remote_photo_url: "https://res.cloudinary.com/ddxecpwob/image/upload/v1542802029/8782fc8220561fe4a7dddb07aa15525a--face-reference-female-faces.jpg")

user6 = User.create!(email: "kareng@gmail.com",
    password: "123secret",
    first_name: "Karen",
    last_name: "Gouda",
    phone_number: "0611 184343",
    bio: "I am a full-time Pilates teacher from Belgium with 5 years of teaching experience. I'm also a devoted yoga practitioner.",
    website_url: "karen-workouts.com",
    facebook_url: "facebook.com",
    instagram_url: "instagram.com",
    available: false,
    address: "Eindhoven",
    subjects: [subject_pilates, subject_dance, subject_kickboxing],
    remote_photo_url: "https://res.cloudinary.com/ddxecpwob/image/upload/v1542718607/attractive-beautiful-beauty-1310518.jpg")


lesson1 = Lesson.create(start_time: DateTime.strptime("20:00", "%H:%M"),
    start_date: DateTime.strptime("11/25/2018", "%m/%d/%Y"),
    duration: 50,
    price: 20,
    address: "Amsterdam",
    description: "Restorative evening class in a lovely downtown yoga studio. I'll send you all details in private. Full class with students of different levels.",
    subject: subject_yoga,
    user: user1)

lesson2 = Lesson.create(start_time: DateTime.strptime("16:00", "%H:%M"),
    start_date: DateTime.strptime("11/27/2018", "%m/%d/%Y"),
    duration: 40,
    price: 20,
    address: "Utrecht",
    description: "Looking for a substitute teacher for 10 year old kids (boys and girls) for a fun box class. Teachers with little teaching experience can be considered as well.",
    subject: subject_boxing,
    user: user4)

lesson3 = Lesson.create(start_time: DateTime.strptime("20:00", "%H:%M"),
    start_date: DateTime.strptime("11/28/2018", "%m/%d/%Y"),
    duration: 50,
    price: 20,
    address: "Utrecht",
    description: "Looking for a zumba teacher for upcoming Wednesday, for a very motivated ladies only group.",
    subject: subject_zumba,
    user: user3)

lesson4 = Lesson.create(start_time: DateTime.strptime("12:00", "%H:%M"),
    start_date: DateTime.strptime("11/29/2018", "%m/%d/%Y"),
    duration: 70,
    price: 40,
    address: "Eindhoven",
    description: "Lunch time modern dance class for advanced dancers, only teachers with at least 5 years experience should apply.",
    subject: subject_dance,
    user: user2)

lesson5 = Lesson.create(start_time: DateTime.strptime("09:00", "%H:%M"),
    start_date: DateTime.strptime("11/30/2018", "%m/%d/%Y"),
    duration: 80,
    price: 70,
    address: "Amsterdam",
    description: "Morning Body Balance class for beginners needs a substitute teacher in Oost Amsterdam. I'll send the details in private.",
    subject: subject_bodybalance,
    user: user5)

lesson6 = Lesson.create(start_time: DateTime.strptime("20:00", "%H:%M"),
    start_date: DateTime.strptime("11/26/2018", "%m/%d/%Y"),
    duration: 30,
    price: 20,
    address: "Utrecht",
    description: "Looking for a pilates teacher next Monday. Long term subsitution is possible for this class. More details in PM",
    subject: subject_pilates,
    user: user6)

lesson7 = Lesson.create(start_time: DateTime.strptime("19:00", "%H:%M"),
    start_date: DateTime.strptime("11/27/2018", "%m/%d/%Y"),
    duration: 45,
    price: 30,
    address: "Eindhoven",
    description: "Pilates for beginners, looking for a certified pilates teacher for this class, focusing on core.",
    subject: subject_pilates,
    user: user1)

lesson8 = Lesson.create(start_time: DateTime.strptime("17:00", "%H:%M"),
    start_date: DateTime.strptime("11/28/2018", "%m/%d/%Y"),
    duration: 65,
    price: 50,
    address: "Utrecht",
    description: "Looking for a substitute teacher for 10 year old kids (boys and girls) for a fun box class. Teachers with little teaching experience can be considered as well.",
    subject: subject_boxing,
    user: user2)

lesson9 = Lesson.create(start_time: DateTime.strptime("18:00", "%H:%M"),
    start_date: DateTime.strptime("11/29/2018", "%m/%d/%Y"),
    duration: 60,
    price: 40,
    address: "Eindhoven",
    description: "Kick Boxing for advanced students in downtoan studio of Eindhoven, teacher has to be present 20 minutes before the class!",
    subject: subject_kickboxing,
    user: user3)

lesson10 = Lesson.create(start_time: DateTime.strptime("19:00", "%H:%M"),
    start_date: DateTime.strptime("11/30/2018", "%m/%d/%Y"),
    duration: 100,
    price: 60,
    address: "Amsterdam",
    description: "Modern dance class open for all levels, teacher should engage students with different levels of experience.",
    subject: subject_dance,
    user: user4)

lesson11 = Lesson.create(start_time: DateTime.strptime("21:00", "%H:%M"),
    start_date: DateTime.strptime("11/26/2018", "%m/%d/%Y"),
    duration: 90,
    price: 40,
    address: "Amsterdam",
    description: "Advanced Pole Dance class needs a teacher asap for next week. Teacher should attend at least one class in our studio before committing to this class.",
    subject: subject_poledance,
    user: user5)

lesson12 = Lesson.create(start_time: DateTime.strptime("10:30", "%H:%M"),
    start_date: DateTime.strptime("11/27/2018", "%m/%d/%Y"),
    duration: 60,
    price: 30,
    address: "Utrecht",
    description: "Energizing ashtanga yoga for students with all levels - focusing on Primary Series.",
    subject: subject_yoga,
    user: user6)

lesson13 = Lesson.create(start_time: DateTime.strptime("19:30", "%H:%M"),
    start_date: DateTime.strptime("11/26/2018", "%m/%d/%Y"),
    duration: 50,
    price: 40,
    address: "Eindhoven",
    description: "Looking for an aerobic teacher with great taste in hiphop music for a fun class.",
    subject: subject_aerobic,
    user: user1)

lesson14 = Lesson.create(start_time: DateTime.strptime("20:30", "%H:%M"),
    start_date: DateTime.strptime("11/28/2018", "%m/%d/%Y"),
    duration: 60,
    price: 30,
    address: "Utrecht",
    description: "Body Balance class in a small gym, max. 7 people can attend.",
    subject: subject_bodybalance,
    user: user2)

lesson15 = Lesson.create(start_time: DateTime.strptime("19:30", "%H:%M"),
    start_date: DateTime.strptime("11/29/2018", "%m/%d/%Y"),
    duration: 50,
    price: 30,
    address: "Eindhoven",
    description: "Kick Boxing for girls,, big group 30 in heated studio.",
    subject: subject_kickboxing,
    user: user3)

lesson16 = Lesson.create(start_time: DateTime.strptime("18:30", "%H:%M"),
    start_date: DateTime.strptime("11/30/2018", "%m/%d/%Y"),
    duration: 60,
    price: 40,
    address: "Amsterdam",
    description: "Pole Dance for beginners, I send more details in PM.",
    subject: subject_poledance,
    user: user4)

lesson17 = Lesson.create(start_time: DateTime.strptime("18:00", "%H:%M"),
    start_date: DateTime.strptime("11/26/2018", "%m/%d/%Y"),
    duration: 40,
    price: 20,
    address: "Amsterdam",
    description: "Zumba for men is looking for a male zumba teacher.",
    subject: subject_zumba,
    user: user5)

lesson18 = Lesson.create(start_time: DateTime.strptime("16:30", "%H:%M"),
    start_date: DateTime.strptime("11/27/2018", "%m/%d/%Y"),
    duration: 60,
    price: 50,
    address: "Utrecht",
    description: "Yin Yoga class needs a teacher, only teachers with Yin Yoga certificate should apply.",
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
    description: "Boxing for beginners - you have to wait until the last student leaves the gym.",
    subject: subject_boxing,
    user: user3)

lesson22 = Lesson.create(start_time: DateTime.strptime("9:30", "%H:%M"),
    start_date: DateTime.strptime("11/29/2018", "%m/%d/%Y"),
    duration: 100,
    price: 50,
    address: "Amsterdam",
    description: "Hatha Yoga for regular students needs a substitute teacher, no music for this class please.",
    subject: subject_yoga,
    user: user4)

lesson23 = Lesson.create(start_time: DateTime.strptime("9:00", "%H:%M"),
    start_date: DateTime.strptime("11/27/2018", "%m/%d/%Y"),
    duration: 40,
    price: 50,
    address: "Amsterdam",
    description: "Crossfit class for beginners, you must challenge students. ",
    subject: subject_crossfit,
    user: user5)

lesson24 = Lesson.create(start_time: DateTime.strptime("8:00", "%H:%M"),
    start_date: DateTime.strptime("11/28/2018", "%m/%d/%Y"),
    duration: 60,
    price: 60,
    address: "Utrecht",
    description: "Crossfit for triathletes, next to Centraal Station, long term subbing possible.",
    subject: subject_crossfit,
    user: user6)
