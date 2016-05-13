class MoviesController < ApplicationController

  def index
    @movies = Movie.all
    if params[:keyword].present?
      @movies = @movies.where("title LIKE ? OR year = ?", "%#{params[:keyword]}%", params[:keyword])
    end

    respond_to do |format|
      format.html do
        render 'index'
      end
      format.json do
        render json: @movies
      end
      format.xml do
        render xml: @movies
      end
    end

  end

  def create
    movie = Movie.new
    movie.title = params[:title]
    movie.plot = params[:plot]
    movie.image_url = params[:image_url]
    movie.director_id = params[:director_id]
    movie.year = params[:year]
    movie.save
    redirect_to movies_url
  end

  def show
    @movie = Movie.find_by(id: params[:id])
    if @movie == nil
      redirect_to movies_url
    end
    cookies["movie_id"] = @movie.id
  end

  def new
    @movie = Movie.new
  end

  def edit
    @movie = Movie.find_by(id: params[:id])
  end

  def update
    movie = Movie.find_by(id: params[:id])
    movie.title = params[:title]
    movie.plot = params[:plot]
    movie.image_url = params[:image_url]
    movie.year = params[:year]
    movie.save
    redirect_to movies_url(@movie)
  end

  def destroy
    movie = Movie.find_by(id: params[:id])
    if movie
      movie.delete
    end
    redirect_to movies_url
  end

end
