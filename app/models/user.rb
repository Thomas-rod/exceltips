class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable
  has_many :progression_courses, dependent: :destroy
  has_many :answers, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_one :rating, dependent: :destroy
  has_one :payment, dependent: :destroy
  has_many :courses

  validates :first_name, :email, presence: { not_blank: 'Les champs sont vides... Applique toi !' }
  validates :email, :slug, uniqueness: true

end
