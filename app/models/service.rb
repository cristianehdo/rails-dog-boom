class Service < ApplicationRecord
  belongs_to :user

  geocoded_by :postcode
  after_validation :geocode, if: :postcode_changed?
end
