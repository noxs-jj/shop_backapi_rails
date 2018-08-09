# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Api::V1::ProductController, type: :controller do
  let!(:product_1) { create(:product) }
  let!(:product_2) { create(:product) }
  let!(:product_3) { create(:product) }
  let!(:product_4) { create(:product) }
  let!(:expected_result) do
    {
      products: [product_1, product_2, product_3, product_4]
    }
  end

  describe 'GET #index' do
    before do
      get :index, format: :json
    end

    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'assign 4 products' do
      expect(assigns(:products)).to eq(Product.all)
    end

    it 'render_template "index.json.jbuilder"' do
      expect(response).to render_template('index.json.jbuilder')
    end
  end

  describe 'GET #show' do
    before do
      get :show, params: { reference: product_1.reference }
    end

    it 'returns http success' do
      expect(response).to have_http_status(:success)
    end

    it 'render_template "show.json.jbuilder"' do
      expect(response).to render_template('show.json.jbuilder')
    end

    it 'assign 1 products' do
      expect(assigns(:product)).to eq(Product.find_by(reference: product_1.reference))
    end
  end
end
