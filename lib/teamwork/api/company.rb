module Teamwork
  module API
    class Company
      # http://developer.teamwork.com/companies
      def << self
        # POST /companies.json
        # PUT /companies/{company_id}.json
        # DELETE /companies/{id}.json
        # GET /companies/{company_id}.json
        # GET /companies.json
        # GET /projects/{project_id}/companies.json
      end
    end
  end
end
