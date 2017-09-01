class RankingGetter
  def self.call(limit = 10)
    average_ratings = Rating.group(:track_id).order('average_score DESC').limit(limit).average(:score)
    tracks = Track.where(id: average_ratings.keys)

    tracks.map do |track|
      TrackRatingPresenter.new(track, nil, average_ratings[track.id].to_f)
    end.sort_by(&:average_score).reverse
  end
end