class Track < ApplicationRecord
  validates :spotify_id, presence: true, uniqueness: true

  before_validation :load_track_data_from_spotify

  def load_track_data_from_spotify
    return unless spotify_id.present?

    spotify_track = SpotifyTrackGetter.call(spotify_id)
    self.name   = spotify_track.name
    self.artist = spotify_track.artist
  rescue => e
    errors.add(:spotify_id, :invalid)
  end
end
