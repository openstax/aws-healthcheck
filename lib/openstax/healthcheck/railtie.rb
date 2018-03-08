require 'rails/railtie'
require 'openstax/healthcheck/middleware'

module OpenStax
  module Healthcheck
    class Railtie < ::Rails::Railtie
      initializer 'openstax_healthcheck.add_middleware' do
        config.app_middleware.insert_before Rails::Rack::Logger, OpenStax::Healthcheck::Middleware
        puts 'installed'
      end
    end
  end
end
