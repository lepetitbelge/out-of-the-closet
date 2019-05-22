class Item < ApplicationRecord
  belongs_to :product
  has_many :activities, through: :product
  has_many :operators, through: :product

  validates :product, presence: true
end
