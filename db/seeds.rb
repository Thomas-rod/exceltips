# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
require 'json'
require 'open-uri'

puts 'Destroying all users'
User.destroy_all
puts 'Destroying all comments'
Comment.destroy_all
puts 'Destroying all answers'
Answer.destroy_all
puts 'Destroying all ratings'
Rating.destroy_all
puts 'Destroying all progression'
Progression.destroy_all
puts 'Destroying all courses'
Course.destroy_all


# def attach_video_course(string, course)
#   file = URI.open(string)
#   course.upload(io: file, filename: "#{self.slug}.mp4", content_type: 'video/mp4')
# end


# ==============================================================================================================================================
puts 'Creating users'
User.create!(email: 'rodiert17@gmail.com', first_name: 'thomas', last_name: 'rodier', password: 'rodiert17@gmail.com', slug: 'thomas-rodier')
6.times do
  User.create!(email: Faker::Internet.email, first_name: Faker::Name.first_name , last_name: Faker::Name.last_name, password:'123456', slug: Faker::String.random(length: 6))
end

puts "#{User.count} Users have been created"

# ==============================================================================================================================================
puts 'Creating courses'
Course.create!(title: 'Introduction - Merci pour ta confiance !', slug: 'introduction', video_url: ["https://www.youtube.com/watch?v=H0iV2ngzy34&list=RDH0iV2ngzy34&start_radio=1"], pdf_course: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585734100/Exceltips/Excel_full_xw9qyi.pdf"] , pdf_slip: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585734238/Exceltips/Exceltips_Fiches_les_indispensables_osgcfn.pdf"] , excel_course: ["https://res.cloudinary.com/exceltipsfr/raw/upload/v1585749748/Exercices_Exceltips_zjkxfc.xlsx"])
second_course = Course.create!(title: 'Texte - Concaténer & Guillements', slug: 'concatener-guillemets', video_url: ["https://youtu.be/ZvgGQ1tNQ3s"], pdf_course: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732808/Exceltips/Exceltips_-_Concatener_Guillemets_kmirdx.pdf"] , pdf_slip: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732808/Exceltips/Concatener_Guillemet_Fiche_vbzjlw.pdf"] , excel_course: [ "https://res.cloudinary.com/exceltipsfr/raw/upload/v1585732807/Exceltips/Exceltips_-_Concatener_Guillemets_Exercice_ys7tte.xlsx"] )
third_course = Course.create!(title: 'Texte - Gauche & Droite', slug: 'gauche-droite', video_url: ["https://youtu.be/IIu_5HeClSA"], pdf_course: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732890/Exceltips/Exceltips_-_Gauche_Droite_tjmwsu.pdf"] , pdf_slip: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732890/Exceltips/Gauche_Droite_Fiche_ahzymm.pdf"] , excel_course: ["https://res.cloudinary.com/exceltipsfr/raw/upload/v1585732890/Exceltips/Exceltips_-_Gauche_Droite_Exercices_xjoy5t.xlsx"] )
Course.create!(title: 'Texte - Trouve', slug: 'trouve', video_url: ["https://youtu.be/-TVZPEPNHs8"], pdf_course: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732891/Exceltips/Exceltips_-_Trouve_c8eeux.pdf"] , pdf_slip: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732891/Exceltips/Trouve_Fiche_gq78hn.pdf"] , excel_course: ["https://res.cloudinary.com/exceltipsfr/raw/upload/v1585732890/Exceltips/Exceltips_-_Trouve_Exercices_cmdsiq.xlsx"] )
Course.create!(title: 'Texte - Stxt', slug: 'stxt', video_url: ["https://youtu.be/w9KDYxEf1sY"], pdf_course: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732890/Exceltips/Exceltips_-_STXT_c40ysh.pdf"] , pdf_slip: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732891/Exceltips/STXT_Fiche_hretbd.pdf"] , excel_course: ["https://res.cloudinary.com/exceltipsfr/raw/upload/v1585732891/Exceltips/Exceltips_-_STXT_Exercices_mtxduf.xlsx"] )
Course.create!(title: 'Texte - Nbcar', slug: 'nbcar', video_url: ["https://youtu.be/RhmAnCCY8Es"], pdf_course: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732891/Exceltips/Exceltips_-_NBCAR_aqgjlr.pdf"], pdf_slip: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732891/Exceltips/NBCAR_Fiche_hyhrby.pdf"], excel_course: ["https://res.cloudinary.com/exceltipsfr/raw/upload/v1585732891/Exceltips/Exceltips_-_NBCAR_Exercices_zyodob.xlsx"])
Course.create!(title: 'Texte - Supprespace', slug: 'supprespace', video_url: ["https://youtu.be/y3g40dJCtdI"], pdf_course: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732891/Exceltips/Exceltips_-_SUPPRESPACE_dgtwr9.pdf"] , pdf_slip: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732891/Exceltips/SUPPRESPACE_Fiche_baswbi.pdf"] , excel_course: ["https://res.cloudinary.com/exceltipsfr/raw/upload/v1585732891/Exceltips/Exceltips_-_SUPPRESPACE_Exercices_jyzl81.xlsx"] )
Course.create!(title: 'Texte - Cellule & Adresse', slug: 'cellule-adresse', video_url: ["https://youtu.be/uTP6jBpCqa8"], pdf_course: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585748932/Cellule_Adresse_cours_k558fm.pdf"] , pdf_slip: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585749035/Adresse_Cellule_fiche_obtens.pdf"] , excel_course: ["https://res.cloudinary.com/exceltipsfr/raw/upload/v1585749076/Exceltips/Exceltips_-_ADRESSE_CELLULE_Exercices_sttaff.xlsx"])
Course.create!(title: 'Business - Recherchev', slug: 'recherchev', video_url: ["https://youtu.be/xf1BQtpA4Wk"], pdf_course: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732892/Exceltips/Exceltips_-_RECHERCHEV_bk8gep.pdf"] , pdf_slip: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732892/Exceltips/RECHERCHEV_Fiche_iz5rbu.pdf"] , excel_course: ["https://res.cloudinary.com/exceltipsfr/raw/upload/v1585732892/Exceltips/Exceltips_-_RechercheV_Exercices_o5rhqx.xlsx"] )
Course.create!(title: 'Business - Rechercheh', slug: 'rechercheh', video_url: ["https://youtu.be/mVrm6XWitXY"], pdf_course: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732892/Exceltips/Exceltips_-_RECHERCHEH_rxn7bo.pdf"] , pdf_slip: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732892/Exceltips/RECHERCHEH_Fiche_jtg2oz.pdf"] , excel_course: ["https://res.cloudinary.com/exceltipsfr/raw/upload/v1585732892/Exceltips/Exceltips_-_RechercheH_Exercices_pnsgmu.xlsx"] )
Course.create!(title: 'Business - Sierreur', slug: 'sierreur', video_url: ["https://youtu.be/vCq4E9sDwjg"], pdf_course: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732892/Exceltips/Exceltips_-_SIERREUR_qojsmc.pdf"] , pdf_slip: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732892/Exceltips/SIERREUR_Fiche_xnemuu.pdf"] , excel_course: ["https://res.cloudinary.com/exceltipsfr/raw/upload/v1585732892/Exceltips/Exceltips_-_SIERREUR_Exercices_bzkmip.xlsx"] )
Course.create!(title: 'Business - Petite & Grande valeur', slug: 'petite-grande-valeur', video_url: ["https://youtu.be/ZSBHQKQgXbQ"], pdf_course: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732893/Exceltips/Exceltips_-_Petite_Grande_Valeur_uqlz9s.pdf"] , pdf_slip: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732893/Exceltips/PETITE_GRANDE.VALEUR_Fiche_mi9wz6.pdf"] , excel_course: ["https://res.cloudinary.com/exceltipsfr/raw/upload/v1585732893/Exceltips/Exceltips_-_Petite_Grande_Valeur_Exercices_cnytbn.xlsx"] )
Course.create!(title: 'Business - Index', slug: 'index', video_url: ["https://youtu.be/NZvHGGh6-qQ"], pdf_course: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732892/Exceltips/Exceltips_-_INDEX_uq8x3i.pdf"] , pdf_slip: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732892/Exceltips/INDEX_Fiche_n2d7ks.pdf"] , excel_course: ["https://res.cloudinary.com/exceltipsfr/raw/upload/v1585732892/Exceltips/Exceltips_-_Index_Exercices_ukamzo.xlsx"] )
Course.create!(title: 'Business - Equiv', slug: 'equiv', video_url: ["https://youtu.be/VDCjZWZKLME"], pdf_course: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732893/Exceltips/Exceltips_-_EQUIV_kfoxet.pdf"] , pdf_slip: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732893/Exceltips/EQUIV_Fiche_h3igzn.pdf"] , excel_course: ["https://res.cloudinary.com/exceltipsfr/raw/upload/v1585732893/Exceltips/Exceltips_-_Equiv_Exercices_jhmggf.xlsx"] )
Course.create!(title: 'Business - Sous-total', slug: 'sous-total', video_url: ["https://youtu.be/YmLXTiPt_Vg"], pdf_course: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732893/Exceltips/Exceltips_-_SOUS.TOTAL_f91qzr.pdf"] , pdf_slip: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732893/Exceltips/SOUS.TOTAL_Fiche_ssswna.pdf"] , excel_course: ["https://res.cloudinary.com/exceltipsfr/raw/upload/v1585732893/Exceltips/Exceltips_-_Sous.Total_Exercices_hg0iar.xlsx"] )
Course.create!(title: 'Business - Somme.si', slug: 'somme-si', video_url: ["https://youtu.be/8NmfxVXOwd0"], pdf_course: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732893/Exceltips/Exceltips_-_SOMME.SI_xfdiba.pdf"] , pdf_slip: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732893/Exceltips/SOMME.SI_Fiche_kzimo1.pdf"] , excel_course: ["https://res.cloudinary.com/exceltipsfr/raw/upload/v1585732893/Exceltips/Exceltips_-_Somme.si_Exercices_ipcbnh.xlsx"] )
Course.create!(title: 'Business - Somme.si.ens', slug: 'somme-si-ens', video_url: ["https://youtu.be/hr66T0NcADc"], pdf_course: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732893/Exceltips/Exceltips_-_SOMME.SI.ENS_mcstta.pdf"] , pdf_slip: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732894/Exceltips/SOMME.SI.ENS_Fiche_u9swt1.pdf"] , excel_course: ["https://res.cloudinary.com/exceltipsfr/raw/upload/v1585732894/Exceltips/Exceltips_-_Somme.si.ens_Exercices_gcw5i9.xlsx"] )
Course.create!(title: 'Business - Sommeprod', slug: 'sommeprod', video_url: ["https://youtu.be/qrB-ubnSEq8"], pdf_course: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732894/Exceltips/Exceltips_-_SOMMEPROD_yspjrp.pdf"] , pdf_slip: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585749470/Sommprod_fiches_daxdpt.pdf"], excel_course: ["https://res.cloudinary.com/exceltipsfr/raw/upload/v1585732894/Exceltips/Exceltips_-_Sommeprod_Exercices_plqqxn.xlsx"])
Course.create!(title: 'Business - Indirect', slug: 'indirect', video_url: [""], pdf_course: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732894/Exceltips/Exceltips_-_SOMMEPROD_yspjrp.pdf"] , pdf_slip: [""] , excel_course: [""] )
Course.create!(title: 'Imbrication - Qu\'est-ce que c\'est ?', slug: 'imbrications', video_url: [""], pdf_course: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585736238/Exceltips/Imbrication_les_indispensables_jmvl7b.pdf"] , pdf_slip: [""] , excel_course: [""] )
Course.create!(title: 'Imbrication - Extraire les Nom & Prénoms d\'une adresse mail', slug: 'extraire-nom-prenom-mail', video_url: [""], pdf_course: [""] , pdf_slip: [""] , excel_course: ["https://res.cloudinary.com/exceltipsfr/raw/upload/v1585735194/Exceltips/Extraire_les_Nom_Prenoms_d_une_adresse_mail_sxxamm.xlsx"] )
Course.create!(title: 'Imbrication - Créer une adresse mail à partir d\'un nom & prénom', slug: 'créer-adresse-mail-nom-prenom', video_url: [""], pdf_course: [""] , pdf_slip: [""] , excel_course: ["https://res.cloudinary.com/exceltipsfr/raw/upload/v1585735194/Exceltips/Creer_une_adresse_mail_a_partir_d_un_nom_prenom_e2jdth.xlsx"] )
Course.create!(title: 'Imbrication - Incorporer une erreur dans une fonction', slug: 'erreur-formule', video_url: [""], pdf_course: [""] , pdf_slip: [""] , excel_course: ["https://res.cloudinary.com/exceltipsfr/raw/upload/v1585735194/Exceltips/Incorporer_une_erreur_dans_une_fonction_SI_yioebf.xlsx"] )
Course.create!(title: 'Imbrication - Pallier à la recherchev', slug: 'pallier-recherchev', video_url: [""], pdf_course: [""] , pdf_slip: [""] , excel_course: ["https://res.cloudinary.com/exceltipsfr/raw/upload/v1585735194/Exceltips/Pallier_a_la_recherchev_sq9nar.xlsx"] )
Course.create!(title: 'Imbrication - Consolider des fichiers', slug: 'consolidation-fichiers', video_url: [""], pdf_course: [""] , pdf_slip: [""] , excel_course: ["https://res.cloudinary.com/exceltipsfr/raw/upload/v1585735194/Exceltips/Consolidation_fichier_automatique_ndokkm.xlsx"] )
Course.create!(title: 'Imbrication - Faire un top10 (ou plus) sur une base de données', slug: 'top-ten', video_url: [""], pdf_course: [""] , pdf_slip: [""] , excel_course: ["https://res.cloudinary.com/exceltipsfr/raw/upload/v1585735194/Exceltips/Top_10_Automatique_hj4gky.xlsx"] )
Course.create!(title: 'Certificat - Félicitation ! Tu as terminé la formation Exceltips', slug: 'certificat-exceltips', pdf_course: [""] , pdf_slip: [""] , excel_course: [""] )

puts "#{Course.count} Courses have been created"

# ==============================================================================================================================================
puts 'Creating Progression'
User.all.each do |user|
  Course.first(15).each do |course|
    Progression.create!(course: course, user: user)
  end
  Course.last(11).each do |course|
    Progression.create!(course: course, user: user)
  end
end

puts "#{Progression.count} Progression have been created"

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
