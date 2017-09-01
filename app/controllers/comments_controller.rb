class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @movie = Movie.find(params[:movie_id])
    @comment = @movie.comments.new(comment_params)
    @comment.user = current_user
    @comment.save

    @activity = Activity.create(user_id: current_user.id, movie_id: @movie.id, action: "comment")

    respond_to do |format|
      format.html {redirect_to movie_path(@movie)}
      format.js { }
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:description)
    end

end
