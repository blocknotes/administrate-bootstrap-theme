# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gemspec

group :development, :test do
  gem 'puma', '~> 4.3'
  gem 'rails', '~> 6.0'
  gem 'sassc', '~> 2.4'
  gem 'sqlite3', '~> 1.4'

  # Testing
  gem 'capybara', '~> 3.33'
  gem 'rspec-rails', '~> 4.0'
  gem 'selenium-webdriver', '~> 3.142'

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
