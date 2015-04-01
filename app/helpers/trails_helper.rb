require 'unirest'
require 'json'

module TrailsHelper

  def self.get_searched_trails(city)
    response = Unirest.get "https://trailapi-trailapi.p.mashape.com/?q[city_cont]=#{city}&radius=100",
    headers:{
      "X-Mashape-Key" => "z8jP4kZrhYmshgYdNDnAGbpdHOVAp1Ana2MjsnrN9pdIA3B1wy"
    }
   return JSON.parse(response.raw_body)['places']
  end

  def self.get_nearby_trails(cur_lat, cur_long)
    response = Unirest.get "https://trailapi-trailapi.p.mashape.com/?lat=#{cur_lat}.1&lon=#{cur_long}.2&radius=200",
    headers:{
      "X-Mashape-Key" => "z8jP4kZrhYmshgYdNDnAGbpdHOVAp1Ana2MjsnrN9pdIA3B1wy"
    }
   return JSON.parse(response.raw_body)['places']
  end

  def self.get_indvidual_trail(cur_lat, cur_long)
    response = Unirest.get "https://trailapi-trailapi.p.mashape.com/?lat=#{cur_lat}.1&lon=#{cur_long}.2&radius=.01",
    headers:{
      "X-Mashape-Key" => "z8jP4kZrhYmshgYdNDnAGbpdHOVAp1Ana2MjsnrN9pdIA3B1wy"
    }
   return JSON.parse(response.raw_body)['places']
  end
end

# module Trail

#   def self.name
#     return trail.name
#   end

#   def self.location
#     return "#{trail['city']}, #{trail['state']}"
#   end

#   def self.description
#     return trail["activities"].first["description"].capitalize
#   end

#   def self.length
#     return trail["activities"].first["length"].round
#   end

#   def self.type
#     return place["activities"].first["activity_type_name"].capitalize
#   end

# end
