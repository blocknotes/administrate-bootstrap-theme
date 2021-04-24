# frozen_string_literal: true

module AdministrateBootstrapTheme
  class Engine < ::Rails::Engine
    isolate_namespace AdministrateBootstrapTheme

    config.assets.paths << File.expand_path('../../node_modules', __dir__)
  end
end
