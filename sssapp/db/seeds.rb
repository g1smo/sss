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

user2 = User.create(
  email: "pest@mail.com",
  password: "pestingthis",
  password_confirmation: "pestingthis"
)

book = Book.create(
    isbn: "12398192381923",
    title: "Kniga!",
    authors: "Martin Heidegger, Ivan Cankar",
    publisher: "Dobre knige",
    description: "A very fine book, indeed",
    year: 1984,
    categories: "good,read,awesome,book",
    language: "english",
    user_id: 1
)

request = Request.create(
  approved: true,
  
  user_id: 2,
  book_id: 1
)

loan = Loan.create(
  confirmed_by_borrower: true,
  confirmed_by_lender: true,
  return_by: Date.new(2015,5,20),
  
  loan_extensions: [LoanExtension.new(return_by: Date.new(2015,5,25))],
  book_id: 1,
  user_id: 2,
  request_id: 1
)

loan = Loan.create(
  confirmed_by_borrower: true,
  confirmed_by_lender: true,
  return_by: Date.new(2016,1,11),
  
  book_id: 1,
  user_id: 2,
  request_id: 1
)
