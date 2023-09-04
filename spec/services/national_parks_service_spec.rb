require "rails_helper"


RSpec.describe "Parks Service" do
  describe "as a visitor" do
    it "can search for parks by state" do

      stub_request(:get, "https://developer.nps.gov/api/v1/parks?api_key=ajDOgds6ypwgBItsCB3dOfmyYFEoVm4hNnL5vCO8&stateCode=TN")
      .to_return(body: file_fixture("parks_response.json").read)

      search = NationalParksService.new.park_by_state("TN")
      expect(search).to be_a(Hash)

      park = search[:data].first

      expect(park).to have_key(:fullName)
      expect(park[:fullName]).to be_a(String)

      expect(park).to have_key(:description)
      expect(park[:description]).to be_a(String)

      expect(park).to have_key(:directionsInfo)
      expect(park[:directionsInfo]).to be_a(String)

      expect(park).to have_key(:operatingHours)
      expect(park[:operatingHours]).to be_a(Array)
    end
  end
end