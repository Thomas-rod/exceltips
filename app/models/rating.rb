class Rating < ApplicationRecord
  belongs_to :user

  validates :rate, presence: { not_blank: 'Si tu sais pas quoi mettre, lache-toi avec un 5 étoiles ...' }
  validates :rate, inclusion: { in: 0..5 }
end
