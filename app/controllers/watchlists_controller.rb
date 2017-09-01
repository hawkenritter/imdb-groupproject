class WatchlistsController < ApplicationController

  def new
    @watchlist = Watchlist.new
  end

  def create
    @movie = Movie.find(params[:movie_id])
    @user = current_user
      @watchlist = @movie.watchlists.new(user: @user, movie: @movie)
      #@activity = @user.activity.create(movie_id: @movie.id, action: "watchlist")
      @watchlist.save
      respond_to do |format|
        format.html {redirect_to movie_path(@movie)}
        format.js {}
      end
  end

  def destroy
    @movie = Movie.find(params[:movie_id])
    @watchlist = current_user.watchlists.find_by(movie_id: @movie.id)
    @watchlist.destroy

    respond_to do |format|
      format.html {redirect_to movie_path(@movie)}
      format.js {}
    end
  end

end
