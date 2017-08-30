class Movie < ApplicationRecord
  has_many :watchlists
  has_many :favorites
  has_many :comments
  has_many :activities
end
