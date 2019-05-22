class Product < ApplicationRecord
  has_many :items, dependent: :destroy
  has_many :operators, through: :activities
  has_many :activities
end
