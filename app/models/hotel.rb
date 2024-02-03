class Hotel < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true

  has_many :rooms, dependent: :destroy
  has_many :bookings, through: :rooms, dependent: :destroy
end
