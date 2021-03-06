# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u = User.new(
            :email=>'c3@c.com',
            :password=>'horahora',
            :password_confirmation=>'horahora'
)
u.save

u2 = User.new(
    :email=>'d@d.com',
    :password=>'horahora',
    :password_confirmation=>'horahora'
)
u2.save



10.times do |n|
  m = Marker.new(
                :lat=>51.505 + rand(12)*0.001,
                :lng=>-0.09,
                :user_id=>u.id
  )
  m.save
end