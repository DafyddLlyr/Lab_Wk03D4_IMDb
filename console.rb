require_relative("models/star")
require_relative("models/movie")
require_relative("models/casting")
require("pry")

Movie.delete_all()
Star.delete_all()
Casting.delete_all()

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

movie_1.save()
movie_2.save()
movie_3.save()
movie_4.save()
movie_5.save()

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

star_1.save()
star_2.save()
star_3.save()
star_4.save()
star_5.save()

casting_1 = Casting.new({
  "movie_id" => movie_1.id,
  "star_id" => star_1.id,
  "fee" => 100000
})
casting_2 = Casting.new({
  "movie_id" => movie_1.id,
  "star_id" => star_2.id,
  "fee" => 200000
})
casting_3 = Casting.new({
  "movie_id" => movie_1.id,
  "star_id" => star_3.id,
  "fee" => 300000
})
casting_4 = Casting.new({
  "movie_id" => movie_2.id,
  "star_id" => star_4.id,
  "fee" => 400000
})
casting_5 = Casting.new({
  "movie_id" => movie_3.id,
  "star_id" => star_5.id,
  "fee" => 500000
})
casting_5 = Casting.new({
  "movie_id" => movie_5.id,
  "star_id" => star_5.id,
  "fee" => 600000
})
casting_6 = Casting.new({
  "movie_id" => movie_1.id,
  "star_id" => star_5.id,
  "fee" => 600000
})


casting_1.save()
casting_2.save()
casting_3.save()
casting_4.save()
casting_5.save()
casting_6.save()

binding.pry
nil
