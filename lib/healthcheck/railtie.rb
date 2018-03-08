require 'rails/railtie'
require 'healthcheck/middleware'

module Healthcheck
  class Railtie < ::Rails::Railtie
    initializer 'healthcheck.add_middleware' do
      config.app_middleware.insert_before Rails::Rack::Logger, Healthcheck::Middleware
    end
  end
end
