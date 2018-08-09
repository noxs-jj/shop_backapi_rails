# frozen_string_literal: true

class Api::V1::ProductController < ApplicationController
  def index
    @products = Product.all

    render 'index.json.jbuilder', status: :ok
  end

  def show
    @product = Product.find_by(reference: params['reference'])

    render 'show.json.jbuilder', status: :ok
  end
end
