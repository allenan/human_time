require 'date'
require 'time'

require "human_time/version"

module HumanTime
  def self.greater_than_aliases
    %w{newer_than? more_recent_than? comes_after?}
  end

  def self.greater_than_or_equal_to_aliases
    %w{newer_than_or_equal_to? more_recent_than_or_equal_to? after_or_equal_to?}
  end

  def self.less_than_aliases
    %w{older_than? comes_before?}
  end

  def self.less_than_or_equal_to_aliases
    %w{older_than_or_equal_to? before_or_equal_to?}
  end
end

class Date
  HumanTime.greater_than_aliases.each{ |ali| alias_method ali, :> }
  HumanTime.greater_than_or_equal_to_aliases.each{ |ali| alias_method ali, :>= }
  HumanTime.less_than_aliases.each{ |ali| alias_method ali, :< }
  HumanTime.less_than_or_equal_to_aliases.each{ |ali| alias_method ali, :<= }
end

class Time
  HumanTime.greater_than_aliases.each{ |ali| alias_method ali, :> }
  HumanTime.greater_than_or_equal_to_aliases.each{ |ali| alias_method ali, :>= }
  HumanTime.less_than_aliases.each{ |ali| alias_method ali, :< }
  HumanTime.less_than_or_equal_to_aliases.each{ |ali| alias_method ali, :<= }
end
