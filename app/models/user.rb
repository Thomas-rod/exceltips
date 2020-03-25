class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable
  validates :first_name, :email, presence: { not_blank: 'Les champs sont vides... Applique toi !' }
  validates :email, :slug, uniqueness: true

end
