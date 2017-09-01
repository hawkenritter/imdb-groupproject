class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			session[:user_id] = @user.id
			redirect_to user_path(@user)
		else
			@errors = @user.errors.full_messages
			render :signup
		end
	end

	def show
		@user = User.find_by(id: params[:id])
		@watchlists = @user.watchlists.order("created_at DESC")
		@favorites = @user.favorites.order("created_at DESC")
		@comments = @user.comments.order("created_at DESC")
		@activities = @user.activities.order("created_at DESC")
	end

	private
	def user_params
		params.require(:user).permit(:username, :email, :password)
	end
end
