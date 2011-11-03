require 'spec_helper'

describe "Home" do
  describe "GET /home" do
    it "finds the root path" do
      get root_path
      response.status.should be(200)
    end
  end
end
