# frozen_string_literal: true

require 'capybara/cuprite'

Capybara.register_driver(:cuprite) do |app|
  Capybara::Cuprite::Driver.new(
    app,
    **{
      window_size: [1600, 1280],
      # See additional options for Dockerized environment in the respective section of this article
      browser_options: {},
      # Increase Chrome startup wait time (required for stable CI builds)
      process_timeout: 10,
      # The number of seconds we'll wait for a response when communicating with browser. Default is 5
      timeout: 10,
      # Enable debugging capabilities
      inspector: true,
      # Allow running Chrome in a headful mode by setting HEADLESS env var to a falsey value
      headless: !ENV['HEADLESS'].in?(%w[n 0 no false])
    }
  )
end
