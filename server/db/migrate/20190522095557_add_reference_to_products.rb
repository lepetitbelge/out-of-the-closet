class AddReferenceToProducts < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :operator, foreign_key: true
  end
end
