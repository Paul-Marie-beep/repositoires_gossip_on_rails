class Potin < ApplicationRecord
  belongs_to :user
  has_many :join_user_potins
  has_many :tags, through: :join_user_potins
end
