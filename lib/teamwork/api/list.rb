module Teamwork
  module API
    class List
      # http://developer.teamwork.com/tasklists
      def << self

        # GET /todo_lists/{id}.json
        def get(id, params = {})
          response = API.get "todo_lists/#{id}.json", params
          response.body["todo-list"]
        end

        # GET /projects/{project_id}/todo_lists.json
        def project(id, params = {})
          response = API.get "projects/#{id}/todo_lists.json", params
          response.body["todo-lists"]
        end

        # GET /tasklists/templates.json
        def templates(params = {})
          response = API.get "/tasklists/templates.json", params
          response.body["tasklists"]
        end

        # PUT /todo_lists/{id}.json
        # PUT /projects/{project_id}/todo_lists/reorder.json
        # POST /projects/{project_id}/todo_lists.json
        # DELETE /todo_lists/{id}.json
      end
    end
  end
end
