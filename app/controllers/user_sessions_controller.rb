class UserSessionsController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	user = User.find_by(username: params[:username])
  	if user && user.authenticate(params[:password])
  		session[:user_id] = user.id
  		flash[:success] = "Thank you for logging in #{user.username}!"
  		redirect_to projects_path
  	else
  		render action: 'new'
  	end
  end
end
