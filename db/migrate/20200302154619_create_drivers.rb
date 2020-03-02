class CreateDrivers < ActiveRecord::Migration[5.2]
  def change
    create_table :drivers do |t|
      t.string :name
      t.string :phone_number
      t.string :email
      t.string :password
      t.boolean :approved
      t.decimal :current_longitude
      t.decimal :current_latitude

      t.timestamps
    end
  end
end
