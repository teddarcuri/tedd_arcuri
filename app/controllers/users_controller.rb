class UsersController < ApplicationController
  
  def index
  	@users = User.all
  end

  def show
  	@user = User.find(params[:id])
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)

  	if @user.save
      session[:user_id] = @user.id
      flash[:success] = "Thanks for signing up " + @user.username + "!"
  		redirect_to(:controller => "pages", :action => "home")
  	else
  		render('new')
  	end
  end

  private	
	  def user_params
	  	  params.require(:user).permit(:username, :password, :password_confirmation)
	  end
end
