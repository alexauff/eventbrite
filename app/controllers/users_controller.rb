class UsersController < ApplicationController
  def index
  @users = User.all
  end

  def new
  @user = User.new
  end

  def create
	  @user = User.new
	  @user.name = params_user[:name]
	  if @user.save 
	  	redirect_to root_path
	  else 
	  	render 'new'
	  end
  end

  def show
    @user = User.find(params[:id])
  end


  private
  def params_user
  	params.require(:user).permit(:name)
  end
end
