class User < ApplicationRecord
  has_many :reviews
  has_many :locations, through: :reviews
  has_many :event_users
  has_many :events, through: :event_users
  has_secure_password
  validates :username, uniqueness: true

end
