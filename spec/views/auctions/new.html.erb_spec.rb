require 'rails_helper'

RSpec.describe "auctions/new", type: :view do
  before(:each) do
    assign(:auction, Auction.new())
  end

  it "renders new auction form" do
    render

    assert_select "form[action=?][method=?]", auctions_path, "post" do
    end
  end
end
