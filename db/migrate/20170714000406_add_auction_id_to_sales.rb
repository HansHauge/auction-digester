class AddAuctionIdToSales < ActiveRecord::Migration[5.0]
  def self.up
    add_column :sales, :auction_id, :integer
  end

  def self.down
    remove_column :sales, :auction_id
  end
end
