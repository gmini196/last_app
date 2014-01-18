class UsersController < ApplicationController
  def index
    @users = User.paginate page: params[:page]
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new user_params
    if @user.save
      flash[:success] = "Create success"
      redirect_to users_path
    else
      flash[:error] = "Failed"
      render "new"
    end
  end

  def show
    @user = User.find params[:id]
  end
  
  private
    def user_params
      params.require(:user).permit :name, :password,:password_confirmation, :email
    end
end
