class ArtworksController < ApplicationController

  def index
    @artworks = Artwork.all
  end

  def show
    @artwork = Artwork.find_by(id: params[:id])
  end

  def new

  end

  def create
    artwork = Artwork.new
    artwork.name = params[:name]
    artwork.photo_url = params[:photo_url]
    artwork.save
    redirect_to "http://localhost:3000/galleries"
  end

  def edit
    @artwork = Artwork.find_by(id: params[:id])
  end

  def update
    artwork = Artwork.find_by(id: params[:id])
    artwork.name = params[:name]
    artwork.photo_url = params[:photo_url]
    artwork.save
    redirect_to "http://localhost:3000/galleries"
  end

  def destroy
    artwork = Artwork.find_by(id: params[:id])
    artwork.delete
    redirect_to "http://localhost:3000/galleries"
  end
  
end
