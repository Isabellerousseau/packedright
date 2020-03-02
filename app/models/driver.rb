class Driver < ApplicationRecord
  has_many :orders


  validates :name, :email, :phone_number, :current_longitude, :current_latitude, presence: true
end
