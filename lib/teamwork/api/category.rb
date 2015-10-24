module Teamwork
  module API
    module Category
      module Message
        # http://developer.teamwork.com/messagecategories
        class << self
          # POST /projects/#{project_id}/messageCategories.json
          # GET /messageCategories/{id}.json

          # GET /projects/#{project_id}/messageCategories.json
          def project(id, params = {})
            response = API.get "/projects/#{project_id}/messageCategories.json", params
          end

          # PUT /messageCategories/{id}.json
          # DELETE /messageCategories/{id}.json
        end
      end

      module File
        # http://developer.teamwork.com/filecategories
        class << self
          # POST /projects/#{project_id}/fileCategories.json
          # GET /fileCategories/{id}.json

          # GET /projects/#{project_id}/fileCategories.json
          def project(id, params = {})
            response = API.get "/projects/#{project_id}/fileCategories.json", params
          end

          # PUT /fileCategories/{id}.json
          # DELETE /fileCategories/{id}.json
        end

      end

      module Notebook
        # http://developer.teamwork.com/notebookcategories
        class << self
          # POST /projects/#{project_id}/notebookCategories.json
          # GET /notebookCategories/{id}.json

          # GET /projects/#{project_id}/notebookCategories.json
          def project(id, params = {})
            response = API.get "/projects/#{project_id}/notebookCategories.json", params
          end

          # PUT /notebookCategories/{id}.json
          # DELETE /notebookCategories/{id}.json
        end
      end

      module Link
        # http://developer.teamwork.com/linkcategories
        class << self
          # POST /projects/#{project_id}/linkCategories.json
          # GET /linkCategories/#{id}.json

          # GET /projects/#{project_id}/linkCategories.json
          def project(id, params = {})
            response = API.get "/projects/#{project_id}/linkCategories.json", params
          end

          # PUT /linkCategories/#{id}.json
          # DELETE /linkCategories/#{id}.json
        end
      end

      module Project
        # http://developer.teamwork.com/projectcategories
        class << self
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
