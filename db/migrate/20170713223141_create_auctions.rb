class CreateAuctions < ActiveRecord::Migration[5.0]
  def change
    create_table :auctions do |t|
      t.string :name
      t.string :street_address
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
