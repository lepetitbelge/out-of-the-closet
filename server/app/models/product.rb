class Product < ApplicationRecord
  has_many :items, dependent: :destroy
  has_many :activities
end
