class Poste < ApplicationRecord
  has_many :operators_postes, dependent: :destroy
  has_many :operators, through: :operators_postes
  has_many :activities

  enum category: { pickup: 0, checkup: 1, packup: 2 }
  def to_builder
    Jbuilder.new do |poste|
      poste.(self, :id, :category)
    end
  end
end
