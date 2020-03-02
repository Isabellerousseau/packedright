class Driver < ApplicationRecord

  validates :name, :email, :phone_number, :current_longitude, :current_latitude, presence: true
end
