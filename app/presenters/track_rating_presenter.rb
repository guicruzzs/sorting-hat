class TrackRatingPresenter
  attr_reader :id, :spotify_id, :name, :artist, :score, :average_score

  def initialize(track, rating, average_score=0)
    @id            = track.id
    @spotify_id    = track.spotify_id
    @name          = track.name
    @artist        = track.artist
    @score         = rating.try(:score)
    @average_score = average_score.round(1)
  end
end