# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'cleaning up database'
Content.destroy_all
puts 'database is clean'

url = 'https://api.themoviedb.org/3/trending/all/week?api_key=bee3f4d040e52ad1c0e3eac80d78e941&language=en-US'
25.times do |m|
  contents = JSON.parse(URI.open("#{url}&page=#{m + 1}").read)['results']
  contents.each do |content|
    puts "creating #{content['title']}",
         base_poster_url = 'https://image.tmdb.org/t/p/original'
    Content.create(
      title: content['title'],
      description: content['overview'],
      poster: "#{base_poster_url}#{content['poster_path']}",
      rating: content['vote_average'],
      content_type: content['media_type'],
    )
  end
end
puts 'done'
