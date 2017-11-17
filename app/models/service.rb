class Service < ApplicationRecord
  belongs_to :user
  has_many :bookings

  geocoded_by :postcode
  after_validation :geocode, if: :postcode_changed?
  validates :postcode, :title, :description, presence: true
  validates :category, presence: true, inclusion: { in: %w(walking sitting grooming) }
end
