$:.unshift File.expand_path(Dir.pwd, "..")

require "friend_finder"
require "spec/helpers/level_url_builder"

RSpec.configure do |config|
  config.include LevelUrlBuilder
end

