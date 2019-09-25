FavoriteSpell.destroy_all
Spell.destroy_all
Wizard.destroy_all

w1 = Wizard.create!(name: "Harry Potter", age: 17, house: "Gryffindor", image: "http://www.univers-series.com/wp-content/uploads/2016/02/harrypotter.jpeg")
w2 = Wizard.create!(name: "Hermione Granger", age: 17, house: "Gryffindor", image: "https://wallpapersite.com/images/pages/pic_w/8936.jpg" )
w3 = Wizard.create!(name: "Ron Weasley", age: 17, house: "Gryffindor", image: "http://images4.fanpop.com/image/photos/23000000/DH-Part-II-ronald-weasley-23081519-500-296.jpg")
w4 = Wizard.create!(name: "Draco Malfoy", age: 17, house: "Slytherin", image: "https://cdn.movieweb.com/img.news.tops/NEh934QRmEyekk_2_b/Tom-Felton-Draco-Malfoy-No-More-Harry-Potter.jpg")
w5 = Wizard.create!(name: "Severus Snape", age: 38, house: "Slytherin", image: "https://vignette.wikia.nocookie.net/villains/images/1/12/Snape-will-never-die-severus-snape-22970808-1600-2118.jpg/revision/latest?cb=20170304205903")

s1 = Spell.create!(name: "Expelliarmus", description: "Basically the only spell Harry ever uses when he's in a duel")
s2 = Spell.create!(name: "Expecto Patronum", description: "Gets rid of pesky Dementors by summoning a badass Patronus to chase them away")
s3 = Spell.create!(name: "Alohomora", description: "That one Hermione keeps using to unlock doors when they go sneaking around in the first book")
s4 = Spell.create!(name: "Wingardium Leviosa", description: "Makes things levitate. Sounds fun.")
s5 = Spell.create!(name: "Accio", description: "The perfect charm for lazy people who can't be bothered to get up and fetch the TV remote")
s6 = Spell.create!(name: "Obliviate", description: "The charm Gilderoy Lockhart uses to accidentally wipe his own memory, the big buffoon")
s7 = Spell.create!(name: "Sectumsempra", description: "A mouthful of a curse invented by troubled teen Severus Snape")
s8 = Spell.create!(name: "Crucio", description: "Basically torture in a kids book")



FavoriteSpell.create!( wizard_id: w1.id, spell_id: s1.id)
FavoriteSpell.create!( wizard_id: w1.id, spell_id: s2.id)
FavoriteSpell.create!( wizard_id: w2.id, spell_id: s1.id)
FavoriteSpell.create!( wizard_id: w2.id, spell_id: s2.id)
FavoriteSpell.create!( wizard_id: w2.id, spell_id: s3.id)
FavoriteSpell.create!( wizard_id: w2.id, spell_id: s4.id)
FavoriteSpell.create!( wizard_id: w2.id, spell_id: s5.id)
FavoriteSpell.create!( wizard_id: w2.id, spell_id: s6.id)
FavoriteSpell.create!( wizard_id: w2.id, spell_id: s7.id)
FavoriteSpell.create!( wizard_id: w3.id, spell_id: s5.id)
FavoriteSpell.create!( wizard_id: w4.id, spell_id: s8.id)
FavoriteSpell.create!( wizard_id: w4.id, spell_id: s1.id)
FavoriteSpell.create!( wizard_id: w5.id, spell_id: s6.id)
FavoriteSpell.create!( wizard_id: w5.id, spell_id: s2.id)
FavoriteSpell.create!( wizard_id: w5.id, spell_id: s7.id)
FavoriteSpell.create!( wizard_id: w5.id, spell_id: s8.id)