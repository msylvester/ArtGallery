Director.delete_all
Movie.delete_all
Actor.delete_all
Role.delete_all
User.delete_all

george = Director.create(:name => "George Lucas", :photo_url => "http://ia.media-imdb.com/images/M/MV5BMTA0Mjc0NzExNzBeQTJeQWpwZ15BbWU3MDEzMzQ3MDI@._V1_UY317_CR0,0,214,317_AL_.jpg")
ron = Director.create(:name => "Ron Howard", :photo_url => "http://ia.media-imdb.com/images/M/MV5BMTkzMDczMjUxNF5BMl5BanBnXkFtZTcwODY1Njk5Mg@@._V1_UX214_CR0,0,214,317_AL_.jpg")
steve = Director.create(:name => "Steven Spielberg", :photo_url => "http://ia.media-imdb.com/images/M/MV5BMTY1NjAzNzE1MV5BMl5BanBnXkFtZTYwNTk0ODc0._V1_UX214_CR0,0,214,317_AL_.jpg")
robert = Director.create(:name => "Robert Zemeckis", :photo_url => "http://ia.media-imdb.com/images/M/MV5BMTgyMTMzMDUyNl5BMl5BanBnXkFtZTcwODA0ODMyMw@@._V1_UX214_CR0,0,214,317_AL_.jpg")
james = Director.create(:name => "James Gunn", :photo_url => 'http://ia.media-imdb.com/images/M/MV5BMzgwMDA1NDc0M15BMl5BanBnXkFtZTgwMDA2MTMzNTE@._V1_SX1024_CR0,0,1024,1516_AL_.jpg')

raiders = Movie.new
raiders.title = "Raiders of the Lost Ark"
raiders.director_id = steve.id
raiders.image_url = "raiders.jpg"
raiders.plot = "Archaeologist and adventurer Indiana Jones is hired by the US government to find the Ark of the Covenant before the Nazis."
raiders.year = 1981
raiders.mpaa = "PG"
raiders.runtime = 115
raiders.price = 1299
raiders.save

apollo_13 = Movie.new
apollo_13.title = "Apollo 13"
apollo_13.director_id = ron.id
apollo_13.image_url = "apollo13.jpg"
apollo_13.plot = "NASA must devise a strategy to return Apollo 13 to Earth safely after the spacecraft undergoes massive internal damage putting the lives of the three astronauts on board in jeopardy."
apollo_13.year = 1995
apollo_13.mpaa = "PG"
apollo_13.runtime = 140
apollo_13.price = 1299
apollo_13.save

cast_away = Movie.new
cast_away.title = "Cast Away"
cast_away.director_id = robert.id
cast_away.image_url = "castaway.jpg"
cast_away.plot = "A FedEx executive must transform himself physically and emotionally to survive a crash landing on a deserted island."
cast_away.year = 2000
cast_away.mpaa = "PG-13"
cast_away.runtime = 143
cast_away.price = 1099
cast_away.save

jurassic = Movie.new
jurassic.title = "Jurassic Park"
jurassic.director_id = steve.id
jurassic.image_url = "jurassic.jpg"
jurassic.plot = "In Steven Spielberg's massive blockbuster, paleontologists Alan Grant (Sam Neill) and Ellie Sattler (Laura Dern) and mathematician Ian Malcolm (Jeff Goldblum) are among a select group chosen to tour an island theme park populated by dinosaurs created from prehistoric DNA. While the park's mastermind, billionaire John Hammond (Richard Attenborough), assures everyone that the facility is safe, they find out otherwise when various ferocious predators break free and go on the hunt."
jurassic.year = 1993
jurassic.mpaa = "PG-13"
jurassic.runtime = 127
jurassic.price = 1999
jurassic.save

mind = Movie.new
mind.title = "A Beautiful Mind"
mind.director_id = ron.id
mind.image_url = "mind.jpg"
mind.plot = "A human drama inspired by events in the life of John Forbes Nash Jr., and in part based on the biography \"A Beautiful Mind\" by Sylvia Nasar. From the heights of notoriety to the depths of depravity, John Forbes Nash Jr. experienced it all. A mathematical genius, he made an astonishing discovery early in his career and stood on the brink of international acclaim. But the handsome and arrogant Nash soon found himself on a painful and harrowing journey of self-discovery."
mind.year = 2001
mind.mpaa = "PG-13"
mind.runtime = 140
mind.price = 1499
mind.save

lincoln = Movie.new
lincoln.title = "Lincoln"
lincoln.director_id = steve.id
lincoln.image_url = "lincoln.jpg"
lincoln.plot = "With the nation embroiled in still another year with the high death count of Civil War, President Abraham Lincoln (Daniel Day-Lewis) brings the full measure of his passion, humanity and political skill to what would become his defining legacy: to end the war and permanently abolish slavery through the 13th Amendment. Having great courage, acumen and moral fortitude, Lincoln pushes forward to compel the nation, and those in government who oppose him, to aim toward a greater good for all mankind."
lincoln.year = 2012
lincoln.mpaa = "PG-13"
lincoln.runtime = 170
lincoln.price = 1863
lincoln.save

guardians = Movie.create(director_id: james.id, title: "Guardians of the Galaxy", image_url: "guardians.jpg", plot: "A group of intergalactic criminals are forced to work together to stop a fanatical warrior from taking control of the universe.", year: 2014, mpaa: "PG-13", runtime: 121, price: 1499)
star_wars = Movie.create(director_id: george.id, title: "Star Wars", image_url: "starwars.jpg", plot: "Luke Skywalker joins forces with a Jedi Knight, a cocky pilot, a wookiee and two droids to save the universe from the Empire's world-destroying battle-station, while also attempting to rescue Princess Leia from the evil Darth Vader.", year: 1977, mpaa: "PG", runtime: 121, price: 1499)

ford = Actor.create(name: "Harrison Ford")
fisher = Actor.create(name: "Carrie Fisher")
hanks = Actor.create(name: "Tom Hanks")
hunt = Actor.create(name: "Helen Hunt")
pratt = Actor.create(name: "Chris Pratt")
zoe = Actor.create(name: "Zoe Saldana")
dave = Actor.create(name: "Dave Bautista")
vin = Actor.create(name: "Vin Diesel")
bradley = Actor.create(name: "Bradley Cooper")

Role.create(movie_id: raiders.id, actor_id: ford.id, character_name: "Indiana Jones")

Role.create(movie_id: star_wars.id, actor_id: ford.id, character_name: "Han Solo")
Role.create(movie_id: star_wars.id, actor_id: fisher.id, character_name: "Princess Leia")

Role.create(movie_id: apollo_13.id, actor_id: hanks.id, character_name: "Jim Lovell")

Role.create(movie_id: cast_away.id, actor_id: hanks.id, character_name: "Chuck Noland")
Role.create(movie_id: cast_away.id, actor_id: hunt.id, character_name: "Kelly Frears")

Role.create(movie_id: guardians.id, actor_id: pratt.id, character_name: "Peter Quill")
Role.create(movie_id: guardians.id, actor_id: zoe.id, character_name: "Gamora")
Role.create(movie_id: guardians.id, actor_id: dave.id, character_name: "Drax")
Role.create(movie_id: guardians.id, actor_id: vin.id, character_name: "Groot")
Role.create(movie_id: guardians.id, actor_id: bradley.id, character_name: "Rocket")

User.create name: 'Margaret Hamilton', email: 'margaret@example.org', password: 'apollo'
User.create name: 'Grace Hopper', email: 'grace@example.org', password: 'cobol'
User.create name: 'Alan Turing', email: 'alan@example.org', password: 'imitationgame'
User.create name: 'Cookie Monster', email: 'cookie@example.org', password: 'cookies'

print "There are now #{Movie.count} movies in the database.\n"
print "There are now #{Director.count} directors in the database.\n"
print "There are now #{Actor.count} actors in the database.\n"
print "There are now #{User.count} users in the database.\n"
