class LoginsController < ApplicationController
  def new

  end
  def login
    @user = User.find_by(email: params[:email])
    if @user && @user.password == params[:password]
      session[:user_token] = @user.token
      redirect_to @user, alert: "User logged in successfully!"
    else
      redirect_to login_path, alert: "Invalid user/password combination!"
    end
  end

  def logout
    
  end
end
