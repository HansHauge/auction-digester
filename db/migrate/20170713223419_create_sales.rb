class CreateSales < ActiveRecord::Migration[5.0]
  def change
    create_table :sales do |t|
      t.integer :vehicle_year
      t.string :vehicle_make
      t.string :vehicle_model
      t.integer :vehicle_stock_number
      t.float :winning_bid
      t.float :seller_payout
      t.text :description

      t.timestamps
    end
  end
end
