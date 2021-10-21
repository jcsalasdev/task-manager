class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]
  
  def show
    @tasks = @user.tasks
  end

  def new
    @user = User.new
  end

  def create

    @user = User.new(user_params)
      if @user.save
          flash[:notice] = "Welcome #{@user.name}, you have successfully signed up"
          redirect_to sign_in_path
      else
          render "new"
    end
  end

    
  private
  def user_params
      params.require(:user).permit(:name, :email, :password)
  end

  def set_user
      @user = User.find(params[:id])
  end
end 