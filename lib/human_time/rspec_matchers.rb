require 'rspec/expectations'

RSpec::Matchers.define :be_more_recent_than do |expected|
  match do |actual|
    actual > expected
  end
end

RSpec::Matchers.define :be_newer_than do |expected|
  match do |actual|
    actual > expected
  end
end

RSpec::Matchers.define :be_more_recent_than_or_equal_to do |expected|
  match do |actual|
    actual >= expected
  end
end

RSpec::Matchers.define :be_newer_than_or_equal_to do |expected|
  match do |actual|
    actual >= expected
  end
end

RSpec::Matchers.define :be_older_than do |expected|
  match do |actual|
    actual < expected
  end
end

RSpec::Matchers.define :be_older_than_or_equal_to do |expected|
  match do |actual|
    actual <= expected
  end
end
