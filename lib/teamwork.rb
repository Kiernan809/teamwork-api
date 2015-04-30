require "teamwork/version"

module Teamwork
  # class API
  #   def initialize(company, api_key)
  #     @company = company
  #     @api_key = api_key
  #     @connection = Faraday.new url: "http://#{@company}.teamwork.com/" do |con|
  #       con.request :multipart
  #       con.request :json
  #       con.request :url_encoded
  #       con.response :json, content_type: /\bjson$/
  #       con.adapter :net_http

  #       con.headers[:cache_control] = 'no-cache'
  #       con.basic_auth(@api_key, '')
  #     end
  #   end

  #   def activity(params = {})
  #     response = @connection.get "latestActivity.json", params
  #     response.body["activity"]
  #   end

  #   def list(id, params = {})
  #     response = @connection.get "todo_lists/#{id}.json", params
  #     response.body["todo-list"]
  #   end

  #   def project_lists(id, params = {})
  #     response = @connection.get "projects/#{id}/todo_lists.json", params
  #     response.body["todo-lists"]
  #   end

  #   # GET /tasks/{id}.json
  #   def task(id, params = {})
  #     response = @connection.get "tasks/#{id}.json", params
  #     response.body["todo-item"]
  #   end

  #   # GET /tasklists/{id}/tasks.json
  #   def list_tasks(id, params = {})
  #     response = @connection.get "tasklists/#{id}/tasks.json", params
  #     response.body["todo-items"]
  #   end


  #   def person(id, params = {})
  #     response = @connection.get "people/#{id}.json", params
  #     response.body["person"]
  #   end

  #   def project(id, params = {})
  #     response = @connection.get "projects/#{id}.json", params
  #     response.body["project"]
  #   end

  #   # TODO: the rest...
  #   def projets(params = {})
  #   end

  # end
end
