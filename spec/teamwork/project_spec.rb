require File.expand_path "../spec_helper", __FILE__

describe Teamwork::Projects do
  context "company" do
    before do
      # response = @api.get "/companies/#{id}/projects.json", params
      stub_request(:get, "/").with body: fixture("projects/company.json")
    end
  end
end

