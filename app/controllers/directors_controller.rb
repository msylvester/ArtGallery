class DirectorsController < ApplicationController

  def index
    @directors = Director.all
  end

  def show
    @director = Director.find_by(id: params[:id])
  end

  def new

  end

  def create
    director = Director.new
    director.name = params[:name]
    director.photo_url = params[:photo_url]
    director.save
    redirect_to "http://localhost:3000/movies"
  end

  def edit
    @director = Director.find_by(id: params[:id])
  end

  def update
    director = Director.find_by(id: params[:id])
    director.name = params[:name]
    director.photo_url = params[:photo_url]
    director.save
    redirect_to "http://localhost:3000/movies"
  end

  def destroy
    director = Director.find_by(id: params[:id])
    director.delete
    redirect_to "http://localhost:3000/movies"
  end
  
end
