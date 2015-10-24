module Teamwork
  module API
    module Comment
      # http://developer.teamwork.com/comments

      class << self
        # GET /{resource}/{resource_id}/comments.json
        def resource(type, id, params = {})
          response = API.get "/#{type}/#{resource_id}/comments.json", params
        end

        # GET /comments/{comment_id}.json
        def get(id, params = {})
          response = API.get "/comments/#{comment_id}.json", params
        end

        # POST /{resource}/{resource_id}/comments.json
        def create(resource, id)
        end

        # PUT /comments/{id}.json
        def update(id)
        end

        # DELETE /comments/{id}.json
        def delete(id)
        end

        # PUT /comments/{id}/markread.json
        def read(id)
        end
      end
    end
  end
end
