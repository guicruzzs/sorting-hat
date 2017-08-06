class SpotifyTrackPresenter
  attr_reader :id, :name, :artist

  def initialize(spotify_track_data)
    @id     = spotify_track_data.id
    @name   = spotify_track_data.name
    @artist = spotify_track_data.artists.map(&:name).join(", ")
  end
end