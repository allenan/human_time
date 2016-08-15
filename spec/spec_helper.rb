require 'pry'

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'human_time'

Dir[File.dirname(__FILE__) + "/support/**/*.rb"].each {|f| require f }
