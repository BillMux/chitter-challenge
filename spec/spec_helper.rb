require 'capybara'
require 'capybara/rspec'
require 'simplecov'
require 'simplecov-console'
require 'rspec'
require_relative '../chitter_app'
require_relative 'setup_database'

ENV['RACK_ENV'] = 'test'
require File.join(File.dirname(__FILE__), '..', 'chitter_app.rb')

Capybara.app = ChitterApp

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  SimpleCov::Formatter::HTMLFormatter
])
SimpleCov.start

RSpec.configure do |config|
  config.before(:suite) do
    setup_database
  end
end
