class FavoritesController < ApplicationController

  # respond_to :html, :js

  def new
    @favorite = Favorite.new
  end

  def create
    @movie = Movie.find(params[:movie_id])
    @user = current_user
    @favorite = @movie.favorites.new(user: @user, movie: @movie)
    @favorite.save
    respond_to do |format|
      format.html {redirect_to movie_path(@movie)}
      format.js {}
    end
  end

end
