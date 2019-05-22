class Item < ApplicationRecord
  belongs_to :product
  belongs_to :activity
  has_many :operators, through: :activities

  validates :product, presence: true
end
