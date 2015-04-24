require "teamwork/version"
require 'faraday'
require 'faraday_middleware'
require 'json'

module Teamwork

  class API
    def initialize(company, api_key)
      @company = company
      @api_key = api_key
      @connection = Faraday.new url: "http://#{company}.teamwork.com/" do |con|
        con.request :multipart
        con.request :json
        con.request :url_encoded
        con.response :json, content_type: /\bjson$/
        con.adapter :net_http

        con.headers[:cache_control] = 'no-cache'
        con.basic_auth(api_key, '')
      end
    end

    def activity(params:{})
      response = @connection.get "latestActivity.json", params
      response.body
    end

    def taskList(id, params:{})
      response = @connection.get "todo_lists/#{id}.json"
      response.body
    end

    def projectTaskLists(id, params:{})
      response = @connection.get "projects/#{id}/todo_lists.json"
      response.body
    end

    # TODO: the rest...
  end
end
