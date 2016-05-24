class GalleriesController < ApplicationController

  def index
    @galleries = Gallery.all
    if params[:keyword].present?
      @galleries = @galleries.where("title LIKE ? OR year = ?", "%#{params[:keyword]}%", params[:keyword])
    end

    respond_to do |format|
      format.html do
        render 'index'
      end
      format.json do
        render json: @galleries
      end
      format.xml do
        render xml: @galleries
      end
    end

  end

  def create
    @gallery = Gallery.new
    @gallery.title = params[:gallery][:title]
    @gallery.plot = params[:gallery][:address]
    @gallery.image_url = params[:gallery][:image_url]
    @gallery.artwork_id = params[:gallery][:artwork_id]

    if @gallery.save
      redirect_to galleries_url, notice: "Gallery added! Thanks!"
    else
      # redirect_to new_movie_url, notice: "Something went wrong!"
      render 'new'
    end
  end

  def show
    @gallery = Gallery.find_by(id: params[:id])
    if @gallery == nil
      redirect_to galleries_url
    end
    session["gallery_id"] = @gallery.id
  end

  def new
    @gallery = Gallery.new
  end

  def edit
    @gallery = Gallery.find_by(id: params[:id])
  end

  def update
    gallery = Gallery.find_by(id: params[:id])
    gallery.title = params[:title]
    gallery.plot = params[:address]
    gallery.image_url = params[:image_url]
    gallery.year = params[:year]
    gallery.save
    redirect_to galleries_url(@gallery)
  end

  def destroy
    gallery = Gallery.find_by(id: params[:id])
    if gallery
      gallery.delete
    end
    redirect_to galleries_url
  end

end
