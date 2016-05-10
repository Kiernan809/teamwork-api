module Teamwork
  class Time
    attr_accessor :api

    def initialize(api)
      @api = api
    end

    # Retrieve All Time Entries across all projects
    def all(params = {})
      response = @api.get "/time_entries.json", params
      response.body["time-entries"]
    end

    # # Retrieve all To-do Item Times
    # def todo(id, params = {})
    #   response = @api.get "/todo_items/#{id}/time_entries.json", params
    #   response.body["time-entries"]
    # end

    # # Create a Time-Entry
    # # POST /projects/{project_id}/time_entries.json
    # def create(id, params = {})
    #   response = @api.post "/projects/#{id}/time_entries.json", params
    #   response.body["time-entry"]
    # end

    # # Create a Time-Entry (for a task/todo item)
    # # POST /tasks/{taskid}/time_entries.json
    # def add(id, params = {})
    #   response = @api.post "/tasks/#{id}/time_entries.json", params
    #   response.body["time-entry"]
    # end

    # Retrieve Single Time-Entry
    def get(id, params = {})
      response = @api.get "/time_entries/#{id}.json", params
      response.body["time-entry"]
    end

    # Update an Entry
    # PUT /time_entries/{id}.json
    def update(id, params = {})
      response = @api.put "/time_entries/#{id}.json", params
      response.body["time-entry"]
    end

    # Delete Time-Entry
    # DELETE /time_entries/{id}.json
    def delete(id, params = {})
      response = @api.delete "/time_entries/#{id}.json", params
      response.body["time-entry"]
    end

    # Time Totals
    # GET /time/total.json
    # GET /tasklists/{id}/time/total.json
    # GET /tasks/{id}/time/total.json
    def total(id, params = {})
      response = @api.delete "/time/total.json", params
      response.body["time-totals"]
    end

  end
end
