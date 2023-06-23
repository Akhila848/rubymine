require "rubygems"
require "watir"
require 'rspec'
require 'page-object'
require 'page-object/page_factory'
require 'rspec/expectations'
require 'csv'
include PageObject::PageFactory
include RSpec::Matchers
# World(PageObject::PageFactory)
# require 'capybara/cucumber'
require 'selenium-webdriver'


# Capybara.default_driver = :selenium_chrome




Before do |scenario|
  browser = Watir::Browser.new :chrome
  $browser = browser
  $browser.driver.manage.window.maximize
end


After do |scenario|
  $browser.close
end

$report_path="HTML_report"
AfterStep do |scenario|
  sleep 0.5
  # file = Tempfile.new(basename ["screenshot", ".png"], $report_path)
  # file = Tempfile.new(["screenshot", ".png"], $report_path)
  file = Tempfile.new(["screenshot", ".png"], $report_path)
  screenshot = file.path
  file.close(true)
  $browser.driver.save_screenshot(screenshot)
  attach "#{screenshot}", "image/png"
end