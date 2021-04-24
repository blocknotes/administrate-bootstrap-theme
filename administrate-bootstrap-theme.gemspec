# frozen_string_literal: true

require_relative 'lib/administrate-bootstrap-theme/version'

Gem::Specification.new do |spec|
  spec.platform    = Gem::Platform::RUBY
  spec.name        = 'administrate-bootstrap-theme'
  spec.version     = AdministrateBootstrapTheme::VERSION
  spec.summary     = 'Administrate Bootstrap Theme'
  spec.description = 'A Bootstrap theme for Administrate: clean design, easy to install, customizable'

  spec.authors     = ['Mattia Roccoberton']
  spec.email       = ['mat@blocknot.es']
  spec.homepage    = 'https://github.com/blocknotes/administrate-bootstrap-theme'
  spec.license     = 'MIT'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/blocknotes/administrate-bootstrap-theme'

  spec.files = Dir[
    'app/**/*',
    'lib/**/*',
    'node_modules/bootstrap/js/src/**/*',
    'node_modules/bootstrap/scss/**/*',
    'MIT-LICENSE',
    'Rakefile',
    'README.md'
  ]

  spec.required_ruby_version = '>= 2.5.0'

  spec.add_runtime_dependency 'administrate', '~> 0.14'
end
