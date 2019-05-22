class Product < ApplicationRecord
  has_many :activities
  has_many :items, dependent: :destroy
  has_many :operators, through: :activities
end
