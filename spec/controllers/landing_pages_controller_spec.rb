require 'spec_helper'

describe LandingPagesController do
  describe '#index' do
    it 'should render hello world' do
      expect(response).to be_success
      get 'index'
    end
  end
end
