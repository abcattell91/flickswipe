puts 'cleaning up database'
Content.destroy_all
puts 'database is clean'

# The movie api is different to tv shows so have to do the api request twice. The commented out section is for when we have a match.
# The ID of that movie/show will then be used in that api request to give the correct information onwhere to watch

movie_url = 'https://api.themoviedb.org/3/trending/movie/week?api_key=bee3f4d040e52ad1c0e3eac80d78e941&language=en-US'
2.times do |m|
  contents = JSON.parse(URI.open("#{movie_url}&page=#{m + 1}").read)['results']
  contents.each do |content|
    puts "creating #{content['original_title']}",
         base_poster_url = 'https://image.tmdb.org/t/p/original'
    Content.create(
      imdb_id: content['id'],
      title: content['original_title'],
      description: content['overview'],
      poster: "#{base_poster_url}#{content['poster_path']}",
      rating: content['vote_average'],
      content_type: content['media_type'],
    )
  end
end
tv_url = 'https://api.themoviedb.org/3/trending/tv/week?api_key=bee3f4d040e52ad1c0e3eac80d78e941&language=en-US'
2.times do |m|
  contents = JSON.parse(URI.open("#{tv_url}&page=#{m + 1}").read)['results']
  contents.each do |content|
    puts "creating #{content['original_name']}",
         base_poster_url = 'https://image.tmdb.org/t/p/original'
    Content.create(
      imdb_id: content['id'],
      title: content['original_name'],
      description: content['overview'],
      poster: "#{base_poster_url}#{content['poster_path']}",
      rating: content['vote_average'],
      content_type: content['media_type'],
    )
  end
end

# Below is what I referred to above.
# if @content.content_type = "movie"
#   JSON.parse(URI.open("https://api.themoviedb.org/3/movie/#{@content.imdb_id}/watch/providers?api_key=bee3f4d040e52ad1c0e3eac80d78e941&language=en-US&watch_region=GB").read['results', 'GB', 'flatrate'])
# else
#   JSON.parse(URI.open("https://api.themoviedb.org/3/tv/#{@content.imdb_id}/watch/providers?api_key=bee3f4d040e52ad1c0e3eac80d78e941&language=en-US&watch_region=GB").read['results', 'GB', 'flatrate'])
# end
puts 'done'
