class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @movie = Movie.find(params[:movie_id])
    @comment = @movie.comments.create(comment_params)
    redirect_to movie_path(@movie)
  end

  # def update

  # end


  private
    def comment_params
      params.require(:comment).permit(:description, :user)
    end

end
