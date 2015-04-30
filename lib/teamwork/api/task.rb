module Teamwork
  module API
    class Task
      # http://developer.teamwork.com/todolistitems
      class << self

        # GET /tasks.json
        def all(params = {})
          response = API.get "tasks.json", params
          response.body["todo-items"]
        end

        # GET /projects/{id}/tasks.json
        def from_project(id, params = {})
          response = API.get "projects/#{id}/tasks.json", params
          response.body["todo-items"]
        end

        # GET /tasklists/{id}/tasks.json
        def from_list(id, params = {})
          response = API.get "tasklists/#{id}/tasks.json", params
          response.body["todo-items"]
        end

        # GET /tasks/{id}.json
        def get(id, params = {})
          response = API.get "tasks/#{id}.json", params
          response.body["todo-item"]
        end

        # PUT /tasks/{id}/complete.json
        # PUT /tasks/{id}/uncomplete.json
        # POST /tasklists/{id}/tasks.json
        # POST /tasklists/{id}/tasks.json
        # DELETE /tasks/{id}.json
        # PUT /tasklists/{id}/tasks/reorder.json
      end
    end
  end
end
