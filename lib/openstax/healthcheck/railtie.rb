require 'rails/railtie'
require 'openstax/healthcheck/middleware'

module OpenStax
  module Healthcheck
    class Railtie < ::Rails::Railtie
      initializer 'openstax_healthcheck.add_middleware' do
        before_middleware = Rails::VERSION::MAJOR >= 6 ? ActionDispatch::HostAuthorization :
                                                         Rails::Rack::Logger

        config.app_middleware.insert_before before_middleware, OpenStax::Healthcheck::Middleware
      end
    end
  end
end
