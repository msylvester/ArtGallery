Gallery.delete_all
Artist.delete_all
Exhibit.delete_all
User.delete_all
Artwork.delete_all


sheppard = Artwork.create(:name => "No Title (Talking to myself)", :photo_url => "https://d7hftxdivxxvm.cloudfront.net/?resize_to=fit&width=376&height=300&quality=95&src=https%3A%2F%2Fd32dm0rphc51dk.cloudfront.net%2FBD47peHtLMDWHzDI1axYHQ%2Ftall.jpg")
banksy = Artwork.create(:name => "Universal Personhood", :photo_url => "https://d32dm0rphc51dk.cloudfront.net/TDuXcnfMUFwzk2EIH4JP4Q/larger.jpg")
wools = Artwork.create(:name => "The Key to Making Great Art is all in the Composition", :photo_url => "https://d7hftxdivxxvm.cloudfront.net/?resize_to=fit&width=300&height=300&quality=95&src=https%3A%2F%2Fd32dm0rphc51dk.cloudfront.net%2Ff9_pLsTq_pAZnYTdXnw_cQ%2Flarge.jpg")
toons = Artwork.create(:name => "Untitled", :photo_url => "https://d32dm0rphc51dk.cloudfront.net/wGwQhFYwbBH-flCPEKcrHw/larger.jpg")
picaso = Artwork.create(:name => "No title", :photo_url => 'https://d7hftxdivxxvm.cloudfront.net/?resize_to=fit&width=448&height=300&quality=95&src=https%3A%2F%2Fd32dm0rphc51dk.cloudfront.net%2FA000UdS6oWo0XKJ7AtPCWQ%2Flarge.jpg')

zhou = Gallery.new
zhou.title = "Zhou B. Artcenter"
zhou.artwork_id = banksy.id
zhou.image_url = "zhou.jpg"
zhou.address = "1029 W 35th St, Chicago, IL 60609"
zhou.hours = "Hours Vary"
zhou.save

thinkspace = Gallery.new
thinkspace.title = "tHinkspace"
thinkspace.artwork_id = sheppard.id
thinkspace.image_url = "thinkspace.jpg"
thinkspace.address = "1000 Howard St, San Francisco, CA 94103"
thinkspace.hours = "Wed-Sat  12pm - 6:30 pm "
thinkspace.save

anno = Gallery.new
anno.title = "Anno Domini"
anno.artwork_id = wools.id
anno.image_url = "anno.jpg"
anno.address = "366 So. First Street, San Jose, CA 95113"
anno.hours = "Tu-Fri 12pm - 7pm"
anno.save


ammend = Gallery.new
ammend.title = "First Ammendmant"
ammend.artwork_id = toons.id
ammend.image_url = "sleepless.jpg"
ammend.address = "6009 Washington Blvd. | Culver City, CA 90232"
ammend.hours = "PG"
ammend.save



guardians = Gallery.create(artwork_id: picaso.id, title: "111 Mina Gallery", address: "" , image_url: "mina.jpg", hours: "Mon-Fri 7:00 am - 5:00 pm")
unleased = Gallery.create(artwork_id: picaso.id, title: "Unleashed Art Gallery", image_url: "last.jpg", address: "2744 Broadway St., Redwood City, CA", hours: "Tues-Sat 11am - 6pm")

shaw = Artist.create(name: "Phil Shaw")
fairey = Artist.create(name: "Shepard Fairey")
banks = Artist.create(name: "Banksy")
pettibon = Artist.create(name: "Raymond Pettibon")
saglia = Artist.create(name: "Erik Saglia")
jia	 = Artist.create(name: "Jia Aili")
shi = Artist.create(name: "Shi Jing")
ren = Artist.create(name: "Ren Hang")
heinz = Artist.create(name: "Heinz Mack")

Exhibit.create(gallery_id: zhou.id, artist_id: shaw.id, character_name: "Indiana Jones")

Exhibit.create(gallery_id: thinkspace.id, artist_id: shaw.id, character_name: "Han Solo")
Exhibit.create(gallery_id: thinkspace.id, artist_id: fairey.id, character_name: "Princess Leia")

Exhibit.create(gallery_id: anno.id, artist_id: banks.id, character_name: "Jim Lovell")

Exhibit.create(gallery_id: ammend.id, artist_id: banks.id, character_name: "Chuck Noland")
Exhibit.create(gallery_id: ammend.id, artist_id: pettibon.id, character_name: "Kelly Frears")

Exhibit.create(gallery_id: guardians.id, artist_id: saglia.id, character_name: "Peter Quill")
Exhibit.create(gallery_id: guardians.id, artist_id: jia.id, character_name: "Gamora")
Exhibit.create(gallery_id: guardians.id, artist_id: shi.id, character_name: "Drax")
Exhibit.create(gallery_id: guardians.id, artist_id: ren.id, character_name: "Groot")
Exhibit.create(gallery_id: guardians.id, artist_id: heinz.id, character_name: "Rocket")

User.create name: 'Highland Park', email: 'hp@example.org', password: 'hp', password_confirmation: 'hp'
User.create name: 'Playa Delrey', email: 'playa@example.org', password: 'playa', password_confirmation: 'playa'
User.create name: 'Culver City', email: 'culver@example.org', password: 'culver', password_confirmation: 'culver'
User.create name: 'Pasadena', email: 'pasadena@example.org', password: 'pasadena', password_confirmation: 'pasadena'

print "There are now #{Gallery.count} galleries in the database.\n"
print "There are now #{Artwork.count} artworks in the database.\n"
print "There are now #{Artist.count} artists in the database.\n"
print "There are now #{User.count} users in the database.\n"
