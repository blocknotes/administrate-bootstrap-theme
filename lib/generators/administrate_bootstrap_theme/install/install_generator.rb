# frozen_string_literal: true

module AdministrateBootstrapTheme
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('templates', __dir__)

    def append_assets
      append_file 'config/initializers/assets.rb', <<~FILE
        Rails.application.config.assets.precompile += %w[
          administrate-bootstrap-theme.scss
          administrate-bootstrap-theme/theme.css
          administrate-bootstrap-theme/bootstrap.bundle.js
        ]
      FILE
    end

    def create_stylesheets_assets
      create_file 'app/assets/stylesheets/administrate-bootstrap-theme.scss', <<~FILE
        @import 'administrate-bootstrap-theme/colors/default';
        @import 'administrate-bootstrap-theme/fonts/source_sans_pro';
        @import 'administrate-bootstrap-theme/theme';
      FILE
    end

    def create_initializer
      initializer 'administrate_bootstrap_theme.rb', <<~FILE
        Administrate::Engine.stylesheets.clear # required to remove Administrate base styles
        Administrate::Engine.add_stylesheet('administrate-bootstrap-theme')
        Administrate::Engine.add_javascript('administrate-bootstrap-theme/bootstrap.bundle.js')
      FILE
    end
  end
end
