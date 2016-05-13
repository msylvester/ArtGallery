class ReviewsController < ApplicationController

  def create
    Rails.logger.debug "We should probably save the review to the database..."
    redirect_to movies_url
  end
  
end
