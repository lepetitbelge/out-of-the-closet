class Item < ApplicationRecord
  belongs_to :product
  has_many :activities
  has_many :operators, through: :activities

  validates :product, presence: true
end
