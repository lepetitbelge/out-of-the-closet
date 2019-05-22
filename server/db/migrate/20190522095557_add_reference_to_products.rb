class AddReferenceToProducts < ActiveRecord::Migration[5.2]
  def change
    add_references :product, :operator, foreign_key: true
  end
end
