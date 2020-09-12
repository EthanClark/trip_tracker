class Trip < ApplicationRecord
  has_many :reservations, dependent: :destroy
  has_many :locations, through: :reservations
end
