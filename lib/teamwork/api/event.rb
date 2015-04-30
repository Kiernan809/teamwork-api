module Teamwork
  module API
    class Events
      # http://developer.teamwork.com/events
      def << self
        # GET /calendarevents.json?startdate=YYYYMMDD&endDate=YYYYMMDD
        # GET /calendarevents/{id}.json
        # POST/calendarevents.json
        # PUT /calendarevents/{id}.json
        # DELETE /calendarevents/{id}.json
        # GET /calendareventtypes.json
      end
    end
  end
end

