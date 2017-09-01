module WatchlistsHelper
  def includes_movie(movie)
    if current_user
      current_user.watchlists.each do |watchlist_item|
        return false if watchlist_item.movie == movie
      end
      true
    end
    true
  end
end