class CreateVessels < ActiveRecord::Migration[5.2]
  def change
    create_table :vessels do |t|
      t.string :flag
      t.string :serial_no
      t.integer :sline_id
      t.string :sline_name
      t.integer :v_id
      t.integer :vessel_flag
      t.string :vessel_gt
      t.string :vessel_name
      t.string :vessel_nt

      t.timestamps
    end
  end
end
