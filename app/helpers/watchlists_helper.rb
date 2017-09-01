module WatchlistsHelper

  def includes_movie(movie)
    if current_user
      current_user.watchlists.each do |watchlist_item|
        return true if watchlist_item.movie_id == movie.id
      end
    else
      false
    end
  end



end
