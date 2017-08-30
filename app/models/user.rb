class User < ApplicationRecord

	validate :username, :email, presence: true
	validate :username, :email, uniqueness: true

	has_secured_password
end
