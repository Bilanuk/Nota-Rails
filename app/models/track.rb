# frozen_string_literal: true

class Track < ApplicationRecord
  before_validation :check_image_cover

  has_one_attached :image_cover, dependent: :purge
  has_one_attached :track, dependent: :purge

  validates :image_cover, attached: true, content_type: %w[image/png image/jpg image/jpeg], size: { less_than: 10.megabytes }
  validates :track, attached: true, content_type: %w[audio/mp3 audio/mpeg file/mp3], size: { less_than: 20.megabytes }

  validates :title, presence: true, length: { minimum: 2, maximum: 40 }
  validates :author, presence: true, length: { minimum: 2, maximum: 40 }

  scope :search_by_title, -> (q) { where('title ILIKE ?', "%#{q}%") }


  def image_url
    image_cover&.url
  end

  def track_url
    track&.url
  end

  private

  def check_image_cover
    unless image_cover.attached?
      image_cover.attach(io: File.open('app/assets/images/default-song-image.png'),
                         filename: 'default-song-image.png',
                         content_type: 'image/png')
    end
  end
end
