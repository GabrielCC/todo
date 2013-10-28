require 'spec_helper'

describe "items/index" do
  before(:each) do
    assign(:items, [
      stub_model(Item,
        :description => "Description",
        :done => false
      ),
      stub_model(Item,
        :description => "Description",
        :done => true
      )
    ])
    assign(:item, Item.new)
  end

  it "renders a list of items" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td.done", :count => 1
    assert_select "tr>td.not-done", :count => 1
  end
end
