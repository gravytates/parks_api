require 'rails_helper'

describe 'update a park', type: :request do

  before do
    park = FactoryGirl.create(:park)
    put "/parks/#{park.id}", params: { name: "new name" }
    #
    # breed = FactoryGirl.create(:breed)
    # put "/v1/breeds/#{breed.id}/?name=tom cat&app_id=#{@user_api_key}"
  end

  it 'updates name of park from the api database' do
    binding.pry
    expect(JSON.parse(response.body)['message']).to eq "Your park has successfully been updated."
  end
end
