# frozen_string_literal: true

class Track < ApplicationRecord
  has_one_attached :image_cover, dependent: :destroy
  has_one_attached :track, dependent: :destroy

  def image_url
    image_cover&.url
  end

  def track_url
    track&.url
  end
end
