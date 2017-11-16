class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :service

  validates :postcode, presence: true, length: { in: 5..7 }
end
