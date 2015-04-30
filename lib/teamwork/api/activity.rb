module Teamwork
  module API
    class Activity
      class << self
        def latest(params = {})
          response = API.config.get "latestActivity.json", params
          response.body["activity"]
        end

        def project(id, params = {})
        end

        def delete(id)
        end
      end
    end
  end
end
