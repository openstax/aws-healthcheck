# OpenStax Healthcheck

[![Gem Version](https://badge.fury.io/rb/openstax_healthcheck.svg)](http://badge.fury.io/rb/openstax_healthcheck)
[![Tests](https://github.com/openstax/healthcheck/workflows/Tests/badge.svg)](https://github.com/openstax/healthcheck/actions?query=workflow:Tests)

This gem defines a route in your Rails app for ELB healthchecks.
The only thing that this middleware does is return 200 OK if the route matches a regex pattern.
The middleware is inserted into the Rack middleware stack before the Rails logger middleware,
so requests to the healthcheck endpoint are not logged.

To use the gem, simply add it to your Gemfile:

```rb
gem 'openstax_healthcheck'
```

Your Rails app now returns a 200 OK for `/ping` and `/ping/`.
