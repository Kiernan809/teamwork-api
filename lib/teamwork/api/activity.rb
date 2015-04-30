module Teamwork
  module API
    class Activity
      # http://developer.teamwork.com/activity
      class << self
        # GET /latestActivity.json
        def latest(params = {})
          response = API.get "latestActivity.json", params
          response.body["activity"]
        end

        # GET /projects/{project_id}/latestActivity.json
        def project(id, params = {})
          response = API.get "projects/#{id}/latestActivity.json", params
          response.body["activity"]
        end

        # DELETE /activity/{id}.json
        def delete(id)
        end
      end
    end
  end
end
