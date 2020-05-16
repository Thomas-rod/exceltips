class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable
  has_many :progressions, dependent: :destroy
  has_many :answers, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_one :rating, dependent: :destroy
  # has_one :order, dependent: :destroy
  has_many :courses

  validates :first_name, :email, presence: { not_blank: 'Les champs sont vides... Applique toi !' }
  validates :email, :slug, uniqueness: true
  after_create :create_progression


  def create_progression
    Course.all.each do |course|
      Progression.create(user: self, course: course)
    end
  end




end
