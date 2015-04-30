module Teamwork
  module API
    module Category
      class Message
        # http://developer.teamwork.com/messagecategories
        def << self
          # POST /projects/{project_id}/messageCategories.json
          # GET /messageCategories/{id}.json
          # GET /projects/{project_id}/messageCategories.json
          # PUT /messageCategories/{id}.json
          # DELETE /messageCategories/{id}.json
        end
      end

      class File
        # http://developer.teamwork.com/filecategories
        def << self
          # POST /projects/{project_id}/fileCategories.json
          # GET /fileCategories/{id}.json
          # GET /projects/{project_id}/fileCategories.json
          # PUT /fileCategories/{id}.json
          # DELETE /fileCategories/{id}.json
        end

      end

      class Notebook
        # http://developer.teamwork.com/notebookcategories
        def << self
          # POST /projects/{project_id}/notebookCategories.json
          # GET /notebookCategories/{id}.json
          # GET /projects/{project_id}/notebookCategories.json
          # PUT /notebookCategories/{id}.json
          # DELETE /notebookCategories/{id}.json
        end
      end

      class Link
        # http://developer.teamwork.com/linkcategories
        def << self
          # POST /projects/#{project_id}/linkCategories.json
          # GET /linkCategories/#{id}.json
          # GET /projects/#{project_id}/linkCategories.json
          # PUT /linkCategories/#{id}.json
          # DELETE /linkCategories/#{id}.json
        end
      end

      class Project
        # http://developer.teamwork.com/projectcategories
        def << self
          # POST /projectcategories.json
          # GET /projectCategories/{id}.json
          # GET /projectCategories.json
          # PUT /projectCategories/{id}.json
          # DELETE /projectCategories/{id}.json
        end
      end
    end
  end
end
