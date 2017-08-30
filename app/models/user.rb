class User < ApplicationRecord


	validate :username, :email, presence: true
	validate :username, :email, uniqueness: true

	has_secured_password

  has_many :watchlists
  has_many :favorites
  has_many :comments
  has_many :activities

end
