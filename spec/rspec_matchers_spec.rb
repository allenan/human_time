require 'spec_helper'

require 'human_time/rspec_matchers'

describe 'human_time rspec matchers' do
  let(:older_date) { Date.parse('2016-01-01') }
  let(:newer_date) { Date.parse('2016-01-02') }

  it 'implements be_more_recent_than' do
    expect(newer_date).to be_more_recent_than(older_date)
  end

  it 'implements be_newer_than' do
    expect(newer_date).to be_newer_than(older_date)
  end

  it 'implements be_more_recent_than_or_equal_to' do
    expect(newer_date).to be_more_recent_than_or_equal_to(older_date)
  end

  it 'implements be_newer_than_or_equal_to' do
    expect(newer_date).to be_newer_than_or_equal_to(newer_date)
  end

  it 'implements be_older_than' do
    expect(older_date).to be_older_than(newer_date)
  end

  it 'implements be_older_than_or_equal_to' do
    expect(older_date).to be_older_than_or_equal_to(older_date)
  end
end
