module Teamwork
  module API
    class Task
      # http://developer.teamwork.com/todolistitems
      def << self
        # GET /tasks.json
        # GET /projects/{id}/tasks.json
        # GET /tasklists/{id}/tasks.json
        # GET /tasks/{id}.json
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
