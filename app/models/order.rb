class Order < ApplicationRecord
  belongs_to :driver
  belongs_to :user
  belongs_to :parcel
end
