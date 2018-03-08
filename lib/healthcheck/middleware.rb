module Healthcheck
  class Middleware
    ROUTE_PATTERN = /\/ping\/?/

    def initialize(app)
      @app = app
    end

    def call(env)
      return [200, {}, []] if ROUTE_PATTERN.match env['PATH_INFO']

      @app.call env
    end
  end
end
