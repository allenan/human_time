require 'date'
require 'time'

require "human_time/version"

module HumanTime
  class << self
    def greater_than_aliases
      %w{newer_than? more_recent_than? comes_after? later_than?}
    end

    def greater_than_or_equal_to_aliases
      %w{newer_than_or_equal_to? more_recent_than_or_equal_to? after_or_equal_to? later_than_or_equal_to?}
    end

    def less_than_aliases
      %w{older_than? comes_before? earlier_than?}
    end

    def less_than_or_equal_to_aliases
      %w{older_than_or_equal_to? before_or_equal_to? earlier_than_or_equal_to?}
    end

    def included(base)
      add_alias(base, greater_than_aliases, :>)
      add_alias(base, greater_than_or_equal_to_aliases, :>=)
      add_alias(base, less_than_aliases, :<)
      add_alias(base, less_than_or_equal_to_aliases, :<=)
    end

    private

    def add_alias(base, aliases, op)
      aliases.each{ |ali| base.send :alias_method, ali, op }
    end
  end

end

class Date
  include HumanTime
end

class Time
  include HumanTime
end
