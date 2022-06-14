require "open-uri"

puts 'cleaning up content....'
Content.destroy_all
puts 'cleaning up users....'
User.delete_all
puts 'database is clean'

# The movie api is different to tv shows so have to do the api request twice.
# The ID of that movie/show will then be used in that api request to give the correct information onwhere to watch shown with the results JSON.parse

puts 'Creating Users...'


# users = []

# 100.times do
#   user = User.create(
#     email: Faker::Internet.email,
#     password: "123456",
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name
#   )
#   users << user
#   puts "created user with id: #{user.id}"
# end

# leave the below for now.. Will be useful when attaching cloudinary profile pictures to seed heroku database
file = URI.open('https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aGVhZHNob3R8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user1 = User.create(email: "email@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user1.photo.attach(io: file, filename: 'user1.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1627161683077-e34782c24d81?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aGVhZHNob3R8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user2 = User.create(email: "email2@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user2.photo.attach(io: file, filename: 'user2.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1595211877493-41a4e5f236b3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8aGVhZHNob3R8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user3 = User.create(email: "email3@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user3.photo.attach(io: file, filename: 'user3.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1611432579699-484f7990b127?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8aGVhZHNob3R8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user4 = User.create(email: "email4@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user4.photo.attach(io: file, filename: 'user4.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8aGVhZHNob3R8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user5 = User.create(email: "email5@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user5.photo.attach(io: file, filename: 'user5.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1531427186611-ecfd6d936c79?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8aGVhZHNob3R8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user6 = User.create(email: "email6@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user6.photo.attach(io: file, filename: 'user6.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1614644147798-f8c0fc9da7f6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8aGVhZHNob3R8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user7 = User.create(email: "email7@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user7.photo.attach(io: file, filename: 'user7.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1573497019940-1c28c88b4f3e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8aGVhZHNob3R8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user8 = User.create(email: "email8@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user8.photo.attach(io: file, filename: 'user8.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1629425733761-caae3b5f2e50?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGhlYWRzaG90fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60')
user9 = User.create(email: "email9@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user9.photo.attach(io: file, filename: 'user9.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1606335192038-f5a05f761b3a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGhlYWRzaG90fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60')
user10 = User.create(email: "email10@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user10.photo.attach(io: file, filename: 'user10.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60')
user11 = User.create(email: "email11@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user11.photo.attach(io: file, filename: 'user11.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cGVvcGxlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60')
user12 = User.create(email: "email12@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user12.photo.attach(io: file, filename: 'user12.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1524504388940-b1c1722653e1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user13 = User.create(email: "email13@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user13.photo.attach(io: file, filename: 'user13.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user14 = User.create(email: "email14@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user14.photo.attach(io: file, filename: 'user14.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1463453091185-61582044d556?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjJ8fHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user15 = User.create(email: "email15@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user15.photo.attach(io: file, filename: 'user15.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1488426862026-3ee34a7d66df?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjN8fHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user16 = User.create(email: "email16@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user16.photo.attach(io: file, filename: 'user16.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1522529599102-193c0d76b5b6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzh8fHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user17 = User.create(email: "email17@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user17.photo.attach(io: file, filename: 'user17.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1522556189639-b150ed9c4330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDB8fHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user18 = User.create(email: "email18@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user18.photo.attach(io: file, filename: 'user18.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzl8fHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user19 = User.create(email: "email19@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user19.photo.attach(io: file, filename: 'user19.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1523464862212-d6631d073194?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDZ8fHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user20 = User.create(email: "email20@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user20.photo.attach(io: file, filename: 'user20.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1544717305-2782549b5136?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTJ8fHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user21 = User.create(email: "email21@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user21.photo.attach(io: file, filename: 'user21.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1504439904031-93ded9f93e4e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTF8fHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user22 = User.create(email: "email22@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user22.photo.attach(io: file, filename: 'user22.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1489980557514-251d61e3eeb6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTV8fHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user23 = User.create(email: "email23@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user23.photo.attach(io: file, filename: 'user23.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1523824921871-d6f1a15151f1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTl8fHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user24 = User.create(email: "email24@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user24.photo.attach(io: file, filename: 'user24.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1521119989659-a83eee488004?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjZ8fHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user25 = User.create(email: "email25@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user25.photo.attach(io: file, filename: 'user25.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1450297350677-623de575f31c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NzF8fHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user26 = User.create(email: "email26@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user26.photo.attach(io: file, filename: 'user26.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1489424731084-a5d8b219a5bb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Njh8fHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user27 = User.create(email: "email27@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user27.photo.attach(io: file, filename: 'user27.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1567532939604-b6b5b0db2604?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NzN8fHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user28 = User.create(email: "email28@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user28.photo.attach(io: file, filename: 'user28.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1481824429379-07aa5e5b0739?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8ODd8fHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user29 = User.create(email: "email29@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user29.photo.attach(io: file, filename: 'user29.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1548366565-6bbab241282d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8ODl8fHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user30 = User.create(email: "email30@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user30.photo.attach(io: file, filename: 'user30.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1474176857210-7287d38d27c6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OTF8fHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user31 = User.create(email: "email31@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user31.photo.attach(io: file, filename: 'user31.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1516756587022-7891ad56a8cd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTAwfHxwZW9wbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user32 = User.create(email: "email32@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user32.photo.attach(io: file, filename: 'user32.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1529068755536-a5ade0dcb4e8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OTl8fHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user33 = User.create(email: "email33@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user33.photo.attach(io: file, filename: 'user33.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1499996860823-5214fcc65f8f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTEwfHxwZW9wbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user34 = User.create(email: "email34@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user34.photo.attach(io: file, filename: 'user34.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1517256673644-36ad11246d21?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTE3fHxwZW9wbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user35 = User.create(email: "email35@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user35.photo.attach(io: file, filename: 'user35.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1508214751196-bcfd4ca60f91?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTI3fHxwZW9wbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user36 = User.create(email: "email36@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user36.photo.attach(io: file, filename: 'user36.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1542596768-5d1d21f1cf98?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTI5fHxwZW9wbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user37 = User.create(email: "email37@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user37.photo.attach(io: file, filename: 'user37.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1499155286265-79a9dc9c6380?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTM3fHxwZW9wbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user38 = User.create(email: "email38@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user38.photo.attach(io: file, filename: 'user38.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1504199367641-aba8151af406?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTMyfHxwZW9wbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user39 = User.create(email: "email39@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user39.photo.attach(io: file, filename: 'user39.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1531384441138-2736e62e0919?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTQxfHxwZW9wbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user40 = User.create(email: "email40@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user40.photo.attach(io: file, filename: 'user40.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1469334031218-e382a71b716b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTQ0fHxwZW9wbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user41 = User.create(email: "email41@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user41.photo.attach(io: file, filename: 'user41.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1528892952291-009c663ce843?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTUwfHxwZW9wbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user42 = User.create(email: "email42@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user42.photo.attach(io: file, filename: 'user42.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1487412720507-e7ab37603c6f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTYyfHxwZW9wbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user43 = User.create(email: "email43@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user43.photo.attach(io: file, filename: 'user43.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTU4fHxwZW9wbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user44 = User.create(email: "email44@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user44.photo.attach(io: file, filename: 'user44.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1603258339703-9c33e0733e4b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YmVhdXRpZnVsJTIwd29tZW58ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user45 = User.create(email: "email45@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user45.photo.attach(io: file, filename: 'user45.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1613876215075-276fd62c89a4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8YmVhdXRpZnVsJTIwd29tZW58ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user46 = User.create(email: "email46@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user46.photo.attach(io: file, filename: 'user46.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1617077644557-64be144aa306?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8YmVhdXRpZnVsJTIwd29tZW58ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user47 = User.create(email: "email47@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user47.photo.attach(io: file, filename: 'user47.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1619286188088-de820bdc1230?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8YmVhdXRpZnVsJTIwd29tZW58ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user48 = User.create(email: "email48@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user48.photo.attach(io: file, filename: 'user48.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1605405400344-fbde1d54e9af?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGJlYXV0aWZ1bCUyMHdvbWVufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60')
user49 = User.create(email: "email49@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user49.photo.attach(io: file, filename: 'user49.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1586057710892-4f30aed09a20?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzJ8fGJlYXV0aWZ1bCUyMHdvbWVufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60')
user50 = User.create(email: "email50@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user50.photo.attach(io: file, filename: 'user50.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1533778222324-be782ae129e4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzl8fGJlYXV0aWZ1bCUyMHdvbWVufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60')
user51 = User.create(email: "email51@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user51.photo.attach(io: file, filename: 'user51.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1598587741472-cb50fcba42be?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDR8fGJlYXV0aWZ1bCUyMHdvbWVufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60')
user52 = User.create(email: "email52@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user52.photo.attach(io: file, filename: 'user52.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1534030347209-467a5b0ad3e6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8YmVhdXRpZnVsJTIwbWVufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60')
user53 = User.create(email: "email53@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user53.photo.attach(io: file, filename: 'user53.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1541119304694-387204bc1d03?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGJlYXV0aWZ1bCUyMG1lbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user54 = User.create(email: "email54@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user54.photo.attach(io: file, filename: 'user54.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1593757147298-e064ed1419e5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjJ8fGJlYXV0aWZ1bCUyMG1lbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user55 = User.create(email: "email55@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user55.photo.attach(io: file, filename: 'user55.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1586057708056-6149710c46cd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzZ8fGJlYXV0aWZ1bCUyMG1lbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user56 = User.create(email: "email56@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user56.photo.attach(io: file, filename: 'user56.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1563452965085-2e77e5bf2607?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDN8fGJlYXV0aWZ1bCUyMG1lbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user57 = User.create(email: "email57@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user57.photo.attach(io: file, filename: 'user57.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1552831682-c5c7fc3a5e9d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTl8fGJlYXV0aWZ1bCUyMG1lbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user58 = User.create(email: "email58@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user58.photo.attach(io: file, filename: 'user58.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1644424235048-ccc07c1cd428?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OTR8fGJlYXV0aWZ1bCUyMG1lbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user59 = User.create(email: "email59@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user59.photo.attach(io: file, filename: 'user59.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1513135343800-2ffe94ba4f98?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8bmF0dXJhbCUyMHdvbWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60')
user60 = User.create(email: "email60@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user60.photo.attach(io: file, filename: 'user60.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1539702169544-c0bcff87fcd7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fG5hdHVyYWwlMjB3b21hbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user61 = User.create(email: "email61@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user61.photo.attach(io: file, filename: 'user61.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1599842057473-784525d0d4ca?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8ZmF0JTIwd29tYW58ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user62 = User.create(email: "email62@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user62.photo.attach(io: file, filename: 'user62.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1573878221776-5f906608fd5a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8ZmF0JTIwd29tYW58ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user63 = User.create(email: "email63@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user63.photo.attach(io: file, filename: 'user63.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1573497019584-769c02ee89f5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fGZhdCUyMHdvbWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60')
user64 = User.create(email: "email64@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user64.photo.attach(io: file, filename: 'user64.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1568003524782-c481a0546f80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDF8fGZhdCUyMHdvbWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60')
user65 = User.create(email: "email65@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user65.photo.attach(io: file, filename: 'user65.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1517677129300-07b130802f46?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fHNraW5ueSUyMHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user66 = User.create(email: "email66@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user66.photo.attach(io: file, filename: 'user66.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1514929781313-76fcbb2136b6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fHNraW5ueSUyMHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user67 = User.create(email: "email67@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user67.photo.attach(io: file, filename: 'user67.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1520975661595-6453be3f7070?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHNraW5ueSUyMHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user68 = User.create(email: "email68@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user68.photo.attach(io: file, filename: 'user68.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1524638431109-93d95c968f03?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fHNraW5ueSUyMHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user69 = User.create(email: "email69@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user69.photo.attach(io: file, filename: 'user69.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1472806426350-603610d85659?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjh8fHNraW5ueSUyMHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user70 = User.create(email: "email70@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user70.photo.attach(io: file, filename: 'user70.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1488716820095-cbe80883c496?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzB8fHNraW5ueSUyMHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user71 = User.create(email: "email71@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user71.photo.attach(io: file, filename: 'user71.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1539125530496-3ca408f9c2d9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzR8fHNraW5ueSUyMHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user72 = User.create(email: "email72@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user72.photo.attach(io: file, filename: 'user72.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1533729590644-695ded775a63?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDB8fHNraW5ueSUyMHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user73 = User.create(email: "email73@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user73.photo.attach(io: file, filename: 'user73.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1591713477709-06cac59333d4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDZ8fHNraW5ueSUyMHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user74 = User.create(email: "email74@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user74.photo.attach(io: file, filename: 'user74.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1578774296842-c45e472b3028?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTJ8fHNraW5ueSUyMHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user75 = User.create(email: "email75@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user75.photo.attach(io: file, filename: 'user75.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1512087321902-02867cabd81a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nzh8fHNraW5ueSUyMHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user76 = User.create(email: "email76@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user76.photo.attach(io: file, filename: 'user76.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1574784619102-f7e342f21aa0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8ODh8fHNraW5ueSUyMHBlb3BsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60')
user77 = User.create(email: "email77@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user77.photo.attach(io: file, filename: 'user77.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1595784279873-62b38b5e7cd6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTAzfHxza2lubnklMjBwZW9wbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user78 = User.create(email: "email78@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user78.photo.attach(io: file, filename: 'user78.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1588716764186-b5b184eae705?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTA3fHxza2lubnklMjBwZW9wbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user79 = User.create(email: "email79@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user79.photo.attach(io: file, filename: 'user79.jpeg', content_type: 'image/jpg')

file = URI.open('https://images.unsplash.com/photo-1584897129667-cabdff21142f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTA2fHxza2lubnklMjBwZW9wbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60')
user80 = User.create(email: "email80@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
user80.photo.attach(io: file, filename: 'user80.jpeg', content_type: 'image/jpg')

sleep 4

movie_url = 'https://api.themoviedb.org/3/trending/movie/week?api_key='+ENV['API_KEY']+'&language=en-US'
2.times do |m|
  contents = JSON.parse(URI.open("#{movie_url}&page=#{m + 1}").read)['results']
  contents.each do |content|
    base_poster_url = 'https://image.tmdb.org/t/p/original'
    data = JSON.parse(URI.open("https://api.themoviedb.org/3/movie/#{content['id']}?api_key="+ENV['API_KEY']+"&language=en-US").read)
    results = JSON.parse(URI.open("https://api.themoviedb.org/3/movie/#{content['id']}/watch/providers?api_key="+ENV['API_KEY']+"&language=en-US&watch_region=GB").read)['results']

    if results != {} && results["GB"] && results['GB']["flatrate"] # This filters out results where no streaming services are available or the movie is too new.

    Content.create(
      imdb_id: content['id'],
      title: content['original_title'],
      description: content['overview'],
      poster: "#{base_poster_url}#{content['poster_path']}",
      rating: content['vote_average'],
      content_type: content['media_type'],
      streaming_services: results.dig("GB", "flatrate")&.map { |provider| provider["provider_name"] }, # iterate through providers/streaming services
      duration: data['runtime'],
      genres: data.dig("genres")&.map { |genre| genre["name"] } # iterate through genres services
    )
      puts "TITLE: #{content['original_title']}"
      puts "TMDB_ID: #{content['id']}"
      puts "DURATION: #{data['runtime']}"
      puts "GENRES: #{data.dig("genres")&.map { |genre| genre["name"] }}"
      puts "RATING: #{content['vote_average']}"
      puts "CONTENT_TYPE: #{content['media_type']}"
      puts "STREAMING_PROVIDERS: #{results.dig("GB", "flatrate")&.map { |provider| provider["provider_name"] }}"
    end
  end
end

sleep 2
puts "STARTING TV SHOWS....."
sleep 2


tv_url = 'https://api.themoviedb.org/3/trending/tv/week?api_key='+ENV['API_KEY']+'&language=en-US'
2.times do |m|
  contents = JSON.parse(URI.open("#{tv_url}&page=#{m + 1}").read)['results']
  contents.each do |content|
    base_poster_url = 'https://image.tmdb.org/t/p/original'
    data = JSON.parse(URI.open("https://api.themoviedb.org/3/tv/#{content['id']}?api_key="+ENV['API_KEY']+"&language=en-US").read)
    results = JSON.parse(URI.open("https://api.themoviedb.org/3/tv/#{content['id']}/watch/providers?api_key="+ENV['API_KEY']+"&language=en-US&watch_region=GB").read)['results']

    if results != {} && results["GB"] && results['GB']["flatrate"] # This filters out results where no streaming services are available or the tv show is too new.

      Content.create(
        imdb_id: content['id'],
        title: content['original_name'],
        description: content['overview'],
        poster: "#{base_poster_url}#{content['poster_path']}",
        rating: content['vote_average'],
        content_type: content['media_type'],
        streaming_services: results.dig("GB", "flatrate")&.map { |provider| provider["provider_name"] }, # iterate through providers
        duration: data['episode_run_time'][0],
        genres: data.dig("genres")&.map { |genre| genre["name"] } # iterate through genres services
      )
      puts "TITLE: #{content['original_name']}"
      puts "TMDB_ID: #{content['id']}"
      puts "DURATION: #{data['episode_run_time'][0]}"
      puts "GENRES: #{data.dig("genres")&.map { |genre| genre["name"] }}"
      puts "RATING: #{content['vote_average']}"
      puts "CONTENT_TYPE: #{content['media_type']}"
      puts "STREAMING_PROVIDERS: #{results.dig("GB", "flatrate")&.map { |provider| provider["provider_name"] }}"
    end
  end
end

puts 'done'
