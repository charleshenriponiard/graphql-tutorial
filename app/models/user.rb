class User < ApplicationRecord
  has_many :votes
  has_many :links
  has_secure_password

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true  
end
