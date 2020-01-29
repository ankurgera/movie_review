class Review < ApplicationRecord
  belongs_to :user	
  MAX_RATING = 10	
  validates :rating, :inclusion => { in: (1..MAX_RATING).map {|rate| rate} }, :allow_nil => false
end
