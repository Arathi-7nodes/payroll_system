# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

 u1 = User.create(email: 'admin@gmail.com', password: 'password')
  u1.add_role :admin

  u2 = User.create(email: 'employee@gmail.com', password: 'password')
  u2.add_role :employee
