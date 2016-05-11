require 'teamwork/account'
require 'teamwork/activity'
require 'teamwork/billing'
require 'teamwork/calendar'
require 'teamwork/categories'
require 'teamwork/comments'
require 'teamwork/companies'
require 'teamwork/files'
require 'teamwork/links'
require 'teamwork/messages'
require 'teamwork/milestones'
require 'teamwork/notebooks'
require 'teamwork/people'
require 'teamwork/permissions'
require 'teamwork/projects'
require 'teamwork/reminders'
require 'teamwork/risks'
require 'teamwork/roles'
require 'teamwork/statuses'
require 'teamwork/tags'
require 'teamwork/tasks'
require 'teamwork/time'
require 'teamwork/version'

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
        @account ||= Teamwork::Account.new(@connection)
    end
    def activity
        @activity ||= Teamwork::Activity.new(@connection)
    end
    def billing
        @billing ||= Teamwork::Billing.new(@connection)
    end
    def calendar
        @calendar ||= Teamwork::Calendar.new(@connection)
    end
    def categories
        @categories ||= Teamwork::Categories.new(@connection)
    end
    def comments
        @comments ||= Teamwork::Comments.new(@connection)
    end
    def companies
        @companies ||= Teamwork::Companies.new(@connection)
    end
    def files
        @files ||= Teamwork::Files.new(@connection)
    end
    def links
        @links ||= Teamwork::Links.new(@connection)
    end
    def messages
        @messages ||= Teamwork::Messages.new(@connection)
    end
    def milestones
        @milestones ||= Teamwork::Milestones.new(@connection)
    end
    def notebooks
        @notebooks ||= Teamwork::Notebooks.new(@connection)
    end
    def people
        @people ||= Teamwork::People.new(@connection)
    end
    def permissions
        @permissions ||= Teamwork::Permissions.new(@connection)
    end
    def projects
        @projects ||= Teamwork::Projects.new(@connection)
    end
    def reminders
        @reminders ||= Teamwork::Reminders.new(@connection)
    end
    def risks
        @risks ||= Teamwork::Risks.new(@connection)
    end
    def roles
        @roles ||= Teamwork::Roles.new(@connection)
    end
    def statuses
        @statuses ||= Teamwork::Statuses.new(@connection)
    end
    def tags
        @tags ||= Teamwork::Tags.new(@connection)
    end
    def tasks
        @tasks ||= Teamwork::Tasks.new(@connection)
    end
    def time
        @time ||= Teamwork::Time.new(@connection)
    end
    def version
        @version ||= Teamwork::Version.new(@connection)
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
