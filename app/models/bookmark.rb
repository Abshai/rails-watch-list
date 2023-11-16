class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, length: { minimum: 6 }
  validates :movie, presence: true
  validates :list, presence: true
  validates_uniqueness_of :list, scope: [:list_id, :movie_id]
end

# A bookmark must be linked to a movie and a list, and the [movie, list] pairings should be unique.

# Associations

# You can’t delete a movie if it is referenced in at least one bookmark.
