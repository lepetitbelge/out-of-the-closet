class AddItemReferenceToActivity < ActiveRecord::Migration[5.2]
  def change
    add_reference :activities, :item, foreign_key: true
  end
end
