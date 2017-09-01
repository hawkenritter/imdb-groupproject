class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    p "Create called!!!!!!!!!!"
    @movie = Movie.find(params[:movie_id])
    @comment = @movie.comments.new(comment_params)
    @comment.user = current_user
    #@activity = current_user.activity.create(movie_id: @movie.id, action: "comment")
    @comment.save
    respond_to do |format|
      format.html {redirect_to movie_path(@movie)}
      format.js { }
    end

  end

  # def update

  # end


  private
    def comment_params
      params.require(:comment).permit(:description)
    end

end
