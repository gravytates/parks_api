require 'rails_helper'

describe 'update a park', type: :request do

  before do
    park = FactoryGirl.create(:park)
    put "/parks/#{park.id}", params: { name: "new name" }
  end

  it 'updates name of park from the api database' do
    expect(JSON.parse(response.body)['message']).to eq "Your park has successfully been updated."
  end
end
