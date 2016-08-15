require 'spec_helper'

describe DateTime do
  let(:older_example) { DateTime.parse('2016-01-01') }
  let(:newer_example) { DateTime.parse('2016-01-02') }

  HumanTime.greater_than_aliases.each do |ali|
    describe "##{ali}" do
      let(:method) { ali }
      it_behaves_like 'a greater than alias'
    end
  end

  HumanTime.greater_than_or_equal_to_aliases.each do |ali|
    describe "##{ali}" do
      let(:method) { ali }
      it_behaves_like 'a greater than or equal to alias'
    end
  end

  HumanTime.less_than_aliases.each do |ali|
    describe "##{ali}" do
      let(:method) { ali }
      it_behaves_like 'a less than alias'
    end
  end

  HumanTime.less_than_or_equal_to_aliases.each do |ali|
    describe "##{ali}" do
      let(:method) { ali }
      it_behaves_like 'a less than or equal to alias'
    end
  end
end
