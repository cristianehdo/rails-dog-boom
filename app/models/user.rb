class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :photo, PhotoUploader
  has_many :bookings
  has_many :services, through: :bookings
  has_many :services
  has_many :bookings, through: :services

  validates :email, presence: true, format: { with: /\A.*@.*\.*\z/ }
end
