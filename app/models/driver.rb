class Driver < ApplicationRecord
  has_many :reviews
  belongs_to :user
  has_many :orders
  has many :deliveries, through: :orders
  has_many :parcels, through: :orders
  validates :name, :email, :phone_number, :current_longitude, :current_latitude, presence: true
end
