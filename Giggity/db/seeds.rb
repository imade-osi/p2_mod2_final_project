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

a1 = Agency.create(name: "RED")
a2 = Agency.create(name: "Paradigm")
a3 = Agency.create(name: "Nu Agency")

aa1 = AgencyArtist.create(name: "Jay-P", genre: "Hip-Hop", fee: 25000, agency_id: 10)
aa2 = AgencyArtist.create(name: "Taylor Slow", genre: "Pop/Country", fee: 50000, agency_id: 10)
aa3 = AgencyArtist.create(name: "Justin Femur", genre: "Pop", fee: 20000, agency_id: 11)
aa4 = AgencyArtist.create(name: "GET Malone", genre: "Hip-Hop/Pop", fee: 45000, agency_id: 11)
aa5 = AgencyArtist.create(name: "The Weekday", genre: "Hip-Hop/R&B", fee: 30000, agency_id: 12)
aa6 = AgencyArtist.create(name: "Ariana Venti", genre: "Pop", fee: 75000, agency_id: 12)

aas1 = AgencyArtistSong.create(title: "99 Problems", agency_artist_id:19)
aas2 = AgencyArtistSong.create(title: "Empire State of Mind", agency_artist_id:19)
aas3 = AgencyArtistSong.create(title: "Shake It Off", agency_artist_id:20)
aas4 = AgencyArtistSong.create(title: "Bad Blood", agency_artist_id:20)
aas5 = AgencyArtistSong.create(title: "Sorry", agency_artist_id:21)
aas6 = AgencyArtistSong.create(title: "Love Yourself", agency_artist_id:21)
aas7 = AgencyArtistSong.create(title: "Rockstar", agency_artist_id:22)
aas8 = AgencyArtistSong.create(title: "Circles", agency_artist_id:22)
aas9 = AgencyArtistSong.create(title: "I Can't Feel My Face", agency_artist_id:23)
aas10 = AgencyArtistSong.create(title: "Starboy", agency_artist_id:23)
aas11 = AgencyArtistSong.create(title: "Side To Side", agency_artist_id:24)
aas12 = AgencyArtistSong.create(title: "God is a woman", agency_artist_id:24)













