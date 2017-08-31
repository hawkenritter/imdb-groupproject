class User < ApplicationRecord

	validates :username, :email, presence: true
	validates :username, :email, uniqueness: true

	has_secure_password

  has_many :watchlists
  has_many :favorites
  has_many :comments
  has_many :activities

end
