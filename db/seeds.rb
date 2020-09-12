# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

human = User.create first_name: "Yolomir", last_name: "Swagamir", phone_number: "+614443333", email: "yolomir@example.com", password: nil
Pet.create!(name: "Swag", age: "12", vaccinated: false, registered: false,  url: "uhf321", bounty: 50, human_id: human.id)
