require_relative("../db/sql_runner")

class Movie

  attr_reader :id
  attr_accessor :title, :genre, :budget

  def initialize(options)
    @id = options["id"].to_i if options["id"]
    @title = options["title"]
    @genre = options["genre"]
    @budget = options["budget"].to_i
  end

  def save()
    sql = "INSERT INTO movies(title, genre)
    VALUES ($1, $2)
    RETURNING id"
    values = [@title, @genre]
    @id = SqlRunner.run(sql, values)[0]["id"].to_i
  end

  def update()
    sql = "UPDATE movies SET (title, genre) = ($1, $2)
    WHERE id = $3"
    values = [@title, @genre, @id]
    SqlRunner.run(sql, values)
  end

  def delete()
    sql = "DELETE FROM movies WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def stars()
    sql = "SELECT stars.* FROM stars
    INNER JOIN castings
    ON castings.star_id = stars.id
    WHERE movie_id = $1"
    values = [@id]
    result = SqlRunner.run(sql, values)
    return result.map { |star| Star.new(star) }
  end

  def casting()
    sql = "SELECT * FROM castings WHERE movie_id = $1"
    values = [@id]
    result = SqlRunner.run(sql, values)
    return result.map { |casting| Casting.new(casting) }
  end

  def remaining_budget()
    casting_fees = self.casting.map { |casting| casting.fee }
    return @budget - casting_fees.sum
  end

  def self.delete_all()
    sql = "DELETE FROM movies"
    SqlRunner.run(sql)
  end

  def self.all()
    sql = "SELECT * FROM movies"
    result = SqlRunner.run(sql)
    return result.map { |movie| Movie.new(movie) }
  end

end
