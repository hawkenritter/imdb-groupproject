class MoviesController < ApplicationController

  def show
    @movie = Movie.find(params[:id])
  end

  def search
    @search = params[:search]
    @movies = Movie.search(@search).order("release_date DESC")
    render "movies/_search_results"
  end

  def index
    @movies = Movie.all
  end

end
