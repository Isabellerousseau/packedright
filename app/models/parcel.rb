class Parcel < ApplicationRecord
  belongs_to :user

  CATEGORY = %w[Bike Car Van].freeze

  validates :name, :weight, :category, :fragile, presence: true
  validates :category, inclusion: { in: CATEGORY }
end
