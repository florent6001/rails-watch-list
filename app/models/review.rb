class Review < ApplicationRecord
  belongs_to :list
  validates :comment, presence: true
  validates :rating, presence: true, numericality: { less_than_or_equal_to: 5, only_integer: true }
end
