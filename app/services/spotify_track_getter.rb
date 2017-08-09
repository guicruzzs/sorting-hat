class SpotifyTrackGetter

  def self.call(spotify_track_id)
    return [] unless spotify_track_id.present?
    spotify_track_data = RSpotify::Track.find(spotify_track_id)
    SpotifyTrackPresenter.new(spotify_track_data)
  rescue => e
    Rails.logger.error("Spotify Search failed: #{e.message}")
    []
  end

end