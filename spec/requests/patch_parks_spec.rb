require 'rails_helper'

describe 'update a park', type: :request do
  park = FactoryGirl.build(:park)

  before {
    post '/parks', params: {name: park.name, state: park.state, acres: park.acres, ownership: park.ownership }
  }

  it 'updates name of park from the api database' do
    patch '/parks/1', params: { name: "new name" }
    expect(JSON.parse(response.body)['name']).to eq "new name"
  end
end
