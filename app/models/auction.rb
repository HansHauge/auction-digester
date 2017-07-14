class Auction < ApplicationRecord
  has_many :sales, dependent: :destroy
  validates_uniqueness_of :name
  validates_presence_of :name

  def upload(file)
    CSV.foreach(file.path, headers: true) do |row|
      if row.present?
        @auction = Auction.find_or_create_by(name: row["auction name"])

        # if the address happens to be blank, fill it out from the row
        @auction.street_address ||= row["street address"]
        @auction.city           ||= row["city"]
        @auction.state          ||= row["state"]
        @auction.save!

        @sale = Sale.create!(
          auction_id: @auction.id,
          vehicle_year: row["vehicle year"],
          vehicle_make: row["vehicle make"],
          vehicle_model: row["vehicle model"],
          vehicle_stock_number: row["vehicle stock number"],
          winning_bid: row["winning bid"],
          seller_payout: row["seller payout"],
          description: row["description"],
        )
      end
    end
  end

  def total_profit
    profit = 0
    self.sales.each do |sale|
      profit += sale.winning_bid - sale.seller_payout
    end
    profit
  end

  def average_profit
    profit = 0
    self.sales.each do |sale|
      profit += sale.winning_bid - sale.seller_payout
    end
    profit / self.sales.count
  end
end
