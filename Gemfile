# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gemspec

group :development, :test do
  gem 'puma'
  gem 'sassc'

  # Testing
  gem 'capybara'
  gem 'rspec-rails'
  gem 'rspec-retry'
  gem 'selenium-webdriver'

  # Linters
  gem 'brakeman'
  gem 'fasterer'
  gem 'reek'
  gem 'rubocop'
  gem 'rubocop-packaging'
  gem 'rubocop-performance'
  gem 'rubocop-rails'
  gem 'rubocop-rspec'

  # Tools
  gem 'pry-rails'
end
