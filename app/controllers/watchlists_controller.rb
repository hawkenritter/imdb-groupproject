class WatchlistsController < ApplicationController

  def new
    @watchlist = Watchlist.new
  end

  def create
    @movie = Movie.find(params[:movie_id])
    @user = current_user
      @watchlist = @movie.watchlists.new(user: @user, movie: @movie)
      @watchlist.save
        redirect_to movie_path(@movie)
  end



end
