module Teamwork
  module API
    class Comment
      # http://developer.teamwork.com/comments

      class << self
        def recent(resource, id)
          # GET /{resource}/{resource_id}/comments.json
        end

        def comment(id)
          # GET /comments/{comment_id}.json
        end
        def create(resource, id)
          # POST /{resource}/{resource_id}/comments.json
        end

        def update(id)
          # PUT /comments/{id}.json
        end

        def delete(id)
          # DELETE /comments/{id}.json
        end

        def read(id)
          # PUT /comments/{id}/markread.json
        end
      end
    end
  end
end
