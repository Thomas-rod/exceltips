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
Course.create!(title: 'Introduction - Merci pour ta confiance !', slug: 'introduction', video_id: "xrZT4ZSQOeY", pdf_course: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585734100/Exceltips/Excel_full_xw9qyi.pdf"] , pdf_slip: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585734238/Exceltips/Exceltips_Fiches_les_indispensables_osgcfn.pdf"] , excel_course: ["https://res.cloudinary.com/exceltipsfr/raw/upload/v1585749748/Exercices_Exceltips_zjkxfc.xlsx", cover: ""])
second_course = Course.create!(title: 'Texte - Concaténer & Guillements', slug: 'concatener-guillemets', video_id: "ZvgGQ1tNQ3s", pdf_course: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732808/Exceltips/Exceltips_-_Concatener_Guillemets_kmirdx.pdf"] , pdf_slip: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732808/Exceltips/Concatener_Guillemet_Fiche_vbzjlw.pdf"] , excel_course: [ "https://res.cloudinary.com/exceltipsfr/raw/upload/v1585732807/Exceltips/Exceltips_-_Concatener_Guillemets_Exercice_ys7tte.xlsx"], cover: "https://res.cloudinary.com/exceltipsfr/image/upload/v1590588008/Exceltips/Concat%C3%A9ner_Guillemets_vvy4km.png" )
third_course = Course.create!(title: 'Texte - Gauche & Droite', slug: 'gauche-droite', video_id: "IIu_5HeClSA", pdf_course: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732890/Exceltips/Exceltips_-_Gauche_Droite_tjmwsu.pdf"] , pdf_slip: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732890/Exceltips/Gauche_Droite_Fiche_ahzymm.pdf"] , excel_course: ["https://res.cloudinary.com/exceltipsfr/raw/upload/v1585732890/Exceltips/Exceltips_-_Gauche_Droite_Exercices_xjoy5t.xlsx"], cover: "https://res.cloudinary.com/exceltipsfr/image/upload/v1590588008/Exceltips/Gauche_Droite_eywxnf.png" )
Course.create!(title: 'Texte - Trouve', slug: 'trouve', video_id: "-TVZPEPNHs8", pdf_course: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732891/Exceltips/Exceltips_-_Trouve_c8eeux.pdf"] , pdf_slip: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732891/Exceltips/Trouve_Fiche_gq78hn.pdf"] , excel_course: ["https://res.cloudinary.com/exceltipsfr/raw/upload/v1585732890/Exceltips/Exceltips_-_Trouve_Exercices_cmdsiq.xlsx"], cover: "https://res.cloudinary.com/exceltipsfr/image/upload/v1590588007/Exceltips/Trouve_Miniature_jjwf0b.png" )
Course.create!(title: 'Texte - Stxt', slug: 'stxt', video_id: "w9KDYxEf1sY", pdf_course: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732890/Exceltips/Exceltips_-_STXT_c40ysh.pdf"] , pdf_slip: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732891/Exceltips/STXT_Fiche_hretbd.pdf"] , excel_course: ["https://res.cloudinary.com/exceltipsfr/raw/upload/v1585732891/Exceltips/Exceltips_-_STXT_Exercices_mtxduf.xlsx"], cover: "https://res.cloudinary.com/exceltipsfr/image/upload/v1590588007/Exceltips/Stxt_miniature_tllsuz.png" )
Course.create!(title: 'Texte - Nbcar', slug: 'nbcar', video_id: "RhmAnCCY8Es", pdf_course: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732891/Exceltips/Exceltips_-_NBCAR_aqgjlr.pdf"], pdf_slip: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732891/Exceltips/NBCAR_Fiche_hyhrby.pdf"], excel_course: ["https://res.cloudinary.com/exceltipsfr/raw/upload/v1585732891/Exceltips/Exceltips_-_NBCAR_Exercices_zyodob.xlsx", cover: "https://res.cloudinary.com/exceltipsfr/image/upload/v1590588008/Exceltips/Nbcar_miniature_fjid7o.png"])
Course.create!(title: 'Texte - Supprespace', slug: 'supprespace', video_id: "y3g40dJCtdI", pdf_course: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732891/Exceltips/Exceltips_-_SUPPRESPACE_dgtwr9.pdf"] , pdf_slip: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732891/Exceltips/SUPPRESPACE_Fiche_baswbi.pdf"] , excel_course: ["https://res.cloudinary.com/exceltipsfr/raw/upload/v1585732891/Exceltips/Exceltips_-_SUPPRESPACE_Exercices_jyzl81.xlsx"], cover: "https://res.cloudinary.com/exceltipsfr/image/upload/v1590588009/Exceltips/Supprespace_miniature_nzah6z.png" )
Course.create!(title: 'Texte - Cellule & Adresse', slug: 'cellule-adresse', video_id: "uTP6jBpCqa8", pdf_course: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585748932/Cellule_Adresse_cours_k558fm.pdf"] , pdf_slip: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585749035/Adresse_Cellule_fiche_obtens.pdf"] , excel_course: ["https://res.cloudinary.com/exceltipsfr/raw/upload/v1585749076/Exceltips/Exceltips_-_ADRESSE_CELLULE_Exercices_sttaff.xlsx", cover: "https://res.cloudinary.com/exceltipsfr/image/upload/v1590588009/Exceltips/Adresse_Cellule_miniature_adsivq.png"])
Course.create!(title: 'Business - Recherchev', slug: 'recherchev', video_id: "xf1BQtpA4Wk", pdf_course: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732892/Exceltips/Exceltips_-_RECHERCHEV_bk8gep.pdf"] , pdf_slip: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732892/Exceltips/RECHERCHEV_Fiche_iz5rbu.pdf"] , excel_course: ["https://res.cloudinary.com/exceltipsfr/raw/upload/v1585732892/Exceltips/Exceltips_-_RechercheV_Exercices_o5rhqx.xlsx"], cover: "https://res.cloudinary.com/exceltipsfr/image/upload/v1590588007/Exceltips/Recherchev_gpkrp9.png" )
Course.create!(title: 'Business - Rechercheh', slug: 'rechercheh', video_id: "mVrm6XWitXY", pdf_course: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732892/Exceltips/Exceltips_-_RECHERCHEH_rxn7bo.pdf"] , pdf_slip: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732892/Exceltips/RECHERCHEH_Fiche_jtg2oz.pdf"] , excel_course: ["https://res.cloudinary.com/exceltipsfr/raw/upload/v1585732892/Exceltips/Exceltips_-_RechercheH_Exercices_pnsgmu.xlsx"], cover: "https://res.cloudinary.com/exceltipsfr/image/upload/v1590588010/Exceltips/Rechercheh_miniature_mxw1qp.png" )
Course.create!(title: 'Business - Sierreur', slug: 'sierreur', video_id: "vCq4E9sDwjg", pdf_course: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732892/Exceltips/Exceltips_-_SIERREUR_qojsmc.pdf"] , pdf_slip: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732892/Exceltips/SIERREUR_Fiche_xnemuu.pdf"] , excel_course: ["https://res.cloudinary.com/exceltipsfr/raw/upload/v1585732892/Exceltips/Exceltips_-_SIERREUR_Exercices_bzkmip.xlsx"], cover: "https://res.cloudinary.com/exceltipsfr/image/upload/v1590588009/Exceltips/Sierreur_miniature_u2cjns.png" )
Course.create!(title: 'Business - Petite & Grande valeur', slug: 'petite-grande-valeur', video_id: "ZSBHQKQgXbQ", pdf_course: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732893/Exceltips/Exceltips_-_Petite_Grande_Valeur_uqlz9s.pdf"] , pdf_slip: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732893/Exceltips/PETITE_GRANDE.VALEUR_Fiche_mi9wz6.pdf"] , excel_course: ["https://res.cloudinary.com/exceltipsfr/raw/upload/v1585732893/Exceltips/Exceltips_-_Petite_Grande_Valeur_Exercices_cnytbn.xlsx"], cover: "https://res.cloudinary.com/exceltipsfr/image/upload/v1590588008/Exceltips/Petite_Grande_valeur_miniature_qeg0br.png" )
Course.create!(title: 'Business - Index', slug: 'index', video_id: "NZvHGGh6-qQ", pdf_course: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732892/Exceltips/Exceltips_-_INDEX_uq8x3i.pdf"] , pdf_slip: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732892/Exceltips/INDEX_Fiche_n2d7ks.pdf"] , excel_course: ["https://res.cloudinary.com/exceltipsfr/raw/upload/v1585732892/Exceltips/Exceltips_-_Index_Exercices_ukamzo.xlsx"], cover: "https://res.cloudinary.com/exceltipsfr/image/upload/v1590588007/Exceltips/Index_miniature_vgglfs.png" )
Course.create!(title: 'Business - Equiv', slug: 'equiv', video_id: "VDCjZWZKLME", pdf_course: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732893/Exceltips/Exceltips_-_EQUIV_kfoxet.pdf"] , pdf_slip: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732893/Exceltips/EQUIV_Fiche_h3igzn.pdf"] , excel_course: ["https://res.cloudinary.com/exceltipsfr/raw/upload/v1585732893/Exceltips/Exceltips_-_Equiv_Exercices_jhmggf.xlsx"], cover: "https://res.cloudinary.com/exceltipsfr/image/upload/v1590588007/Exceltips/Equiv_miniature_xj0ump.png" )
Course.create!(title: 'Business - Sous-total', slug: 'sous-total', video_id: "YmLXTiPt_Vg", pdf_course: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732893/Exceltips/Exceltips_-_SOUS.TOTAL_f91qzr.pdf"] , pdf_slip: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732893/Exceltips/SOUS.TOTAL_Fiche_ssswna.pdf"] , excel_course: ["https://res.cloudinary.com/exceltipsfr/raw/upload/v1585732893/Exceltips/Exceltips_-_Sous.Total_Exercices_hg0iar.xlsx"], cover: "https://res.cloudinary.com/exceltipsfr/image/upload/v1590588009/Exceltips/Sous.total_miniature_qilown.png" )
Course.create!(title: 'Business - Somme.si', slug: 'somme-si', video_id: "8NmfxVXOwd0", pdf_course: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732893/Exceltips/Exceltips_-_SOMME.SI_xfdiba.pdf"] , pdf_slip: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732893/Exceltips/SOMME.SI_Fiche_kzimo1.pdf"] , excel_course: ["https://res.cloudinary.com/exceltipsfr/raw/upload/v1585732893/Exceltips/Exceltips_-_Somme.si_Exercices_ipcbnh.xlsx"], cover: "https://res.cloudinary.com/exceltipsfr/image/upload/v1590588008/Exceltips/Somme.si_miniature_ixc9rc.png" )
Course.create!(title: 'Business - Somme.si.ens', slug: 'somme-si-ens', video_id: "hr66T0NcADc", pdf_course: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732893/Exceltips/Exceltips_-_SOMME.SI.ENS_mcstta.pdf"] , pdf_slip: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732894/Exceltips/SOMME.SI.ENS_Fiche_u9swt1.pdf"] , excel_course: ["https://res.cloudinary.com/exceltipsfr/raw/upload/v1585732894/Exceltips/Exceltips_-_Somme.si.ens_Exercices_gcw5i9.xlsx"], cover: "https://res.cloudinary.com/exceltipsfr/image/upload/v1590588008/Exceltips/Somme.si.ens_miniature_gywfqx.png" )
Course.create!(title: 'Business - Sommeprod', slug: 'sommeprod', video_id: "qrB-ubnSEq8", pdf_course: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732894/Exceltips/Exceltips_-_SOMMEPROD_yspjrp.pdf"] , pdf_slip: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585749470/Sommprod_fiches_daxdpt.pdf"], excel_course: ["https://res.cloudinary.com/exceltipsfr/raw/upload/v1585732894/Exceltips/Exceltips_-_Sommeprod_Exercices_plqqxn.xlsx"], cover: "https://res.cloudinary.com/exceltipsfr/image/upload/v1590588007/Exceltips/Sommeprod_miniature_mgsxvg.png")
Course.create!(title: 'Business - Indirect', slug: 'indirect', video_id: [""], pdf_course: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585732894/Exceltips/Exceltips_-_SOMMEPROD_yspjrp.pdf"] , pdf_slip: [""] , excel_course: [""], cover: "" )
Course.create!(title: 'Imbrication - Qu\'est-ce que c\'est ?', slug: 'imbrications', video_id: [""], pdf_course: ["https://res.cloudinary.com/exceltipsfr/image/upload/v1585736238/Exceltips/Imbrication_les_indispensables_jmvl7b.pdf"] , pdf_slip: [""] , excel_course: [""], cover: "" )
Course.create!(title: 'Imbrication - Extraire les Nom & Prénoms d\'une adresse mail', slug: 'extraire-nom-prenom-mail', video_id: [""], pdf_course: [""] , pdf_slip: [""] , excel_course: ["https://res.cloudinary.com/exceltipsfr/raw/upload/v1585735194/Exceltips/Extraire_les_Nom_Prenoms_d_une_adresse_mail_sxxamm.xlsx"], cover: "" )
Course.create!(title: 'Imbrication - Créer une adresse mail à partir d\'un nom & prénom', slug: 'créer-adresse-mail-nom-prenom', video_id: [""], pdf_course: [""] , pdf_slip: [""] , excel_course: ["https://res.cloudinary.com/exceltipsfr/raw/upload/v1585735194/Exceltips/Creer_une_adresse_mail_a_partir_d_un_nom_prenom_e2jdth.xlsx"], cover: "" )
Course.create!(title: 'Imbrication - Incorporer une erreur dans une fonction', slug: 'erreur-formule', video_id: [""], pdf_course: [""] , pdf_slip: [""] , excel_course: ["https://res.cloudinary.com/exceltipsfr/raw/upload/v1585735194/Exceltips/Incorporer_une_erreur_dans_une_fonction_SI_yioebf.xlsx"], cover: "" )
Course.create!(title: 'Imbrication - Pallier à la recherchev', slug: 'pallier-recherchev', video_id: [""], pdf_course: [""] , pdf_slip: [""] , excel_course: ["https://res.cloudinary.com/exceltipsfr/raw/upload/v1585735194/Exceltips/Pallier_a_la_recherchev_sq9nar.xlsx"], cover: "" )
Course.create!(title: 'Imbrication - Consolider des fichiers', slug: 'consolidation-fichiers', video_id: [""], pdf_course: [""] , pdf_slip: [""] , excel_course: ["https://res.cloudinary.com/exceltipsfr/raw/upload/v1585735194/Exceltips/Consolidation_fichier_automatique_ndokkm.xlsx"], cover: "" )
Course.create!(title: 'Imbrication - Faire un top10 (ou plus) sur une base de données', slug: 'top-ten', video_id: [""], pdf_course: [""] , pdf_slip: [""] , excel_course: ["https://res.cloudinary.com/exceltipsfr/raw/upload/v1585735194/Exceltips/Top_10_Automatique_hj4gky.xlsx"], cover: "" )
Course.create!(title: 'Certificat - Félicitation ! Tu as terminé la formation Exceltips', slug: 'certificat-exceltips', pdf_course: [""] , pdf_slip: [""] , excel_course: [""], cover: "" )

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
