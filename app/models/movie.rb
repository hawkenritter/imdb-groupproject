class Movie < ApplicationRecord
  has_many :watchlists
  has_many :favorites
  has_many :comments
  has_many :activities

  # def self.search(inputted_search)
  #   where("title ILIKE ?", "%#{inputted_search}%")
  # end
end
