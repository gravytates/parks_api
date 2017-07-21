require 'rails_helper'

describe 'update a park', type: :request do
  park = FactoryGirl.create(:park)

  before do
    post '/parks', params: {name: park.name, state: park.state, acres: park.acres, ownership: park.ownership }
    # patch "/parks/#{park.id}", params: { name: "new name" }
  end

  it 'updates name of park from the api database' do
    binding.pry
    patch "/parks/#{park.id}", params: { name: "new name" }
    expect(JSON.parse(response.body)['message']).to eq "Your park has successfully been updated."
  end
end
