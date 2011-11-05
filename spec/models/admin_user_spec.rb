require 'spec_helper'

describe AdminUser do
  it "should be empty by default" do
    AdminUser.find(:all).count.should eq(0)
  end
end
