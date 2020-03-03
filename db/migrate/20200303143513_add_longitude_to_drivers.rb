class AddLongitudeToDrivers < ActiveRecord::Migration[5.2]
  def change
    add_column :drivers, :longitude, :float
  end
end
