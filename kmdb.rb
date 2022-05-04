# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy.
# - Movie data includes the movie title, year released, MPAA rating,
#   and studio.
# - There are many studios, and each studio produces many movies, but
#   a movie belongs to a single studio.
# - An actor can be in multiple movies.
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Table and columns should match the domain model. Execute the migration
#   files to create the tables in the database. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids.
#   Delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through the results to display output similar to the
#   sample "report" below. (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!



# Generate models and tables, according to the domain model.
# TODO!



# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.
# TODO!

Studio.destroy_all

# puts "There are #{Studio.all.count} Studios"

new_Studio = Studio.new
new_Studio["name"] = "Warner Bros."
new_Studio.save

puts "There are #{Studio.all.count} Studios"

## ::Movies::

Movie.destroy_all

# puts "There are #{Movie.all.count} Movies"

new_Movie = Movie.new
new_Movie["title"] = "Batman Begins"
new_Movie["year_released"] = "2005"
new_Movie["rated"] = "PG-13"
new_Movie["studio_id"] = "Warner Bros."
new_Movie.save

new_Movie = Movie.new
new_Movie["title"] = "The Dark Knight"
new_Movie["year_released"] = "2008"
new_Movie["rated"] = "PG-13"
new_Movie["studio_id"] = "Warner Bros."
new_Movie.save

new_Movie = Movie.new
new_Movie["title"] = "The Dark Knight Rises"
new_Movie["year_released"] = "2012"
new_Movie["rated"] = "PG-13"
new_Movie["studio_id"] = "Warner Bros."
new_Movie.save

puts "There are #{Movie.all.count} Movies"

# --  Batman Begins

Actor.destroy_all
Role.destroy_all

actor = Actor.new
actor["name"] = "Christian Bale"
actor.save

role = Role.new
role["movie_id"] = "Batman Begins"
role["actor_id"] = "Christian Bale"
role["character_name"] = "Bruce Wayne"
role.save


actor = Actor.new
actor["name"] = "Michael Caine"
actor.save

role = Role.new
role["movie_id"] = "Batman Begins"
role["actor_id"] = "Michael Caine"
role["character_name"] = "Alfred"
role.save

actor = Actor.new
actor["name"] = "Liam Neeson"
actor.save

role = Role.new
role["movie_id"] = "Batman Begins"
role["actor_id"] = "Liam Neeson"
role["character_name"] = "Ra's Al Ghul"
role.save

actor = Actor.new
actor["name"] = "Katie Holmes"
actor.save

role = Role.new
role["movie_id"] = "Batman Begins"
role["actor_id"] = "Katie Holmes"
role["character_name"] = "Rachel Dawes"
role.save

actor = Actor.new
actor["name"] = "Gary Oldman"
actor.save

role = Role.new
role["movie_id"] = "Batman Begins"
role["actor_id"] = "Gary Oldman"
role["character_name"] = "Commissioner Gordon"
role.save

# puts "There are #{Actor.all.count} Actors"
# puts "There are #{Role.all.count} Roles"


# --- The Dark Knight

actor = Actor.new
actor["name"] = "Heath Ledger"
actor.save

role = Role.new
role["movie_id"] = "The Dark Knight"
role["actor_id"] = "Heath Ledger"
role["character_name"] = "Joker"
role.save

actor = Actor.new
actor["name"] = "Aaron Eckhart"
actor.save

role = Role.new
role["movie_id"] = "The Dark Knight"
role["actor_id"] = "Aaron Eckhart"
role["character_name"] = "Harvey Dent"
role.save

actor = Actor.new
actor["name"] = "Maggie Gyllenhaal"
actor.save

role = Role.new
role["movie_id"] = "Dark Knight"
role["actor_id"] = "Maggie Gyllenhaal"
role["character_name"] = "Rachel Dawes"
role.save


role = Role.new
role["movie_id"] = "Dark Knight"
role["actor_id"] = "Christian Bale"
role["character_name"] = "Bruce Wayne"
role.save

role = Role.new
role["movie_id"] = "Dark Knight"
role["actor_id"] = "Michael Caine"
role["character_name"] = "Alfred"
role.save

# --- The Dark Knight Rises

actor = Actor.new
actor["name"] = "Tom Hardy"
actor.save

role = Role.new
role["movie_id"] = "The Dark Knight Rises"
role["actor_id"] = "Tom Hardy"
role["character_name"] = "Bane"
role.save

actor = Actor.new
actor["name"] = "Joseph Gordon-Levitt"
actor.save

role = Role.new
role["movie_id"] = "The Dark Knight Rises"
role["actor_id"] = "Joseph Gordon-Levitt"
role["character_name"] = "John Blake"
role.save

actor = Actor.new
actor["name"] = "Anne Hathaway"
actor.save

role = Role.new
role["movie_id"] = "Dark Knight Rises"
role["actor_id"] = "Anne Hathaway"
role["character_name"] = "Selina Kyle"
role.save


role = Role.new
role["movie_id"] = "Dark Knight Rises"
role["actor_id"] = "Christian Bale"
role["character_name"] = "Bruce Wayne"
role.save

role = Role.new
role["movie_id"] = "Dark Knight Rises"
role["actor_id"] = "Gary Oldman"
role["character_name"] = "Commissioner Gordon"
role.save

puts "There are #{Actor.all.count} Actors"
puts "There are #{Role.all.count} Roles"


# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output.
# TODO!

movies_list = ["Batman Begins", "The Dark Knight", "The Dark Knight Rises"]
puts movies_list

all_movies = movie.all
for movie in all_movies
    title = movie["title"]
    year_released = movie["year_released"]
    rating = movie["rating"]
    studio = movie["studio_id"]
puts "#{title} #{year_released} #{rating} #{studio}"
end



# year_released_list = ["2005", "2008", "2012"]
# puts movies_list, year_released_list


# Batman_Begins = movie.find_by({"title" => "Batman Begins"})
# puts Batman_Begins.id




# puts all_movies.title
# puts all_movies.year_released
# puts all_movies.rating
# puts all_movies.studio_id

# movies = movie.all
# for movie in movies
#     puts movie.inspect

# end



# Batman_Begins = Movie.find_by({"title" => "Batman Begins"})
# puts "#{Batman_Begins["title"

# movies = movie.all
# for movie in movies
#     title = movie["title"] 
#     year_released = movie["year_released"]
#     rating = movie["rating"]
#     studio_id = movie["studio_id"]
# puts "#{title} #{year_released} #{rating} #{studio_id}"
# end 


# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie.
# TODO!

all_roles = role.all
puts roles.inspect
for role in all_roles
    actor_id = role["actor_id"]
    actor_record = Actor.fund_by({"id" => actor_id})
    actor_name = actor_record["name"]
    role_name = role["character_name"]

    movie_record = movie.find_by({"id" => role["movie_id"]})
    puts movie_record.inspect
    movie_names = movie_record["title"]
puts "#{movie_names} #{actor_name} #{role}"
end
