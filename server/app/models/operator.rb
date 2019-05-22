class Operator < ApplicationRecord
  has_many :activities
  has_many :postes, through: :activities
  has_many :products, through: :activities
  has_many :items, through: :products

  validates :first_name, :last_name, presence: true

  def name
    "#{first_name} #{last_name}"
  end

  def to_builder
    Jbuilder.new do |operator|
      operator.(self, :id, :name)
    end
  end
end
