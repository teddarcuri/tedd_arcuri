class UserSessionsController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	user = User.find_by(username: params[:username])
  	if user && user.authenticate(params[:password])
  		session[:user_id] = user.id
  		flash[:success] = "You have been logged in as #{user.username}!"
  		redirect_to projects_path
  	else
  		render action: 'new'
  	end
  end

  def destroy
  	session[:user_id] = nil
  	flash[:success] = "You have been logged out, sir."
  	redirect_to projects_path
  end

end
