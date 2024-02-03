class Booking < ApplicationRecord
  validates :starts_at, presence: true
  validates :ends_at, presence: true

  belongs_to :user
  belongs_to :room
end
