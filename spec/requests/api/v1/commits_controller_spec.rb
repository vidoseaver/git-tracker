require 'rails_helper'

describe "commits controller" do
  context "it recieves the json and puts it into the database" do
    it "recieves post request" do
      post "/api/v1/commits"

      expect(response).to be_success
    end
  end
end
