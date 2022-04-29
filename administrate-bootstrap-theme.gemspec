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
  spec.metadata['rubygems_mfa_required'] = 'true'

  spec.files = Dir['app/**/*', 'lib/**/*', 'MIT-LICENSE', 'README.md', 'package.json']

  spec.required_ruby_version = '>= 2.6.0'

  spec.add_runtime_dependency 'administrate', '~> 0.14'

  spec.add_development_dependency 'appraisal', '~> 2.4'
end
