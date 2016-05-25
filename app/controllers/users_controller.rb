require 'mail'

class UsersController < ApplicationController

  def show
    @user = User.find_by(id: params[:id])
    if !@user || (@user.id != session[:user_id].to_i)
      redirect_to root_url
    end
  end

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    user = User.new
    user.name = params[:user][:name]
    user.email = params[:user][:email]
    user.password = params[:user][:password]
    
    toName = user.email

    #send an email
    mail = Mail.new do
        from    'msylvest55@gmail.com'
        to      'msylvest55@gmail.com '
        subject 'Thank you for joining'
        body    'welcome to the spot'
    end
  
  end

  def destroy
    User.delete(params[:id])
    redirect_to users_url
  end
end
