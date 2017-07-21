require 'rails_helper'

describe "post a park route", type: :request do

  before do
    post '/parks', params: { name:'Oregon Park Place', state: 'Oregon', acres: 1500, ownership: 'State' }
  end

  it 'returns the author name' do
    expect(JSON.parse(response.body)['name']).to eq('Oregon Park Place')
  end

  it 'returns the park content' do
    expect(JSON.parse(response.body)['state']).to eq('Oregon')
  end

  it 'returns the park content' do
    expect(JSON.parse(response.body)['acres']).to eq(1500)
  end

  it 'returns the park content' do
    expect(JSON.parse(response.body)['ownership']).to eq('State')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end
