require 'minitest/autorun'
require 'minitest/stub_any_instance'
require 'byebug'
require 'ruboty'
require 'ruboty/redis'

Dotenv.load

module Darkriety
  module Test
    def setup
      super
      @bot = ::Ruboty::Robot.new
      @from = 'alice'
      @to = '#general'
      @bot.brain.data[:customers] = [@from]
    end

    ::Minitest::Test.send(:prepend, self)
  end
end
