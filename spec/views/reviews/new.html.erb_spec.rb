require 'spec_helper'

describe "reviews/new" do
  before(:each) do
    assign(:review, stub_model(Review,
      :content => "MyText",
      :user_ip => "MyString",
      :teacher_id => 1
    ).as_new_record)
  end

  it "renders new review form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => reviews_path, :method => "post" do
      assert_select "textarea#review_content", :name => "review[content]"
      assert_select "input#review_user_ip", :name => "review[user_ip]"
      assert_select "input#review_teacher_id", :name => "review[teacher_id]"
    end
  end
end
