# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create(
    email: "test@mail.com",
    password: "testingthis",
    password_confirmation: "testingthis"
)

book = Book.create(
    #_id: 1,
    isbn: "12398192381923",
    title: "Kniga!",
    authors: "Marting Heidegger, Ivan Cankar",
    publisher: "Dobre knige",
    description: "A very fine book, indeed",
    year: 1984,
    categories: "good,read,awesome,book",
    language: "english",
    user_id: 1
)
