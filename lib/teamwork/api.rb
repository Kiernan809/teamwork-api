require 'teamwork/api/account'
require 'teamwork/api/activity'
require 'teamwork/api/category'
require 'teamwork/api/comment'
require 'teamwork/api/company'
require 'teamwork/api/event'
require 'teamwork/api/file'
require 'teamwork/api/link'
require 'teamwork/api/list'
require 'teamwork/api/message'
require 'teamwork/api/milestone'
require 'teamwork/api/notebook'
require 'teamwork/api/people'
require 'teamwork/api/permission'
require 'teamwork/api/project'
require 'teamwork/api/task'
require 'teamwork/api/time'

module Teamwork
  module API
    class << self
      attr_accessor :configuration

      def config
        @configuration ||= Client.new

        yield(@configuration) if block_given?

        @configuration.connect
      end

      def get(url, params = {})
        config.get url, params
      end

    end

    class Client
      attr_accessor :company, :api_key, :connection

      def initialize
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

      def respond
      end

    end
  end
end

