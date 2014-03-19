require 'spec_helper'

describe "flavors/new" do
  before(:each) do
    assign(:flavor, stub_model(Flavor,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new flavor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", flavors_path, "post" do
      assert_select "input#flavor_name[name=?]", "flavor[name]"
    end
  end
end
