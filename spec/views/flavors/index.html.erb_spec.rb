require 'spec_helper'

describe "flavors/index" do
  before(:each) do
    assign(:flavors, [
      stub_model(Flavor,
        :name => "Name"
      ),
      stub_model(Flavor,
        :name => "Name"
      )
    ])
  end

  it "renders a list of flavors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
