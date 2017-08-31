class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @movie = Movie.find(params[:movie_id])
    p @movie
    p params
    @comment = @movie.comments.new(comment_params)
    @comment.user = current_user

    @comment.save
    redirect_to movie_path(@movie)
  end

  # def update

  # end


  private
    def comment_params
      params.require(:comment).permit(:description)
    end

end
