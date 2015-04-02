require 'unirest'
require 'json'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


def seed_trails(array)
  array.each do |state|
    trailAPIdata(state).each do |trail|
      if trail["activities"].first
        Trail.create(name: trail["name"],
          description: trail["activities"].first["description"],
          city: trail["city"],
          state: trail["state"],
          country: trail["country"],
          rating: trail["activities"].first["rating"],
          activity_type: ["activities"].first["activity_type_name"],
          latitude: trail["lat"],
          longitude: trail["lon"])
      else
        Trail.create(name: trail["name"],
          city: trail["city"],
          state: trail["state"],
          country: trail["country"],
          latitude: trail["lat"],
          longitude: trail["lon"])
      end
    end

  end
end

def trailAPIdata(state)
  response = Unirest.get "https://trailapi-trailapi.p.mashape.com/?q[state_cont]=#{state}",
    headers:{
      "X-Mashape-Key" => "z8jP4kZrhYmshgYdNDnAGbpdHOVAp1Ana2MjsnrN9pdIA3B1wy"
    }
   return JSON.parse(response.raw_body)['places']
end

seed_trails(["Alabama", "Alaska", "Arizona", "Arkansas", "California", "Colorado", "Connecticut", "Delaware", "Florida", "Georgia", "Hawaii", "Idaho", "Illinois", "Indiana", "Iowa", "Kansas", "Kentucky", "Louisiana", "Maine", "Maryland", "Massachusetts", "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", "Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico", "New York", "North Carolina", "North Dakota", "OHIO", "Oklahoma", "Oregon", "Palau", "Pennsylvania", "Puerto Rico", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virgin Islands", "Virginia", "Washington", "West Virginia", "Wisconsin", "Wyoming"])

# puts trailAPIdata("California")