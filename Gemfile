source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Specify your gem's dependencies in engine_with_webpacker.gemspec.
gemspec

group :development do
  gem 'pg'
end

# To use a debugger
# gem 'byebug', group: [:development, :test]
gem 'puma'
gem 'webpacker'

group :test do
  gem 'rspec_junit_formatter', require: false
  gem 'simplecov-lcov', require: false
end

group :development, :test do
  gem 'byebug'
  gem 'factory_bot_rails'
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'faker'
  gem 'rubocop'
  gem 'simplecov', require: false
  gem 'annotate'
  gem 'yard'
  gem 'capybara'
  gem 'selenium-webdriver'
end
