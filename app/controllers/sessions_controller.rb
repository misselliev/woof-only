class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by_email(params[:email]) 
    if user && user.authenticate(params[:password_digest])
      flash[:sucess]="You have logged in!"
      log_in user
      redirect_to @user
    else
      flash[:danger]="Oops, please check your input"
      render 'new' 
    end
  end

  def destroy
    log_out if logged_in?
    flash[:sucess]="You have logged out!"
    redirect_to root_url
  end

end
