# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Api::V1::BasketController, type: :controller do
  describe 'GET #show' do
    it 'returns http success' do
      get :show, params: { user_uuid: 'er' }
      expect(response).to have_http_status(:success)
    end
  end

  describe 'PATCH #udpate' do
    it 'returns http success' do
      patch :update, params: { user_uuid: 'er' }
      expect(response).to have_http_status(:success)
    end
  end

  describe 'PATCH #remove' do
    it 'returns http success' do
      patch :remove, params: { user_uuid: 'er', product_id: 1 }
      expect(response).to have_http_status(:success)
    end
  end

  describe 'PATCH #add' do
    it 'returns http success' do
      patch :add, params: { user_uuid: 'er', product_id: 1 }
      expect(response).to have_http_status(:success)
    end
  end
end
