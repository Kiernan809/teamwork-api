Dir[File.expand_path('./teamwork/*.rb', __FILE__)].each{ |file| require file }

require 'faraday'
require 'faraday_middleware'
require 'json'

@connection = Faraday.new url: "http://#{@company}.teamwork.com/" do |con|
con.request :multipart
con.request :json
con.request :url_encoded
con.response :json, content_type: /\bjson$/
con.adapter :net_http
con.headers[:cache_control] = 'no-cache'
con.basic_auth(@api_key, '')
end


module Teamwork
  class API
    attr_accessor :company, :api_key, :connection

    def initialize(company, api_key)
      @company = company
      @api_key = api_key
      @connection = Faraday.new url: "http://#{@company}.teamwork.com/" do |con|
        con.request :multipart
        con.request :json
        con.request :url_encoded
        con.response :json, content_type: /\bjson$/
        con.adapter :net_http

        con.headers[:cache_control] = 'no-cache'
        con.basic_auth(@api_key, '')
      end
    end

    def account
        @account ||= Account.new(@connection)
    end
    def activity
        @activity ||= Activity.new(@connection)
    end
    def billing
        @billing ||= Billing.new(@connection)
    end
    def calendar
        @calendar ||= Calendar.new(@connection)
    end
    def categories
        @categories ||= Categories.new(@connection)
    end
    def comments
        @comments ||= Comments.new(@connection)
    end
    def companies
        @companies ||= Companies.new(@connection)
    end
    def files
        @files ||= Files.new(@connection)
    end
    def links
        @links ||= Links.new(@connection)
    end
    def messages
        @messages ||= Messages.new(@connection)
    end
    def milestones
        @milestones ||= Milestones.new(@connection)
    end
    def notebooks
        @notebooks ||= Notebooks.new(@connection)
    end
    def people
        @people ||= People.new(@connection)
    end
    def permissions
        @permissions ||= Permissions.new(@connection)
    end
    def projects
        @projects ||= Projects.new(@connection)
    end
    def reminders
        @reminders ||= Reminders.new(@connection)
    end
    def risks
        @risks ||= Risks.new(@connection)
    end
    def roles
        @roles ||= Roles.new(@connection)
    end
    def statuses
        @statuses ||= Statuses.new(@connection)
    end
    def tags
        @tags ||= Tags.new(@connection)
    end
    def tasks
        @tasks ||= Tasks.new(@connection)
    end
    def time
        @time ||= Time.new(@connection)
    end
    def version
        @version ||= Version.new(@connection)
    end

    # def activity(params = {})
    #   response = @connection.get "latestActivity.json", params
    #   response.body["activity"]
    # end

    # def list(id, params = {})
    #   response = @connection.get "todo_lists/#{id}.json", params
    #   response.body["todo-list"]
    # end

    # def project_lists(id, params = {})
    #   response = @connection.get "projects/#{id}/todo_lists.json", params
    #   response.body["todo-lists"]
    # end

    # # GET /tasks/{id}.json
    # def task(id, params = {})
    #   response = @connection.get "tasks/#{id}.json", params
    #   response.body["todo-item"]
    # end

    # # GET /tasklists/{id}/tasks.json
    # def list_tasks(id, params = {})
    #   response = @connection.get "tasklists/#{id}/tasks.json", params
    #   response.body["todo-items"]
    # end


    # def person(id, params = {})
    #   response = @connection.get "people/#{id}.json", params
    #   response.body["person"]
    # end

    # def project(id, params = {})
    #   response = @connection.get "projects/#{id}.json", params
    #   response.body["project"]
    # end

    # # TODO: the rest...
    # def projets(params = {})
    # end

  end
end
