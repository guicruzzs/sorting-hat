class HomeController < ApplicationController
  def index
    @tracks = TrackSearcher.call(current_user.id, params[:page])
    @ranking_tracks = RankingGetter.call

    render layout: 'home_dashboard'
  end
end