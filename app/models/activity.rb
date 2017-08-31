class Activity < ApplicationRecord
  belongs_to :user
  belongs_to :movie

  def message
    if self.action == "watchlist"
      "added a movie to watchlist"
    elsif self.action == "favorite"
      "favorited the movie"
    else
      "commented on the movie"
    end
  end
end
