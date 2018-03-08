$LOAD_PATH.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'openstax/healthcheck/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'openstax_healthcheck'
  s.version     = OpenStax::Healthcheck::VERSION
  s.authors     = ['Logan Serman', 'Dante Soares']
  s.email       = ['dante.m.soares@rice.edu']
  s.homepage    = 'https://github.com/openstax/healthcheck'
  s.summary     = 'Mounts a Rack app at /ping/? that returns 200 OK for AWS load balancers'
  s.description = s.summary
  s.license     = 'MIT'

  s.files = Dir['lib/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']
  s.test_files = Dir['spec/**/*']

  s.add_dependency 'rails', '>= 3.0'

  s.add_development_dependency 'rspec-rails'
end
