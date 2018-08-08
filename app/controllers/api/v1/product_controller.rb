class Api::V1::ProductController < ApplicationController
  def index
    # TODO catalogue products
    render 'index.json.jbuilder', status: :ok
  end

  def show
    # TODO Show one product
    render 'show.json.jbuilder', status: :ok
  end
end
