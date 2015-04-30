module Teamwork
  module API
    module File
      # http://developer.teamwork.com/files
      class << self
        # GET /projects/{project_id}/files.json
        # GET /files/{file_id}.json
        # POST /projects/{project_id}/files.json
        # POST /files/{file_id}.json
        # DELETE /files/{file_id}.json
      end
    end

    module FileUpload
      # http://developer.teamwork.com/uploadingfiles
      class << self
        # POST /pendingfiles.json
      end
    end
  end
end
