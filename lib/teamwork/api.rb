require 'logger'
require 'faraday'
require 'faraday_middleware'
require 'json'

module Teamwork
  module API
    class << self
      attr_accessor :configuration

      def config
        @configuration ||= Configuration.new

        yield(@configuration) if block_given?

        @configuration.connect
      end

      def get(url, params = {})
        config.get url, params
      end

      def log
        @logger ||= Logger.new @configuration.logger
      end
    end

    class Configuration
      attr_accessor :company, :api_key, :connection, :logger

      def initialize
        @logger = 'API.log'
        @company = nil
        @api_key = nil
      end

      def connect
        @connection ||= Faraday.new url: "http://#{@company}.teamwork.com/" do |con|
          con.request :multipart
          con.request :json
          con.request :url_encoded
          con.response :json, content_type: /\bjson$/
          con.adapter :net_http

          con.headers[:cache_control] = 'no-cache'
          con.basic_auth(@api_key, '')
        end

      end

    end
  end
end

# require './teamwork-api/lib/teamwork/api'
# z = Teamwork::API.config do |c|
#   c.company = ENV["TEAMWORK_COMPANY"]
#   c.api_key = ENV["TEAMWORK_API_KEY"]
# end
