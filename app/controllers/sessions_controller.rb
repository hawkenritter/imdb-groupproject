class SessionsController < ApplicationController
	def new
	end

	def create
		user = User.find_by_email(params[:email])
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to user_path(user)
		else
			flash[:notice] = "Invalid Email/Password Combination"
			redirect_to :login
		end
	end

	def delete
		session[:user_id] = nil
		redirect_to root_path
	end
end
