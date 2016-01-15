class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user.authenticate(params[:password])
      # Add cookie
      session[:user_id] = user.id
      # Redirect to home
      redirect_to root_path
    else
      # Show error and login form again
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

end
