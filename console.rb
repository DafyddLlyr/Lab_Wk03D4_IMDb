require_relative("models/star")
require_relative("models/movie")
require_relative("models/casting")
require("pry")

# Setup
movie_1 = Movie.new({
  "title" => "The Fellowship of the Ring",
  "genre" => "Fantasy"
})
movie_2 = Movie.new({
  "title" => "The Hunt for the Wilderpeople",
  "genre" => "Comedy"
})
movie_3 = Movie.new({
  "title" => "Star Wars: A New Hope",
  "genre" => "Sci-Fi"
})
movie_4 = Movie.new({
  "title" => "2001: A Space Oddessy",
  "genre" => "Sci-Fi"
})
movie_5 = Movie.new({
  "title" => "Avengers: Endgame",
  "genre" => "Superhero"
})

star_1 = Star.new({
  "first_name" => "Tom",
  "last_name" => "Cruise"
})
star_2 = Star.new({
  "first_name" => "Ewan",
  "last_name" => "McGregor"
})
star_3 = Star.new({
  "first_name" => "Emma",
  "last_name" => "Thompson"
})
star_4 = Star.new({
  "first_name" => "Scarlett",
  "last_name" => "Johansson"
})
star_5 = Star.new({
  "first_name" => "Tom",
  "last_name" => "Hanks"
})

casting_1 = Casting.new({
  "fee" => 100000
})
casting_2 = Casting.new({
  "fee" => 200000
})
casting_3 = Casting.new({
  "fee" => 300000
})
casting_4 = Casting.new({
  "fee" => 400000
})
casting_5 = Casting.new({
  "fee" => 500000
})
casting_5 = Casting.new({
  "fee" => 600000
})

binding.pry
nil
