class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.date :date
      t.references :driver, foreign_key: true
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true
      t.integer :estimated_price
      t.enumerable :status

      t.timestamps
    end
  end
end
