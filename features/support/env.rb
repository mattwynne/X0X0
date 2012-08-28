require 'capybara/cucumber'

Capybara.default_driver = :selenium
Capybara.run_server = false

Before do
  url = "file://#{File.expand_path '../../../app/index.html', __FILE__}"
  visit url
end

require 'rspec/expectations'
