class UsersController < ApplicationController
  before_action :set_user , only: [:show, :edit, :update, :destroy]
  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to sign_in_sessions_path, notice: "user was successfully created!"
    else
      render :new
    end
  end

  def show
  end

  def set_user
    @user = User.find(params[:id])
  end
  private def user_params
    params.require(:user).permit(:email, :password)
  end
end
