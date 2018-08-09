# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Api::V1::BasketController, type: :controller do
  describe 'GET #show' do
    it 'returns http success' do
      get :show, params: { user_uuid: 'er' }
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST #add' do
    it 'returns http success' do
      post :add, params: { user_uuid: 'er' }
      expect(response).to have_http_status(:success)
    end
  end
end
