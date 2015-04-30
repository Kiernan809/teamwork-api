module Teamwork
  module API
    class List
      # http://developer.teamwork.com/tasklists
      def << self
        # GET /projects/{project_id}/todo_lists.json
        # GET /todo_lists/{id}.json
        # PUT /todo_lists/{id}.json
        # POST /projects/{project_id}/todo_lists.json
        # DELETE /todo_lists/{id}.json
        # PUT /projects/{project_id}/todo_lists/reorder.json
        # GET /tasklists/templates.json
      end
    end
  end
end
