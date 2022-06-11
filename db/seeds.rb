puts 'cleaning up database'
Content.destroy_all
puts 'database is clean'

# The movie api is different to tv shows so have to do the api request twice.
# The ID of that movie/show will then be used in that api request to give the correct information onwhere to watch shown with the results JSON.parse

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
