json.extract! track, :id, :spotify_id, :name, :artist, :created_at, :updated_at
json.url track_url(track, format: :json)
