class AddColumnToPlants < ActiveRecord::Migration[6.0]
  def change
    add_column :plants, :common_name, :string
    add_column :plants, :active_growth_period, :string
    add_column :plants, :flower_color, :string
    add_column :plants, :growth_rate, :string
    add_column :plants, :height_when_mature, :float
    add_column :plants, :lifespan, :string
    add_column :plants, :shape_and_orientation, :string
    add_column :plants, :minimum_precipitation, :float
    add_column :plants, :maximum_precipitation, :float
    add_column :plants, :maximum_root_depth, :float
    add_column :plants, :shade_tolerance, :string
    add_column :plants, :minimum_temperature, :float
  end
end
