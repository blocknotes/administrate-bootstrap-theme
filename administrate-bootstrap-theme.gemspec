# frozen_string_literal: true

require_relative 'lib/administrate-bootstrap-theme/version'

Gem::Specification.new do |spec|
  spec.name        = 'administrate-bootstrap-theme'
  spec.version     = AdministrateBootstrapTheme::VERSION
  spec.authors     = ['Mattia Roccoberton']
  spec.email       = ['mat@blocknot.es']
  spec.homepage    = 'https://github.com/blocknotes/administrate-bootstrap-theme'
  spec.summary     = 'Bootstrap Administrate Theme'
  spec.description = 'A Bootstrap theme for Administrate'
  spec.license     = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/blocknotes/administrate-bootstrap-theme'
  # spec.metadata['changelog_uri'] = "TODO: Put your gem's CHANGELOG.md URL here."

  spec.files = Dir["{app,config,db,lib,node_modules}/**/*", 'MIT-LICENSE', 'Rakefile', 'README.md']

  spec.add_runtime_dependency 'administrate', '~> 0.15'
  # spec.add_dependency 'bootstrap', '~> 5.0.0.beta2'

  spec.add_development_dependency 'rubocop', '~> 0.90'
end
