class CreateManifests < ActiveRecord::Migration[5.2]
  def change
    create_table :manifests do |t|
      t.datetime :arrival_date
      t.datetime :created_at
      t.datetime :departure_date
      t.string :shipping_line
      t.integer :type
      t.integer :vessel_id
      t.string :vessel_name
      t.string :voyage_number

      t.timestamps
    end
  end
end
