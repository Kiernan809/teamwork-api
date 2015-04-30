module Teamwork
  module API
    class Project
      # http://developer.teamwork.com/projectsapi
      def << self
        # POST /projects.json
        # PUT /projects/{project_id}.json
        # DELETE /projects/{id}.json
        # GET /projects.json
        # GET /projects/{project_id}.json
        # GET /projects/starred.json
        # PUT /projects/{project_id}/star.json
        # PUT /projects/{project_id}/unstar.json
      end
    end

    class Role
      # http://developer.teamwork.com/projectroles
      def << self
        # GET /projects/{id}/roles.json
        # POST /projects/{id}/roles.json
        # PUT /roles/{id}.json
        # DELETE /roles/{id}.json
      end
    end

    class Email
      # http://developer.teamwork.com/projectemailaddresses
      def << self
        # GET /projects/{id}/emailaddress.json
        # PUT /projects/{id}/emailaddress.json
      end
    end
  end
end
