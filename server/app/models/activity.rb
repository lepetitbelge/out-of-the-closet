class Activity < ApplicationRecord
  belongs_to :product
  belongs_to :operator
  belongs_to :poste
  has_one :item
end
