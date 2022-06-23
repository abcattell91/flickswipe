require "open-uri"
require 'uri'
require 'net/http'
require 'openssl'

puts '\/\/\/\/\/\/\/\/--CLEANING UP CONTENT--\/\/\/\/\/\/\/\/'
sleep 5
Content.destroy_all
puts '\/\/\/\/\/\/\/\/--CONTENT DELETED--\/\/\/\/\/\/\/\/'
sleep 1
puts " "
puts " "

puts '\/\/\/\/\/\/\/\/--CLEANING UP USERS--\/\/\/\/\/\/\/\/'
User.destroy_all
sleep 5
puts '\/\/\/\/\/\/\/\/--USERS REMOVED--\/\/\/\/\/\/\/\/'
sleep 1
puts " "
puts " "

puts '\/\/\/\/\/\/\/\/--CLEANING UP STREAMING SERVICES LIST--\/\/\/\/\/\/\/\/'
StreamingService.destroy_all
sleep 5
puts '\/\/\/\/\/\/\/\/--STREAMING SERVICES LIST REMOVED--\/\/\/\/\/\/\/\/'
sleep 1
puts " "
puts " "

puts '\/\/\/\/\/\/\/\/--CLEANING UP STREAMING DATA--\/\/\/\/\/\/\/\/'
ContentStreamingService.destroy_all
sleep 5
puts '\/\/\/\/\/\/\/\/--REMOVED STREAMING DATA--\/\/\/\/\/\/\/\/'
sleep 1
puts " "
puts " "

puts "\/\/\/\/\/\/\/\/--CLEANING UP FRIENDSHIPS--\/\/\/\/\/\/\/\/"
Friendship.destroy_all
sleep 5
puts '\/\/\/\/\/\/\/\/--REMOVED FRIENDSHIPS--\/\/\/\/\/\/\/\/'
sleep 1
puts " "
puts " "

puts "\/\/\/\/\/\/\/\/--CLEANING UP USERS' LIKED CONTENT--\/\/\/\/\/\/\/\/"
UserContent.destroy_all
sleep 5
puts " "
puts " "
puts " "
puts " "
puts "\/\/\/\/\/\/\/\/--REMOVED USERS' LIKED CONTENT--\/\/\/\/\/\/\/\/"
sleep 1

puts " "
puts " "
puts " "
puts " "
puts " "

puts 'Database is now clean, preparing to seed. Please Wait......'
sleep 5
puts " "
puts " "
puts " "
puts " "
puts " "
puts '\/\/\/\/\/\/\/\/--DATABASE READY TO SEED--\/\/\/\/\/\/\/\/'


# The movie api is different to tv shows so have to do the api requests twice.

puts '\/\/\/\/\/\/\/\/--CREATING USERS--\/\/\/\/\/\/\/\/'
sleep 5
puts " "
puts " "
puts " "
puts " "
puts " "

file = URI.open('https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aGVhZHNob3R8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user1 = User.create(email: "email@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user1.photo.attach(io: file, filename: 'user1.jpeg', content_type: 'image/jpg')
puts "#{user1} created"

file = URI.open('https://images.unsplash.com/photo-1627161683077-e34782c24d81?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aGVhZHNob3R8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user2 = User.create(email: "email2@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user2.photo.attach(io: file, filename: 'user2.jpeg', content_type: 'image/jpg')
puts "#{user2} created"

file = URI.open('https://images.unsplash.com/photo-1595211877493-41a4e5f236b3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8aGVhZHNob3R8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user3 = User.create(email: "email3@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user3.photo.attach(io: file, filename: 'user3.jpeg', content_type: 'image/jpg')
puts "#{user3} created"

file = URI.open('https://images.unsplash.com/photo-1611432579699-484f7990b127?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8aGVhZHNob3R8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user4 = User.create(email: "email4@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user4.photo.attach(io: file, filename: 'user4.jpeg', content_type: 'image/jpg')
puts "#{user4} created"

file = URI.open('https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8aGVhZHNob3R8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user5 = User.create(email: "email5@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user5.photo.attach(io: file, filename: 'user5.jpeg', content_type: 'image/jpg')
puts "#{user5} created"

file = URI.open('https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8aGVhZHNob3R8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user6 = User.create(email: "email6@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user6.photo.attach(io: file, filename: 'user6.jpeg', content_type: 'image/jpg')
puts "#{user6} created"

file = URI.open('https://images.unsplash.com/photo-1614644147798-f8c0fc9da7f6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8aGVhZHNob3R8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user7 = User.create(email: "email7@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user7.photo.attach(io: file, filename: 'user7.jpeg', content_type: 'image/jpg')
puts "#{user7} created"

file = URI.open('https://images.unsplash.com/photo-1573497019940-1c28c88b4f3e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8aGVhZHNob3R8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user8 = User.create(email: "email8@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user8.photo.attach(io: file, filename: 'user8.jpeg', content_type: 'image/jpg')
puts "#{user8} created"

file = URI.open('https://images.unsplash.com/photo-1629425733761-caae3b5f2e50?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGhlYWRzaG90fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60')
user9 = User.create(email: "email9@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user9.photo.attach(io: file, filename: 'user9.jpeg', content_type: 'image/jpg')
puts "#{user9} created"

file = URI.open('https://images.unsplash.com/photo-1606335192038-f5a05f761b3a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGhlYWRzaG90fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60')
user10 = User.create(email: "email10@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user10.photo.attach(io: file, filename: 'user10.jpeg', content_type: 'image/jpg')
puts "#{user10} created"

file = URI.open('https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60')
user11 = User.create(email: "email11@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user11.photo.attach(io: file, filename: 'user11.jpeg', content_type: 'image/jpg')
puts "#{user11} created"

file = URI.open('https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60')
user12 = User.create(email: "email12@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user12.photo.attach(io: file, filename: 'user12.jpeg', content_type: 'image/jpg')
puts "#{user12} created"

file = URI.open('https://images.unsplash.com/photo-1524504388940-b1c1722653e1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user13 = User.create(email: "email13@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user13.photo.attach(io: file, filename: 'user13.jpeg', content_type: 'image/jpg')
puts "#{user13} created"

file = URI.open('https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user14 = User.create(email: "email14@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user14.photo.attach(io: file, filename: 'user14.jpeg', content_type: 'image/jpg')
puts "#{user14} created"

file = URI.open('https://images.unsplash.com/photo-1463453091185-61582044d556?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjJ8fHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user15 = User.create(email: "email15@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user15.photo.attach(io: file, filename: 'user15.jpeg', content_type: 'image/jpg')
puts "#{user15} created"

file = URI.open('https://images.unsplash.com/photo-1488426862026-3ee34a7d66df?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjN8fHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user16 = User.create(email: "email16@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user16.photo.attach(io: file, filename: 'user16.jpeg', content_type: 'image/jpg')
puts "#{user16} created"

file = URI.open('https://images.unsplash.com/photo-1522529599102-193c0d76b5b6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzh8fHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user17 = User.create(email: "email17@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user17.photo.attach(io: file, filename: 'user17.jpeg', content_type: 'image/jpg')
puts "#{user17} created"

file = URI.open('https://images.unsplash.com/photo-1522556189639-b150ed9c4330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDB8fHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user18 = User.create(email: "email18@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user18.photo.attach(io: file, filename: 'user18.jpeg', content_type: 'image/jpg')
puts "#{user18} created"

file = URI.open('https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzl8fHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user19 = User.create(email: "email19@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user19.photo.attach(io: file, filename: 'user19.jpeg', content_type: 'image/jpg')
puts "#{user19} created"

file = URI.open('https://images.unsplash.com/photo-1523464862212-d6631d073194?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDZ8fHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user20 = User.create(email: "email20@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user20.photo.attach(io: file, filename: 'user20.jpeg', content_type: 'image/jpg')
puts "#{user20} created"

file = URI.open('https://images.unsplash.com/photo-1544717305-2782549b5136?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTJ8fHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user21 = User.create(email: "email21@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user21.photo.attach(io: file, filename: 'user21.jpeg', content_type: 'image/jpg')
puts "#{user21} created"

file = URI.open('https://images.unsplash.com/photo-1504439904031-93ded9f93e4e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTF8fHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user22 = User.create(email: "email22@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user22.photo.attach(io: file, filename: 'user22.jpeg', content_type: 'image/jpg')
puts "#{user22} created"

file = URI.open('https://images.unsplash.com/photo-1489980557514-251d61e3eeb6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTV8fHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user23 = User.create(email: "email23@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user23.photo.attach(io: file, filename: 'user23.jpeg', content_type: 'image/jpg')
puts "#{user23} created"

file = URI.open('https://images.unsplash.com/photo-1523824921871-d6f1a15151f1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTl8fHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user24 = User.create(email: "email24@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user24.photo.attach(io: file, filename: 'user24.jpeg', content_type: 'image/jpg')
puts "#{user24} created"

file = URI.open('https://images.unsplash.com/photo-1521119989659-a83eee488004?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjZ8fHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user25 = User.create(email: "email25@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user25.photo.attach(io: file, filename: 'user25.jpeg', content_type: 'image/jpg')
puts "#{user25} created"

file = URI.open('https://images.unsplash.com/photo-1450297350677-623de575f31c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NzF8fHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user26 = User.create(email: "email26@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user26.photo.attach(io: file, filename: 'user26.jpeg', content_type: 'image/jpg')
puts "#{user26} created"

file = URI.open('https://images.unsplash.com/photo-1489424731084-a5d8b219a5bb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Njh8fHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user27 = User.create(email: "email27@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user27.photo.attach(io: file, filename: 'user27.jpeg', content_type: 'image/jpg')
puts "#{user27} created"

file = URI.open('https://images.unsplash.com/photo-1567532939604-b6b5b0db2604?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NzN8fHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user28 = User.create(email: "email28@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user28.photo.attach(io: file, filename: 'user28.jpeg', content_type: 'image/jpg')
puts "#{user28} created"

file = URI.open('https://images.unsplash.com/photo-1481824429379-07aa5e5b0739?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8ODd8fHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user29 = User.create(email: "email29@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user29.photo.attach(io: file, filename: 'user29.jpeg', content_type: 'image/jpg')
puts "#{user29} created"

file = URI.open('https://images.unsplash.com/photo-1548366565-6bbab241282d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8ODl8fHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user30 = User.create(email: "email30@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user30.photo.attach(io: file, filename: 'user30.jpeg', content_type: 'image/jpg')
puts "#{user30} created"

file = URI.open('https://images.unsplash.com/photo-1474176857210-7287d38d27c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OTF8fHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user31 = User.create(email: "email31@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user31.photo.attach(io: file, filename: 'user31.jpeg', content_type: 'image/jpg')
puts "#{user31} created"

file = URI.open('https://images.unsplash.com/photo-1516756587022-7891ad56a8cd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTAwfHxwZW9wbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user32 = User.create(email: "email32@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user32.photo.attach(io: file, filename: 'user32.jpeg', content_type: 'image/jpg')
puts "#{user32} created"

file = URI.open('https://images.unsplash.com/photo-1529068755536-a5ade0dcb4e8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OTl8fHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user33 = User.create(email: "email33@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user33.photo.attach(io: file, filename: 'user33.jpeg', content_type: 'image/jpg')
puts "#{user33} created"

file = URI.open('https://images.unsplash.com/photo-1499996860823-5214fcc65f8f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTEwfHxwZW9wbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user34 = User.create(email: "email34@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user34.photo.attach(io: file, filename: 'user34.jpeg', content_type: 'image/jpg')
puts "#{user34} created"

file = URI.open('https://images.unsplash.com/photo-1517256673644-36ad11246d21?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTE3fHxwZW9wbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user35 = User.create(email: "email35@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user35.photo.attach(io: file, filename: 'user35.jpeg', content_type: 'image/jpg')
puts "#{user35} created"

file = URI.open('https://images.unsplash.com/photo-1508214751196-bcfd4ca60f91?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTI3fHxwZW9wbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user36 = User.create(email: "email36@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user36.photo.attach(io: file, filename: 'user36.jpeg', content_type: 'image/jpg')
puts "#{user36} created"

file = URI.open('https://images.unsplash.com/photo-1542596768-5d1d21f1cf98?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTI5fHxwZW9wbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user37 = User.create(email: "email37@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user37.photo.attach(io: file, filename: 'user37.jpeg', content_type: 'image/jpg')
puts "#{user37} created"

file = URI.open('https://images.unsplash.com/photo-1499155286265-79a9dc9c6380?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTM3fHxwZW9wbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user38 = User.create(email: "email38@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user38.photo.attach(io: file, filename: 'user38.jpeg', content_type: 'image/jpg')
puts "#{user38} created"

file = URI.open('https://images.unsplash.com/photo-1504199367641-aba8151af406?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTMyfHxwZW9wbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user39 = User.create(email: "email39@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user39.photo.attach(io: file, filename: 'user39.jpeg', content_type: 'image/jpg')
puts "#{user39} created"

file = URI.open('https://images.unsplash.com/photo-1531384441138-2736e62e0919?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTQxfHxwZW9wbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user40 = User.create(email: "email40@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user40.photo.attach(io: file, filename: 'user40.jpeg', content_type: 'image/jpg')
puts "#{user40} created"

file = URI.open('https://images.unsplash.com/photo-1469334031218-e382a71b716b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTQ0fHxwZW9wbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user41 = User.create(email: "email41@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user41.photo.attach(io: file, filename: 'user41.jpeg', content_type: 'image/jpg')
puts "#{user41} created"

file = URI.open('https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTUwfHxwZW9wbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user42 = User.create(email: "email42@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user42.photo.attach(io: file, filename: 'user42.jpeg', content_type: 'image/jpg')
puts "#{user42} created"

file = URI.open('https://images.unsplash.com/photo-1487412720507-e7ab37603c6f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTYyfHxwZW9wbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user43 = User.create(email: "email43@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user43.photo.attach(io: file, filename: 'user43.jpeg', content_type: 'image/jpg')
puts "#{user43} created"

file = URI.open('https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTU4fHxwZW9wbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user44 = User.create(email: "email44@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user44.photo.attach(io: file, filename: 'user44.jpeg', content_type: 'image/jpg')
puts "#{user44} created"

file = URI.open('https://images.unsplash.com/photo-1603258339703-9c33e0733e4b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YmVhdXRpZnVsJTIwd29tZW58ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user45 = User.create(email: "email45@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user45.photo.attach(io: file, filename: 'user45.jpeg', content_type: 'image/jpg')
puts "#{user45} created"

file = URI.open('https://images.unsplash.com/photo-1613876215075-276fd62c89a4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8YmVhdXRpZnVsJTIwd29tZW58ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user46 = User.create(email: "email46@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user46.photo.attach(io: file, filename: 'user46.jpeg', content_type: 'image/jpg')
puts "#{user46} created"

file = URI.open('https://images.unsplash.com/photo-1617077644557-64be144aa306?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8YmVhdXRpZnVsJTIwd29tZW58ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user47 = User.create(email: "email47@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user47.photo.attach(io: file, filename: 'user47.jpeg', content_type: 'image/jpg')
puts "#{user47} created"

file = URI.open('https://images.unsplash.com/photo-1619286188088-de820bdc1230?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8YmVhdXRpZnVsJTIwd29tZW58ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user48 = User.create(email: "email48@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user48.photo.attach(io: file, filename: 'user48.jpeg', content_type: 'image/jpg')
puts "#{user48} created"

file = URI.open('https://images.unsplash.com/photo-1605405400344-fbde1d54e9af?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGJlYXV0aWZ1bCUyMHdvbWVufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60')
user49 = User.create(email: "email49@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user49.photo.attach(io: file, filename: 'user49.jpeg', content_type: 'image/jpg')
puts "#{user49} created"

file = URI.open('https://images.unsplash.com/photo-1586057710892-4f30aed09a20?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzJ8fGJlYXV0aWZ1bCUyMHdvbWVufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60')
user50 = User.create(email: "email50@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user50.photo.attach(io: file, filename: 'user50.jpeg', content_type: 'image/jpg')
puts "#{user50} created"

file = URI.open('https://images.unsplash.com/photo-1533778222324-be782ae129e4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzl8fGJlYXV0aWZ1bCUyMHdvbWVufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60')
user51 = User.create(email: "email51@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user51.photo.attach(io: file, filename: 'user51.jpeg', content_type: 'image/jpg')
puts "#{user51} created"

file = URI.open('https://images.unsplash.com/photo-1598587741472-cb50fcba42be?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDR8fGJlYXV0aWZ1bCUyMHdvbWVufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60')
user52 = User.create(email: "email52@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user52.photo.attach(io: file, filename: 'user52.jpeg', content_type: 'image/jpg')
puts "#{user52} created"

file = URI.open('https://images.unsplash.com/photo-1534030347209-467a5b0ad3e6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8YmVhdXRpZnVsJTIwbWVufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60')
user53 = User.create(email: "email53@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user53.photo.attach(io: file, filename: 'user53.jpeg', content_type: 'image/jpg')
puts "#{user53} created"

file = URI.open('https://images.unsplash.com/photo-1541119304694-387204bc1d03?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGJlYXV0aWZ1bCUyMG1lbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user54 = User.create(email: "email54@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user54.photo.attach(io: file, filename: 'user54.jpeg', content_type: 'image/jpg')
puts "#{user54} created"

file = URI.open('https://images.unsplash.com/photo-1593757147298-e064ed1419e5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjJ8fGJlYXV0aWZ1bCUyMG1lbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user55 = User.create(email: "email55@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user55.photo.attach(io: file, filename: 'user55.jpeg', content_type: 'image/jpg')
puts "#{user55} created"

file = URI.open('https://images.unsplash.com/photo-1586057708056-6149710c46cd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzZ8fGJlYXV0aWZ1bCUyMG1lbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user56 = User.create(email: "email56@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user56.photo.attach(io: file, filename: 'user56.jpeg', content_type: 'image/jpg')
puts "#{user56} created"

file = URI.open('https://images.unsplash.com/photo-1563452965085-2e77e5bf2607?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDN8fGJlYXV0aWZ1bCUyMG1lbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user57 = User.create(email: "email57@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user57.photo.attach(io: file, filename: 'user57.jpeg', content_type: 'image/jpg')
puts "#{user57} created"

file = URI.open('https://images.unsplash.com/photo-1552831682-c5c7fc3a5e9d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTl8fGJlYXV0aWZ1bCUyMG1lbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user58 = User.create(email: "email58@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user58.photo.attach(io: file, filename: 'user58.jpeg', content_type: 'image/jpg')
puts "#{user58} created"

file = URI.open('https://images.unsplash.com/photo-1644424235048-ccc07c1cd428?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OTR8fGJlYXV0aWZ1bCUyMG1lbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user59 = User.create(email: "email59@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user59.photo.attach(io: file, filename: 'user59.jpeg', content_type: 'image/jpg')
puts "#{user59} created"

file = URI.open('https://images.unsplash.com/photo-1513135343800-2ffe94ba4f98?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8bmF0dXJhbCUyMHdvbWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60')
user60 = User.create(email: "email60@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user60.photo.attach(io: file, filename: 'user60.jpeg', content_type: 'image/jpg')
puts "#{user60} created"

file = URI.open('https://images.unsplash.com/photo-1539702169544-c0bcff87fcd7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fG5hdHVyYWwlMjB3b21hbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user61 = User.create(email: "email61@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user61.photo.attach(io: file, filename: 'user61.jpeg', content_type: 'image/jpg')
puts "#{user61} created"

file = URI.open('https://images.unsplash.com/photo-1599842057473-784525d0d4ca?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8ZmF0JTIwd29tYW58ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user62 = User.create(email: "email62@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user62.photo.attach(io: file, filename: 'user62.jpeg', content_type: 'image/jpg')
puts "#{user62} created"

file = URI.open('https://images.unsplash.com/photo-1573878221776-5f906608fd5a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8ZmF0JTIwd29tYW58ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user63 = User.create(email: "email63@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user63.photo.attach(io: file, filename: 'user63.jpeg', content_type: 'image/jpg')
puts "#{user63} created"

file = URI.open('https://images.unsplash.com/photo-1573497019584-769c02ee89f5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fGZhdCUyMHdvbWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60')
user64 = User.create(email: "email64@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user64.photo.attach(io: file, filename: 'user64.jpeg', content_type: 'image/jpg')
puts "#{user64} created"

file = URI.open('https://images.unsplash.com/photo-1568003524782-c481a0546f80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDF8fGZhdCUyMHdvbWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60')
user65 = User.create(email: "email65@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user65.photo.attach(io: file, filename: 'user65.jpeg', content_type: 'image/jpg')
puts "#{user65} created"

file = URI.open('https://images.unsplash.com/photo-1517677129300-07b130802f46?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fHNraW5ueSUyMHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user66 = User.create(email: "email66@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user66.photo.attach(io: file, filename: 'user66.jpeg', content_type: 'image/jpg')
puts "#{user66} created"

file = URI.open('https://images.unsplash.com/photo-1514929781313-76fcbb2136b6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fHNraW5ueSUyMHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user67 = User.create(email: "email67@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user67.photo.attach(io: file, filename: 'user67.jpeg', content_type: 'image/jpg')
puts "#{user67} created"

file = URI.open('https://images.unsplash.com/photo-1520975661595-6453be3f7070?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHNraW5ueSUyMHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user68 = User.create(email: "email68@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user68.photo.attach(io: file, filename: 'user68.jpeg', content_type: 'image/jpg')
puts "#{user68} created"

file = URI.open('https://images.unsplash.com/photo-1524638431109-93d95c968f03?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fHNraW5ueSUyMHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user69 = User.create(email: "email69@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user69.photo.attach(io: file, filename: 'user69.jpeg', content_type: 'image/jpg')
puts "#{user69} created"

file = URI.open('https://images.unsplash.com/photo-1472806426350-603610d85659?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjh8fHNraW5ueSUyMHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user70 = User.create(email: "email70@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user70.photo.attach(io: file, filename: 'user70.jpeg', content_type: 'image/jpg')
puts "#{user70} created"

file = URI.open('https://images.unsplash.com/photo-1488716820095-cbe80883c496?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzB8fHNraW5ueSUyMHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user71 = User.create(email: "email71@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user71.photo.attach(io: file, filename: 'user71.jpeg', content_type: 'image/jpg')
puts "#{user71} created"

file = URI.open('https://images.unsplash.com/photo-1539125530496-3ca408f9c2d9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzR8fHNraW5ueSUyMHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user72 = User.create(email: "email72@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user72.photo.attach(io: file, filename: 'user72.jpeg', content_type: 'image/jpg')
puts "#{user72} created"

file = URI.open('https://images.unsplash.com/photo-1533729590644-695ded775a63?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDB8fHNraW5ueSUyMHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user73 = User.create(email: "email73@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user73.photo.attach(io: file, filename: 'user73.jpeg', content_type: 'image/jpg')
puts "#{user73} created"

file = URI.open('https://images.unsplash.com/photo-1591713477709-06cac59333d4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDZ8fHNraW5ueSUyMHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user74 = User.create(email: "email74@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user74.photo.attach(io: file, filename: 'user74.jpeg', content_type: 'image/jpg')
puts "#{user74} created"

file = URI.open('https://images.unsplash.com/photo-1578774296842-c45e472b3028?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTJ8fHNraW5ueSUyMHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user75 = User.create(email: "email75@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user75.photo.attach(io: file, filename: 'user75.jpeg', content_type: 'image/jpg')
puts "#{user75} created"

file = URI.open('https://images.unsplash.com/photo-1512087321902-02867cabd81a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nzh8fHNraW5ueSUyMHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user76 = User.create(email: "email76@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user76.photo.attach(io: file, filename: 'user76.jpeg', content_type: 'image/jpg')
puts "#{user76} created"

file = URI.open('https://images.unsplash.com/photo-1574784619102-f7e342f21aa0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8ODh8fHNraW5ueSUyMHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user77 = User.create(email: "email77@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user77.photo.attach(io: file, filename: 'user77.jpeg', content_type: 'image/jpg')
puts "#{user77} created"

file = URI.open('https://images.unsplash.com/photo-1595784279873-62b38b5e7cd6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTAzfHxza2lubnklMjBwZW9wbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user78 = User.create(email: "email78@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user78.photo.attach(io: file, filename: 'user78.jpeg', content_type: 'image/jpg')
puts "#{user78} created"

file = URI.open('https://images.unsplash.com/photo-1588716764186-b5b184eae705?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTA3fHxza2lubnklMjBwZW9wbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user79 = User.create(email: "email79@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user79.photo.attach(io: file, filename: 'user79.jpeg', content_type: 'image/jpg')
puts "#{user79} created"

file = URI.open('https://images.unsplash.com/photo-1584897129667-cabdff21142f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTA2fHxza2lubnklMjBwZW9wbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user80 = User.create(email: "email80@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user80.photo.attach(io: file, filename: 'user80.jpeg', content_type: 'image/jpg')
puts "#{user80} created"

puts "*****ALL USERS CREATED*****"

sleep 5
puts " "
puts " "
puts " "
puts " "
puts " "

puts "\/\/\/\/\/\/\/\/--CREATING FRIENDSHIPS--\/\/\/\/\/\/\/\/"

sleep 5
puts " "
puts " "
puts " "
puts " "
puts " "

friendship = Friendship.create(initiator: user1, contact: user2)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user1, contact: user3)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user1, contact: user4)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user1, contact: user5)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user1, contact: user6)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user2, contact: user7)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user2, contact: user8)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user2, contact: user9)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user2, contact: user10)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user2, contact: user11)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user3, contact: user12)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user3, contact: user13)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user3, contact: user14)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user3, contact: user15)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user3, contact: user16)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user4, contact: user17)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user4, contact: user18)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user4, contact: user19)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user4, contact: user20)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user4, contact: user21)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user5, contact: user22)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user5, contact: user23)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user5, contact: user24)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user5, contact: user25)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user5, contact: user26)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user6, contact: user27)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user6, contact: user28)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user6, contact: user29)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user6, contact: user30)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user6, contact: user31)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user7, contact: user32)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user7, contact: user33)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user7, contact: user34)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user7, contact: user35)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user7, contact: user36)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user8, contact: user37)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user8, contact: user38)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user8, contact: user39)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user8, contact: user40)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user8, contact: user41)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user9, contact: user42)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user9, contact: user43)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user9, contact: user44)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user9, contact: user45)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user9, contact: user46)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user9, contact: user47)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user10, contact: user48)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user10, contact: user49)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user10, contact: user50)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user10, contact: user51)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user10, contact: user52)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user11, contact: user53)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user11, contact: user54)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user11, contact: user55)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user11, contact: user56)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user11, contact: user57)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user12, contact: user58)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user12, contact: user59)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user12, contact: user60)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user12, contact: user61)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user12, contact: user62)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user13, contact: user63)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user13, contact: user64)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user13, contact: user65)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user13, contact: user66)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user13, contact: user67)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user14, contact: user68)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user14, contact: user69)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user14, contact: user70)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user14, contact: user71)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user14, contact: user72)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user15, contact: user73)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user15, contact: user74)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user15, contact: user75)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user15, contact: user76)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user15, contact: user77)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user16, contact: user78)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user16, contact: user79)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user16, contact: user80)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user17, contact: user2)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user17, contact: user3)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user17, contact: user4)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user18, contact: user5)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user18, contact: user6)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user18, contact: user7)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user19, contact: user8)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user19, contact: user9)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user19, contact: user10)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user20, contact: user11)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user20, contact: user12)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user20, contact: user13)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user20, contact: user14)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user21, contact: user15)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user21, contact: user16)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user21, contact: user17)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user22, contact: user18)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user22, contact: user19)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user22, contact: user20)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user23, contact: user21)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user23, contact: user22)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user23, contact: user24)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user24, contact: user22)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user24, contact: user25)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user24, contact: user26)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user25, contact: user27)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user25, contact: user28)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user25, contact: user29)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user26, contact: user30)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user26, contact: user31)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user26, contact: user32)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user27, contact: user33)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user27, contact: user34)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user27, contact: user35)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user28, contact: user36)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user28, contact: user37)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user28, contact: user38)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user29, contact: user39)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user29, contact: user40)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user29, contact: user41)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user30, contact: user42)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user30, contact: user43)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user30, contact: user44)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user31, contact: user45)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user31, contact: user46)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user31, contact: user47)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user32, contact: user48)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user32, contact: user49)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user32, contact: user50)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user33, contact: user51)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user33, contact: user52)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user33, contact: user53)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user34, contact: user54)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user34, contact: user55)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user34, contact: user56)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user35, contact: user57)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user35, contact: user58)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user35, contact: user59)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user36, contact: user60)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user36, contact: user61)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user36, contact: user62)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user37, contact: user63)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user37, contact: user64)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user37, contact: user65)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user38, contact: user66)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user38, contact: user67)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user38, contact: user68)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user39, contact: user69)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user39, contact: user70)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user39, contact: user71)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user40, contact: user72)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user40, contact: user73)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user40, contact: user74)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user41, contact: user75)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user41, contact: user76)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user41, contact: user77)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user41, contact: user78)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user41, contact: user79)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user41, contact: user80)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user42, contact: user30)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user42, contact: user31)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user42, contact: user32)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user42, contact: user33)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user43, contact: user34)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user43, contact: user35)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user43, contact: user36)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user43, contact: user37)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user44, contact: user38)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user44, contact: user39)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user44, contact: user40)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user44, contact: user41)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user45, contact: user42)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user45, contact: user43)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user45, contact: user44)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user45, contact: user1)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user46, contact: user1)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user46, contact: user47)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user46, contact: user48)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user46, contact: user49)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user47, contact: user50)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user47, contact: user51)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user47, contact: user52)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user47, contact: user53)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user48, contact: user54)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user48, contact: user55)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user48, contact: user56)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user48, contact: user57)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user49, contact: user58)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user49, contact: user59)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user49, contact: user60)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user49, contact: user61)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user50, contact: user62)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user50, contact: user63)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user50, contact: user64)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user51, contact: user65)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user51, contact: user66)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user51, contact: user67)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user51, contact: user68)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user52, contact: user69)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user52, contact: user70)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user52, contact: user71)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user52, contact: user72)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user53, contact: user73)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user53, contact: user74)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user53, contact: user75)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user53, contact: user76)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user54, contact: user77)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user54, contact: user78)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user54, contact: user79)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user54, contact: user80)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user55, contact: user2)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user55, contact: user3)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user55, contact: user4)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user55, contact: user5)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user55, contact: user6)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user56, contact: user7)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user56, contact: user8)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user56, contact: user9)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user56, contact: user10)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user56, contact: user11)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user57, contact: user12)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user57, contact: user13)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user57, contact: user14)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user57, contact: user15)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user57, contact: user16)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user58, contact: user17)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user58, contact: user18)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user58, contact: user19)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user58, contact: user20)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user58, contact: user21)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user59, contact: user22)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user59, contact: user23)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user59, contact: user24)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user59, contact: user25)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user59, contact: user26)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user60, contact: user27)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user60, contact: user29)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user60, contact: user30)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user60, contact: user31)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user60, contact: user32)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user61, contact: user33)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user61, contact: user34)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user61, contact: user35)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user61, contact: user36)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user61, contact: user37)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user62, contact: user38)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user62, contact: user39)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user62, contact: user40)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user62, contact: user41)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user62, contact: user42)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user63, contact: user43)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user63, contact: user44)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user63, contact: user45)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user63, contact: user46)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user63, contact: user47)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user64, contact: user48)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user64, contact: user49)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user64, contact: user50)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user64, contact: user51)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user64, contact: user52)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user65, contact: user53)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user65, contact: user54)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user65, contact: user55)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user65, contact: user56)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user65, contact: user57)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user66, contact: user58)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user66, contact: user59)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user66, contact: user60)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user66, contact: user61)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user66, contact: user62)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user67, contact: user63)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user67, contact: user64)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user67, contact: user65)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user67, contact: user66)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user67, contact: user1)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user68, contact: user1)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user68, contact: user69)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user68, contact: user70)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user68, contact: user71)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user68, contact: user72)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user69, contact: user73)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user69, contact: user74)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user69, contact: user75)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user69, contact: user76)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user69, contact: user77)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user70, contact: user78)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user70, contact: user79)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user70, contact: user80)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user70, contact: user30)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user70, contact: user31)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user71, contact: user32)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user71, contact: user33)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user71, contact: user34)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user71, contact: user35)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user71, contact: user36)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user72, contact: user37)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user72, contact: user38)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user72, contact: user39)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user72, contact: user40)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user72, contact: user41)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user73, contact: user42)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user73, contact: user43)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user73, contact: user44)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user73, contact: user45)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user73, contact: user46)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user74, contact: user47)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user74, contact: user48)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user74, contact: user49)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user74, contact: user50)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user74, contact: user51)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user75, contact: user52)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user75, contact: user53)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user75, contact: user54)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user75, contact: user55)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user75, contact: user56)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user76, contact: user57)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user76, contact: user58)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user76, contact: user59)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user76, contact: user60)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user76, contact: user61)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user77, contact: user62)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user77, contact: user63)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user77, contact: user64)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user77, contact: user65)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user77, contact: user66)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user78, contact: user67)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user78, contact: user68)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user78, contact: user69)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user78, contact: user70)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user78, contact: user71)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user79, contact: user72)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user79, contact: user73)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user79, contact: user74)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user79, contact: user75)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user79, contact: user76)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user80, contact: user77)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user80, contact: user78)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user80, contact: user79)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user80, contact: user2)
puts "Created #{friendship}"
friendship = Friendship.create(initiator: user80, contact: user1)
puts "Created #{friendship}"

puts "*****ALL FRIENDSHIPS CREATED*****"

sleep 5
puts " "
puts " "
puts " "
puts " "
puts " "

puts "\/\/\/\/\/\/\/\/--CREATING STREAMING SERVICES--\/\/\/\/\/\/\/\/"

sleep 5
puts " "
puts " "
puts " "
puts " "
puts " "

StreamingService.create(
  full_provider: 'Netflix',
  provider: 'netflix',
  icon: 'https://image.tmdb.org/t/p/original/t2yyOv40HZeVlLjYsCsPHnWLk4W.jpg'
)
StreamingService.create(
  full_provider: 'Amazon Prime Video',
  provider: 'prime',
  icon: 'https://image.tmdb.org/t/p/original/emthp39XA2YScoYL1p0sdbAH2WA.jpg'
)
StreamingService.create(
  full_provider: 'Apple TV',
  provider: 'apple',
  icon: 'https://image.tmdb.org/t/p/original/peURlLlr8jggOwK53fJ5wdQl05y.jpg'
)
StreamingService.create(
  full_provider: 'Disney Plus',
  provider: 'disney',
  icon: 'https://image.tmdb.org/t/p/original/7rwgEs15tFwyR9NPQ5vpzxTj19Q.jpg'
)
StreamingService.create(
  full_provider: 'Now TV',
  provider: 'now',
  icon: 'https://image.tmdb.org/t/p/original/rsXaDmBzlHgYrtv1o2NsRFctM5t.jpg'
)
StreamingService.create(
  full_provider: 'BBC Iplayer',
  provider: 'iplayer',
  icon: 'https://image.tmdb.org/t/p/original/zY5SmHyAy1CoA3AfQpf58QnShnw.jpg'
)
StreamingService.create(
  full_provider: 'All 4',
  provider: 'all4',
  icon: 'https://image.tmdb.org/t/p/original/kJ9GcmYk5zJ9nJtVX8XjDo9geIM.jpg'
)
StreamingService.create(
  full_provider: 'BritBox',
  provider: 'britbox',
  icon: 'https://image.tmdb.org/t/p/original/aGIS8maihUm60A3moKYD9gfYHYT.jpg'
)
puts "*****STREAMING SERVICES CREATED*****"

sleep 5
puts " "
puts " "
puts " "
puts " "
puts " "

puts "\/\/\/\/\/\/\/\/--CALLING MOVIE API'S FOR CONTENT CREATION--\/\/\/\/\/\/\/\/"

sleep 5
puts " "
puts " "
puts " "
puts " "
puts " "

movie_url = 'https://api.themoviedb.org/3/trending/movie/week?api_key='+ENV['API_KEY']+'&language=en-US'
# movie_url = 'https://api.themoviedb.org/3/movie/popular?api_key='+ENV['API_KEY']+'&language=en-US'
# movie_url = 'https://api.themoviedb.org/3/movie/top_rated?api_key='+ENV['API_KEY']+'&language=en-US'

4.times do |m|
  contents = JSON.parse(URI.open("#{movie_url}&page=#{m + 1}").read)['results']

  contents.each do |content|


    # if content['release_date'].to_i < 2022

    base_poster_url = 'https://image.tmdb.org/t/p/w342'
    data = JSON.parse(URI.open("https://api.themoviedb.org/3/movie/#{content['id']}?api_key="+ENV['API_KEY']+"&language=en-US").read)
    results = JSON.parse(URI.open("https://api.themoviedb.org/3/movie/#{content['id']}/watch/providers?api_key="+ENV['API_KEY']+"&language=en-US&watch_region=GB").read)['results']

      if results != {} && results["GB"] && results['GB']["flatrate"]  # This filters out results where no streaming services are available or the movie is too new.

        # rapid_url = URI("https://streaming-availability.p.rapidapi.com/get/ultra?country=gb&output_language=en&tmdb_id=movie%2F#{content['id']}")
        rapid_url = URI("https://streaming-availability.p.rapidapi.com/get/basic?country=gb&tmdb_id=movie%2F#{content['id']}&output_language=en")

        http = Net::HTTP.new(rapid_url.host, rapid_url.port)
        http.use_ssl = true
        http.verify_mode = OpenSSL::SSL::VERIFY_NONE

        request = Net::HTTP::Get.new(rapid_url)
        request["X-RapidAPI-Key"] = ENV['RAPID_API']
        request["X-RapidAPI-Host"] = 'streaming-availability.p.rapidapi.com'

        response = http.request(request)
        # puts response.code         This is to show if the http response is valid
        unless response.code == "404"
          hash = JSON.parse(response.read_body)
          if hash["streamingInfo"] != {}
          puts hash["streamingInfo"]
          item = Content.create(
            imdb_id: content['id'],
            title: content['original_title'],
            description: content['overview'],
            poster: "#{base_poster_url}#{content['poster_path']}",
            rating: content['vote_average'],
            content_type: content['media_type'],
            watch_providers: results.dig("GB", "flatrate")&.map { |provider| provider["provider_name"] }, # iterate through providers/streaming services
            duration: data['runtime'],
            genres: data.dig("genres")&.map { |genre| genre["name"] } # iterate through genres services
          )
            hash["streamingInfo"].keys.each do |key|
              info = StreamingService.find_by(provider: key)
              puts info
                if info
                  ContentStreamingService.create!(
                    content: item,
                    streaming_service: info,
                    content_link: hash["streamingInfo"][key]["gb"]["link"]
                  )
                  puts "created Streaming Service #{content["streaming_service"]}"
                end
            end
          end
        end

      puts "TITLE: #{content['original_title']}"
      puts "TMDB_ID: #{content['id']}"
      puts "DURATION: #{data['runtime']}"
      puts "GENRES: #{data.dig("genres")&.map { |genre| genre["name"] }}"
      puts "RATING: #{content['vote_average']}"
      puts "CONTENT_TYPE: #{content['media_type']}"
      puts "WATCH_PROVIDERS: #{results.dig("GB", "flatrate")&.map { |provider| provider["provider_name"] }}"

      end
  end
end

puts "*****MOVIE CONTENT CREATED*****"

sleep 5
puts " "
puts " "
puts " "
puts " "
puts " "

puts "\/\/\/\/\/\/\/\/--CALLING TV SHOW API's FOR CONTENT CREATION--\/\/\/\/\/\/\/\/"

sleep 5
puts " "
puts " "
puts " "
puts " "
puts " "

tv_url = 'https://api.themoviedb.org/3/trending/tv/week?api_key='+ENV['API_KEY']+'&language=en-US'
3.times do |m|
  contents = JSON.parse(URI.open("#{tv_url}&page=#{m + 1}").read)['results']
  contents.each do |content|
    base_poster_url = 'https://image.tmdb.org/t/p/w342'
    data = JSON.parse(URI.open("https://api.themoviedb.org/3/tv/#{content['id']}?api_key="+ENV['API_KEY']+"&language=en-US").read)
    results = JSON.parse(URI.open("https://api.themoviedb.org/3/tv/#{content['id']}/watch/providers?api_key="+ENV['API_KEY']+"&language=en-US&watch_region=GB").read)['results']

    if results != {} && results["GB"] && results['GB']["flatrate"] # This filters out results where no streaming services are available or the tv show is too new.

      # rapid_url = URI("https://streaming-availability.p.rapidapi.com/get/ultra?country=gb&output_language=en&tmdb_id=movie%2F#{content['id']}")
      rapid_url = URI("https://streaming-availability.p.rapidapi.com/get/basic?country=gb&tmdb_id=tv%2F#{content['id']}&output_language=en")

      http = Net::HTTP.new(rapid_url.host, rapid_url.port)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE

      request = Net::HTTP::Get.new(rapid_url)
      request["X-RapidAPI-Key"] = ENV['RAPID_API']
      request["X-RapidAPI-Host"] = 'streaming-availability.p.rapidapi.com'

      response = http.request(request)
      # puts response.code         This is to show if the http response is valid
      unless response.code == "404"
        hash = JSON.parse(response.read_body)
        puts hash["streamingInfo"]
        if hash["streamingInfo"] != {}
          item = Content.create(
            imdb_id: content['id'],
            title: content['original_name'],
            description: content['overview'],
            poster: "#{base_poster_url}#{content['poster_path']}",
            rating: content['vote_average'],
            content_type: content['media_type'],
            watch_providers: results.dig("GB", "flatrate")&.map { |provider| provider["provider_name"] }, # iterate through providers/streaming services
            duration: data['episode_run_time'][0],
            genres: data.dig("genres")&.map { |genre| genre["name"] } # iterate through genres services
          )
          hash["streamingInfo"].keys.each do |key|
            info = StreamingService.find_by(provider: key)
            puts info
              if info
                ContentStreamingService.create!(
                  content: item,
                  streaming_service: info,
                  content_link: hash["streamingInfo"][key]["gb"]["link"]
                )
                puts "created Streaming Service #{content["streaming_service"]}"
              end
          end
        end
      end
      puts "TITLE: #{content['original_name']}"
      puts "TMDB_ID: #{content['id']}"
      puts "DURATION: #{data['episode_run_time'][0]}"
      puts "GENRES: #{data.dig("genres")&.map { |genre| genre["name"] }}"
      puts "RATING: #{content['vote_average']}"
      puts "CONTENT_TYPE: #{content['media_type']}"
      puts "TMDB-STREAMING_PROVIDERS: #{results.dig("GB", "flatrate")&.map { |provider| provider["provider_name"] }}"
    end
  end
end
puts "*****TV SHOWS CONTENT CREATED*****"

sleep 5
puts " "
puts " "
puts " "
puts " "
puts " "

puts "\/\/\/\/\/\/\/\/--LIKING CONTENT FOR USERS--\/\/\/\/\/\/\/\/"

sleep 5
puts " "
puts " "
puts " "
puts " "
puts " "

like = UserContent.create(user_id: 1, liked: true, content_id: 3)
puts "#{like} created"
like = UserContent.create(user_id: 1, liked: true, content_id: 5)
puts "#{like} created"
like = UserContent.create(user_id: 1, liked: true, content_id: 9)
puts "#{like} created"
like = UserContent.create(user_id: 1, liked: true, content_id: 11)
puts "#{like} created"
like = UserContent.create(user_id: 1, liked: true, content_id: 13)
puts "#{like} created"
like = UserContent.create(user_id: 2, liked: true, content_id: 3)
puts "#{like} created"
like = UserContent.create(user_id: 2, liked: true, content_id: 5)
puts "#{like} created"
like = UserContent.create(user_id: 2, liked: true, content_id: 9)
puts "#{like} created"
like = UserContent.create(user_id: 2, liked: true, content_id: 11)
puts "#{like} created"
like = UserContent.create(user_id: 2, liked: true, content_id: 13)
puts "#{like} created"
like = UserContent.create(user_id: 3, liked: true, content_id: 3)
puts "#{like} created"
like = UserContent.create(user_id: 3, liked: true, content_id: 5)
puts "#{like} created"
like = UserContent.create(user_id: 3, liked: true, content_id: 9)
puts "#{like} created"
like = UserContent.create(user_id: 3, liked: true, content_id: 11)
puts "#{like} created"
like = UserContent.create(user_id: 3, liked: true, content_id: 13)
puts "#{like} created"
like = UserContent.create(user_id: 4, liked: true, content_id: 3)
puts "#{like} created"
like = UserContent.create(user_id: 4, liked: true, content_id: 5)
puts "#{like} created"
like = UserContent.create(user_id: 4, liked: true, content_id: 9)
puts "#{like} created"
like = UserContent.create(user_id: 4, liked: true, content_id: 11)
puts "#{like} created"
like = UserContent.create(user_id: 4, liked: true, content_id: 13)
puts "#{like} created"
like = UserContent.create(user_id: 5, liked: true, content_id: 3)
puts "#{like} created"
like = UserContent.create(user_id: 5, liked: true, content_id: 5)
puts "#{like} created"
like = UserContent.create(user_id: 5, liked: true, content_id: 9)
puts "#{like} created"
like = UserContent.create(user_id: 5, liked: true, content_id: 11)
puts "#{like} created"
like = UserContent.create(user_id: 5, liked: true, content_id: 13)
puts "#{like} created"
like = UserContent.create(user_id: 6, liked: true, content_id: 1)
puts "#{like} created"
like = UserContent.create(user_id: 6, liked: true, content_id: 2)
puts "#{like} created"
like = UserContent.create(user_id: 6, liked: true, content_id: 4)
puts "#{like} created"
like = UserContent.create(user_id: 6, liked: true, content_id: 6)
puts "#{like} created"
like = UserContent.create(user_id: 6, liked: true, content_id: 8)
puts "#{like} created"
like = UserContent.create(user_id: 7, liked: true, content_id: 1)
puts "#{like} created"
like = UserContent.create(user_id: 7, liked: true, content_id: 2)
puts "#{like} created"
like = UserContent.create(user_id: 7, liked: true, content_id: 4)
puts "#{like} created"
like = UserContent.create(user_id: 7, liked: true, content_id: 6)
puts "#{like} created"
like = UserContent.create(user_id: 7, liked: true, content_id: 8)
puts "#{like} created"
like = UserContent.create(user_id: 8, liked: true, content_id: 1)
puts "#{like} created"
like = UserContent.create(user_id: 8, liked: true, content_id: 2)
puts "#{like} created"
like = UserContent.create(user_id: 8, liked: true, content_id: 4)
puts "#{like} created"
like = UserContent.create(user_id: 8, liked: true, content_id: 6)
puts "#{like} created"
like = UserContent.create(user_id: 8, liked: true, content_id: 8)
puts "#{like} created"
like = UserContent.create(user_id: 9, liked: true, content_id: 1)
puts "#{like} created"
like = UserContent.create(user_id: 9, liked: true, content_id: 2)
puts "#{like} created"
like = UserContent.create(user_id: 9, liked: true, content_id: 4)
puts "#{like} created"
like = UserContent.create(user_id: 9, liked: true, content_id: 6)
puts "#{like} created"
like = UserContent.create(user_id: 9, liked: true, content_id: 8)
puts "#{like} created"
like = UserContent.create(user_id: 10, liked: true, content_id: 1)
puts "#{like} created"
like = UserContent.create(user_id: 10, liked: true, content_id: 2)
puts "#{like} created"
like = UserContent.create(user_id: 10, liked: true, content_id: 4)
puts "#{like} created"
like = UserContent.create(user_id: 10, liked: true, content_id: 6)
puts "#{like} created"
like = UserContent.create(user_id: 10, liked: true, content_id: 8)
puts "#{like} created"
like = UserContent.create(user_id: 11, liked: true, content_id: 11)
puts "#{like} created"
like = UserContent.create(user_id: 11, liked: true, content_id: 13)
puts "#{like} created"
like = UserContent.create(user_id: 11, liked: true, content_id: 17)
puts "#{like} created"
like = UserContent.create(user_id: 11, liked: true, content_id: 19)
puts "#{like} created"
like = UserContent.create(user_id: 11, liked: true, content_id: 22)
puts "#{like} created"
like = UserContent.create(user_id: 12, liked: true, content_id: 11)
puts "#{like} created"
like = UserContent.create(user_id: 12, liked: true, content_id: 13)
puts "#{like} created"
like = UserContent.create(user_id: 12, liked: true, content_id: 17)
puts "#{like} created"
like = UserContent.create(user_id: 12, liked: true, content_id: 19)
puts "#{like} created"
like = UserContent.create(user_id: 12, liked: true, content_id: 22)
puts "#{like} created"
like = UserContent.create(user_id: 13, liked: true, content_id: 11)
puts "#{like} created"
like = UserContent.create(user_id: 13, liked: true, content_id: 13)
puts "#{like} created"
like = UserContent.create(user_id: 13, liked: true, content_id: 17)
puts "#{like} created"
like = UserContent.create(user_id: 13, liked: true, content_id: 19)
puts "#{like} created"
like = UserContent.create(user_id: 13, liked: true, content_id: 22)
puts "#{like} created"
like = UserContent.create(user_id: 14, liked: true, content_id: 11)
puts "#{like} created"
like = UserContent.create(user_id: 14, liked: true, content_id: 13)
puts "#{like} created"
like = UserContent.create(user_id: 14, liked: true, content_id: 17)
puts "#{like} created"
like = UserContent.create(user_id: 14, liked: true, content_id: 19)
puts "#{like} created"
like = UserContent.create(user_id: 14, liked: true, content_id: 22)
puts "#{like} created"
like = UserContent.create(user_id: 15, liked: true, content_id: 11)
puts "#{like} created"
like = UserContent.create(user_id: 15, liked: true, content_id: 13)
puts "#{like} created"
like = UserContent.create(user_id: 15, liked: true, content_id: 17)
puts "#{like} created"
like = UserContent.create(user_id: 15, liked: true, content_id: 19)
puts "#{like} created"
like = UserContent.create(user_id: 15, liked: true, content_id: 22)
puts "#{like} created"
like = UserContent.create(user_id: 16, liked: true, content_id: 11)
puts "#{like} created"
like = UserContent.create(user_id: 16, liked: true, content_id: 13)
puts "#{like} created"
like = UserContent.create(user_id: 16, liked: true, content_id: 17)
puts "#{like} created"
like = UserContent.create(user_id: 16, liked: true, content_id: 19)
puts "#{like} created"
like = UserContent.create(user_id: 16, liked: true, content_id: 22)
puts "#{like} created"
like = UserContent.create(user_id: 17, liked: true, content_id: 11)
puts "#{like} created"
like = UserContent.create(user_id: 17, liked: true, content_id: 13)
puts "#{like} created"
like = UserContent.create(user_id: 17, liked: true, content_id: 17)
puts "#{like} created"
like = UserContent.create(user_id: 17, liked: true, content_id: 19)
puts "#{like} created"
like = UserContent.create(user_id: 17, liked: true, content_id: 22)
puts "#{like} created"
like = UserContent.create(user_id: 18, liked: true, content_id: 11)
puts "#{like} created"
like = UserContent.create(user_id: 18, liked: true, content_id: 13)
puts "#{like} created"
like = UserContent.create(user_id: 18, liked: true, content_id: 17)
puts "#{like} created"
like = UserContent.create(user_id: 18, liked: true, content_id: 19)
puts "#{like} created"
like = UserContent.create(user_id: 18, liked: true, content_id: 22)
puts "#{like} created"
like = UserContent.create(user_id: 19, liked: true, content_id: 11)
puts "#{like} created"
like = UserContent.create(user_id: 19, liked: true, content_id: 13)
puts "#{like} created"
like = UserContent.create(user_id: 19, liked: true, content_id: 17)
puts "#{like} created"
like = UserContent.create(user_id: 19, liked: true, content_id: 19)
puts "#{like} created"
like = UserContent.create(user_id: 19, liked: true, content_id: 22)
puts "#{like} created"
like = UserContent.create(user_id: 20, liked: true, content_id: 24)
puts "#{like} created"
like = UserContent.create(user_id: 20, liked: true, content_id: 26)
puts "#{like} created"
like = UserContent.create(user_id: 20, liked: true, content_id: 28)
puts "#{like} created"
like = UserContent.create(user_id: 20, liked: true, content_id: 30)
puts "#{like} created"
like = UserContent.create(user_id: 20, liked: true, content_id: 32)
puts "#{like} created"
like = UserContent.create(user_id: 21, liked: true, content_id: 3)
puts "#{like} created"
like = UserContent.create(user_id: 21, liked: true, content_id: 5)
puts "#{like} created"
like = UserContent.create(user_id: 21, liked: true, content_id: 9)
puts "#{like} created"
like = UserContent.create(user_id: 21, liked: true, content_id: 11)
puts "#{like} created"
like = UserContent.create(user_id: 21, liked: true, content_id: 13)
puts "#{like} created"
like = UserContent.create(user_id: 22, liked: true, content_id: 3)
puts "#{like} created"
like = UserContent.create(user_id: 22, liked: true, content_id: 5)
puts "#{like} created"
like = UserContent.create(user_id: 22, liked: true, content_id: 9)
puts "#{like} created"
like = UserContent.create(user_id: 22, liked: true, content_id: 11)
puts "#{like} created"
like = UserContent.create(user_id: 22, liked: true, content_id: 13)
puts "#{like} created"
like = UserContent.create(user_id: 23, liked: true, content_id: 3)
puts "#{like} created"
like = UserContent.create(user_id: 23, liked: true, content_id: 5)
puts "#{like} created"
like = UserContent.create(user_id: 23, liked: true, content_id: 9)
puts "#{like} created"
like = UserContent.create(user_id: 23, liked: true, content_id: 11)
puts "#{like} created"
like = UserContent.create(user_id: 23, liked: true, content_id: 13)
puts "#{like} created"
like = UserContent.create(user_id: 24, liked: true, content_id: 3)
puts "#{like} created"
like = UserContent.create(user_id: 24, liked: true, content_id: 5)
puts "#{like} created"
like = UserContent.create(user_id: 24, liked: true, content_id: 9)
puts "#{like} created"
like = UserContent.create(user_id: 24, liked: true, content_id: 11)
puts "#{like} created"
like = UserContent.create(user_id: 24, liked: true, content_id: 13)
puts "#{like} created"
like = UserContent.create(user_id: 25, liked: true, content_id: 3)
puts "#{like} created"
like = UserContent.create(user_id: 25, liked: true, content_id: 5)
puts "#{like} created"
like = UserContent.create(user_id: 25, liked: true, content_id: 9)
puts "#{like} created"
like = UserContent.create(user_id: 25, liked: true, content_id: 11)
puts "#{like} created"
like = UserContent.create(user_id: 25, liked: true, content_id: 13)
puts "#{like} created"
like = UserContent.create(user_id: 26, liked: true, content_id: 1)
puts "#{like} created"
like = UserContent.create(user_id: 26, liked: true, content_id: 2)
puts "#{like} created"
like = UserContent.create(user_id: 26, liked: true, content_id: 4)
puts "#{like} created"
like = UserContent.create(user_id: 26, liked: true, content_id: 6)
puts "#{like} created"
like = UserContent.create(user_id: 26, liked: true, content_id: 8)
puts "#{like} created"
like = UserContent.create(user_id: 27, liked: true, content_id: 1)
puts "#{like} created"
like = UserContent.create(user_id: 27, liked: true, content_id: 2)
puts "#{like} created"
like = UserContent.create(user_id: 27, liked: true, content_id: 4)
puts "#{like} created"
like = UserContent.create(user_id: 27, liked: true, content_id: 6)
puts "#{like} created"
like = UserContent.create(user_id: 27, liked: true, content_id: 8)
puts "#{like} created"
like = UserContent.create(user_id: 28, liked: true, content_id: 1)
puts "#{like} created"
like = UserContent.create(user_id: 28, liked: true, content_id: 2)
puts "#{like} created"
like = UserContent.create(user_id: 28, liked: true, content_id: 4)
puts "#{like} created"
like = UserContent.create(user_id: 28, liked: true, content_id: 6)
puts "#{like} created"
like = UserContent.create(user_id: 28, liked: true, content_id: 8)
puts "#{like} created"
like = UserContent.create(user_id: 29, liked: true, content_id: 1)
puts "#{like} created"
like = UserContent.create(user_id: 29, liked: true, content_id: 2)
puts "#{like} created"
like = UserContent.create(user_id: 29, liked: true, content_id: 4)
puts "#{like} created"
like = UserContent.create(user_id: 29, liked: true, content_id: 6)
puts "#{like} created"
like = UserContent.create(user_id: 29, liked: true, content_id: 8)
puts "#{like} created"
like = UserContent.create(user_id: 30, liked: true, content_id: 1)
puts "#{like} created"
like = UserContent.create(user_id: 30, liked: true, content_id: 2)
puts "#{like} created"
like = UserContent.create(user_id: 30, liked: true, content_id: 4)
puts "#{like} created"
like = UserContent.create(user_id: 30, liked: true, content_id: 6)
puts "#{like} created"
like = UserContent.create(user_id: 30, liked: true, content_id: 8)
puts "#{like} created"
like = UserContent.create(user_id: 31, liked: true, content_id: 11)
puts "#{like} created"
like = UserContent.create(user_id: 31, liked: true, content_id: 13)
puts "#{like} created"
like = UserContent.create(user_id: 31, liked: true, content_id: 17)
puts "#{like} created"
like = UserContent.create(user_id: 31, liked: true, content_id: 19)
puts "#{like} created"
like = UserContent.create(user_id: 31, liked: true, content_id: 22)
puts "#{like} created"
like = UserContent.create(user_id: 32, liked: true, content_id: 11)
puts "#{like} created"
like = UserContent.create(user_id: 32, liked: true, content_id: 13)
puts "#{like} created"
like = UserContent.create(user_id: 32, liked: true, content_id: 17)
puts "#{like} created"
like = UserContent.create(user_id: 32, liked: true, content_id: 19)
puts "#{like} created"
like = UserContent.create(user_id: 32, liked: true, content_id: 22)
puts "#{like} created"
like = UserContent.create(user_id: 33, liked: true, content_id: 11)
puts "#{like} created"
like = UserContent.create(user_id: 33, liked: true, content_id: 13)
puts "#{like} created"
like = UserContent.create(user_id: 33, liked: true, content_id: 17)
puts "#{like} created"
like = UserContent.create(user_id: 33, liked: true, content_id: 19)
puts "#{like} created"
like = UserContent.create(user_id: 33, liked: true, content_id: 22)
puts "#{like} created"
like = UserContent.create(user_id: 34, liked: true, content_id: 11)
puts "#{like} created"
like = UserContent.create(user_id: 34, liked: true, content_id: 13)
puts "#{like} created"
like = UserContent.create(user_id: 34, liked: true, content_id: 17)
puts "#{like} created"
like = UserContent.create(user_id: 34, liked: true, content_id: 19)
puts "#{like} created"
like = UserContent.create(user_id: 34, liked: true, content_id: 22)
puts "#{like} created"
like = UserContent.create(user_id: 35, liked: true, content_id: 11)
puts "#{like} created"
like = UserContent.create(user_id: 35, liked: true, content_id: 13)
puts "#{like} created"
like = UserContent.create(user_id: 35, liked: true, content_id: 17)
puts "#{like} created"
like = UserContent.create(user_id: 35, liked: true, content_id: 19)
puts "#{like} created"
like = UserContent.create(user_id: 35, liked: true, content_id: 22)
puts "#{like} created"
like = UserContent.create(user_id: 36, liked: true, content_id: 11)
puts "#{like} created"
like = UserContent.create(user_id: 36, liked: true, content_id: 13)
puts "#{like} created"
like = UserContent.create(user_id: 36, liked: true, content_id: 17)
puts "#{like} created"
like = UserContent.create(user_id: 36, liked: true, content_id: 19)
puts "#{like} created"
like = UserContent.create(user_id: 36, liked: true, content_id: 22)
puts "#{like} created"
like = UserContent.create(user_id: 37, liked: true, content_id: 11)
puts "#{like} created"
like = UserContent.create(user_id: 37, liked: true, content_id: 13)
puts "#{like} created"
like = UserContent.create(user_id: 37, liked: true, content_id: 17)
puts "#{like} created"
like = UserContent.create(user_id: 37, liked: true, content_id: 19)
puts "#{like} created"
like = UserContent.create(user_id: 37, liked: true, content_id: 22)
puts "#{like} created"
like = UserContent.create(user_id: 38, liked: true, content_id: 11)
puts "#{like} created"
like = UserContent.create(user_id: 38, liked: true, content_id: 13)
puts "#{like} created"
like = UserContent.create(user_id: 38, liked: true, content_id: 17)
puts "#{like} created"
like = UserContent.create(user_id: 38, liked: true, content_id: 19)
puts "#{like} created"
like = UserContent.create(user_id: 38, liked: true, content_id: 22)
puts "#{like} created"
like = UserContent.create(user_id: 39, liked: true, content_id: 11)
puts "#{like} created"
like = UserContent.create(user_id: 39, liked: true, content_id: 13)
puts "#{like} created"
like = UserContent.create(user_id: 39, liked: true, content_id: 17)
puts "#{like} created"
like = UserContent.create(user_id: 39, liked: true, content_id: 19)
puts "#{like} created"
like = UserContent.create(user_id: 39, liked: true, content_id: 22)
puts "#{like} created"
like = UserContent.create(user_id: 40, liked: true, content_id: 24)
puts "#{like} created"
like = UserContent.create(user_id: 40, liked: true, content_id: 26)
puts "#{like} created"
like = UserContent.create(user_id: 40, liked: true, content_id: 28)
puts "#{like} created"
like = UserContent.create(user_id: 40, liked: true, content_id: 30)
puts "#{like} created"
like = UserContent.create(user_id: 40, liked: true, content_id: 32)
puts "#{like} created"
like = UserContent.create(user_id: 41, liked: true, content_id: 3)
puts "#{like} created"
like = UserContent.create(user_id: 41, liked: true, content_id: 5)
puts "#{like} created"
like = UserContent.create(user_id: 41, liked: true, content_id: 9)
puts "#{like} created"
like = UserContent.create(user_id: 41, liked: true, content_id: 11)
puts "#{like} created"
like = UserContent.create(user_id: 41, liked: true, content_id: 13)
puts "#{like} created"
like = UserContent.create(user_id: 42, liked: true, content_id: 3)
puts "#{like} created"
like = UserContent.create(user_id: 42, liked: true, content_id: 5)
puts "#{like} created"
like = UserContent.create(user_id: 42, liked: true, content_id: 9)
puts "#{like} created"
like = UserContent.create(user_id: 42, liked: true, content_id: 11)
puts "#{like} created"
like = UserContent.create(user_id: 42, liked: true, content_id: 13)
puts "#{like} created"
like = UserContent.create(user_id: 43, liked: true, content_id: 3)
puts "#{like} created"
like = UserContent.create(user_id: 43, liked: true, content_id: 5)
puts "#{like} created"
like = UserContent.create(user_id: 43, liked: true, content_id: 9)
puts "#{like} created"
like = UserContent.create(user_id: 43, liked: true, content_id: 11)
puts "#{like} created"
like = UserContent.create(user_id: 43, liked: true, content_id: 13)
puts "#{like} created"
like = UserContent.create(user_id: 44, liked: true, content_id: 3)
puts "#{like} created"
like = UserContent.create(user_id: 44, liked: true, content_id: 5)
puts "#{like} created"
like = UserContent.create(user_id: 44, liked: true, content_id: 9)
puts "#{like} created"
like = UserContent.create(user_id: 44, liked: true, content_id: 11)
puts "#{like} created"
like = UserContent.create(user_id: 44, liked: true, content_id: 13)
puts "#{like} created"
like = UserContent.create(user_id: 45, liked: true, content_id: 3)
puts "#{like} created"
like = UserContent.create(user_id: 45, liked: true, content_id: 5)
puts "#{like} created"
like = UserContent.create(user_id: 45, liked: true, content_id: 9)
puts "#{like} created"
like = UserContent.create(user_id: 45, liked: true, content_id: 11)
puts "#{like} created"
like = UserContent.create(user_id: 45, liked: true, content_id: 13)
puts "#{like} created"
like = UserContent.create(user_id: 46, liked: true, content_id: 1)
puts "#{like} created"
like = UserContent.create(user_id: 46, liked: true, content_id: 2)
puts "#{like} created"
like = UserContent.create(user_id: 46, liked: true, content_id: 4)
puts "#{like} created"
like = UserContent.create(user_id: 46, liked: true, content_id: 6)
puts "#{like} created"
like = UserContent.create(user_id: 46, liked: true, content_id: 8)
puts "#{like} created"
like = UserContent.create(user_id: 47, liked: true, content_id: 1)
puts "#{like} created"
like = UserContent.create(user_id: 47, liked: true, content_id: 2)
puts "#{like} created"
like = UserContent.create(user_id: 47, liked: true, content_id: 4)
puts "#{like} created"
like = UserContent.create(user_id: 47, liked: true, content_id: 6)
puts "#{like} created"
like = UserContent.create(user_id: 47, liked: true, content_id: 8)
puts "#{like} created"
like = UserContent.create(user_id: 48, liked: true, content_id: 1)
puts "#{like} created"
like = UserContent.create(user_id: 48, liked: true, content_id: 2)
puts "#{like} created"
like = UserContent.create(user_id: 48, liked: true, content_id: 4)
puts "#{like} created"
like = UserContent.create(user_id: 48, liked: true, content_id: 6)
puts "#{like} created"
like = UserContent.create(user_id: 48, liked: true, content_id: 8)
puts "#{like} created"
like = UserContent.create(user_id: 49, liked: true, content_id: 1)
puts "#{like} created"
like = UserContent.create(user_id: 49, liked: true, content_id: 2)
puts "#{like} created"
like = UserContent.create(user_id: 49, liked: true, content_id: 4)
puts "#{like} created"
like = UserContent.create(user_id: 49, liked: true, content_id: 6)
puts "#{like} created"
like = UserContent.create(user_id: 49, liked: true, content_id: 8)
puts "#{like} created"
like = UserContent.create(user_id: 50, liked: true, content_id: 1)
puts "#{like} created"
like = UserContent.create(user_id: 50, liked: true, content_id: 2)
puts "#{like} created"
like = UserContent.create(user_id: 50, liked: true, content_id: 4)
puts "#{like} created"
like = UserContent.create(user_id: 50, liked: true, content_id: 6)
puts "#{like} created"
like = UserContent.create(user_id: 50, liked: true, content_id: 8)
puts "#{like} created"
like = UserContent.create(user_id: 51, liked: true, content_id: 11)
puts "#{like} created"
like = UserContent.create(user_id: 51, liked: true, content_id: 13)
puts "#{like} created"
like = UserContent.create(user_id: 51, liked: true, content_id: 17)
puts "#{like} created"
like = UserContent.create(user_id: 51, liked: true, content_id: 19)
puts "#{like} created"
like = UserContent.create(user_id: 51, liked: true, content_id: 22)
puts "#{like} created"
like = UserContent.create(user_id: 52, liked: true, content_id: 11)
puts "#{like} created"
like = UserContent.create(user_id: 52, liked: true, content_id: 13)
puts "#{like} created"
like = UserContent.create(user_id: 52, liked: true, content_id: 17)
puts "#{like} created"
like = UserContent.create(user_id: 52, liked: true, content_id: 19)
puts "#{like} created"
like = UserContent.create(user_id: 52, liked: true, content_id: 22)
puts "#{like} created"
like = UserContent.create(user_id: 53, liked: true, content_id: 11)
puts "#{like} created"
like = UserContent.create(user_id: 53, liked: true, content_id: 13)
puts "#{like} created"
like = UserContent.create(user_id: 53, liked: true, content_id: 17)
puts "#{like} created"
like = UserContent.create(user_id: 53, liked: true, content_id: 19)
puts "#{like} created"
like = UserContent.create(user_id: 53, liked: true, content_id: 22)
puts "#{like} created"
like = UserContent.create(user_id: 54, liked: true, content_id: 11)
puts "#{like} created"
like = UserContent.create(user_id: 54, liked: true, content_id: 13)
puts "#{like} created"
like = UserContent.create(user_id: 54, liked: true, content_id: 17)
puts "#{like} created"
like = UserContent.create(user_id: 54, liked: true, content_id: 19)
puts "#{like} created"
like = UserContent.create(user_id: 54, liked: true, content_id: 22)
puts "#{like} created"
like = UserContent.create(user_id: 55, liked: true, content_id: 11)
puts "#{like} created"
like = UserContent.create(user_id: 55, liked: true, content_id: 13)
puts "#{like} created"
like = UserContent.create(user_id: 55, liked: true, content_id: 17)
puts "#{like} created"
like = UserContent.create(user_id: 55, liked: true, content_id: 19)
puts "#{like} created"
like = UserContent.create(user_id: 55, liked: true, content_id: 22)
puts "#{like} created"
like = UserContent.create(user_id: 56, liked: true, content_id: 11)
puts "#{like} created"
like = UserContent.create(user_id: 56, liked: true, content_id: 13)
puts "#{like} created"
like = UserContent.create(user_id: 56, liked: true, content_id: 17)
puts "#{like} created"
like = UserContent.create(user_id: 56, liked: true, content_id: 19)
puts "#{like} created"
like = UserContent.create(user_id: 56, liked: true, content_id: 22)
puts "#{like} created"
like = UserContent.create(user_id: 57, liked: true, content_id: 11)
puts "#{like} created"
like = UserContent.create(user_id: 57, liked: true, content_id: 13)
puts "#{like} created"
like = UserContent.create(user_id: 57, liked: true, content_id: 17)
puts "#{like} created"
like = UserContent.create(user_id: 57, liked: true, content_id: 19)
puts "#{like} created"
like = UserContent.create(user_id: 57, liked: true, content_id: 22)
puts "#{like} created"
like = UserContent.create(user_id: 58, liked: true, content_id: 11)
puts "#{like} created"
like = UserContent.create(user_id: 58, liked: true, content_id: 13)
puts "#{like} created"
like = UserContent.create(user_id: 58, liked: true, content_id: 17)
puts "#{like} created"
like = UserContent.create(user_id: 58, liked: true, content_id: 19)
puts "#{like} created"
like = UserContent.create(user_id: 58, liked: true, content_id: 22)
puts "#{like} created"
like = UserContent.create(user_id: 59, liked: true, content_id: 11)
puts "#{like} created"
like = UserContent.create(user_id: 59, liked: true, content_id: 13)
puts "#{like} created"
like = UserContent.create(user_id: 59, liked: true, content_id: 17)
puts "#{like} created"
like = UserContent.create(user_id: 59, liked: true, content_id: 19)
puts "#{like} created"
like = UserContent.create(user_id: 59, liked: true, content_id: 22)
puts "#{like} created"
like = UserContent.create(user_id: 60, liked: true, content_id: 24)
puts "#{like} created"
like = UserContent.create(user_id: 60, liked: true, content_id: 26)
puts "#{like} created"
like = UserContent.create(user_id: 60, liked: true, content_id: 28)
puts "#{like} created"
like = UserContent.create(user_id: 60, liked: true, content_id: 30)
puts "#{like} created"
like = UserContent.create(user_id: 60, liked: true, content_id: 32)
puts "#{like} created"
like = UserContent.create(user_id: 61, liked: true, content_id: 3)
puts "#{like} created"
like = UserContent.create(user_id: 61, liked: true, content_id: 5)
puts "#{like} created"
like = UserContent.create(user_id: 61, liked: true, content_id: 9)
puts "#{like} created"
like = UserContent.create(user_id: 61, liked: true, content_id: 11)
puts "#{like} created"
like = UserContent.create(user_id: 61, liked: true, content_id: 13)
puts "#{like} created"
like = UserContent.create(user_id: 62, liked: true, content_id: 3)
puts "#{like} created"
like = UserContent.create(user_id: 62, liked: true, content_id: 5)
puts "#{like} created"
like = UserContent.create(user_id: 62, liked: true, content_id: 9)
puts "#{like} created"
like = UserContent.create(user_id: 62, liked: true, content_id: 11)
puts "#{like} created"
like = UserContent.create(user_id: 62, liked: true, content_id: 13)
puts "#{like} created"
like = UserContent.create(user_id: 63, liked: true, content_id: 3)
puts "#{like} created"
like = UserContent.create(user_id: 63, liked: true, content_id: 5)
puts "#{like} created"
like = UserContent.create(user_id: 63, liked: true, content_id: 9)
puts "#{like} created"
like = UserContent.create(user_id: 63, liked: true, content_id: 11)
puts "#{like} created"
like = UserContent.create(user_id: 63, liked: true, content_id: 13)
puts "#{like} created"
like = UserContent.create(user_id: 64, liked: true, content_id: 3)
puts "#{like} created"
like = UserContent.create(user_id: 64, liked: true, content_id: 5)
puts "#{like} created"
like = UserContent.create(user_id: 64, liked: true, content_id: 9)
puts "#{like} created"
like = UserContent.create(user_id: 64, liked: true, content_id: 11)
puts "#{like} created"
like = UserContent.create(user_id: 64, liked: true, content_id: 13)
puts "#{like} created"
like = UserContent.create(user_id: 65, liked: true, content_id: 3)
puts "#{like} created"
like = UserContent.create(user_id: 65, liked: true, content_id: 5)
puts "#{like} created"
like = UserContent.create(user_id: 65, liked: true, content_id: 9)
puts "#{like} created"
like = UserContent.create(user_id: 65, liked: true, content_id: 11)
puts "#{like} created"
like = UserContent.create(user_id: 65, liked: true, content_id: 13)
puts "#{like} created"
like = UserContent.create(user_id: 66, liked: true, content_id: 1)
puts "#{like} created"
like = UserContent.create(user_id: 66, liked: true, content_id: 2)
puts "#{like} created"
like = UserContent.create(user_id: 66, liked: true, content_id: 4)
puts "#{like} created"
like = UserContent.create(user_id: 66, liked: true, content_id: 6)
puts "#{like} created"
like = UserContent.create(user_id: 66, liked: true, content_id: 8)
puts "#{like} created"
like = UserContent.create(user_id: 67, liked: true, content_id: 1)
puts "#{like} created"
like = UserContent.create(user_id: 67, liked: true, content_id: 2)
puts "#{like} created"
like = UserContent.create(user_id: 67, liked: true, content_id: 4)
puts "#{like} created"
like = UserContent.create(user_id: 67, liked: true, content_id: 6)
puts "#{like} created"
like = UserContent.create(user_id: 67, liked: true, content_id: 8)
puts "#{like} created"
like = UserContent.create(user_id: 68, liked: true, content_id: 1)
puts "#{like} created"
like = UserContent.create(user_id: 68, liked: true, content_id: 2)
puts "#{like} created"
like = UserContent.create(user_id: 68, liked: true, content_id: 4)
puts "#{like} created"
like = UserContent.create(user_id: 68, liked: true, content_id: 6)
puts "#{like} created"
like = UserContent.create(user_id: 68, liked: true, content_id: 8)
puts "#{like} created"
like = UserContent.create(user_id: 69, liked: true, content_id: 1)
puts "#{like} created"
like = UserContent.create(user_id: 69, liked: true, content_id: 2)
puts "#{like} created"
like = UserContent.create(user_id: 69, liked: true, content_id: 4)
puts "#{like} created"
like = UserContent.create(user_id: 69, liked: true, content_id: 6)
puts "#{like} created"
like = UserContent.create(user_id: 69, liked: true, content_id: 8)
puts "#{like} created"
like = UserContent.create(user_id: 70, liked: true, content_id: 1)
puts "#{like} created"
like = UserContent.create(user_id: 70, liked: true, content_id: 2)
puts "#{like} created"
like = UserContent.create(user_id: 70, liked: true, content_id: 4)
puts "#{like} created"
like = UserContent.create(user_id: 70, liked: true, content_id: 6)
puts "#{like} created"
like = UserContent.create(user_id: 70, liked: true, content_id: 8)
puts "#{like} created"
like = UserContent.create(user_id: 71, liked: true, content_id: 11)
puts "#{like} created"
like = UserContent.create(user_id: 71, liked: true, content_id: 13)
puts "#{like} created"
like = UserContent.create(user_id: 71, liked: true, content_id: 17)
puts "#{like} created"
like = UserContent.create(user_id: 71, liked: true, content_id: 19)
puts "#{like} created"
like = UserContent.create(user_id: 71, liked: true, content_id: 22)
puts "#{like} created"
like = UserContent.create(user_id: 72, liked: true, content_id: 11)
puts "#{like} created"
like = UserContent.create(user_id: 72, liked: true, content_id: 13)
puts "#{like} created"
like = UserContent.create(user_id: 72, liked: true, content_id: 17)
puts "#{like} created"
like = UserContent.create(user_id: 72, liked: true, content_id: 19)
puts "#{like} created"
like = UserContent.create(user_id: 72, liked: true, content_id: 22)
puts "#{like} created"
like = UserContent.create(user_id: 73, liked: true, content_id: 11)
puts "#{like} created"
like = UserContent.create(user_id: 73, liked: true, content_id: 13)
puts "#{like} created"
like = UserContent.create(user_id: 73, liked: true, content_id: 17)
puts "#{like} created"
like = UserContent.create(user_id: 73, liked: true, content_id: 19)
puts "#{like} created"
like = UserContent.create(user_id: 73, liked: true, content_id: 22)
puts "#{like} created"
like = UserContent.create(user_id: 74, liked: true, content_id: 11)
puts "#{like} created"
like = UserContent.create(user_id: 74, liked: true, content_id: 13)
puts "#{like} created"
like = UserContent.create(user_id: 74, liked: true, content_id: 17)
puts "#{like} created"
like = UserContent.create(user_id: 74, liked: true, content_id: 19)
puts "#{like} created"
like = UserContent.create(user_id: 74, liked: true, content_id: 22)
puts "#{like} created"
like = UserContent.create(user_id: 75, liked: true, content_id: 11)
puts "#{like} created"
like = UserContent.create(user_id: 75, liked: true, content_id: 13)
puts "#{like} created"
like = UserContent.create(user_id: 75, liked: true, content_id: 17)
puts "#{like} created"
like = UserContent.create(user_id: 75, liked: true, content_id: 19)
puts "#{like} created"
like = UserContent.create(user_id: 75, liked: true, content_id: 22)
puts "#{like} created"
like = UserContent.create(user_id: 76, liked: true, content_id: 11)
puts "#{like} created"
like = UserContent.create(user_id: 76, liked: true, content_id: 13)
puts "#{like} created"
like = UserContent.create(user_id: 76, liked: true, content_id: 17)
puts "#{like} created"
like = UserContent.create(user_id: 76, liked: true, content_id: 19)
puts "#{like} created"
like = UserContent.create(user_id: 76, liked: true, content_id: 22)
puts "#{like} created"
like = UserContent.create(user_id: 77, liked: true, content_id: 11)
puts "#{like} created"
like = UserContent.create(user_id: 77, liked: true, content_id: 13)
puts "#{like} created"
like = UserContent.create(user_id: 77, liked: true, content_id: 17)
puts "#{like} created"
like = UserContent.create(user_id: 77, liked: true, content_id: 19)
puts "#{like} created"
like = UserContent.create(user_id: 77, liked: true, content_id: 22)
puts "#{like} created"
like = UserContent.create(user_id: 78, liked: true, content_id: 11)
puts "#{like} created"
like = UserContent.create(user_id: 78, liked: true, content_id: 13)
puts "#{like} created"
like = UserContent.create(user_id: 78, liked: true, content_id: 17)
puts "#{like} created"
like = UserContent.create(user_id: 78, liked: true, content_id: 19)
puts "#{like} created"
like = UserContent.create(user_id: 78, liked: true, content_id: 22)
puts "#{like} created"
like = UserContent.create(user_id: 79, liked: true, content_id: 11)
puts "#{like} created"
like = UserContent.create(user_id: 79, liked: true, content_id: 13)
puts "#{like} created"
like = UserContent.create(user_id: 79, liked: true, content_id: 17)
puts "#{like} created"
like = UserContent.create(user_id: 79, liked: true, content_id: 19)
puts "#{like} created"
like = UserContent.create(user_id: 79, liked: true, content_id: 22)
puts "#{like} created"
like = UserContent.create(user_id: 80, liked: true, content_id: 24)
puts "#{like} created"
like = UserContent.create(user_id: 80, liked: true, content_id: 26)
puts "#{like} created"
like = UserContent.create(user_id: 80, liked: true, content_id: 28)
puts "#{like} created"
like = UserContent.create(user_id: 80, liked: true, content_id: 30)
puts "#{like} created"
like = UserContent.create(user_id: 80, liked: true, content_id: 32)
puts "#{like} created"

puts "*****USERS LIKED CONTENT CREATED*****"

sleep 5
puts " "
puts " "
puts " "
puts " "
puts " "

puts "\/\/\/\/\/\/\/\/--FINISHING SEED * TIDYING UP--\/\/\/\/\/\/\/\/"

sleep 5
puts " "
puts " "
puts " "
puts " "
puts " "

puts '\/\/\/\/\/\/\/\/--**SEEDING COMPLETE**--\/\/\/\/\/\/\/\/'
