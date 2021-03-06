class User < ApplicationRecord
  has_many :meditations
  has_secure_password
  validates :email, presence: true, uniqueness: true
end
