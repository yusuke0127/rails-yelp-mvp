class Review < ApplicationRecord
  # associations
  belongs_to :restaurant

  # validations
  validates :content, presence: true
  validates :rating, inclusion: 0..5
  validates :rating, numericality: { only_integer: true }
end
