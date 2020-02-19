class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates :review, inclusion: { in: [1, 2, 3, 4, 5] }
end
