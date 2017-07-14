require 'rails_helper'

RSpec.describe "auctions/show", type: :view do
  before(:each) do
    @auction = assign(:auction, Auction.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
