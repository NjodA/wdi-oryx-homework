Singer.destroy_all

taylor = Singer.create(name: "Taylor Swift", dob: "1989-09-13", nationality: "American", gender: "Female")
chris = Singer.create(name: "Chris Brown", dob: "1989-09-13", nationality: "American", gender: "Male")

Song.destroy_all
game = Song.create(name: "End Game", year: 2017, album: " Reputation", singer_id: taylor.id)
air = Song.create(name: "No Air", year: 2014, album: "  Jordin Sparks", singer_id: chris.id)

Genre.destroy_all

genres = ["pop", "jaz", "rock", " Opera"]

genres.each do |g|
  Genre.create(name: g)
end

forever = Song.create(name: "Forever", year: 2007, album: "Exclusive", singer_id: chris.id)

air.genres << Genre.find_by(name: "Pop")
