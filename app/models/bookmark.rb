class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, length: { minimum: 6, maximum: 30 }
  validates :movie_id, uniqueness: { scope: :list_id, message: "Already exists" }
end
