class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.references :products, foreign_key: true
      t.references :operators, foreign_key: true
      t.references :postes, foreign_key: true

      t.timestamps
    end
  end
end
