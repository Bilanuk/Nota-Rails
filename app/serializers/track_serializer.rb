class TrackSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :title, :image_url, :track_url, :description, :author, :duration, :likes, :created_at, :updated_at
end
