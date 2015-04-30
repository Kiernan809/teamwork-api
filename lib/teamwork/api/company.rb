module Teamwork
  module API
    class Company
      # http://developer.teamwork.com/companies
      class << self
        # POST /companies.json
        # PUT /companies/{company_id}.json
        # DELETE /companies/{id}.json

        # GET /companies/{company_id}.json
        def get(id, params = {})
          response = API.get "/companies/#{id}.json", params
        end

        # GET /companies.json
        def all(id, params = {})
          response = API.get "/companies.json", params
        end

        # GET /projects/{project_id}/companies.json
        def project(id, params = {})
          response = API.get "/projects/#{id}/companies.json", params
        end

      end
    end
  end
end
