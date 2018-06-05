class SessionsController < ApplicationController
def new
  
end
def sign_in
  @user = User.new
end
def login 
    # @session = Session.find(params[:ID])
    @user = User.find_by(email: params[:user][:email])
    # @user1 = User.find_by(params[:password])
    if @user && @user.password == params[:user][:password]
      session[:user_token] = @user.token
      redirect_to @user, alert: "User logged in successfully!"
    else
      redirect_to sessions_sign_in_path, alert: "Invalid user/password combination!"
    end
  end

  def logout
    session[:user_token] = nil
    redirect_to sessions_sign_in_path
  end

end
