class RatingsController < ApplicationController
  before_action :set_rating, only: [:create]

  # POST /ratings.json
  def create
    @rating.tap do |rating|
      rating.score    = rating_params[:score]
      rating.user_id  = current_user.id
      rating.track_id = rating_params[:track_id]
    end

    if @rating.save
      render json: {}, status: :created
    else
      render json: @rating.errors, status: :unprocessable_entity
    end
  end

  private
    def set_rating
      @rating = Rating.find_by!(track_id: rating_params[:track_id], user_id: current_user.id)
    rescue
      @rating = Rating.new
    end

    def rating_params
      params.require(:rating).permit(:track_id, :user_id, :score)
    end
end
