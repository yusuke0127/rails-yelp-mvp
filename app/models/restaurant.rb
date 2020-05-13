class Restaurant < ApplicationRecord
  # associations
  has_many :reviews, dependent: :destroy
  #validations
  validates :name, :address, presence: true
  validates :category, presence: true
  validates :category, inclusion: { in: ['chinese', 'japanese', 'italian', 'french', 'belgian'] }
end
