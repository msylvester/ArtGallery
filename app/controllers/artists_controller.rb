class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find_by(id: params[:id])
    if @artist == nil
      redirect_to "/artists"
    end
  end

end
