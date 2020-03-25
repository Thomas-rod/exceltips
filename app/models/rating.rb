class Rating < ApplicationRecord
  belongs_to :user, dependent: :destroy

  validates :notes, presence: { not_blank: 'Si tu sais pas quoi mettre, lache-toi avec un 5 étoiles ...' }
  validates :notes, inclusion: { in: 0..5 }
end
