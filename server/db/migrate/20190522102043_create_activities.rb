class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.references :product, foreign_key: true
      t.references :operator, foreign_key: true
      t.references :poste, foreign_key: true

      t.timestamps
    end
  end
end
