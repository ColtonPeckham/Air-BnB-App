# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# User.create(name: "Cole", email: "cole@example.com", image: "placeholder", password: "password", password_confirmation: "password")

# User.create(name: "Colton", email: "colton@example.com", image: "placeholder", password: "password1", password_confirmation: "password1")
# User.create(name: "Steve", email: "steve@example.com", image: "placeholder", password: "password", password_confirmation: "password")

Reservation.create(user_id: 3, room_id: 1, start_date: "12-05-2022", end_date: "12-10-2022", price: 120.00, total: 600.00)
