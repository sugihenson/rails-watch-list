class Movie < ApplicationRecord
  has_many :bookmarks 
  # dependent: :restrict_with_error

  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
  # validates :rating, numericality: { only_float: true, in: 0..10 }
end
