class Course < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :progressions, dependent: :destroy
  has_many :answers, through: :comments, dependent: :destroy
  has_many :users, through: :progression

  validates :title, presence: { not_blank: 'Humm... \'\' n\'est pas un bon titre ....' }
  validates :title, uniqueness: { not_uniq: 'Ce titre est déjà utilisé. Change !!!!'}
  validates :slug, uniqueness: { not_uniq: 'Ce slug est déjà utilisé. Fait gaff'}

end
