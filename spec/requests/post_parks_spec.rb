require 'rails_helper'

describe "post a park route", type: :request do

  before do
    post '/parks', params: { name:'Oregon Park Place', state: 'Oregon', acres: 1500, ownership: 'State' }
  end

  it 'returns the author name' do
    expect(JSON.parse(response.body)['message']).to eq('Your park has successfully been created.')
  end
end
