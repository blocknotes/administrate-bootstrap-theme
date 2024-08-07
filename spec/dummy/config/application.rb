require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

require 'administrate'
require 'administrate-bootstrap-theme'

module Dummy
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0 if Rails::VERSION::MAJOR == 6

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    if Rails::VERSION::MAJOR > 6
      config.active_support.cache_format_version = 7.0
    end
  end
end
