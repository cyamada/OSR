require 'spec_helper'

describe "StaticPages" do

  subject { page }

  describe "index page" do
    before { visit root_path }

    it { page.should have_selector('title', text: full_title('')) }
    it { page.should_not have_selector('title', text: '| index') }

  end

  describe "Contact page" do
    before { visit contact_path }

    it { page.should have_selector('title', text: full_title('Contact')) }

  end

  describe "About page" do
    before { visit about_path }

    it { page.should have_selector('title', text: full_title('About')) }

  end

  describe "Donate page" do
    before { visit donate_path }

    it { page.should have_selector('title', text: full_title('Donate')) }
  end
end
