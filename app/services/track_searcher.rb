class TrackSearcher
  LIMIT_RESULTS = 10

  def self.call(user_id, page=1)
    page = 1 if page.to_i.zero?
    tracks = Track.order('id DESC').limit(LIMIT_RESULTS).offset((page.to_i - 1) * LIMIT_RESULTS)
    track_ids = tracks.map(&:id)
    ratings = Rating.where(track_id: track_ids, user_id: user_id)
    average_ratings = Rating.where(track_id: track_ids).group(:track_id).average(:score)

    tracks.map do |track|
      rating = ratings.find{|rating| rating.track_id == track.id}
      TrackRatingPresenter.new(track, rating, average_ratings[track.id])
    end
  end

  def self.get_pagination(current_page)
    current_page = 1 if current_page.to_i.zero?
    {
      current_page: current_page.to_i,
      total_pages:  (Track.count.to_f/LIMIT_RESULTS).ceil
    }
  end
end