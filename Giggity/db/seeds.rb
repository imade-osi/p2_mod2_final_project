# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

LocalArtist.destroy_all 

la1 = LocalArtist.create(:name "Lil big Baby", :genre "hip hop", :rating 7.8, :wallet 750.24, :zipcode 10221)
la2 = LocalArtist.create(:name "ThrowBack Thursday", :genre "gender reveal parties", :rating 9.9, :wallet 15000.50, :zipcode 10229)
la3 = LocalArtist.create(:name "That One Band", :genre "late night strolls", :rating 4.5, :wallet 1000, :zipcode 10225)
la4 = LocalArtist.create(:name "Big lil Man", :genre "wedding crasher", :rating 8.0, :wallet 20, :zipcode 10219)
