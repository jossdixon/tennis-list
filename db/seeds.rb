# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Erasing player data..."
Player.destroy_all

puts "Adding players..."
federer = { name: "Roger Federer", country: "Switzerland", ranking: 16, image_url: "https://cloudfront-us-east-2.images.arcpublishing.com/reuters/QNM2SRISRRJSPD6W5U4FYNPK2Y.jpg" }
nadal = { name: "Rafael Nadal", country: "Spain", ranking: 6, image_url: "https://tennishead.net/wp-content/uploads/2020/10/Rafa-Nadal-forehand-French-Open-2020.jpg" }
djokovic = { name: "Novak Djokovic", country: "Serbia", ranking: 1, image_url: "https://www.si.com/.image/ar_16:9%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTg1MTg3MTMwODYyMDE5OTI5/novak-djokovic-mailbag-paris-masters-nov.jpg" }
medvedev = { name: "Daniil Medvedev", country: "Russia", ranking: 2, image_url: "https://www.atptour.com/-/media/images/news/2021/10/08/09/09/medvedev-us-open-2021-hall-of-fame.jpg" }
tiafoe = { name: "Frances Tiafoe", country: "USA", ranking: 41, image_url: "https://www.tennisnet.com/fileadmin/_processed_/5/d/xcsm_frances-tiafoe-wien_12795bffe3.jpg.pagespeed.ic.A6-uoV0rJP.jpg" }
tsitsipas = { name: "Stefanos Tsitsipas", country: "Greece", ranking: 4, image_url: "https://cloudfront-us-east-2.images.arcpublishing.com/reuters/Q2U6NXHH3RME3PBYQ5FKNXMZME.jpg" }
norrie = { name: "Cameron Norrie", country: "United Kingdom", ranking: 12, image_url: "https://s.yimg.com/ny/api/res/1.2/XufN5UhPQwNndZWIcvw_TQ--/YXBwaWQ9aGlnaGxhbmRlcjt3PTY0MDtoPTQzOA--/https://s.yimg.com/uu/api/res/1.2/..suysKZ4WdhOiSYcRYFoQ--~B/aD00Mzg7dz02NDA7YXBwaWQ9eXRhY2h5b24-/https://media.zenfs.com/en/pa-sport.com/3497375e9f6f36c4e9386592a16c9752" }
faa = { name: "Felix Auger-Aliassime", country: "Canada", ranking: 11, image_url: "https://images.tennis.com/image/private/t_q-best/tenniscom-prd/wjmwxo3t6j828fwhhxfm.jpg" }
schwartzman = { name: "Diego Schwartzman", country: "Argentina", ranking: 13, image_url: "https://www.tennisworldusa.org/imge/108255/diego-schwartzman-one-lady-in-antwerp-gives-me-chocolates-after-my-matches.jpg" }
rublev = { name: "Andrey Rublev", country: "Russia", ranking: 5, image_url: "https://www.tennismajors.com/app/uploads/2021/10/Andrey-Rublev.jpg" }
zverev = { name: "Alexander Zverev", country: "Germany", ranking: 3, image_url: "https://static.dw.com/image/58720365_101.jpg" }
ruud = { name: "Casper Ruud", country: "Norway", ranking: 8, image_url: "https://www.atptour.com/en/news/www.atptour.com/-/media/images/news/2021/04/16/18/05/ruud-monte-carlo-2021-reaction-friday.jpg" }
sinner = { name: "Jannik Sinner", country: "Italy", ranking: 10, image_url: "https://cloudfront-us-east-2.images.arcpublishing.com/reuters/X6HRBEVQWZLDPENTMYGDA5AXDE.jpg" }
thiem = { name: "Dominic Thiem", country: "Austria", ranking: 14, image_url: "https://pbs.twimg.com/media/E0kYmWBXMAAX0VS.jpg" }
monfils = { name: "Gael Monfils", country: "France", ranking: 21, image_url: "https://cdn.artphotolimited.com/images/59888232b0ba742a2efde168/1000x1000/gael-monfils.jpg" }
deminaur = { name: "Alex de Minaur", country: "Australia", ranking: 33, image_url: "https://static01.nyt.com/images/2018/10/26/sports/26minaur-inyt1/26minaur-inyt1-superJumbo.jpg" }
goffin = { name: "David Goffin", country: "Belgium", ranking: 38, image_url: "https://pbs.twimg.com/media/EzBQRehWgAooTCE.jpg" }
botic = { name: "Botic van de Zandschulp", country: "The Netherlands", ranking: 61, image_url: "https://images0.persgroep.net/rcs/fZ4iS0joALVrqYSfe1npgUq0uOE/diocontent/207281241/_fitwidth/694/?appId=21791a8992982cd8da851550a453bd7f&quality=0.8" }
nishikori = { name: "Kei Nishikori", country: "Japan", ranking: 48, image_url: "https://cdn-japantimes.com/wp-content/uploads/2021/09/np_file_109676.jpeg" }
isner = { name: "John Isner", country: "USA", ranking: 24, image_url: "https://image-cdn.essentiallysports.com/wp-content/uploads/20210202192933/GettyImages-1200044426-1.jpg" }


[ federer, nadal, djokovic, medvedev, tiafoe, tsitsipas, norrie, faa, schwartzman, rublev, zverev, ruud, sinner, thiem, monfils, deminaur, goffin, botic, nishikori, isner ].each do |attr|
  player = Player.create!(attr)
  puts "Created #{player.name}."
end
puts "Completed."
