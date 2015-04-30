module Teamwork
  module API
    class Time
      # http://developer.teamwork.com/timetracking
      class << self
        # GET /time_entries.json
        # GET /projects/{project_id}/time_entries.json
        # GET /todo_items/{todo_item_id}/time_entries.json
        # POST /projects/{project_id}/time_entries.json
        # POST /tasks/{taskid}/time_entries.json
        # GET /time_entries/{id}.json
        # PUT /time_entries/{id}.json
        # DELETE /time_entries/{id}.json
        # GET /projects/{id}/time/total.json
        # GET /tasklists/{id}/time/total.json
        # GET /tasks/{id}/time/total.json
      end
    end
  end
end
