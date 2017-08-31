class SessionsController < ApplicationController
	def new
	end

	def create
		user = User.find_by_email(params[:email])
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to root_path # profile_path
		else
			redirect_to root_path # login_path
		end
	end

	def delete
		session[:user_id] = nil
		redirect_to root_path # login_path
	end
end
