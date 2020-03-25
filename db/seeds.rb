# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts 'Destroying all users'
User.destroy_all
puts 'Destroying all comments'
Comment.destroy_all
puts 'Destroying all answers'
Answer.destroy_all
puts 'Destroying all ratings'
Rating.destroy_all
puts 'Destroying all progression'
ProgressionCourse.destroy_all
puts 'Destroying all courses'
Course.destroy_all


# ==============================================================================================================================================
puts 'Creating users'
User.create!(email: 'rodiert17@gmail.com', first_name: 'thomas', last_name: 'rodier', password: 'rodiert17@gmail.com', slug: 'thomas-rodier')
6.times do
  User.create!(email: Faker::Internet.email, first_name: Faker::Name.first_name , last_name: Faker::Name.last_name, password:'123456', slug: Faker::String.random(length: 6))
end

puts "#{User.count} Users have been created"

# ==============================================================================================================================================
puts 'Creating courses'
Course.create!(title: 'Introduction - Merci pour ta confiance !', slug: 'introduction')
second_course = Course.create!(title: 'Texte - Concaténer & Guillements', slug: 'concatener-guillemets')
third_course = Course.create!(title: 'Texte - Gauche & Droite', slug: 'gauche-droite')
Course.create!(title: 'Texte - Trouve', slug: 'trouve')
Course.create!(title: 'Texte - Stxt', slug: 'stxt')
Course.create!(title: 'Texte - Nbcar', slug: 'nbcar')
Course.create!(title: 'Texte - Supprespace', slug: 'supprespace')
Course.create!(title: 'Texte - Cellule & Adresse', slug: 'cellule-adresse')
Course.create!(title: 'Business - Recherchev', slug: 'recherchev')
Course.create!(title: 'Business - Rechercheh', slug: 'rechercheh')
Course.create!(title: 'Business - Sierreur', slug: 'sierreur')
Course.create!(title: 'Business - Petite & Grande valeur', slug: 'petite-grande-valeur')
Course.create!(title: 'Business - Index', slug: 'index')
Course.create!(title: 'Business - Equiv', slug: 'equiv')
Course.create!(title: 'Business - Sous-total', slug: 'sous-total')
Course.create!(title: 'Business - Somme.si', slug: 'somme-si')
Course.create!(title: 'Business - Somme.si.ens', slug: 'somme-si-ens')
Course.create!(title: 'Business - Sommeprod', slug: 'sommeprod')
Course.create!(title: 'Business - Indirect', slug: 'indirect')
Course.create!(title: 'Imbrication - Qu\'est-ce que c\'est ?', slug: 'imbrications')
Course.create!(title: 'Imbrication - Extraire les Nom & Prénoms d\'une adresse mail', slug: 'extraire-nom-prenom-mail')
Course.create!(title: 'Imbrication - Créer une adresse mail à partir d\'un nom & prénom', slug: 'créer-adresse-mail-nom-prenom')
Course.create!(title: 'Imbrication - Incorporer une erreur dans une fonction', slug: 'erreur-formule')
Course.create!(title: 'Imbrication - Pallier à la recherchev', slug: 'pallier-recherchev')
Course.create!(title: 'Imbrication - Consolider des fichiers', slug: 'consolidation-fichiers')
Course.create!(title: 'Certificat - Félicitation ! Tu as terminé la formation Exceltips', slug: 'certificat-exceltips')

puts "#{Course.count} Courses have been created"

# ==============================================================================================================================================
puts 'Creating ProgressionCourse'
User.all.each do |user|
  Course.first(15).each do |course|
    ProgressionCourse.create!(course: course, user: user, status: true)
  end
  Course.last(11).each do |course|
    ProgressionCourse.create!(course: course, user: user, status: false)
  end
end

puts "#{ProgressionCourse.count} ProgressionCourses have been created"

# ==============================================================================================================================================
puts 'Creating Ratings'

Rating.create!(user: User.offset(1).first, rate: 3)
Rating.create!(user: User.offset(2).first, rate: 2)
Rating.create!(user: User.offset(3).first, rate: 4)
Rating.create!(user: User.offset(4).first, rate: 5)

puts "#{Rating.count} Ratings have been created"

# ==============================================================================================================================================
puts 'Creating Comments'

Comment.create!(user: User.offset(1).first, course: second_course, message: 'Plutôt cool, à revoir dans certains éléments.........')
second_comment = Comment.create!(user: User.offset(2).first, course: second_course, message: 'Bof bof bof franchement. Le gars est un peu con')
third_comment = Comment.create!(user: User.offset(1).first, course: third_course, message: 'Sympathique et agréable. Je recommande')

puts "#{Comment.count} Comments have been created"

# ==============================================================================================================================================
puts 'Creating Answers'

Answer.create!(message: 'Merci pour ce beau commentaire. Je vous enmerde grosse #$%*$##...', comment: second_comment, user: User.first)
Answer.create!(message: 'Ah super agrèable. Bonne continuation à vous', comment: third_comment, user: User.first)

puts "#{Answer.count} Answers have been created"


puts 'Well, now it\'s your turn to work ! You are so lazy..... Let\' go dude'
