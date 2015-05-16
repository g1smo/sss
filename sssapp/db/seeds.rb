# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create(
        email              : 'test@mail.com'
        email              : "test@email.com"
        encrypted_password : "$2a$10$6p1PC1p6Dcf.gLjnQNIasO3iWG8eFmsCtL/Os3Yh/L1NAUtwi2ik2"
        sign_in_count      : 1
        last_sign_in_at    : ISODate("2015-05-16T18:47:17.990Z")
        current_sign_in_at : ISODate("2015-05-16T18:47:17.990Z")
        last_sign_in_ip    : "::1"
        current_sign_in_ip : "::1"
)
