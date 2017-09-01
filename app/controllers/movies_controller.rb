class MoviesController < ApplicationController

  def show
    @movie = Movie.find(params[:id])
    if current_user
      @favorite = current_user.favorites.find_by(movie_id: @movie.id)
    end
  end

  def search
    @search = params[:search]
    @movies = Movie.search(@search).order("release_date DESC")
    render "movies/_search_results"
  end

  def index
    @movies = Movie.order("release_date DESC").where("release_date >= '2016-01-01'::date")
  end

end
