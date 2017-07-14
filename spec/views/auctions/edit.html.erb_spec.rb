require 'rails_helper'

RSpec.describe "auctions/edit", type: :view do
  before(:each) do
    @auction = assign(:auction, Auction.create!())
  end

  it "renders the edit auction form" do
    render

    assert_select "form[action=?][method=?]", auction_path(@auction), "post" do
    end
  end
end
