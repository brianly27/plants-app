class CreateWindows < ActiveRecord::Migration[6.0]
  def change
    create_table :windows do |t|
      t.integer :room_id
      t.string :facing_direction
      t.string :light_intensity
      t.string :description

      t.timestamps
    end
  end
end
