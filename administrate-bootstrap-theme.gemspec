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

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/blocknotes/administrate-bootstrap-theme'

  spec.files = Dir[
    "{app,config,db,lib}/**/*",
    "node_modules/bootstrap/js/src/**/*",
    "node_modules/bootstrap/scss/**/*",
    "MIT-LICENSE",
    "Rakefile",
    "README.md"
  ]

  spec.add_runtime_dependency 'administrate', '~> 0.14'
end
