class RemoveCurrentLongitudeFromDrivers < ActiveRecord::Migration[5.2]
  def change
    remove_column :drivers, :current_longitude, :decimal
  end
end
