class FavoritesController < ApplicationController

  # respond_to :html, :js

  def new
    @favorite = Favorite.new
  end

  # def show
  #   @favorite = current_user.favorites.find_by(:movie_id)
  # end

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

  def destroy
    @movie = Movie.find(params[:movie_id])
    @favorite = current_user.favorites.find_by(movie_id: @movie.id)
    @favorite.destroy

    respond_to do |format|
      format.html {redirect_to movie_path(@movie)}
      format.js {}
    end
  end

end
