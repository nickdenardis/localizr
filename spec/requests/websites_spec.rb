require 'spec_helper'

describe "Websites" do
  describe "GET /websites" do
    it "should show the website form" do
      visit websites_path

      page.should have_content 'Localize Page'
    end
  end
end
