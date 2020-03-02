class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :orders
  has_many :deliveries, though: :orders
  has_many :parcels
  has_many :reviews, through: :orders
  has_one :driver??????
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable
end

  Driver belongs_to :user?????
