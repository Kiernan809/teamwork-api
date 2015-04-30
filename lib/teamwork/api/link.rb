module Teamwork
  module API
    class Link
      # http://developer.teamwork.com/links
      class << self
        # GET /links.json
        # GET /projects/{project_id}/links.json
        # GET /links/{link_id}.json
        # POST /projects/{project_id}/links.json
        # PUT /links/{link_id}.json
        # DELETE /links/{link_id}.json
      end
    end
  end
end
