module Teamwork
  class Projects
    attr_accessor :api

    def initialize(api); @api = api; end

    def all(params = {})
      response = @api.get "/projects.json", params
      response.body["projects"]
    end

    # GET /companies/{id}/projects.json
    def company(id, params = {})
      response = @api.get "/companies/#{id}/projects.json", params
      response.body["projects"]
    end


    # # Retrieve All Time Entries for a Project
    def times(id, params = {})
      response = @api.get "/projects/#{id}/time_entries.json", params
      response.body["time-entries"]
    end

    # GET /projects/{id}/time/total.json
    def time(id, params = {})
      response = @api.get "/projects/#{id}/time/total.json", params
      response.body["time-totals"]
    end

  end
end


