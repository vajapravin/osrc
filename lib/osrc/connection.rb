require 'osrc/http_exception.rb'
require 'osrc/parse_json.rb'

module Osrc
  class Connection
    @response = {}
    def initialize(git_username)
      @connection ||= Faraday.new(:url => 'http://osrc.dfm.io') do |f|
        f.request  :url_encoded             # form-encode POST params
        f.response :logger                  # log requests to STDOUT
        f.adapter  Faraday.default_adapter  # make requests with Net::HTTP

        f.use Osrc::ParseJSON
        f.use Osrc::HttpException
      end

      response = @connection.get "/#{git_username}.json"
      @response = response.body
    end

    # returns response body
    def response_body
      @response
    end

    # returns all connected users
    def connected_users
      @response["connected_users"] rescue []
    end

    # returns repositories
    def repositories
      @response["repositories"] rescue []
    end

    # returns similar users
    def similar_users
      @response["similar_users"] rescue []
    end

    # returns usage stat
    def usage
      @response["usage"] rescue {}
    end

    # returns languages
    def languages
      @response["usage"]["languages"].map {|l| l["language"] } rescue []
    end

    # returns username
    def username
      @response["username"] rescue ''
    end
  end
end
