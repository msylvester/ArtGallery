class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by(email: params[:email])
    if user
      if user.password == params[:password]
        session["user_id"] = user.id
        redirect_to movies_url
        return
      end
    end
    redirect_to movies_url
  end

  def destroy
    reset_session
    redirect_to movies_url
  end

end
