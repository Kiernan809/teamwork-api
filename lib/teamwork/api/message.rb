module Teamwork
  module API
    class Message
      # http://developer.teamwork.com/messages
      class << self
        # POST /projects/{project_id}/posts.json
        # GET /posts/{id}.json
        # GET /projects/{project_id}/posts.json
        # GET /projects/{project_id}/cat/{category_id}/posts.json
        # PUT /posts/{id}.json
        # GET /projects/{project_id}/posts/archive.json
        # GET /projects/{project_id}/cat/{category_id}/posts/archive.json
        # PUT /messages/{id}/archive.json
        # PUT /messages/{id}/unarchive.json
        # DELETE /posts/{id}.json
      end
    end

    class Reply
      # http://developer.teamwork.com/messagereplies
      class << self
        # POST /messages/{message_id}/messageReplies.json
        # GET /messageReplies/{id}.json
        # GET /messages/{id}/replies.json
        # PUT /messageReplies/{id}.json
        # DELETE /messageReplies/{id}.json
      end
    end
  end
end



