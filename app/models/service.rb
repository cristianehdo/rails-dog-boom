class Service < ApplicationRecord
  belongs_to :user

  validates :postcode, :title, :description, presence: true
  validates :postcode_radius, presence: true, numericality: { only_integer: true }
  validates :category, presence: true, inclusion: { in: %w(walking sitting grooming) }
end
