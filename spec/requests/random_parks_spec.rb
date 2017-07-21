require 'rails_helper'

describe "get random parks route", :type => :request do
  let!(:parks) { FactoryGirl.create_list(:park, 20)}


  before { get '/parks?random=true'}

  it 'returns random park' do
    expect(JSON.parse(response.body).size).to eq(1)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
