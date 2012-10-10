require 'spec_helper'

describe "StaticPages" do
  describe "index page" do
    it "should have the title 'UVMSR | index'" do
      visit '/static_pages/index'
      page.should have_content('UVMSR | index')
    end

    it "should not have a custom page title" do
      visit '/static_pages/index'
      page.should_not have_selector('title', :text => '| index')
    end
  end

  describe "Contact page" do
    it "should have the title 'UVMSR | Contact Us'" do
      visit '/static_pages/contact'
      page.should have_content('UVMSR | Contact Us')
    end
  end
end
