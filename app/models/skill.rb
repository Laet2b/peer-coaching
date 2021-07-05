class Skill < ApplicationRecord
  belongs_to :user
  has_many :options
  has_many :bookings, through: :options
  has_many :skillslists
end
