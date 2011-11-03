require 'spec_helper'

describe "Home" do
  describe "GET /home" do
    it "finds the root path" do
      get root_path
      response.status.should be(200)
    end
    
    it "should display title" do
      visit root_path
      page.should have_selector("h1.home")
    end
  end
end
