# frozen_string_literal: true

require 'rails_helper'

RSpec.describe BasketService do
  let!(:product_1) { create(:product) }
  let!(:product_2) { create(:product) }
  let!(:product_3) { create(:product) }
  let!(:product_4) { create(:product) }
  let(:to_add) { 3 }
  let(:product_ref) { product_1.reference }
  let(:user_uuid) { SecureRandom.uuid }
  let(:result) { nil }
  let(:basket_params) do
    {
      'user_uuid' => user_uuid,
      'product_ref' => product_ref,
      'add' => to_add
    }
  end

  describe '#update_basket' do
    context 'basket dont exist in database' do
      it 'return a created basket' do
        expect(described_class.update_basket(basket_params)).to_not be nil
      end

      it 'return a basket with one product' do
        expect(described_class.update_basket(basket_params).products.count).to eq(1)
      end

      it 'return a basket with an product quantity of 3' do
        expect(described_class.update_basket(basket_params).products[basket_params['product_ref']]).to eq(3)
      end
    end

    context 'basket already exist exist in database' do
      context 'product_1 got quantity of 3, add +5 to the same product' do
        before do
          described_class.update_basket(basket_params)
        end

        it 'return a basket' do
          basket_params['add'] = 5
          expect(described_class.update_basket(basket_params)).to_not be nil
        end

        it 'return a basket with one product' do
          basket_params['add'] = 5
          expect(described_class.update_basket(basket_params).products.count).to eq(1)
        end

        it 'return a basket with an product quantity of 8' do
          basket_params['add'] = 5
          expect(described_class.update_basket(basket_params).products[basket_params['product_ref']]).to eq(8)
        end
      end

      context 'product_1 got quantity of 3, add -13 to the same product' do
        before do
          described_class.update_basket(basket_params)
        end

        it 'return a basket' do
          basket_params['add'] = -13
          expect(described_class.update_basket(basket_params)).to_not be nil
        end

        it 'return a basket with one product' do
          basket_params['add'] = -13
          expect(described_class.update_basket(basket_params).products.count).to eq(0)
        end
      end
    end
  end

  describe '#products_from_basket' do
    context 'no argument' do
      it 'should return an empty array' do
        expect(described_class.products_from_basket(nil)).to eq([])
      end
    end

    context 'basket exist' do
      it 'should return an array with product [0] and expected quantity' do
        described_class.update_basket(basket_params)
        basket_params['product_ref'] = product_2.reference
        basket_params['add'] = 62
        described_class.update_basket(basket_params)
        basket_params['product_ref'] = product_3.reference
        basket_params['add'] = 23
        described_class.update_basket(basket_params)
        basket_params['product_ref'] = product_4.reference
        basket_params['add'] = 14
        described_class.update_basket(basket_params)

        basket = Basket.find_by(user_uuid: basket_params['user_uuid'])
        result = described_class.products_from_basket(basket)

        expect(result[0][:quantity]).to eq(3)
        expect(result[0][:product][:reference]).to eq(product_1.reference)
        expect(result[1][:quantity]).to eq(62)
        expect(result[1][:product][:reference]).to eq(product_2.reference)
        expect(result[2][:quantity]).to eq(23)
        expect(result[2][:product][:reference]).to eq(product_3.reference)
        expect(result[3][:quantity]).to eq(14)
        expect(result[3][:product][:reference]).to eq(product_4.reference)
      end
    end
  end
end
