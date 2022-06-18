require 'uri'
require 'net/http'
require 'openssl'
require 'json'

puts "test"


rapid_url = URI("https://streaming-availability.p.rapidapi.com/get/basic?country=us&tmdb_id=movie%2F615469&output_language=en")

http = Net::HTTP.new(rapid_url.host, rapid_url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Get.new(rapid_url)
request["X-RapidAPI-Key"] = '2e94d4b0b8mshf58fa3b3ddda0bdp1bddb6jsn9db0cf918898'
request["X-RapidAPI-Host"] = 'streaming-availability.p.rapidapi.com'

response = http.request(request)
unless response.code == "404"
  hash = JSON.parse(response.read_body)
  puts hash
  puts hash["streamingInfo"].keys.each do |key|
    info = StreamingService.find_by(provider: key)
      if info
      ContentStreamingService.create(
        content: item,
        streaming_service: info,
        content_link: hash["streamingInfo"]["us"]["link"]
      )
    end
  end
end

# ContentStreamingService.create(
# content: item
# )

# hash = "{"imdbID":"tt1879016","tmdbID":"661231","imdbRating":66,"imdbVoteCount":15238,"tmdbRating":66,"backdropPath":"/jCSpD2Sj67qOVnOu4b3JsXl8NO4.jpg","backdropURLs":{"1280":"https://image.tmdb.org/t/p/w1280/jCSpD2Sj67qOVnOu4b3JsXl8NO4.jpg","300":"https://image.tmdb.org/t/p/w300/jCSpD2Sj67qOVnOu4b3JsXl8NO4.jpg","780":"https://image.tmdb.org/t/p/w780/jCSpD2Sj67qOVnOu4b3JsXl8NO4.jpg","original":"https://image.tmdb.org/t/p/original/jCSpD2Sj67qOVnOu4b3JsXl8NO4.jpg"},"originalTitle":"Operation Mincemeat","genres":[18,10752],"countries":["GB","US"],"year":2022,"runtime":128,"cast":["Colin Firth","Matthew Macfadyen","Kelly Macdonald","Penelope Wilton","Johnny Flynn","Jason Isaacs","Mark Gatiss"],"significants":["John Madden"],"title":"Operation Mincemeat","overview":"In 1943, two British intelligence officers concoct Operation Mincemeat, wherein their plan to drop a corpse with false papers off the coast of Spain would fool Nazi spies into believing the Allied forces were planning to attack by way of Greece rather than Sicily.","tagline":"Deception. The greatest weapon in war.","video":"zwkSyrN0mvY","posterPath":"/tfdfh1mK24VujxT5z11732asxdR.jpg","posterURLs":{"154":"https://image.tmdb.org/t/p/w154/tfdfh1mK24VujxT5z11732asxdR.jpg","185":"https://image.tmdb.org/t/p/w185/tfdfh1mK24VujxT5z11732asxdR.jpg","342":"https://image.tmdb.org/t/p/w342/tfdfh1mK24VujxT5z11732asxdR.jpg","500":"https://image.tmdb.org/t/p/w500/tfdfh1mK24VujxT5z11732asxdR.jpg","780":"https://image.tmdb.org/t/p/w780/tfdfh1mK24VujxT5z11732asxdR.jpg","92":"https://image.tmdb.org/t/p/w92/tfdfh1mK24VujxT5z11732asxdR.jpg","original":"https://image.tmdb.org/t/p/original/tfdfh1mK24VujxT5z11732asxdR.jpg"},"age":12,"streamingInfo":{"netflix":{"us":{"link":"https://www.netflix.com/title/81428563/","added":1653876701,"leaving":0}}},"originalLanguage":"en"}"
# puts hash.to_json.streamingInfo
