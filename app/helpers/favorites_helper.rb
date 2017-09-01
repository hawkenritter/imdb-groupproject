module FavoritesHelper
  def includes_favorite(movie)
    current_user.favorites.each do |favorited_item|
      return true if favorited_item.movie_id == movie.id
    end
    false
  end
end

