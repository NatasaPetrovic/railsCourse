class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    if @user.save
        flash[:success] = "Welcome to the alpha blog #{@user.username}"
        redirect_to articles_path
    else
        render 'new'
    end
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
        flash[:success] = "Successfull update"
        redirect_to articles_path
        
    else
        render 'edit'
    end
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def index
    @users = User.all
  end
    private
    def user_params
        params.require(:user).permit(:username, :email, :password)
    end
end