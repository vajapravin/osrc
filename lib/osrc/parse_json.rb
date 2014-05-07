require 'json'

module Osrc
  class ParseJSON < Faraday::Response::Middleware
    def on_complete(env)
      env[:body] = JSON.parse(env[:body])
    end
  end
end
