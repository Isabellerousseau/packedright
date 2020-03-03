class Driver < ApplicationRecord
  validates :name, :email, :phone_number, :address, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

end
