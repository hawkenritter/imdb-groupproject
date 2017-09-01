module WatchlistsHelper

  def includes_movie(movie)
    current_user.watchlists.each do |watchlist_item|
      return true if watchlist_item.movie_id == movie.id
    end
    false
  end



end
