class CreateJoinTableWindowPlant < ActiveRecord::Migration[6.0]
  def change
    create_join_table :windows, :plants do |t|
      # t.index [:window_id, :plant_id]
      # t.index [:plant_id, :window_id]
    end
  end
end
