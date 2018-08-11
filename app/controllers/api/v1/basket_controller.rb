# frozen_string_literal: true

class Api::V1::BasketController < ApplicationController
  def show
    @basket = Basket.find_by(user_uuid: basket_params['user_uuid'])
    @products = BasketService.products_from_basket(@basket)

    render 'show.json.jbuilder', status: :ok
  end

  def add
    @basket = BasketService.update_basket(basket_params)
    @products = BasketService.products_from_basket(@basket)

    render 'show.json.jbuilder', status: :ok
  end

  private

  def basket_params
    params.permit(:user_uuid, :product_ref, :add)
  end
end
