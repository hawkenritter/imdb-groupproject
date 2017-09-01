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
    #@activity = @user.activity.create(movie_id: @movie.id, action: "favorite")
    @favorite.save

    @activity = Activity.create(user_id: current_user.id, movie_id: @movie.id, action: "Favorites")

    redirect_to user_path(@user)
    # respond_to do |format|
    #   format.html {redirect_to movie_path(@movie)}
    #   format.js {}
    # end
  end

  def destroy
    @movie = Movie.find(params[:movie_id])
    @favorite = current_user.favorites.find_by(movie_id: @movie.id)
    @favorite.destroy

    @activity = Activity.create(user_id: current_user.id, movie_id: @movie.id, action: "Remove Favorite")

    redirect_to movie_path(@movie)

    # respond_to do |format|
    #   format.html {redirect_to movie_path(@movie)}
    #   format.js {}
    # end
  end

end
