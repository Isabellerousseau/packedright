class RemoveCurrentLatitudeFromDrivers < ActiveRecord::Migration[5.2]
  def change
    remove_column :drivers, :current_latitude, :decimal
  end
end
