require "allure-cucumber"
require "capybara"
require "capybara/cucumber"
require "rspec"

#CONFIG = YAML.load_file(File.join(Dir.pwd, "features/support/config/#{ENV["CONFIG"]}"))

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.default_max_wait_time = 10
end

AllureCucumber.configure do |config|
  config.results_directory = "/logs"
  config.clean_results_directory = true
end

# RSpec.configure do |config|
#   config.expect_with :rspec do |expectations|
#     expectations.syntax = :should
#   end
# end
