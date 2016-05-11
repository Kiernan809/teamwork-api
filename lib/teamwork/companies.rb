module Teamwork
  class Companies
    attr_accessor :api

    def initialize(api); @api = api; end

    def all
      response = @api.get "/companies.json"
      response.body
    end
  end
end
