class Review < ApplicationRecord
  belongs_to :user
  belongs_to :movie

  validates :rating, :inclusion => { in: (1..MAX_RATING).map {|rate| rate} }, :allow_nil => false
end
