class Review < ApplicationRecord
  RATINGS = [0, 0.5, 1, 1.5, 2, 2.5, 3, 3.5, 4, 4.5, 5].freeze

  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates :rating, inclusion: { in: RATINGS }
  validates :rating, numericality: true
end
