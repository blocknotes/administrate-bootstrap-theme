# frozen_string_literal: true

require 'spec_helper'

ENV['RAILS_ENV'] = 'test'

require File.expand_path('dummy/config/environment.rb', __dir__)

abort('The Rails environment is running in production mode!') if Rails.env.production?

require 'rspec/rails'
require 'rspec/retry'
require 'capybara/rails'
require 'selenium-webdriver'

Dir[File.expand_path('support/**/*.rb', __dir__)].sort.each { |f| require f }

# Checks for pending migrations and applies them before tests are run.
# If you are not using ActiveRecord, you can remove these lines.
begin
  ActiveRecord::Migration.maintain_test_schema!
rescue ActiveRecord::PendingMigrationError => e
  puts e.to_s.strip
  exit 1
end

RSpec.configure do |config|
  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!

  config.use_transactional_fixtures = true
  config.use_instantiated_fixtures = false
  config.render_views = false

  config.fail_fast = true if ENV.fetch('RSPEC_FAIL_FAST', false) == '1'

  # rspec-retry
  config.default_retry_count = 2

  ###

  config.include Helpers

  config.before(:suite) do
    require 'administrate/version'

    intro = ('-' * 80)
    intro << "\n"
    intro << "- Ruby:         #{RUBY_VERSION}\n"
    intro << "- Rails:        #{Rails.version}\n"
    intro << "- Administrate: #{Administrate::VERSION}\n"
    intro << ('-' * 80)

    RSpec.configuration.reporter.message(intro)
    Rails.application.load_seed # loading seeds
  end
end
