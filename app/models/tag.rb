class Tag < ApplicationRecord
  has_many :join_user_potins
  has_many :potins, through: :join_user_potins
end
