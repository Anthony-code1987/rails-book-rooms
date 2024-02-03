class Room < ApplicationRecord
  validates :capacity, presence: true
  validates :capacity, numericality: { only_integer: true }
  validates :capacity, numericality: { greater_than: 0 }
  validates :price_per_night, presence: true
  validates :price_per_night, numericality: { greater_than_or_equal_to: 0 }

  belongs_to :hotel
  has_many :bookings, dependent: :destroy
end
