require 'spec_helper'

describe "flavors/show" do
  before(:each) do
    @flavor = assign(:flavor, stub_model(Flavor,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
