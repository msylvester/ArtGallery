class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by(email: params[:email])
    if user
      if user.authenticate(params[:password])
        session["user_id"] = user.id
        redirect_to movies_url
        return
      else
        # Email is ok, but password was wrong
      end
    else
      # Email is unknown
    end
    redirect_to movies_url
  end

  def destroy
    reset_session
    redirect_to movies_url
  end

end
