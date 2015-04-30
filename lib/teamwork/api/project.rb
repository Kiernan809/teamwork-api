module Teamwork
  module API
    class Project
      # http://developer.teamwork.com/projectsapi
      def << self
        # GET /projects.json
        def all(params = {})
          response = API.get "projects.json", params
          response.body["projects"]
        end

        # GET /projects/{project_id}.json
        def get(id, params = {})
          response = API.get "projects/#{id}.json", params
          response.body["project"]
        end

        # GET /projects/starred.json
        def starred(params = {})
          response = API.get "projects/starred.json", params
          response.body["projects"]
        end

        # PUT /projects/{project_id}.json
        # POST /projects.json
        # DELETE /projects/{id}.json
        # PUT /projects/{project_id}/star.json
        # PUT /projects/{project_id}/unstar.json
      end
    end

    class Role
      # http://developer.teamwork.com/projectroles
      def << self
        # GET /projects/{id}/roles.json
        def project(id, params = {})
          response = API.get "projects/#{id}/roles.json", params
          response.body["projects"]
        end

        # POST /projects/{id}/roles.json
        # PUT /roles/{id}.json
        # DELETE /roles/{id}.json
      end
    end

    class Email
      # http://developer.teamwork.com/projectemailaddresses
      def << self
        # GET /projects/{id}/emailaddress.json
        def project(id, params = {})
          response = API.get "projects/#{id}/emailaddress.json", params
          response.body["projects"]
        end

        # PUT /projects/{id}/emailaddress.json
      end
    end
  end
end
