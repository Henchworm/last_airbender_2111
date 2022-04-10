require 'rails_helper'
RSpec.describe Character do
  it "is initialized with hash of data" do
    data = {"_id"=>"5cf5679a915ecad153ab68fd",
            "allies"=>["Ozai"],
            "enemies"=>["Earth Kingdom"],
            "name"=>"Chan (Fire Nation admiral)",
            "affiliation"=>"Fire Nation Navy"}
    character_1 = Character.new(data)
    expect(character_1.id).to eq(data["_id"])
    expect(character_1.allies).to eq(data["allies"])
    expect(character_1.enemies).to eq(data["enemies"])
    expect(character_1.name).to eq(data["name"])
    expect(character_1.affiliation).to eq(data["affiliation"])
  end
end