# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u = User.create!(name: 'Zamir', email: 'zamir@tekton.com')
y = User.create!(name: 'Simba', email: 'simba@tekton.com')
Category.create!(name: 'Drama', description: 'Some description')
Category.create!(name: 'Comedy', description: 'Some description')
Movie.create!({ name: 'The Godfather',
               director: 'Francis Ford Coppola',
               release_date: '14/03/1972',
               category: Category.first })
Movie.create!({ name: 'Superbad',
               director: 'Greg Mottola',
               release_date: '12/10/2007',
               user: nil,
               category: Category.last })
Movie.create!({ name: 'Sound of Metal',
               director: 'Darius Marder',
               release_date: '06/09/2019',
               user: nil,
               category: Category.last })

