class CreateConsignees < ActiveRecord::Migration[5.2]
  def change
    create_table :consignees do |t|
      t.string :address
      t.string :name
      t.integer :status

      t.timestamps
    end
  end
end
