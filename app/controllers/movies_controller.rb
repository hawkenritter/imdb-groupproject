class MoviesController < ApplicationController

  def show
    @movie = Movie.first #only for testing.. change to Movie.find(params[:id])
  end

end
