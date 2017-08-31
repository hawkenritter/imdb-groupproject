class UsersController < ApplicationController

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			session[:user_id] = @user.id
			redirect_to profile_path
		else
			@errors = @user.errors.full_messages
			render signup_path
		end
	end

	private
	def user_params
		params.require(:user).permit(:username, :email, :password)
	end
end
