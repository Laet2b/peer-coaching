require 'date'

class Option < ApplicationRecord
  belongs_to :skill
  has_many :bookings
end
