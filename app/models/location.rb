class Location < ApplicationRecord
has_many :reservations, dependent: :destroy
has_many :trips, through: :reservations
end

