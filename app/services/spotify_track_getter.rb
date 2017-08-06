class SpotifyTrackGetter

  def self.call(spotify_track_id)
    spotify_track_data = RSpotify::Track.find(spotify_track_id)
    SpotifyTrackPresenter.new(spotify_track_data)
  end

end