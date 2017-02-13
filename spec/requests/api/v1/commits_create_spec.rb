require 'rails_helper'

describe "commits controller" do
  context "it recieves the json and puts it into the database" do
    xit "recieves post request" do
      post "/api/v1/commits"

      expect(response).to be_success
    end
  end
  context "we send it some json" do
    it "it creates and database entry for a commit" do
      json = json_webhook
      post "/api/v1/commits", payload: json.to_json

      expect(response).to be_success
    end
  end
end
