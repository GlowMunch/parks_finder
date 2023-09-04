require "rails_helper"

RSpec.describe Park do
  it "exists and has attributes" do
    data = {
      :fullName=>"Big Bend National Park",
      :description=>"Big Bend National Park is an American national park located in West Texas, bordering Mexico. The park has national significance as the largest protected area of Chihuahuan Desert topography and ecology in the United States. The park protects more than 1,200 species of plants, more than 450 species of birds, 56 species of reptiles, and 75 species of mammals.",
      :directionsInfo=>"You can reach Big Bend National Park by traveling on highways 118, 385, and 90.",
      :operatingHours=>[{:standardHours=>{:wednesday=>"All Day", :monday=>"All Day", :thursday=>"All Day", :sunday=>"All Day", :tuesday=>"All Day", :friday=>"All Day", :saturday=>"All Day"}}]
    }

    formatted_hours = ["wednesday: All Day",
      "monday: All Day",
      "thursday: All Day",
      "sunday: All Day",
      "tuesday: All Day",
      "friday: All Day",
      "saturday: All Day"]

    park = Park.new(data)

    expect(park).to be_a(Park)
    expect(park.name) .to eq(data[:fullName])
    expect(park.description).to eq(data[:description])
    expect(park.direction_info).to eq(data[:directionsInfo])
    expect(park.hours).to eq(formatted_hours)

  end
end