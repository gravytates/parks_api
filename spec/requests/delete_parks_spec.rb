require 'rails_helper'

describe 'delete a park', type: :request do
  park = FactoryGirl.build(:park)

  before {
    post '/parks', params: {name: park.name, state: park.state, acres: park.acres, ownership: park.ownership }
  }

  it 'updates name of park from the api database' do
    delete '/parks/1'
    get '/parks/1'
    expect(JSON.parse(response.body).first[1]).to eq "Couldn't find Park with 'id'=1"
  end
end
