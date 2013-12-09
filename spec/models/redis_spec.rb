require 'spec_helper'

describe Redis do
  let(:redis) { Redis.new }

  it 'should work' do
    expect(redis.info).to be_kind_of(Hash)
  end
end
