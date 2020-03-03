class Driver < ApplicationRecord

  validates :name, :email, :phone_number, :current_longitude, :current_latitude, presence: true

   geocoded_by :current_latitude, :current_longitude
   after_validation :geocode, if: :will_save_change_to_address?
end
