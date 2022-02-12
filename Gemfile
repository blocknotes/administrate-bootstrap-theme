# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gemspec

group :development, :test do
  gem 'puma', '~> 4.3'
  gem 'rails', '~> 6.0'
  gem 'sassc', '~> 2.4'
  gem 'sprockets-rails', '~> 2.3.3'
  gem 'sqlite3', '~> 1.4'

  # Testing
  gem 'capybara', '~> 3.33'
  gem 'cuprite', '~> 0.13'
  gem 'rspec-rails', '~> 4.0'

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
