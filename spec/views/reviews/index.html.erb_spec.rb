require 'spec_helper'

describe "reviews/index" do
  before(:each) do
    assign(:reviews, [
      stub_model(Review,
        :content => "MyText",
        :user_ip => "User Ip",
        :teacher_id => 1
      ),
      stub_model(Review,
        :content => "MyText",
        :user_ip => "User Ip",
        :teacher_id => 1
      )
    ])
  end

  it "renders a list of reviews" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "User Ip".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
