# encoding: utf-8

require 'selenium-webdriver'
require 'capybara/cucumber'
require 'rspec/expectations'
require 'rspec'
require 'rspec/core'

Capybara.default_driver = :selenium
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.javascript_driver = :chrome
