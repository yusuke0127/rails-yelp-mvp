class Restaurant < ApplicationRecord
  CATEGORY = ['chinese', 'japanese', 'italian', 'french', 'belgian']

  # associations
  has_many :reviews, dependent: :destroy
  #validations
  validates :name, :address, presence: true
  validates :category, presence: true
  validates :category, inclusion: { in: CATEGORY }
end
