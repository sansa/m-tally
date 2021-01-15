class CreateShippingLines < ActiveRecord::Migration[5.2]
  def change
    create_table :shipping_lines do |t|
      t.integer :s_line_id
      t.string :s_line_name

      t.timestamps
    end
  end
end
