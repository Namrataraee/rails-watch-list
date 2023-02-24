class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :movie_id, uniqueness: { scope: :list, message: 'its already on the list'}
  validates :comment, length: { minimum: 6 }
end
