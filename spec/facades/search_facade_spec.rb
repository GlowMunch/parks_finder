require "rails_helper"

RSpec.describe SearchFacade do
  describe 'class methos' do
    describe '.get_parks' do
      it "returns all parks" do
        all_parks = SearchFacade.new.get_parks("TN")
        expect(all_parks).to be_a(Array)
        expect(all_parks.first).to be_a(Park)
        expect(all_parks.first.name).to be_a(String)
        expect(all_parks.first.description).to be_a(String)
        expect(all_parks.first.directions).to be_a(String)
        expect(all_parks.first.hours).to be_a(Array)
      end
    end
  end
end