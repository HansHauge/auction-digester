require 'rails_helper'

RSpec.describe "auctions/index", type: :view do
  before(:each) do
    assign(:auctions, [
      Auction.create!(),
      Auction.create!()
    ])
  end

  it "renders a list of auctions" do
    render
  end
end
