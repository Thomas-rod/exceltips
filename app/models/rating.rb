class Rating < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :course

  validates :notes, presence: { not_blank: 'Allez, fait un effort ! (PS: 5 étoiles ...' }
  validates :notes, inclusion: { in: 0..5 }
end
