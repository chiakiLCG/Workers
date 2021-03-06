require 'rails_helper'

RSpec.describe 'Works', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/works/index'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /show' do
    it 'returns http success' do
      get '/works/show'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /new' do
    it 'returns http success' do
      get '/works/new'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /create' do
    it 'returns http success' do
      get '/works/create'
      expect(response).to have_http_status(:success)
    end
  end
end
