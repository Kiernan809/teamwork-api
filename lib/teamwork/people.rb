module Teamwork
  class People
    attr_accessor :api

    def initialize(api); @api = api; end

    # GET /companies/{company_id}/people.json
    def company(id, params = {})
      response = @api.get "/companies/#{id}/people.json", params
      response.body
    end
  end
end
