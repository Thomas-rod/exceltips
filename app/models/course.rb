class Course < ApplicationRecord
  has_many :comments
  has_many :ratings
  has_many :progression_courses
  has_many :answers, through: :comments
  has_many :users, through: :progression_courses

  validates :title, presence: { not_blank: 'Humm... \'\' n\'est pas un bon titre ....' }
  validates :title, uniqueness: { not_uniq: 'Ce titre est déjà utilisé. Change !!!!'}
  validates :slug, uniqueness: { not_uniq: 'Ce slug est déjà utilisé. Fait gaff'}

end
