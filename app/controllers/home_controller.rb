class HomeController < ApplicationController
  def index
    @tracks = TrackSearcher.call_not_evaluated_preferably(current_user.id)
    @ranking_tracks = RankingGetter.call

    render layout: 'home_dashboard'
  end
end