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

[ federer, nadal, djokovic, medvedev, tiafoe, tsitsipas, norrie, faa, schwartzman, rublev ].each do |attr|
  player = Player.create!(attr)
  puts "Created #{player.name}."
end
puts "Completed."
