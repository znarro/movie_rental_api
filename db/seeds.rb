# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u = User.create(name: 'Zamir', email: 'zamir@tekton.com')
Category.create(name: 'Drama', description: 'Some description')
Movie.create({ name: 'The Godfather',
               director: 'Francis Ford Coppola',
               release_date: '14/03/1972',
               category: Category.first })
u.rentals.create(movie: Movie.first, is_rented: true)
