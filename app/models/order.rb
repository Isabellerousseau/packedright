# frozen_string_literal: true

class Order < ApplicationRecord
  belongs_to :driver
  belongs_to :user
  belongs_to :parcel

  validates :date, :driver_id, :user_id, :parcel_id, :estimated_price, presence: true
end
