class Answer < ApplicationRecord
  belongs_to :comment, dependent: :destroy
  belongs_to :user, dependent: :destroy
end
