Gallery.delete_all
Artist.delete_all
Exhibit.delete_all
User.delete_all
Artwork.delete_all


george = Artwork.create(:name => "No Title (Talking to myself)", :photo_url => "https://d7hftxdivxxvm.cloudfront.net/?resize_to=fit&width=376&height=300&quality=95&src=https%3A%2F%2Fd32dm0rphc51dk.cloudfront.net%2FBD47peHtLMDWHzDI1axYHQ%2Ftall.jpg")
ron = Artwork.create(:name => "Universal Personhood", :photo_url => "https://d32dm0rphc51dk.cloudfront.net/TDuXcnfMUFwzk2EIH4JP4Q/larger.jpg")
steve = Artwork.create(:name => "The Key to Making Great Art is all in the Composition", :photo_url => "https://d7hftxdivxxvm.cloudfront.net/?resize_to=fit&width=300&height=300&quality=95&src=https%3A%2F%2Fd32dm0rphc51dk.cloudfront.net%2Ff9_pLsTq_pAZnYTdXnw_cQ%2Flarge.jpg")
robert = Artwork.create(:name => "Untitled", :photo_url => "https://d32dm0rphc51dk.cloudfront.net/wGwQhFYwbBH-flCPEKcrHw/larger.jpg")
james = Artwork.create(:name => "No title", :photo_url => 'https://d7hftxdivxxvm.cloudfront.net/?resize_to=fit&width=448&height=300&quality=95&src=https%3A%2F%2Fd32dm0rphc51dk.cloudfront.net%2FA000UdS6oWo0XKJ7AtPCWQ%2Flarge.jpg')

raiders = Gallery.new
raiders.title = "Zhou B. Artcenter"
raiders.artwork_id = steve.id
raiders.image_url = "zhou.jpg"
raiders.address = "1029 W 35th St, Chicago, IL 60609"
raiders.hours = "Hours Vary"
raiders.save

star_wars = Gallery.new
star_wars.title = "tHinkspace"
star_wars.artwork_id = steve.id
star_wars.image_url = "thinkspace.jpg"
star_wars.address = "1000 Howard St, San Francisco, CA 94103"
star_wars.hours = "Wed-Sat  12pm - 6:30 pm "
star_wars.save

apollo_13 = Gallery.new
apollo_13.title = "Anno Domini"
apollo_13.artwork_id = steve.id
apollo_13.image_url = "anno.jpg"
apollo_13.address = "366 So. First Street, San Jose, CA 95113"
apollo_13.hours = "Tu-Fri 12pm - 7pm"
apollo_13.save


cast_away = Gallery.new
cast_away.title = "First Ammendmant"
cast_away.artwork_id = steve.id
cast_away.image_url = "sleepless.jpg"
cast_away.address = "6009 Washington Blvd. | Culver City, CA 90232"
cast_away.hours = "PG"
cast_away.save



guardians = Gallery.create(artwork_id: james.id, title: "111 Mina Gallery", address: "" , image_url: "mina.jpg", hours: "Mon-Fri 7:00 am - 5:00 pm")
star_wars = Gallery.create(artwork_id: james.id, title: "Unleashed Art Gallery", image_url: "last.jpg", address: "2744 Broadway St., Redwood City, CA", hours: "Tues-Sat 11am - 6pm")

ford = Artist.create(name: "Phil Shaw")
fisher = Artist.create(name: "Shepard Fairey")
hanks = Artist.create(name: "Banksy")
hunt = Artist.create(name: "Raymond Pettibon")
pratt = Artist.create(name: "Erik Saglia")
zoe = Artist.create(name: "Jia Aili")
dave = Artist.create(name: "Shi Jing")
vin = Artist.create(name: "Ren Hang")
bradley = Artist.create(name: "Heinz Mack")

Exhibit.create(gallery_id: raiders.id, artist_id: ford.id, character_name: "Indiana Jones")

Exhibit.create(gallery_id: star_wars.id, artist_id: ford.id, character_name: "Han Solo")
Exhibit.create(gallery_id: star_wars.id, artist_id: fisher.id, character_name: "Princess Leia")

Exhibit.create(gallery_id: apollo_13.id, artist_id: hanks.id, character_name: "Jim Lovell")

Exhibit.create(gallery_id: cast_away.id, artist_id: hanks.id, character_name: "Chuck Noland")
Exhibit.create(gallery_id: cast_away.id, artist_id: hunt.id, character_name: "Kelly Frears")

Exhibit.create(gallery_id: guardians.id, artist_id: pratt.id, character_name: "Peter Quill")
Exhibit.create(gallery_id: guardians.id, artist_id: zoe.id, character_name: "Gamora")
Exhibit.create(gallery_id: guardians.id, artist_id: dave.id, character_name: "Drax")
Exhibit.create(gallery_id: guardians.id, artist_id: vin.id, character_name: "Groot")
Exhibit.create(gallery_id: guardians.id, artist_id: bradley.id, character_name: "Rocket")

User.create name: 'Margaret Hamilton', email: 'margaret@example.org', password: 'apollo', password_confirmation: 'apollo'
User.create name: 'Grace Hopper', email: 'grace@example.org', password: 'cobol', password_confirmation: 'cobol'
User.create name: 'Alan Turing', email: 'alan@example.org', password: 'imitationgame', password_confirmation: 'imitationgame'
User.create name: 'Cookie Monster', email: 'cookie@example.org', password: 'cookies', password_confirmation: 'cookies'

print "There are now #{Gallery.count} galleries in the database.\n"
print "There are now #{Artwork.count} artworks in the database.\n"
print "There are now #{Artist.count} artists in the database.\n"
print "There are now #{User.count} users in the database.\n"
