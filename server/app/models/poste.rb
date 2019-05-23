class Poste < ApplicationRecord
  has_many :activities
  has_many :operators, through: :activities

  enum category: %i(pickup checkup packup)

  def to_builder
    Jbuilder.new do |poste|
      poste.(self, :id, :category)
    end
  end
end
