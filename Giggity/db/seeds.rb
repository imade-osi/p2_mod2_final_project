# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Agency.destroy_all
AgencyGig.destroy_all
AgencyArtist.destroy_all
AgencyArtistSong.destroy_all
LocalArtist.destroy_all 
LocalArtistSong.destroy_all


la1 = LocalArtist.create(artist_name: "Lil big Baby", genre: "hip hop", rating: 7.8, bankroll: 750.24, zipcode: 10221, username: "billy1", password: "billy")
la2 = LocalArtist.create(artist_name: "Throw Back Thursday", genre: "gender reveal parties", rating: 9.9, bankroll: 15000.50, zipcode: 10229, username: "billy2", password: "billy")
la3 = LocalArtist.create(artist_name: "That One Band", genre: "late night strolls", rating: 4.5, bankroll: 1000, zipcode: 10225, username: "billy3", password: "billy")
la4 = LocalArtist.create(artist_name: "Big lil Man", genre: "wedding crasher", rating: 8.0, bankroll: 20, zipcode: 10219, username: "billy4", password: "billy")

las1 = LocalArtistSong.create(title: "Suge", local_artist_id: 46)
las2 = LocalArtistSong.create(title: "Baby Shark", local_artist_id: 46)
las3 = LocalArtistSong.create(title: "WCW", local_artist_id: 47)
las4 = LocalArtistSong.create(title: "MCM", local_artist_id: 47)
las5 = LocalArtistSong.create(title: "Best Part", local_artist_id: 48)
las6 = LocalArtistSong.create(title: "Pink Matter", local_artist_id: 48)
las7 = LocalArtistSong.create(title: "The Sound of Settling", local_artist_id: 49)
las8 = LocalArtistSong.create(title: "Mr. Ambulance Driver", local_artist_id: 49)


a1 = Agency.create(name: "RED")
a2 = Agency.create(name: "Paradigm")
a3 = Agency.create(name: "Nu Agency")

aa1 = AgencyArtist.create(name: "Jay-P", genre: "Hip-Hop", fee: 25000, agency_id: 43)
aa2 = AgencyArtist.create(name: "Taylor Slow", genre: "Pop/Country", fee: 50000, agency_id: 43)
aa3 = AgencyArtist.create(name: "Justin Femur", genre: "Pop", fee: 20000, agency_id: 44)
aa4 = AgencyArtist.create(name: "GET Malone", genre: "Hip-Hop/Pop", fee: 45000, agency_id: 44)
aa5 = AgencyArtist.create(name: "The Weekday", genre: "Hip-Hop/R&B", fee: 30000, agency_id: 45)
aa6 = AgencyArtist.create(name: "Ariana Venti", genre: "Pop", fee: 75000, agency_id: 45)

aas1 = AgencyArtistSong.create(title: "99_problems", agency_artist_id: 1)
aas2 = AgencyArtistSong.create(title: "empire_state_of_mind", agency_artist_id: 1)
aas3 = AgencyArtistSong.create(title: "shake_it_off", agency_artist_id: 2)
aas4 = AgencyArtistSong.create(title: "bad_blood", agency_artist_id: 2)
aas5 = AgencyArtistSong.create(title: "sorry", agency_artist_id: 3)
aas6 = AgencyArtistSong.create(title: "love_yourself", agency_artist_id: 3)
aas7 = AgencyArtistSong.create(title: "rockstar", agency_artist_id: 4)
aas8 = AgencyArtistSong.create(title: "circles", agency_artist_id: 4)
aas9 = AgencyArtistSong.create(title: "cant_feel_my_face", agency_artist_id: 5)
aas10 = AgencyArtistSong.create(title: "starboy", agency_artist_id: 5)
aas11 = AgencyArtistSong.create(title: "side_to_side", agency_artist_id: 6)
aas12 = AgencyArtistSong.create(title: "god_is_a_woman", agency_artist_id: 6)

