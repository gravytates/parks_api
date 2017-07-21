require 'rails_helper'

describe "get random parks route", :type => :request do
  let!(:parks) { FactoryGirl.create_list(:park, 20)}
  before { get '/parks?random=true'}

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
  # Not working in test mode
  # it 'returns every park with matching name' do
  #   binding.pry
  #   expect(JSON.parse(response.body).size).to eq(1)
  # end

end

describe "get parks by name search route", :type => :request do
  let!(:parks) { FactoryGirl.create_list(:park, 20)}
  before { get '/parks?name=death'}

  it 'returns every park with matching name' do
    expect(JSON.parse(response.body).size).to eq(20)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end

describe "get parks by state search route", :type => :request do
  let!(:parks) { FactoryGirl.create_list(:park, 20)}
  before { get '/parks?state=california'}

  it 'returns every park with matching state' do
    expect(JSON.parse(response.body).size).to eq(20)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end

describe "get parks by acreage search route", :type => :request do
  let!(:parks) { FactoryGirl.create_list(:park, 20)}
  before { get '/parks?acres=3340160'}

  it 'returns every park with matching acreage' do
    expect(JSON.parse(response.body).size).to eq(20)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end

describe "get parks by ownership search route", :type => :request do
  let!(:parks) { FactoryGirl.create_list(:park, 20)}
  before { get '/parks?ownership=National'}

  it 'returns every park with matching ownership type' do
    expect(JSON.parse(response.body).size).to eq(20)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
