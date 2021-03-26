# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

DATA = {
  user_keys:
    ['name', 'email'],
  users: [
    ['Harry Potter', 'harry@hogwarts.com'],
    ['Alf', 'alf@melmack.com'],
    ['Chewbacca', 'agrrrr@solo.com'],
    ['Rick Sanchez', 'pickle@rick.com'],
  ],
 
  category_keys:
    ['name', 'description'],
  categories: [
    ['Drama', 'Sad films'],
    ['Comedy', 'Just laugh'],
    ['Superheroes', 'Marvel and DC'],
    ['Horror', 'Scary movie'],
  ],

  movie_keys:
    ['name', 'director', 'release_date', 'user_id', 'category_id'],
  movies: [
    ['The Godfather', 'Francis Ford Coppola', '14/03/1972', 1, 1],
    ['Superbad', 'Greg Mottola', '14/02/2007', nil, 2],
    ['Star Wars', 'George Lucas', '14/02/1990', nil, 1],
    ['The Exorcist', 'Some guy', '14/02/1980', 2, 4],
    ['Justice League', 'Zack Snyder', '14/03/2021', nil, 3],
    ['Watchmen', 'Zack Snyder', '14/03/2000', 3, 3],
    ['Asu mare', 'Cachin', '14/03/2000', nil, 4],
  ]
}

def make_data
  make_customers
  make_categories
  make_movies
end

def make_customers
  DATA[:users].each do |user|
    new_user = User.new
    user.each_with_index do |attribute, i|
      new_user.send("#{DATA[:user_keys][i]}=", attribute)
    end
    new_user.save
  end
end

def make_categories
  DATA[:categories].each do |cat|
    new_cat = Category.new
    cat.each_with_index do |attribute, i|
      new_cat.send("#{DATA[:category_keys][i]}=", attribute)
    end
    new_cat.save
  end
end

def make_movies
  DATA[:movies].each do |movie|
    new_movie = Movie.new
    movie.each_with_index do |attribute, i|
      new_movie.send("#{DATA[:movie_keys][i]}=", attribute)
    end
    new_movie.save
  end
end

make_data