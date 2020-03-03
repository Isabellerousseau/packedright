class Order < ApplicationRecord
  belongs_to :driver
  belongs_to :user
  belongs_to :parcel
  has_one :delivery
  # has_one :review
end
# order has two reviews.... moest het dan has_many? of....
