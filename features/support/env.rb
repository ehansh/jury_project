
#require File.join(File.dirname(__FILE__), '..', '..', 'lib', 'nice_bank')

require 'cucumber/rails'
require 'capybara/cucumber'

Capybara.default_selector = :css
Capybara.run_server = true


ENV["RAILS_ENV"] ||= 'test'