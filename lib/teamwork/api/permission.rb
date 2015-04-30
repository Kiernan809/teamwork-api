module Teamwork
  module API
    class Permission
      # http://developer.teamwork.com/permissions
      def << self
        # POST /projects/{id}/people/{id}.json
        # PUT /projects/{id}/people.json
        # DELETE /projects/{id}/people/{id}.json
        # GET /projects/{id}/people/{id}.json
        # PUT /projects/{id}/people/{id}.json
      end
    end
  end
end
