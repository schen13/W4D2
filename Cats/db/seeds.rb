# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cat.destroy_all
cat1 = Cat.create!(birth_date: '2015/01/20', color: 'white', name: 'Mark', sex: 'M', description: 'Cool')
cat2 = Cat.create!(birth_date: '2000/05/05', color: 'brown', name: 'Paul', sex: 'F', description: 'Pretty')
cat3 = Cat.create!(birth_date: '2012/04/12', color: 'black', name: 'Jackson', sex: 'F', description: 'Catty')
