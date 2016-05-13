class ActorsController < ApplicationController

  def index
    @actors = Actor.all
  end

  def show
    @actor = Actor.find_by(id: params[:id])
    if @actor == nil
      redirect_to "/actors"
    end
  end

end
