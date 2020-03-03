class AddLatitudeToDrivers < ActiveRecord::Migration[5.2]
  def change
    add_column :drivers, :latitude, :float
  end
end
