puts 'cleaning up content....'
Content.destroy_all
puts 'cleaning up users....'
User.delete_all
puts 'database is clean'

# The movie api is different to tv shows so have to do the api request twice.
# The ID of that movie/show will then be used in that api request to give the correct information onwhere to watch shown with the results JSON.parse

puts 'Creating Users...'

users = []

100.times do
  user = User.create(
    email: Faker::Internet.email,
    password: "123456",
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name
  )
  users << user
  puts "created user with id: #{user.id}"
end

# user1 = User.create(email: "email@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user2 = User.create(email: "email2@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user3 = User.create(email: "email3@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user4 = User.create(email: "email4@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user5 = User.create(email: "email5@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user6 = User.create(email: "email6@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user7 = User.create(email: "email7@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user8 = User.create(email: "email8@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user9 = User.create(email: "email9@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user10 = User.create(email: "email10@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user11 = User.create(email: "email11@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user12 = User.create(email: "email12@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user13 = User.create(email: "email13@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user14 = User.create(email: "email14@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user15 = User.create(email: "email15@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user16 = User.create(email: "email16@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user17 = User.create(email: "email17@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user18 = User.create(email: "email18@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user19 = User.create(email: "email19@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user20 = User.create(email: "email20@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user21 = User.create(email: "email21@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user22 = User.create(email: "email22@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user23 = User.create(email: "email23@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user24 = User.create(email: "email24@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user25 = User.create(email: "email25@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user26 = User.create(email: "email26@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user27 = User.create(email: "email27@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user28 = User.create(email: "email28@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user29 = User.create(email: "email29@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user30 = User.create(email: "email30@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user31 = User.create(email: "email31@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user32 = User.create(email: "email32@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user33 = User.create(email: "email33@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user34 = User.create(email: "email34@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user35 = User.create(email: "email35@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user36 = User.create(email: "email36@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user37 = User.create(email: "email37@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user38 = User.create(email: "email38@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user39 = User.create(email: "email39@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user40 = User.create(email: "email40@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user41 = User.create(email: "email41@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user42 = User.create(email: "email42@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user43 = User.create(email: "email43@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user44 = User.create(email: "email44@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user45 = User.create(email: "email45@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user46 = User.create(email: "email46@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user47 = User.create(email: "email47@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user48 = User.create(email: "email48@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user49 = User.create(email: "email49@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user50 = User.create(email: "email50@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user51 = User.create(email: "email51@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user52 = User.create(email: "email52@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user53 = User.create(email: "email53@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user54 = User.create(email: "email54@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user55 = User.create(email: "email55@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user56 = User.create(email: "email56@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user57 = User.create(email: "email57@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user58 = User.create(email: "email58@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user59 = User.create(email: "email59@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user60 = User.create(email: "email60@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user61 = User.create(email: "email61@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user62 = User.create(email: "email62@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user63 = User.create(email: "email63@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user64 = User.create(email: "email64@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user65 = User.create(email: "email65@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user66 = User.create(email: "email66@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user67 = User.create(email: "email67@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user68 = User.create(email: "email68@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user69 = User.create(email: "email69@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user70 = User.create(email: "email70@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user71 = User.create(email: "email71@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user72 = User.create(email: "email72@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user73 = User.create(email: "email73@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user74 = User.create(email: "email74@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user75 = User.create(email: "email75@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user76 = User.create(email: "email76@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user77 = User.create(email: "email77@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user78 = User.create(email: "email78@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user79 = User.create(email: "email79@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
# user80 = User.create(email: "email80@email.com", password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )

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
