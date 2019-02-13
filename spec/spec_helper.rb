require 'capybara'
require 'capybara/rspec'
require 'simplecov'
require 'simplecov-console'
require 'rspec'
require_relative '../chitter_app'

ENV['RACK_ENV'] = 'test'
require File.join(File.dirname(__FILE__), '..', 'chitter_app.rb')

Capybara.app = ChitterApp

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
 SimpleCov::Formatter::Console,
 SimpleCov::Formatter::HTMLFormatter
])
SimpleCov.start
