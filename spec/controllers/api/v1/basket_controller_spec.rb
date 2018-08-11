# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Api::V1::BasketController, type: :controller do
  let!(:product_1) { create(:product) }
  let(:params) { { user_uuid: SecureRandom.uuid } }

  describe 'GET #show' do
    it 'returns http success' do
      get :show, params: params
      expect(response).to have_http_status(:success)
    end

    it 'call BasketService.products_from_basket' do
      expect(BasketService).to receive(:products_from_basket)
      get :show, params: params
    end
  end

  describe 'POST #add' do
    let(:params) do
      {
        user_uuid: SecureRandom.uuid,
        product_ref: product_1.reference,
        add: 5
      }
    end

    before do
      allow(BasketService).to receive(:update_basket).and_return(nil)
    end

    it 'returns http success' do
      post :add, params: params
      expect(response).to have_http_status(:success)
    end

    it 'call BasketService.products_from_basket' do
      expect(BasketService).to receive(:products_from_basket)
      post :add, params: params
    end

    it 'call BasketService.update_basket' do
      expect(BasketService).to receive(:update_basket)
      post :add, params: params
    end
  end
end
