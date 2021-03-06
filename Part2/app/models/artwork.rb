class Artwork < ApplicationRecord
  validates :artworks, uniqueness: { scope: [:artist_id, :title] }

  belongs_to :artist,
    primary_key: :id,
    foreign_key: :artist_id,
    class_name: :User

  has_many :artwork_shares,
  class_name: :ArtworkShare,
  foreign_key: :artwork_id,
  primary_key: :id

  has_many :shared_viewers,
  through: :artwork_shares,
  source: :viewer

end
