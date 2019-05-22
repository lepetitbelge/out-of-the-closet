class Item < ApplicationRecord
  belongs_to :product
  has_many :activities, through: :products
  has_many :operators, through: :products

  validates :product, presence: true
end
