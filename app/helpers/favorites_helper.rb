module FavoritesHelper
  def includes_favorite(movie)
    if current_user
      current_user.favorites.each do |favorited_item|
        return true if favorited_item.movie_id == movie.id
      end
    else
      false
    end
  end
end

