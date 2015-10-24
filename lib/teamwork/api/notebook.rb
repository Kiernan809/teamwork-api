module Teamwork
  module API
    module Notebook
      # http://developer.teamwork.com/notebooks
      class << self
        # GET /notebooks.json
        # GET /projects/{project_id}/notebooks.json
        # GET /notebookCategories/{id}/notebooks.json
        # GET /notebooks/{notebook_id}.json
        # POST /projects/{project_id}/notebooks.json
        # PUT /notebooks/{notebook_id}.json
        # PUT /notebooks/{id}/lock.json
        # PUT /notebooks/{id}/unlock.json
        # DELETE /notebooks/{id}.json
      end
    end
  end
end
