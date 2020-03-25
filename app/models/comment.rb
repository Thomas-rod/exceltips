class Comment < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :course

  has_many :answers
  validates :message, presence: { not_blank: 'ne doit pas être vide' }
  validates :message, length: { minimum: 10, too_short: "Votre message doit faire au minimum 10 charactères" }
end
