class SpotifyTrackSearcher
  TRACK_LIMIT = 10

  def self.call(keyword)
    spotify_tracks_data = RSpotify::Track.search(keyword, limit: TRACK_LIMIT)

    spotify_tracks_data.map do |spotify_track_data|
      SpotifyTrackPresenter.new(spotify_track_data)
    end
  end

end